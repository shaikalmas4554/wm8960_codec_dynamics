// Level measurement helpers: RMS and peak of interleaved 16-bit PCM in dBFS.
// 0 dBFS is the maximum digital level, more negative is quieter.

#include <math.h>
#include <string.h>

#include "audio_level.h"

#define FULL_SCALE 32768.0

static double to_db(double ratio)
{
    if (ratio <= 0.0)
    {
        return AUDIO_LEVEL_FLOOR_DB;
    }

    return 20.0 * log10(ratio);
}

void audio_level_reset(audio_level_t *level, unsigned int channels)
{
    if (level == NULL)
    {
        return;
    }

    memset(level, 0, sizeof(*level));
    level->channels = channels > AUDIO_LEVEL_MAX_CHANNELS ? AUDIO_LEVEL_MAX_CHANNELS : channels;
}

void audio_level_update(audio_level_t *level, const int16_t *samples, size_t frames)
{
    size_t frame;
    unsigned int channel;

    if (level == NULL || samples == NULL)
    {
        return;
    }

    for (frame = 0; frame < frames; frame++)
    {
        for (channel = 0; channel < level->channels; channel++)
        {
            int sample = samples[frame * level->channels + channel];
            int magnitude = sample < 0 ? -sample : sample;

            level->sum_squares[channel] += (double)sample * sample;

            if (magnitude > level->peak[channel])
            {
                level->peak[channel] = magnitude;
            }
        }
    }

    level->frames += frames;
}

double audio_level_rms_db(const audio_level_t *level, unsigned int channel)
{
    if (level == NULL || channel >= level->channels || level->frames == 0)
    {
        return AUDIO_LEVEL_FLOOR_DB;
    }

    return to_db(sqrt(level->sum_squares[channel] / (double)level->frames) / FULL_SCALE);
}

double audio_level_peak_db(const audio_level_t *level, unsigned int channel)
{
    if (level == NULL || channel >= level->channels)
    {
        return AUDIO_LEVEL_FLOOR_DB;
    }

    return to_db((double)level->peak[channel] / FULL_SCALE);
}

double audio_level_total_rms_db(const audio_level_t *level)
{
    double sum = 0.0;
    unsigned int channel;

    if (level == NULL || level->frames == 0 || level->channels == 0)
    {
        return AUDIO_LEVEL_FLOOR_DB;
    }

    for (channel = 0; channel < level->channels; channel++)
    {
        sum += level->sum_squares[channel];
    }

    return to_db(sqrt(sum / ((double)level->frames * level->channels)) / FULL_SCALE);
}
