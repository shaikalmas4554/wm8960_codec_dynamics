// Guided hardware verification of the WM8960 ALC and noise gate.
// Each test records twice with only the codec setting changed, then compares the measured levels.

#include <errno.h>
#include <stdio.h>

#include "alc_control.h"
#include "audio_level.h"
#include "dynamics_test.h"

#define ALC_OFF_FILE        "alc_test_off.wav"
#define ALC_ON_FILE         "alc_test_on.wav"
#define GATE_OFF_FILE       "gate_test_off.wav"
#define GATE_ON_FILE        "gate_test_on.wav"

#define MIN_STIMULUS_STEP_DB  5.0
#define MIN_STEP_REDUCTION_DB 1.0
#define MIN_NOISE_DROP_DB     1.0

// Wait until the user presses Enter. The newline left by scanf() is discarded first.
static int wait_for_enter(const char *message)
{
    int ch;

    do
    {
        ch = getchar();
    } while (ch != '\n' && ch != EOF);

    printf("%s\nPress Enter to start recording...", message);
    fflush(stdout);

    do
    {
        ch = getchar();
    } while (ch != '\n' && ch != EOF);

    return ch == EOF ? -1 : 0;
}

// Median of a list of levels. The median ignores a single click, such as the key press that starts a recording.
static double median(const double *values, unsigned int count)
{
    double sorted[AUDIO_LEVEL_MAX_WINDOWS];
    unsigned int i;
    unsigned int j;

    for (i = 0; i < count; i++)
    {
        double value = values[i];

        for (j = i; j > 0 && sorted[j - 1] > value; j--)
        {
            sorted[j] = sorted[j - 1];
        }

        sorted[j] = value;
    }

    return count % 2 ? sorted[count / 2] : (sorted[count / 2 - 1] + sorted[count / 2]) / 2.0;
}

// Median window level (dBFS) of the first, middle and last third of a recording
static int thirds(const audio_level_summary_t *summary, double *first, double *middle, double *last)
{
    unsigned int third = summary->window_count / 3;

    if (third == 0)
    {
        return -1;
    }

    *first = median(&summary->window_db[0], third);
    *middle = median(&summary->window_db[third], third);
    *last = median(&summary->window_db[summary->window_count - third], third);
    return 0;
}

static void print_channel_levels(const char *label, const audio_level_t *level)
{
    unsigned int channel;

    for (channel = 0; channel < level->channels; channel++)
    {
        printf("%-10s ch%u  RMS %7.2f dBFS  Peak %7.2f dBFS\n", label, channel, audio_level_rms_db(level, channel),
               audio_level_peak_db(level, channel));
    }
}

