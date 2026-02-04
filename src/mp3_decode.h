#ifndef __H_MP3_DECODE__
#define __H_MP3_DECODE__

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

#ifdef __USE_LIBHELIX__
#include "mp3dec.h"
#else
#include "mad.h"
typedef struct mad_stream MAD_STREAM;
typedef struct mad_synth MAD_SYNTH;
typedef struct mad_header MAD_HEADER;
typedef struct mad_pcm MAD_PCM;
typedef struct mad_frame MAD_FRAME;
typedef mad_timer_t MAD_TIMER;
#endif

typedef struct {

  void* mp3_data;
  size_t mp3_data_len;
  int16_t mp3_quality;

  uint8_t* mp3_title;
  uint8_t* mp3_artist;
  uint8_t* mp3_album;

  int32_t mp3_sample_rate;
  int32_t mp3_channels;
  size_t resample_counter;

#ifdef __USE_LIBHELIX__
  HMP3Decoder hHelix;          // Helixデコーダのインスタンスハンドル
  MP3FrameInfo helix_info;     // 現在のフレーム情報（サンプリングレート、出力サンプル数など）
  uint8_t* helix_read_ptr;     // 次に読み込むデータのポインタ（Helixが自動更新する）
  int helix_bytes_left;        // バッファ内に残っているバイト数
#else
  MAD_STREAM mad_stream;
  MAD_FRAME mad_frame;
  MAD_SYNTH mad_synth;
  MAD_TIMER mad_timer;
  MAD_PCM* current_mad_pcm;
  int32_t mp3_frame_options;
#endif

} MP3_DECODE_HANDLE;

int32_t mp3_decode_init(MP3_DECODE_HANDLE* decode);
void mp3_decode_close(MP3_DECODE_HANDLE* decode);
int32_t mp3_decode_parse_tags(MP3_DECODE_HANDLE* decode, int16_t pic_brightness, int16_t pic_half_size, FILE* fp);
int32_t mp3_decode_setup(MP3_DECODE_HANDLE* decode, void* mp3_data, size_t mp3_data_len, int16_t mp3_quality);
int32_t mp3_decode_full(MP3_DECODE_HANDLE* decode, int16_t* decode_buffer, size_t decode_buffer_bytes, size_t* decoded_bytes);
int32_t mp3_decode_resample(MP3_DECODE_HANDLE* decode, int16_t* resample_buffer, size_t resample_buffer_bytes, int16_t resample_freq, size_t* resampled_bytes);

#endif