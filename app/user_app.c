#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "audio_capture.h"
#include "audio_ctl.h"
#include "alc_control.h"

#define ALSA_CONTROL_DEVICE "hw:wm8960audio"
#define CAPTURE_FILENAME    "capture.wav"
#define CAPTURE_DURATION    10

void print_options(void);

int main(void)
{
    pcm_config_t config;
    int option;
    int ret;

    printf("\n=================================\n");
    printf("      WM8960 Codec Dynamics\n");
    printf("=================================\n");

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
                {
                    fprintf(stderr, "Audio capture failed\n");
                }
                else
                {
                    printf("Audio saved to %s\n", CAPTURE_FILENAME);
                }
                break;

            case 2:
                audio_capture_print_config(&config);
                break;

            case 3:
                ret = alc_control_set_function(ALSA_CONTROL_DEVICE, "Stereo");
                if (ret == 0)
                {
                    alc_control_show(ALSA_CONTROL_DEVICE);
                }
                break;

            case 4:
                ret = alc_control_set_function(ALSA_CONTROL_DEVICE, "Off");
                if (ret == 0)
                {
                    alc_control_show(ALSA_CONTROL_DEVICE);
                }
                break;

            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            {
                const char *control_name;
                long value;

                switch (option)
                {
                    case 5:
                        control_name = "ALC Target";
                        break;

                    case 6:
                        control_name = "ALC Max Gain";
                        break;

                    case 7:
                        control_name = "ALC Min Gain";
                        break;

                    case 8:
                        control_name = "ALC Attack";
                        break;

                    default:
                        control_name = "ALC Decay";
                        break;
                }

                printf("Enter value for %s: ", control_name);

                if (scanf("%ld", &value) != 1)
                {
                    int ch;

                    printf("Invalid input. Please enter an integer.\n");

                    while ((ch = getchar()) != '\n' && ch != EOF);

                    break;
                }

                ret = alc_control_set_integer(ALSA_CONTROL_DEVICE, control_name, value);
                if (ret == 0)
                {
                    alc_control_show_value(ALSA_CONTROL_DEVICE, control_name);
                }
                break;
            }

            case 10:
            {
                long value;

                printf("Enter value for ALC Hold Time: ");

                if (scanf("%ld", &value) != 1)
                {
                    int ch;

                    printf("Invalid input. Please enter an integer.\n");

                    while ((ch = getchar()) != '\n' && ch != EOF);

                    break;
                }

                ret = alc_control_set_integer(ALSA_CONTROL_DEVICE, "ALC Hold Time", value);
                if (ret == 0)
                {
                    alc_control_show_value(ALSA_CONTROL_DEVICE, "ALC Hold Time");
                }
                break;
            }

            case 11:
            {
                char mode[32];

                printf("Enter ALC mode (ALC or Limiter): ");

                if (scanf("%31s", mode) != 1)
                {
                    printf("Invalid input.\n");
                    break;
                }

                ret = alc_control_set_enum(ALSA_CONTROL_DEVICE, "ALC Mode", mode);
                if (ret == 0)
                {
                    alc_control_show(ALSA_CONTROL_DEVICE);
                }
                break;
            }

            case 12:
                ret = alc_control_show(ALSA_CONTROL_DEVICE);
                break;

            case 13:
                ret = noise_gate_control_set(ALSA_CONTROL_DEVICE, 1);
                if (ret == 0)
                {
                    noise_gate_control_show(ALSA_CONTROL_DEVICE);
                }
                break;

            case 14:
                ret = noise_gate_control_set(ALSA_CONTROL_DEVICE, 0);
                if (ret == 0)
                {
                    noise_gate_control_show(ALSA_CONTROL_DEVICE);
                }
                break;

            case 15:
            {
                long threshold;

                printf("Enter Noise Gate Threshold (0-31): ");

                if (scanf("%ld", &threshold) != 1)
                {
                    int ch;

                    printf("Invalid input. Please enter an integer.\n");

                    while ((ch = getchar()) != '\n' && ch != EOF);

                    break;
                }

                ret = noise_gate_control_set_threshold(ALSA_CONTROL_DEVICE, threshold);
                if (ret == 0)
                {
                    noise_gate_control_show(ALSA_CONTROL_DEVICE);
                }
                break;
            }

            case 16:
                ret = noise_gate_control_show(ALSA_CONTROL_DEVICE);
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
    printf("\n========== WM8960 CODEC DYNAMICS ==========\n");

    printf("\n--- PCM CAPTURE ---\n");
    printf(" 1) Capture Audio (%d seconds)\n", CAPTURE_DURATION);
    printf(" 2) Show Capture Parameters\n");

    printf("\n--- AUTOMATIC LEVEL CONTROL (ALC) ---\n");
    printf(" 3) Enable ALC\n");
    printf(" 4) Disable ALC\n");
    printf(" 5) Set ALC Target\n");
    printf(" 6) Set ALC Maximum Gain\n");
    printf(" 7) Set ALC Minimum Gain\n");
    printf(" 8) Set ALC Attack\n");
    printf(" 9) Set ALC Decay\n");
    printf("10) Set ALC Hold Time\n");
    printf("11) Set ALC Mode\n");
    printf("12) Show ALC Configuration\n");

    printf("\n--- NOISE GATE ---\n");
    printf("13) Enable Noise Gate\n");
    printf("14) Disable Noise Gate\n");
    printf("15) Set Noise Gate Threshold\n");
    printf("16) Show Noise Gate Configuration\n");

    printf("\n--- SYSTEM ---\n");
    printf(" 0) Exit\n");

    printf("===========================================\n");
}