int dynamics_test_alc(const char *card_name, const pcm_config_t *config, unsigned int duration_seconds)
{
    audio_level_summary_t off;
    audio_level_summary_t on;
    double off_quiet, off_loud, off_end;
    double on_quiet, on_loud, on_end;
    double off_step;
    double on_step;
    int err;

    if (card_name == NULL || config == NULL || duration_seconds < 3)
    {
        return -EINVAL;
    }

    printf("\n========== ALC STEP TEST ==========\n");
    printf("Play tests/wm8960_alc_step_test.wav (quiet - loud - quiet) into the microphone.\n");
    printf("Keep the source, volume and microphone position the same for both recordings.\n");
    printf("Recording length: %u seconds each.\n", duration_seconds);

    err = alc_control_set_function(card_name, "Off");
    if (err < 0)
    {
        return err;
    }

    if (wait_for_enter("ALC is OFF. Start the step sound together with the recording.") < 0)
    {
        return -EIO;
    }

    err = audio_capture_with_stats(ALC_OFF_FILE, config, duration_seconds, &off);
    if (err < 0)
    {
        return err;
    }

    err = alc_control_set_function(card_name, "Stereo");
    if (err < 0)
    {
        return err;
    }

    if (wait_for_enter("ALC is ON. Start the step sound together with the recording.") < 0)
    {
        return -EIO;
    }

    err = audio_capture_with_stats(ALC_ON_FILE, config, duration_seconds, &on);
    if (err < 0)
    {
        return err;
    }

    printf("\n---------- ALC TEST RESULT ----------\n");
    print_channel_levels("ALC OFF", &off.total);
    print_channel_levels("ALC ON", &on.total);

    if (thirds(&off, &off_quiet, &off_loud, &off_end) < 0 || thirds(&on, &on_quiet, &on_loud, &on_end) < 0)
    {
        printf("Recording too short to compare the quiet and loud parts.\n");
        return -EINVAL;
    }

    off_step = off_loud - off_quiet;
    on_step = on_loud - on_quiet;

    printf("\n%-24s %10s %10s %10s\n", "Median level (dBFS)", "Quiet", "Loud", "Step");
    printf("%-24s %10.2f %10.2f %10.2f\n", "ALC OFF", off_quiet, off_loud, off_step);
    printf("%-24s %10.2f %10.2f %10.2f\n", "ALC ON", on_quiet, on_loud, on_step);

    // Without a clear loud part in the ALC OFF recording the comparison means nothing.
    if (off_step < MIN_STIMULUS_STEP_DB)
    {
        printf("\nRESULT: INVALID TEST. The loud part of the step sound was not heard in the ALC OFF recording\n");
        printf("        (step %.2f dB, at least %.1f dB needed). Play it louder or closer to the microphone,\n", off_step,
               MIN_STIMULUS_STEP_DB);
        printf("        or raise Capture Volume (menu 17), then run the test again.\n");
        printf("Files: %s, %s\n", ALC_OFF_FILE, ALC_ON_FILE);
        printf("-------------------------------------\n");
        return -ENODATA;
    }

    printf("\nQuiet part gain change : %+.2f dB (positive means ALC raised quiet sound)\n", on_quiet - off_quiet);
    printf("Loud part gain change  : %+.2f dB (zero or negative means ALC held loud sound)\n", on_loud - off_loud);
    printf("Loud/quiet step reduced: %.2f dB\n", off_step - on_step);

    if (off_step - on_step >= MIN_STEP_REDUCTION_DB)
    {
        printf("RESULT: ALC compressed the level step.\n");
    }
    else
    {
        printf("RESULT: ALC effect not observed. Check the input level, ALC Target and ALC Max Gain.\n");
    }

    printf("Files: %s, %s\n", ALC_OFF_FILE, ALC_ON_FILE);
    printf("-------------------------------------\n");
    return 0;
}

int dynamics_test_noise_gate(const char *card_name, const pcm_config_t *config, unsigned int duration_seconds)
{
    audio_level_summary_t off;
    audio_level_summary_t on;
    double off_db;
    double on_db;
    int err;

    if (card_name == NULL || config == NULL || duration_seconds == 0)
    {
        return -EINVAL;
    }

    printf("\n========== NOISE GATE TEST ==========\n");
    printf("Keep the room quiet and play no sound, so only background noise is recorded.\n");
    printf("The noise gate works together with the ALC, so ALC is set to Stereo for this test.\n");
    printf("Recording length: %u seconds each.\n", duration_seconds);

    err = alc_control_set_function(card_name, "Stereo");
    if (err < 0)
    {
        return err;
    }

    err = noise_gate_control_set(card_name, 0);
    if (err < 0)
    {
        return err;
    }

    if (wait_for_enter("Noise gate is OFF.") < 0)
    {
        return -EIO;
    }

    err = audio_capture_with_stats(GATE_OFF_FILE, config, duration_seconds, &off);
    if (err < 0)
    {
        return err;
    }

    err = noise_gate_control_set(card_name, 1);
    if (err < 0)
    {
        return err;
    }

    if (wait_for_enter("Noise gate is ON.") < 0)
    {
        return -EIO;
    }

    err = audio_capture_with_stats(GATE_ON_FILE, config, duration_seconds, &on);
    if (err < 0)
    {
        return err;
    }

    off_db = audio_level_total_rms_db(&off.total);
    on_db = audio_level_total_rms_db(&on.total);

    printf("\n---------- NOISE GATE TEST RESULT ----------\n");
    print_channel_levels("GATE OFF", &off.total);
    print_channel_levels("GATE ON", &on.total);
    printf("\nNoise floor change: %+.2f dB (negative means quieter)\n", on_db - off_db);

    if (off_db - on_db >= MIN_NOISE_DROP_DB)
    {
        printf("RESULT: Noise gate lowered the background noise.\n");
    }
    else
    {
        printf("RESULT: Noise gate effect not observed. Try a higher Noise Gate Threshold (menu 15).\n");
    }

    printf("Files: %s, %s\n", GATE_OFF_FILE, GATE_ON_FILE);
    printf("--------------------------------------------\n");
    return 0;
}