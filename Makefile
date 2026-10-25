CC = $(shell printenv CC)

CFLAGS = -Wall -Wextra -g -Iinclude

TARGET = build/wm8960_codec_dynamics

SOURCES = app/user_app.c \
          src/ctl/audio_ctl.c \
          src/capture/audio_capture.c

all: $(TARGET)

$(TARGET): $(SOURCES)
	mkdir -p build
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET) -lasound

clean:
	rm -rf build