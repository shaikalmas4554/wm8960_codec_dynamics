#include "audio_capture.h"

// capture init
int audio_capture_config_init(pcm_config_t *config)
{

}

// capture configuration
int audio_capture_configure(snd_pcm_t *pcm, pcm_config_t *config)
{

}

// audio capture
int audio_capture(const char *filename, const pcm_config_t *config, unsigned int duration_seconds)
{

}

// print current capture config
void audio_capture_print_config(const pcm_config_t *config)
{

}

// Convert an ALSA error code into a readable message using snd_strerror().
const char *audio_capture_error_string(int error_code)
{

}