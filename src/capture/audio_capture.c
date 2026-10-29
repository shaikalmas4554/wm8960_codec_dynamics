#include <stdio.h>
#include <stdint.h>
#include "audio_capture.h"

// capture init
int audio_capture_config_init(pcm_config_t *config)
{
    if (config == NULL)
    {
        fprintf(stderr, "Error: Configuration pointer is NULL\n");
        return -EINVAL;
    }

    config->format       = PCM_CAPTURE_DEFAULT_FORMAT;
    config->channels     = PCM_CAPTURE_DEFAULT_CHANNELS;
    config->rate         = PCM_CAPTURE_DEFAULT_RATE;
    config->period_size  = PCM_CAPTURE_DEFAULT_PERIOD_SIZE;
    config->period_count = PCM_CAPTURE_DEFAULT_PERIOD_COUNT;
    config->buffer_size  = PCM_CAPTURE_DEFAULT_BUFFER_SIZE;
    config->device       = PCM_CAPTURE_DEFAULT_DEVICE;

    return 0;
}

// capture configuration
int audio_capture_configure(snd_pcm_t *pcm, pcm_config_t *config)
{
    snd_pcm_hw_params_t *params = NULL;
    snd_pcm_uframes_t period_size;
    snd_pcm_uframes_t buffer_size;
    unsigned int rate;
    int dir = 0;
    int ret;

    if (pcm == NULL || config == NULL)
    {
        fprintf(stderr, "Error: Invalid PCM handle or configuration\n");
        return -EINVAL;
    }

    // Allocate memory for ALSA hardware parameters.
    ret = snd_pcm_hw_params_malloc(&params);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to allocate hardware parameters: %s\n", snd_strerror(ret));
        return ret;
    }

    // Initialize parameters with the device's available capabilities.
    ret = snd_pcm_hw_params_any(pcm, params);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to retrieve hardware parameters: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Use interleaved access: L0, R0, L1, R1, L2, R2, ...
    ret = snd_pcm_hw_params_set_access(pcm, params, SND_PCM_ACCESS_RW_INTERLEAVED);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to set access mode: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Set the audio sample format.
    ret = snd_pcm_hw_params_set_format(pcm, params, config->format);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to set sample format: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Set the number of channels.
    ret = snd_pcm_hw_params_set_channels(pcm, params, config->channels);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to set channel count: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Request the sample rate closest to the requested rate.
    rate = config->rate;
    dir = 0;
    ret = snd_pcm_hw_params_set_rate_near(pcm, params, &rate, &dir);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to set sample rate: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Request the period size closest to the desired size.
    period_size = config->period_size;
    dir = 0;
    ret = snd_pcm_hw_params_set_period_size_near(pcm, params, &period_size, &dir);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to set period size: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Request a buffer containing the desired number of periods.
    if (config->period_count == 0 || period_size > (snd_pcm_uframes_t)-1 / config->period_count)
    {
        fprintf(stderr, "Error: Invalid period count or buffer size\n");
        ret = -EINVAL;
        goto cleanup;
    }

    buffer_size = period_size * config->period_count;

    ret = snd_pcm_hw_params_set_buffer_size_near(pcm, params, &buffer_size);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to set buffer size: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Apply the selected hardware parameters to the PCM device.
    ret = snd_pcm_hw_params(pcm, params);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to apply hardware parameters: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Read back the actual parameters selected by ALSA.
    rate = 0;
    dir = 0;
    ret = snd_pcm_hw_params_get_rate(params, &rate, &dir);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to read back sample rate: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    ret = snd_pcm_hw_params_get_period_size(params, &period_size, &dir);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to read back period size: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    ret = snd_pcm_hw_params_get_buffer_size(params, &buffer_size);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to read back buffer size: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    // Store the actual settings in our application configuration.
    config->rate = rate;
    config->period_size = period_size;

    printf("ALSA PCM configuration applied successfully.\n");
    printf("Actual sample rate : %u Hz\n", rate);
    printf("Actual period size : %lu frames\n", (unsigned long)period_size);
    printf("Actual buffer size : %lu frames\n", (unsigned long)buffer_size);
    ret = 0;

cleanup:
    snd_pcm_hw_params_free(params);
    return ret;
}

