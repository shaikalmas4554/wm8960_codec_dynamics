#include <alsa/asoundlib.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>

#include "alc_control.h"

static int find_alc_function(snd_ctl_t *ctl, snd_ctl_elem_id_t *id)
{
    snd_ctl_elem_info_t *info;
    int err;

    snd_ctl_elem_info_alloca(&info);
    snd_ctl_elem_id_set_interface(id, SND_CTL_ELEM_IFACE_MIXER);
    snd_ctl_elem_id_set_name(id, "ALC Function");
    snd_ctl_elem_info_set_id(info, id);

    err = snd_ctl_elem_info(ctl, info);

    if (err < 0) {
        fprintf(stderr, "Cannot find ALC Function: %s\n", snd_strerror(err));
        return err;
    }

    if (snd_ctl_elem_info_get_type(info) !=
        SND_CTL_ELEM_TYPE_ENUMERATED) {
        fprintf(stderr, "ALC Function is not an enumerated control\n");
        return -EINVAL;
    }

    return 0;
}

int alc_control_set_function(const char *card_name, const char *function)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_info_t *info = NULL;
    snd_ctl_elem_value_t *value = NULL;
    unsigned int items;
    unsigned int i;
    int err;
    int found = 0;

    if (card_name == NULL || function == NULL) {
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

    err = find_alc_function(ctl, id);
    if (err < 0) {
        goto out;
    }

    snd_ctl_elem_info_set_id(info, id);

    err = snd_ctl_elem_info(ctl, info);
    if (err < 0) {
        goto out;
    }

    items = snd_ctl_elem_info_get_items(info);

    for (i = 0; i < items; i++) {
        const char *name;

        snd_ctl_elem_info_set_item(info, i);
        err = snd_ctl_elem_info(ctl, info);
        if (err < 0) {
            goto out;
        }

        name = snd_ctl_elem_info_get_item_name(info);
        if (name != NULL &&
            strcmp(name, function) == 0) {
            snd_ctl_elem_value_set_id(value, id);
            snd_ctl_elem_value_set_enumerated(value, 0, i);

            err = snd_ctl_elem_write(ctl, value);
            if (err < 0) {
                fprintf(stderr, "Failed to set ALC Function: %s\n", snd_strerror(err));
                goto out;
            }

            found = 1;
            break;
        }
    }

    if (!found) {
        fprintf(stderr, "Unsupported ALC Function: %s\n", function);
        err = -EINVAL;
        goto out;
    }

    printf("ALC Function set to: %s\n", function);
    err = 0;

out:
    snd_ctl_close(ctl);
    return err;
}

int alc_control_show(const char *card_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_id_t *id = NULL;
    snd_ctl_elem_value_t *value = NULL;
    snd_ctl_elem_info_t *info = NULL;
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
    snd_ctl_elem_value_alloca(&value);
    snd_ctl_elem_info_alloca(&info);

    err = find_alc_function(ctl, id);
    if (err < 0) {
        goto out;
    }

    snd_ctl_elem_value_set_id(value, id);

    err = snd_ctl_elem_read(ctl, value);
    if (err < 0) {
        goto out;
    }

    item = snd_ctl_elem_value_get_enumerated(value, 0);

    snd_ctl_elem_info_set_id(info, id);
    err = snd_ctl_elem_info(ctl, info);
    if (err < 0) {
        goto out;
    }

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