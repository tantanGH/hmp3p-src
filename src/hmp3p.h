#ifndef __H_HMP3P__
#define __H_HMP3P__

#define VERSION "0.9.5 (2026/05/04)"

#define MAX_PATH_LEN (256)

#define CONTINUOUS_MP3_BUFFER_BYTES     (2*1024*1024)
#define CONTINUOUS_MP3_INITIAL_BYTES    (2*1024*1024)
#define CONTINUOUS_MP3_CONTINUE_BYTES   (512*1024)
#define CONTINUOUS_MP3_DRAIN_BYTES      (64*1024)

#define MAD_MAX_SAMPLES (1152)

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

#define NUM_SPECTRUM_MODES  (16)
#define SPECTRUM_SCALE      (48)
#define SPECTRUM_FALL_SPEED (1)
#define SPECTRUM_BASE_XPOS  (10)
#define SPECTRUM_BASE_YPOS  (240)

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