// audio capture
int audio_capture(const char *filename, const pcm_config_t *config, unsigned int duration_seconds)
{
    snd_pcm_t *pcm = NULL;
    pcm_config_t actual_config;
    FILE *file = NULL;
    unsigned char *buffer = NULL;

    snd_pcm_uframes_t frames_remaining;
    snd_pcm_uframes_t frames_to_read;
    snd_pcm_sframes_t frames_read;

    size_t bytes_per_frame;
    size_t buffer_bytes;
    size_t bytes_to_write;

    uint64_t total_frames;
    uint64_t total_bytes = 0;

    int ret;
    int result = -1;

    if (filename == NULL || filename[0] == '\0' || config == NULL ||
        duration_seconds == 0 || config->rate == 0 || config->channels == 0 ||
        config->period_size == 0 || config->period_count == 0 || config->device == NULL)
    {
        fprintf(stderr, "Error: Invalid capture arguments\n");
        return -EINVAL;
    }

    if (config->format != SND_PCM_FORMAT_S16_LE)
    {
        fprintf(stderr,
                "Error: This WAV implementation supports S16_LE only\n");
        return -EINVAL;
    }

    if (config->channels > UINT16_MAX / 2)
    {
        fprintf(stderr, "Error: Unsupported channel count\n");
        return -EINVAL;
    }

    actual_config = *config;
    file = fopen(filename, "wb+");

    if (file == NULL)
    {
        perror("Failed to open output WAV file");
        goto cleanup;
    }

    ret = snd_pcm_open(&pcm, actual_config.device, SND_PCM_STREAM_CAPTURE, 0);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to open ALSA device: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    ret = audio_capture_configure(pcm, &actual_config);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to configure PCM device: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    if (actual_config.rate == 0 || actual_config.period_size == 0)
    {
        fprintf(stderr, "Error: Invalid actual ALSA parameters\n");
        goto cleanup;
    }

    bytes_per_frame = (size_t)actual_config.channels * 2U;
    if (actual_config.period_size > SIZE_MAX / bytes_per_frame)
    {
        fprintf(stderr, "Error: Audio buffer size overflow\n");
        goto cleanup;
    }

    buffer_bytes = (size_t)actual_config.period_size * bytes_per_frame;
    buffer = malloc(buffer_bytes);
    if (buffer == NULL)
    {
        perror("Failed to allocate audio buffer");
        goto cleanup;
    }

    ret = snd_pcm_prepare(pcm);
    if (ret < 0)
    {
        fprintf(stderr, "Failed to prepare PCM device: %s\n", snd_strerror(ret));
        goto cleanup;
    }

    total_frames = (uint64_t)actual_config.rate * duration_seconds;
    if (total_frames > (UINT32_MAX - 36U) / bytes_per_frame)
    {
        fprintf(stderr, "Error: Recording is too large for standard WAV\n");
        goto cleanup;
    }

    if (write_wav_header(file, actual_config.rate, actual_config.channels, 0) < 0)
    {
        fprintf(stderr, "Failed to write WAV header\n");
        goto cleanup;
    }

    frames_remaining = (snd_pcm_uframes_t)total_frames;

    printf("Recording started...\n");
    printf("Device   : %s\n", actual_config.device);
    printf("Rate     : %u Hz\n", actual_config.rate);
    printf("Channels : %u\n", actual_config.channels);
    printf("Duration : %u seconds\n", duration_seconds);

    while (frames_remaining > 0)
    {
        frames_to_read = actual_config.period_size;

        if (frames_to_read > frames_remaining)
            frames_to_read = frames_remaining;

        frames_read = snd_pcm_readi(pcm, buffer, frames_to_read);
        if (frames_read < 0)
        {
            ret = snd_pcm_recover(pcm, (int)frames_read, 1);
            if (ret < 0)
            {
                fprintf(stderr, "Audio capture failed: %s\n", snd_strerror(ret));
                goto cleanup;
            }
            continue;
        }

        if (frames_read == 0)
        {
            fprintf(stderr, "Warning: ALSA returned zero frames\n");
            continue;
        }

        bytes_to_write = (size_t)frames_read * bytes_per_frame;
        if (total_bytes + bytes_to_write > UINT32_MAX - 36U)
        {
            fprintf(stderr, "Error: WAV file size limit reached\n");
            goto cleanup;
        }

        if (fwrite(buffer, 1, bytes_to_write, file) != bytes_to_write)
        {
            perror("Failed to write captured audio");
            goto cleanup;
        }

        total_bytes += bytes_to_write;
        frames_remaining -= (snd_pcm_uframes_t)frames_read;
    }

    if (write_wav_header(file, actual_config.rate, actual_config.channels, (uint32_t)total_bytes) < 0)
    {
        fprintf(stderr, "Failed to finalize WAV header\n");
        goto cleanup;
    }

    if (fflush(file) != 0)
    {
        perror("Failed to flush WAV file");
        goto cleanup;
    }

    printf("Recording completed successfully.\n");
    printf("Frames captured: %llu\n", (unsigned long long)(total_bytes / bytes_per_frame));
    printf("Audio data     : %llu bytes\n", (unsigned long long)total_bytes);
    printf("Output file    : %s\n", filename);

    result = 0;
cleanup:

    free(buffer);

    if (pcm != NULL) snd_pcm_close(pcm);

    if (file != NULL)
    {
        if (fclose(file) != 0)
        {
            perror("Failed to close WAV file");
            result = -1;
        }
    }
    return result;
}

// print current capture config
void audio_capture_print_config(const pcm_config_t *config)
{
    if (config == NULL)
    {
        fprintf(stderr, "Error: Configuration pointer is NULL\n");
        return;
    }

    printf("\n========== Audio Capture Configuration ==========\n");
    printf("ALSA Device  : %s\n", config->device ? config->device : "(not set)");
    printf("Sample Rate  : %u Hz\n", config->rate);
    printf("Channels     : %u\n", config->channels);
    printf("Sample Format: %s\n", snd_pcm_format_name(config->format));
    printf("Period Size  : %lu frames\n", (unsigned long)config->period_size);
    printf("Period Count : %u\n", config->period_count);
    printf("=================================================\n");
}