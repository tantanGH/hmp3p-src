#ifndef __H_HMP3P__
#define __H_HMP3P__

#define VERSION "0.9.1 (2026/04/04)"

#define MAX_PATH_LEN (256)

#define FREAD_STAGING_BUFFER_BYTES (512*1024)
#define FREAD_CHUNK_BYTES (8*1024*1024)

#define MAD_MAX_SAMPLES (1152)

//#define CHAIN_TABLE_BUFFER_BYTES    (15625*2*1*1)     // 15625Hz 16bit mono 1sec
//#define CHAIN_TABLE_EX_BUFFER_BYTES (44100*2*2*1)     // 44100Hz 16bit stereo 1sec

#define CHAIN_TABLE_BUFFER_BYTES    (MAD_MAX_SAMPLES*2*1*24)
#define CHAIN_TABLE_EX_BUFFER_BYTES (MAD_MAX_SAMPLES*2*2*72)

#define DRIVER_NONE     (-1)
#define DRIVER_PCM8A    (0)
#define DRIVER_PCM8PP   (1)

#define DEFAULT_VOLUME  (6)

#ifdef __mc68060__
#define DEFAULT_BUFFERS (5)
#else
#define DEFAULT_BUFFERS (4)
#endif

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