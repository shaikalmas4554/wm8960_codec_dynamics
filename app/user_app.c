#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "audio_capture.h"
#include "audio_ctl.h"
#include "alc_control.h"

#define ALSA_CONTROL_DEVICE "hw:wm8960audio"
#define CAPTURE_FILENAME    "capture.wav"
#define CAPTURE_DURATION    5

void print_options(void);

int main(void)
{
    pcm_config_t config;
    int option;
    int ret;

    printf("\n=================================\n");
    printf("      WM8960 Codec Dynamics\n");
    printf("=================================\n");

    // Initialize default capture parameters.
    ret = audio_capture_config_init(&config);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to initialize capture configuration\n");
        return EXIT_FAILURE;
    }

    ret = audio_ctl_list(ALSA_CONTROL_DEVICE);
    if (ret < 0)
    {
        fprintf(stderr, "Warning: Could not list ALSA controls\n");
    }

    while (1)
    {
        print_options();

        printf("Enter your choice: ");

        if (scanf("%d", &option) != 1)
        {
            int ch;

            printf("Invalid input. Please enter a number.\n");

            while ((ch = getchar()) != '\n' && ch != EOF);

            if (ch == EOF)
            {
                break;
            }

            continue;
        }

        switch (option)
        {
            case 1:
                printf("\nStarting audio capture...\n");
                ret = audio_capture(CAPTURE_FILENAME, &config, CAPTURE_DURATION);
                if (ret < 0)
                    fprintf(stderr, "Audio capture failed\n");
                else
                    printf("Audio saved to %s\n", CAPTURE_FILENAME);
                break;

            case 2:
                audio_capture_print_config(&config);
                printf("Parameter editing will be implemented next.\n");
                break;

            case 3:
                printf("WAV playback is not implemented yet.\n");
                break;

            case 4:
                printf("Volume control is not implemented yet.\n");
                break;

            case 5:
                ret = alc_control_set_function(ALSA_CONTROL_DEVICE, "Stereo");
                if (ret == 0) {
                    alc_control_show(ALSA_CONTROL_DEVICE);
                }
                break;

           case 6:
                ret = alc_control_set_function(ALSA_CONTROL_DEVICE, "Off");
                if (ret == 0) {
                    alc_control_show(ALSA_CONTROL_DEVICE);
                }
                break;

            case 0:
                printf("Exiting WM8960 Codec Dynamics.\n");
                return EXIT_SUCCESS;

            default:
                printf("Invalid option. Please try again.\n");
                break;
        }
    }

    return EXIT_SUCCESS;
}

void print_options(void)
{
    printf("\n========== MENU ==========\n"
           " 1) Capture Audio (5 seconds)\n"
           " 2) Show Capture Parameters\n"
           " 3) Play Audio from WAV File\n"
           " 4) Set Volume\n"
           " 5) Enable ALC\n"
           " 6) Disable ALC\n"
           " 0) Exit\n"
           "==========================\n");
}