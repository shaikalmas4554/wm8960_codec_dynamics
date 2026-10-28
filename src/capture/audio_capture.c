#include <stdio.h>
#include <stdint.h>
#include "audio_capture.h"

// Write a 16-bit little-endian integer to a file.
static int write_u16_le(FILE* file, uint16_t data)
{
    unsigned char bytes[2];

    bytes[0] = (unsigned char)(data & 0xFF);
    bytes[1] = (unsigned char)((data >> 8) & 0xFF);

    return fwrite(bytes, 1, sizeof(bytes), file) == sizeof(bytes) ? 0 : -1;
}

// Write a 32-bit little-endian integer to a file.
static int write_u32_le(FILE *file, uint32_t value)
{
    unsigned char bytes[4];

    bytes[0] = (unsigned char)(value & 0xFF);
    bytes[1] = (unsigned char)((value >> 8) & 0xFF);
    bytes[2] = (unsigned char)((value >> 16) & 0xFF);
    bytes[3] = (unsigned char)((value >> 24) & 0xFF);

    return fwrite(bytes, 1, sizeof(bytes), file) == sizeof(bytes) ? 0 : -1;
}

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

// Convert an ALSA error code into a readable message using snd_strerror().
const char *audio_capture_error_string(int error_code)
{

}