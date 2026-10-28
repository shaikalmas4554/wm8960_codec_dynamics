#include <stdio.h>
#include "audio_ctl.h"

int main(void)
{
    printf("WM8960 Codec Dynamics\n");

    audio_ctl_list("hw:wm8960audio");

    while(1)
    {
        int option = 0;
        print_options();
        scanf("%d",&option);
        switch(option)
        {
            case 1: audio_capture();
                    break;
            case 2: set_audio_capture_parameters();
                    break;
            case 0: return 0;
        }
    }

    return 0;
}

void print_options()
{
    printf("\n========== MENU ==========\n"
               " 1) Capture Audio\n"
               " 2) Set Capture Parameters\n"
               " 3) Play Audio from Wave file\n"
               " 4) Set Volume\n"
               " 5) Enable ALC\n"
               " 6) Disable ALC\n"
               " 0) Exit\n"
               "===========================\n"
            );
}