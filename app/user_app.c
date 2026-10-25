#include <stdio.h>

#include "audio_ctl.h"

int main(void)
{
    printf("WM8960 Codec Dynamics\n");

    return audio_ctl_list("hw:wm8960audio");
}