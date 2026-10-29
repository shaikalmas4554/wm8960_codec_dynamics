#ifndef AUDIO_CAPTURE_H
#define AUDIO_CAPTURE_H

#include <alsa/asoundlib.h>

// Default Capture Configuration
#define PCM_CAPTURE_DEFAULT_DEVICE       "hw:wm8960audio,0"
#define PCM_CAPTURE_DEFAULT_FORMAT       SND_PCM_FORMAT_S16_LE
#define PCM_CAPTURE_DEFAULT_CHANNELS     2
#define PCM_CAPTURE_DEFAULT_RATE         48000
#define PCM_CAPTURE_DEFAULT_PERIOD_SIZE  480
#define PCM_CAPTURE_DEFAULT_PERIOD_COUNT 4
#define PCM_CAPTURE_DEFAULT_BUFFER_SIZE  0


// PCM Capture Configuration 
typedef struct
{
    snd_pcm_format_t format;       // ALSA sample format
    unsigned int channels;         // Number of channels
    unsigned int rate;             // Sample rate in Hz
    snd_pcm_uframes_t period_size; // Frames per period
    unsigned int period_count;     // Desired number of periods
    snd_pcm_uframes_t buffer_size;
    const char *device;            // ALSA PCM device name

} pcm_config_t;

// capture init
int audio_capture_config_init(pcm_config_t *config);

// capture configuration
int audio_capture_configure(snd_pcm_t *pcm, pcm_config_t *config);

// audio capture
int audio_capture(const char *filename, const pcm_config_t *config, unsigned int duration_seconds);

// print current capture config
void audio_capture_print_config(const pcm_config_t *config);

// wav header 
int write_wav_header(FILE *file, unsigned int rate, unsigned int channels, uint32_t data_size);

#endif 