# WM8960 Codec Dynamics

User-space tools for the WM8960 hardware ALC (Automatic Level Control) and Noise Gate on the NXP i.MX8M Nano EVK.
The kernel WM8960 driver already exposes the ALC and noise-gate registers as ALSA mixer controls; this program
controls them with libasound (`snd_ctl_*`) and records audio with the ALSA PCM API (`snd_pcm_*`).

Author: Shaik Almas

## Build

    source ~/imx-sdk/environment-setup-armv8a-poky-linux
    make

Copy `build/wm8960_codec_dynamics` to the board (see `commands.txt`) and run it as root.

## Menu

| Option | Action |
|--------|--------|
| 1, 2 | Capture 10 s (`CAPTURE_DURATION`) to `capture.wav`; show capture parameters |
| 3, 4 | ALC Function Stereo / Off |
| 5-11 | ALC Target, Max Gain, Min Gain, Attack, Decay, Hold Time, Mode (each write is read back and verified) |
| 12 | Show the full ALC configuration |
| 13-16 | Noise gate on / off, threshold (0-31), show |
| 17, 18 | Set / show Capture Volume (input PGA, 0-63) for testing different input levels |
| 19 | Capture to a named file |
| 20 | Guided ALC test: records with ALC off then on and compares the levels |
| 21 | Guided noise-gate test: records background noise with the gate off then on |

Every capture prints the RMS and peak level (dBFS) of each channel once per second, and a summary with the
number of buffer overruns at the end.

## Testing the hardware

1. ALC: play `tests/wm8960_alc_step_test.wav` (quiet - loud - quiet) into the microphone, run option 20, and start the
   sound when asked. The result shows how much ALC raised the quiet part, lowered the loud part and reduced the
   loud/quiet step. Repeat at different Capture Volume settings (options 17, 18).
2. Noise gate: keep the room quiet and run option 21. Repeat with different thresholds (option 15).
3. Offline comparison of any two recordings: `python3 tests/compare_alc.py off.wav on.wav`.

## Layout

    app/user_app.c            menu
    src/ctl/                  ALSA control access (alc_control.c, audio_ctl.c)
    src/capture/              PCM capture, WAV header, level measurement
    src/verify/               guided ALC and noise-gate tests
    tests/                    compare_alc.py, step-test stimulus
