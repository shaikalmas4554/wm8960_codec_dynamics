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

    if (err < 0) {
        fprintf(stderr, "Cannot find control '%s': %s\n", control_name, snd_strerror(err));
    }

    return err;
}

int alc_control_set_enum(const char *card_name, const char *control_name, const char *item_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;
    unsigned int items;
    unsigned int i;
    unsigned int count;
    int found = 0;
    int err;

    if (card_name == NULL ||
        control_name == NULL ||
        item_name == NULL) {
        return -EINVAL;
    }

    err = snd_ctl_open(&ctl, card_name, 0);
    if (err < 0) {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = find_control(
        ctl, id, control_name, info);

    if (err < 0) {
        goto out;
    }

    if (snd_ctl_elem_info_get_type(info) !=
        SND_CTL_ELEM_TYPE_ENUMERATED) {
        fprintf(stderr, "'%s' is not an enumerated control\n", control_name);
        err = -EINVAL;
        goto out;
    }

    items = snd_ctl_elem_info_get_items(info);
    count = snd_ctl_elem_info_get_count(info);

    for (i = 0; i < items; i++) {
        const char *name;
        unsigned int channel;

        snd_ctl_elem_info_set_item(info, i);
        err = snd_ctl_elem_info(ctl, info);
        if (err < 0) {
            goto out;
        }

        name = snd_ctl_elem_info_get_item_name(info);

        if (name == NULL ||
            strcmp(name, item_name) != 0) {
            continue;
        }

        snd_ctl_elem_value_set_id(value, id);

        for (channel = 0; channel < count; channel++) {
            snd_ctl_elem_value_set_enumerated(value, channel, i);
        }

        err = snd_ctl_elem_write(ctl, value);
        if (err < 0) {
            fprintf(stderr, "Failed to set '%s': %s\n", control_name, snd_strerror(err));
            goto out;
        }

        found = 1;
        break;
    }

    if (!found) {
        fprintf(stderr, "Unsupported value '%s' for '%s'\n", item_name, control_name);
        err = -EINVAL;
        goto out;
    }

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        fprintf(stderr, "Control changed, but read-back failed: %s\n", snd_strerror(err));
        goto out;
    }

    {
        unsigned int channel;
        int matches = 1;

        for (channel = 0; channel < count; channel++) {
            if (snd_ctl_elem_value_get_enumerated(value, channel) != i) {
                matches = 0;
                break;
            }
        }
        if (!matches) {
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
    long integer_min = 0;
    long integer_max = 0;
    long long integer64_min = 0;
    long long integer64_max = 0;
    int err;

    if (card_name == NULL || control_name == NULL) {
        return -EINVAL;
    }

    err = snd_ctl_open(&ctl, card_name, 0);
    if (err < 0) {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);
    err = find_control(ctl, id, control_name, info);

    if (err < 0) {
        goto out;
    }

    type = snd_ctl_elem_info_get_type(info);
    count = snd_ctl_elem_info_get_count(info);

    if (type == SND_CTL_ELEM_TYPE_INTEGER) {
        integer_min = snd_ctl_elem_info_get_min(info);
        integer_max = snd_ctl_elem_info_get_max(info);

        if (requested_value < integer_min ||
            requested_value > integer_max) {
            fprintf(stderr, "%s must be between %ld and %ld\n", control_name, integer_min, integer_max);
            err = -ERANGE;
            goto out;
        }
    } else if (type == SND_CTL_ELEM_TYPE_INTEGER64) {
        integer64_min = snd_ctl_elem_info_get_min64(info);
        integer64_max = snd_ctl_elem_info_get_max64(info);

        if ((long long)requested_value < integer64_min || (long long)requested_value > integer64_max) {
            fprintf(stderr, "%s must be between %lld and %lld\n", control_name, integer64_min, integer64_max);
            err = -ERANGE;
            goto out;
        }
    } else {
        fprintf(stderr, "'%s' is not an integer control\n", control_name);
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);

    for (channel = 0; channel < count; channel++) {
        if (type == SND_CTL_ELEM_TYPE_INTEGER) {
            snd_ctl_elem_value_set_integer(value, channel, requested_value);
        } else {
            snd_ctl_elem_value_set_integer64(value, channel, (long long)requested_value);
        }
    }

    err = snd_ctl_elem_write(ctl, value);
    if (err < 0) {
        fprintf(stderr, "Failed to set '%s': %s\n", control_name, snd_strerror(err));
        goto out;
    }

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        fprintf(stderr, "Control changed, but read-back failed: %s\n", snd_strerror(err));
        goto out;
    }

    for (channel = 0; channel < count; channel++) {
        long long actual_value;

        if (type == SND_CTL_ELEM_TYPE_INTEGER) {
            actual_value =snd_ctl_elem_value_get_integer(value, channel);
        } else {
            actual_value = snd_ctl_elem_value_get_integer64(value, channel);
        }

        if (actual_value != (long long)requested_value) {
            fprintf(stderr, "Read-back mismatch for '%s': " "requested %ld, got %lld\n", control_name, requested_value, actual_value);
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

    if (card_name == NULL || control_name == NULL) {
        return -EINVAL;
    }

    err = snd_ctl_open(&ctl, card_name, 0);
    if (err < 0) {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = find_control(
        ctl, id, control_name, info);

    if (err < 0) {
        goto out;
    }

    type = snd_ctl_elem_info_get_type(info);
    count = snd_ctl_elem_info_get_count(info);

    if (type != SND_CTL_ELEM_TYPE_INTEGER &&
        type != SND_CTL_ELEM_TYPE_INTEGER64) {
        fprintf(stderr, "'%s' is not a numeric integer control\n", control_name);
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);
    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        goto out;
    }

    if (type == SND_CTL_ELEM_TYPE_INTEGER) {
        printf("%s range: %ld to %ld\n", control_name, snd_ctl_elem_info_get_min(info), snd_ctl_elem_info_get_max(info));
    } else {
        printf("%s range: %lld to %lld\n", control_name, snd_ctl_elem_info_get_min64(info), snd_ctl_elem_info_get_max64(info));
    }

    for (channel = 0; channel < count; channel++) {
        if (type == SND_CTL_ELEM_TYPE_INTEGER) {
            printf("%s channel %u: %ld\n", control_name, channel, snd_ctl_elem_value_get_integer(value, channel));
        } else {
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

    unsigned int item;
    const char *name;
    int err;

    if (card_name == NULL) {
        return -EINVAL;
    }

    err = snd_ctl_open(&ctl, card_name, 0);
    if (err < 0) {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);
    err = find_control(ctl, id, "ALC Function", info);
    if (err < 0) {
        goto out;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_ENUMERATED) {
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);
    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        goto out;
    }

    item = snd_ctl_elem_value_get_enumerated(value, 0);
    snd_ctl_elem_info_set_item(info, item);
    err = snd_ctl_elem_info(ctl, info);
    if (err < 0) {
        goto out;
    }

    name = snd_ctl_elem_info_get_item_name(info);
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
    int actual_value;
    int err;

    if (card_name == NULL || (enable != 0 && enable != 1)) {
        return -EINVAL;
    }

    err = snd_ctl_open(&ctl, card_name, 0);
    if (err < 0) {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = find_control(ctl, id, "Noise Gate Switch", info);
    if (err < 0) {
        goto out;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_BOOLEAN) {
        fprintf(stderr, "'Noise Gate' is not a Boolean control\n");
        err = -EINVAL;
        goto out;
    }

    count = snd_ctl_elem_info_get_count(info);

    snd_ctl_elem_value_set_id(value, id);

    for (channel = 0; channel < count; channel++) {
        snd_ctl_elem_value_set_boolean(value, channel, enable);
    }

    err = snd_ctl_elem_write(ctl, value);
    if (err < 0) {
        fprintf(stderr, "Failed to set Noise Gate: %s\n", snd_strerror(err));
        goto out;
    }

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        fprintf(stderr, "Noise Gate changed, but read-back failed: %s\n", snd_strerror(err));
        goto out;
    }

    for (channel = 0; channel < count; channel++) {
        actual_value = snd_ctl_elem_value_get_boolean(value, channel);

        if (actual_value != enable) {
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
    if (threshold < 0 || threshold > 31) {
        fprintf(stderr, "Noise Gate Threshold must be between 0 and 31\n");
        return -ERANGE;
    }

    return alc_control_set_integer(card_name, "Noise Gate Threshold", threshold);
}

int noise_gate_control_show(const char *card_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;

    int enabled;
    int err;

    if (card_name == NULL) {
        return -EINVAL;
    }

    err = snd_ctl_open(&ctl, card_name, 0);
    if (err < 0) {
        fprintf(stderr, "Cannot open %s: %s\n", card_name, snd_strerror(err));
        return err;
    }

    snd_ctl_elem_id_alloca(&id);
    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_value_alloca(&value);

    err = find_control(ctl, id, "Noise Gate Switch", info);
    if (err < 0) {
        goto out;
    }

    if (snd_ctl_elem_info_get_type(info) != SND_CTL_ELEM_TYPE_BOOLEAN) {
        fprintf(stderr, "'Noise Gate' is not a Boolean control\n");
        err = -EINVAL;
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        fprintf(stderr, "Failed to read Noise Gate: %s\n", snd_strerror(err));
        goto out;
    }

    enabled = snd_ctl_elem_value_get_boolean(value, 0);

    printf("Noise Gate: %s\n", enabled ? "Enabled" : "Disabled");

    snd_ctl_close(ctl);
    ctl = NULL;

    return alc_control_show_value(card_name, "Noise Gate Threshold");

out:
    snd_ctl_close(ctl);
    return err;
}