#ifndef __H_HMP3P__
#define __H_HMP3P__

#define VERSION "0.2.2 (2024/03/01)"

#define MAX_PATH_LEN (256)

#define FREAD_STAGING_BUFFER_BYTES (512*1024)

#define FREAD_CHUNK_BYTES (16*1024*1024)

#define CHAIN_TABLE_BUFFER_BYTES (44100*2*2*1)    // 44.1kHz 16bit stereo 1sec

#define DRIVER_NONE    (-1)
#define DRIVER_PCM8PP  (0)

//
//  link array chain table
//
typedef struct {
    void* buffer;
    uint16_t buffer_len;
    void* next;
} CHAIN_TABLE;

//
//  extended link array chain table for pcm8pp
//
typedef struct {
    void* buffer;
    uint32_t buffer_len;
    void* next;
} CHAIN_TABLE_EX;

#endif