#include <alsa/asoundlib.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>

#include "alc_control.h"

static int find_control(snd_ctl_t *ctl, snd_ctl_elem_id_t *id, const char *control_name, snd_ctl_elem_info_t *info)
{
    int err;

    snd_ctl_elem_id_set_interface(id, SND_CTL_ELEM_IFACE_MIXER);
    snd_ctl_elem_id_set_name(id, control_name);
    snd_ctl_elem_info_set_id(info, id);
    err = snd_ctl_elem_info(ctl, info);

    if (err < 0)
    {
        fprintf(stderr, "Cannot find control '%s': %s\n", control_name, snd_strerror(err));
    }
    return err;
}

static int open_and_find(const char *card_name, const char *control_name, snd_ctl_t **ctl,
                         snd_ctl_elem_id_t *id, snd_ctl_elem_info_t *info)
{
    int err = snd_ctl_open(ctl, card_name, 0);

    if (err < 0)
    {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    err = find_control(*ctl, id, control_name, info);
    if (err < 0)
    {
        snd_ctl_close(*ctl);
    }
    return err;
}

static int write_and_read_back(snd_ctl_t *ctl, snd_ctl_elem_value_t *value, const char *control_name)
{
    int err = snd_ctl_elem_write(ctl, value);

    if (err < 0)
    {
        fprintf(stderr, "Failed to set '%s': %s\n", control_name, snd_strerror(err));
        return err;
    }

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0)
    {
        fprintf(stderr, "Control changed, but read-back failed: %s\n", snd_strerror(err));
    }
    return err;
}

static int enum_item_name(snd_ctl_t *ctl, snd_ctl_elem_info_t *info, unsigned int item, const char **name)
{
    int err;

    snd_ctl_elem_info_set_item(info, item);
    err = snd_ctl_elem_info(ctl, info);
    if (err >= 0)
    {
        *name = snd_ctl_elem_info_get_item_name(info);
    }
    return err;
}

