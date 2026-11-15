#ifndef DYNAMICS_TEST_H
#define DYNAMICS_TEST_H

#include "audio_capture.h"

#define ALC_TEST_DURATION        15
#define NOISE_GATE_TEST_DURATION 10

// Record the same input with ALC off and on, then compare the levels
int dynamics_test_alc(const char *card_name, const pcm_config_t *config, unsigned int duration_seconds);

// Record background noise with the noise gate off and on, then compare the levels
int dynamics_test_noise_gate(const char *card_name, const pcm_config_t *config, unsigned int duration_seconds);

#endif
