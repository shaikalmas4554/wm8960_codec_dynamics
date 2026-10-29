// Write_wav_header writes a standard 44-byte PCM WAV header.
// Initially, the data size is zero. Needs to be updated after recording finishes.
// Write a 16-bit little-endian integer to a file.

#include <stdio.h> 
#include <stdint.h>
#include <limits.h>

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

int write_wav_header(FILE *file, unsigned int rate, unsigned int channels, uint32_t data_size)
{
    uint32_t byte_rate;
    uint16_t block_align;
    const uint16_t bits_per_sample = 16;

    if (channels == 0 || channels > UINT16_MAX / 2)
        return -1;

    block_align = (uint16_t)(channels * 2U);

    if (rate > UINT32_MAX / block_align)
        return -1;

    byte_rate = rate * block_align;

    if (fseek(file, 0, SEEK_SET) != 0)
        return -1;

    // RIFF chunk
    if (fwrite("RIFF", 1, 4, file) != 4)
        return -1;

    if (write_u32_le(file, 36U + data_size) < 0)
        return -1;

    if (fwrite("WAVE", 1, 4, file) != 4)
        return -1;

    // fmt subchunk
    if (fwrite("fmt ", 1, 4, file) != 4)
        return -1;

    if (write_u32_le(file, 16) < 0)
        return -1;

    if (write_u16_le(file, 1) < 0)
        return -1;

    if (write_u16_le(file, (uint16_t)channels) < 0)
        return -1;

    if (write_u32_le(file, rate) < 0)
        return -1;

    if (write_u32_le(file, byte_rate) < 0)
        return -1;

    if (write_u16_le(file, block_align) < 0)
        return -1;

    if (write_u16_le(file, bits_per_sample) < 0)
        return -1;

    // data subchunk 
    if (fwrite("data", 1, 4, file) != 4)
        return -1;

    if (write_u32_le(file, data_size) < 0)
        return -1;

    return 0;
}