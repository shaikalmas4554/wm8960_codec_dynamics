#ifndef ALC_CONTROL_H
#define ALC_CONTROL_H

int alc_control_show(const char *card_name);
int alc_control_set_function(const char *card_name, const char *function);
int alc_control_set_integer(const char *card_name, const char *control_name, long value);
int alc_control_set_enum(const char *card_name, const char *control_name, const char *item_name);
int alc_control_show_value(const char *card_name, const char *control_name);

int noise_gate_control_set(const char *card_name, int enable);
int noise_gate_control_set_threshold(const char *card_name, long threshold);
int noise_gate_control_show(const char *card_name);

#endif