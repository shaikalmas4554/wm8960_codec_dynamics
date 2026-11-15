CC = $(shell printenv CC)

CFLAGS = -Wall -Wextra -g -Iinclude

TARGET = build/wm8960_codec_dynamics

SOURCES = app/user_app.c \
          src/ctl/audio_ctl.c \
		  src/ctl/alc_control.c \
          src/capture/audio_capture.c \
		  src/capture/audio_level.c \
		  src/capture/wav_header.c \
		  src/verify/dynamics_test.c

all: $(TARGET)

$(TARGET): $(SOURCES)
	mkdir -p build
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET) -lasound -lm

clean:
	rm -rf build