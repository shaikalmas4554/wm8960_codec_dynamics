#ifndef AUDIO_LEVEL_H
#define AUDIO_LEVEL_H

#include <stddef.h>
#include <stdint.h>

#define AUDIO_LEVEL_MAX_CHANNELS 2
#define AUDIO_LEVEL_MAX_WINDOWS  600
#define AUDIO_LEVEL_FLOOR_DB     (-120.0)

// Running level measurement of interleaved S16_LE audio
typedef struct
{
    unsigned int channels;                         // Number of interleaved channels
    uint64_t frames;                               // Frames measured so far
    double sum_squares[AUDIO_LEVEL_MAX_CHANNELS];  // Sum of squared samples per channel
    int peak[AUDIO_LEVEL_MAX_CHANNELS];            // Largest absolute sample per channel

} audio_level_t;

// Level summary of one recording
typedef struct
{
    audio_level_t total;                           // Whole recording
    double window_db[AUDIO_LEVEL_MAX_WINDOWS];     // RMS (dBFS) of each one-second window
    unsigned int window_count;                     // Number of valid windows
    unsigned int overruns;                         // Overruns recovered during capture

} audio_level_summary_t;

// level reset
void audio_level_reset(audio_level_t *level, unsigned int channels);

// level update with interleaved S16_LE frames
void audio_level_update(audio_level_t *level, const int16_t *samples, size_t frames);

// RMS and peak level in dBFS
double audio_level_rms_db(const audio_level_t *level, unsigned int channel);
double audio_level_peak_db(const audio_level_t *level, unsigned int channel);

// RMS level in dBFS of all channels together
double audio_level_total_rms_db(const audio_level_t *level);

#endif
