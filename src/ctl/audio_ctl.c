#include <alsa/asoundlib.h>
#include <stdio.h>

#include "audio_ctl.h"

int audio_ctl_list(const char *card_name)
{
    snd_ctl_t *ctl = NULL;
    snd_ctl_elem_list_t *list = NULL;
    int err;

    err = snd_ctl_open(&ctl, card_name, 0);

    if (err < 0) 
    {
        fprintf(stderr, "Failed to open ALSA control: %s\n",
                snd_strerror(err));
        return err;
    }

    snd_ctl_elem_list_alloca(&list);

    err = snd_ctl_elem_list(ctl, list);

    if (err < 0) 
    {
        fprintf(stderr, "Failed to list ALSA controls: %s\n",
                snd_strerror(err));
        snd_ctl_close(ctl);
        return err;
    }

    printf("ALSA control interface: %s\n", card_name);
    printf("Number of controls: %u\n", snd_ctl_elem_list_get_count(list));

    snd_ctl_close(ctl);

    return 0;
}