int alc_control_set_enum(const char *card_name, const char *control_name, const char *item_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;
    const char *name = NULL;
    unsigned int items;
    unsigned int count;
    unsigned int channel;
    unsigned int i;
    int err;

    if (card_name == NULL || control_name == NULL || item_name == NULL)
    {
        return -EINVAL;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = open_and_find(card_name, control_name, &ctl, id, info);
    if (err < 0)
    {
        return err;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_ENUMERATED)
    {
        fprintf(stderr, "'%s' is not an enumerated control\n", control_name);
        err = -EINVAL;
        goto out;
    }

    items = snd_ctl_elem_info_get_items(info);
    count = snd_ctl_elem_info_get_count(info);

    for (i = 0; i < items; i++)
    {
        err = enum_item_name(ctl, info, i, &name);
        if (err < 0)
        {
            goto out;
        }

        if (name != NULL && strcmp(name, item_name) == 0)
        {
            break;
        }
    }

    if (i == items)
    {
        fprintf(stderr, "Unsupported value '%s' for '%s'\n", item_name, control_name);
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);
    for (channel = 0; channel < count; channel++)
    {
        snd_ctl_elem_value_set_enumerated(value, channel, i);
    }

    err = write_and_read_back(ctl, value, control_name);
    if (err < 0)
    {
        goto out;
    }

    for (channel = 0; channel < count; channel++)
    {
        if (snd_ctl_elem_value_get_enumerated(value, channel) != i)
        {
            fprintf(stderr, "Read-back mismatch for '%s'\n", control_name);
            err = -EIO;
            goto out;
        }
    }

    printf("%s set to: %s (verified)\n", control_name, item_name);
    err = 0;

out:
    snd_ctl_close(ctl);
    return err;
}

int alc_control_set_function(const char *card_name, const char *function)
{
    return alc_control_set_enum(card_name, "ALC Function", function);
}

int alc_control_set_integer(const char *card_name, const char *control_name, long requested_value)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;

    snd_ctl_elem_type_t type;
    unsigned int count;
    unsigned int channel;
    long long min_value;
    long long max_value;
    long long actual_value;
    int err;

    if (card_name == NULL || control_name == NULL)
    {
        return -EINVAL;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = open_and_find(card_name, control_name, &ctl, id, info);
    if (err < 0)
    {
        return err;
    }

    type = snd_ctl_elem_info_get_type(info);
    count = snd_ctl_elem_info_get_count(info);

    if (type == SND_CTL_ELEM_TYPE_INTEGER)
    {
        min_value = snd_ctl_elem_info_get_min(info);
        max_value = snd_ctl_elem_info_get_max(info);
    }
    else if (type == SND_CTL_ELEM_TYPE_INTEGER64)
    {
        min_value = snd_ctl_elem_info_get_min64(info);
        max_value = snd_ctl_elem_info_get_max64(info);
    }
    else
    {
        fprintf(stderr, "'%s' is not an integer control\n", control_name);
        err = -EINVAL;
        goto out;
    }

    if (requested_value < min_value || requested_value > max_value)
    {
        fprintf(stderr, "%s must be between %lld and %lld\n", control_name, min_value, max_value);
        err = -ERANGE;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);

    for (channel = 0; channel < count; channel++)
    {
        if (type == SND_CTL_ELEM_TYPE_INTEGER)
        {
            snd_ctl_elem_value_set_integer(value, channel, requested_value);
        }
        else
        {
            snd_ctl_elem_value_set_integer64(value, channel, (long long)requested_value);
        }
    }

    err = write_and_read_back(ctl, value, control_name);
    if (err < 0)
    {
        goto out;
    }

    for (channel = 0; channel < count; channel++)
    {
        if (type == SND_CTL_ELEM_TYPE_INTEGER)
        {
            actual_value = snd_ctl_elem_value_get_integer(value, channel);
        }
        else
        {
            actual_value = snd_ctl_elem_value_get_integer64(value, channel);
        }

        if (actual_value != (long long)requested_value)
        {
            fprintf(stderr, "Read-back mismatch for '%s': requested %ld, got %lld\n", control_name, requested_value, actual_value);
            err = -EIO;
            goto out;
        }
    }

    printf("%s set to %ld (verified)\n", control_name, requested_value);
    err = 0;

out:
    snd_ctl_close(ctl);
    return err;
}

int alc_control_show_value(const char *card_name, const char *control_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;

    snd_ctl_elem_type_t type;
    unsigned int channel;
    unsigned int count;
    int err;

    if (card_name == NULL || control_name == NULL)
    {
        return -EINVAL;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = open_and_find(card_name, control_name, &ctl, id, info);
    if (err < 0)
    {
        return err;
    }

    type = snd_ctl_elem_info_get_type(info);
    count = snd_ctl_elem_info_get_count(info);

    if (type != SND_CTL_ELEM_TYPE_INTEGER && type != SND_CTL_ELEM_TYPE_INTEGER64)
    {
        fprintf(stderr, "'%s' is not a numeric integer control\n", control_name);
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);
    err = snd_ctl_elem_read(ctl, value);
    if (err < 0)
    {
        goto out;
    }

    if (type == SND_CTL_ELEM_TYPE_INTEGER)
    {
        printf("%s range: %ld to %ld\n", control_name, snd_ctl_elem_info_get_min(info), snd_ctl_elem_info_get_max(info));
    }
    else
    {
        printf("%s range: %lld to %lld\n", control_name, snd_ctl_elem_info_get_min64(info), snd_ctl_elem_info_get_max64(info));
    }

    for (channel = 0; channel < count; channel++)
    {
        if (type == SND_CTL_ELEM_TYPE_INTEGER)
        {
            printf("%s channel %u: %ld\n", control_name, channel, snd_ctl_elem_value_get_integer(value, channel));
        }
        else
        {
            printf("%s channel %u: %lld\n", control_name, channel, snd_ctl_elem_value_get_integer64(value, channel));
        }
    }

    err = 0;

out:
    snd_ctl_close(ctl);
    return err;
}

int alc_control_show(const char *card_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;

    const char *name = NULL;
    int err;

    if (card_name == NULL)
    {
        return -EINVAL;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = open_and_find(card_name, "ALC Function", &ctl, id, info);
    if (err < 0)
    {
        return err;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_ENUMERATED)
    {
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);
    err = snd_ctl_elem_read(ctl, value);
    if (err < 0)
    {
        goto out;
    }

    err = enum_item_name(ctl, info, snd_ctl_elem_value_get_enumerated(value, 0), &name);
    if (err < 0)
    {
        goto out;
    }

    printf("ALC Function: %s\n", name != NULL ? name : "Unknown");

out:
    snd_ctl_close(ctl);
    return err;
}

int noise_gate_control_set(const char *card_name, int enable)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;

    unsigned int count;
    unsigned int channel;
    int err;

    if (card_name == NULL || (enable != 0 && enable != 1))
    {
        return -EINVAL;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = open_and_find(card_name, "Noise Gate Switch", &ctl, id, info);
    if (err < 0)
    {
        return err;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_BOOLEAN)
    {
        fprintf(stderr, "'Noise Gate' is not a Boolean control\n");
        err = -EINVAL;
        goto out;
    }

    count = snd_ctl_elem_info_get_count(info);

    snd_ctl_elem_value_set_id(value, id);

    for (channel = 0; channel < count; channel++)
    {
        snd_ctl_elem_value_set_boolean(value, channel, enable);
    }

    err = write_and_read_back(ctl, value, "Noise Gate Switch");
    if (err < 0)
    {
        goto out;
    }

    for (channel = 0; channel < count; channel++)
    {
        if (snd_ctl_elem_value_get_boolean(value, channel) != enable)
        {
            fprintf(stderr, "Noise Gate read-back mismatch\n");
            err = -EIO;
            goto out;
        }
    }

    printf("Noise Gate %s (verified)\n", enable ? "enabled" : "disabled");
    err = 0;

out:
    snd_ctl_close(ctl);
    return err;
}

int noise_gate_control_set_threshold(const char *card_name, long threshold)
{
    return alc_control_set_integer(card_name, "Noise Gate Threshold", threshold);
}

int noise_gate_control_show(const char *card_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;

    int err;

    if (card_name == NULL)
    {
        return -EINVAL;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = open_and_find(card_name, "Noise Gate Switch", &ctl, id, info);
    if (err < 0)
    {
        return err;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_BOOLEAN)
    {
        fprintf(stderr, "'Noise Gate' is not a Boolean control\n");
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0)
    {
        fprintf(stderr, "Failed to read Noise Gate: %s\n", snd_strerror(err));
        goto out;
    }

    printf("Noise Gate: %s\n", snd_ctl_elem_value_get_boolean(value, 0) ? "Enabled" : "Disabled");

    snd_ctl_close(ctl);
    return alc_control_show_value(card_name, "Noise Gate Threshold");

out:
    snd_ctl_close(ctl);
    return err;
}