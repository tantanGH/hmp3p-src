#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <x68k/dos.h>
#include <x68k/iocs.h>
#include <himem.h>
#include <jpeg.h>
#include <utf16_cp932.h>

#include "mp3_decode.h"

//
//  init mp3 decoder handle
//
int32_t mp3_decode_init(MP3_DECODE_HANDLE* decode) {

  // baseline
  decode->mp3_data = NULL;
  decode->mp3_data_len = 0;
  decode->mp3_quality = 0;

  // ID3v2 tags
  decode->mp3_title = NULL;
  decode->mp3_artist = NULL;
  decode->mp3_album = NULL;

  // sampling parameters
  decode->mp3_sample_rate = -1;
  decode->mp3_channels = -1;
  decode->resample_counter = 0;
  decode->resample_src_buffer = (int16_t*)himem_malloc(sizeof(int16_t) * MAD_MAX_SAMPLES * 2);

  // mad
  mad_stream_init(&(decode->mad_stream));
  mad_frame_init(&(decode->mad_frame));
  mad_synth_init(&(decode->mad_synth));
  decode->mp3_frame_options = 0;
  decode->current_mad_pcm = NULL;

  return 0;
}

//
//  close decoder handle
//
void mp3_decode_close(MP3_DECODE_HANDLE* decode) {

  // mad
  mad_synth_finish(&(decode->mad_synth));
  mad_frame_finish(&(decode->mad_frame));
  mad_stream_finish(&(decode->mad_stream));

  if (decode->resample_src_buffer != NULL) {
    himem_free(decode->resample_src_buffer);
    decode->resample_src_buffer = NULL;
  }

  if (decode->mp3_title != NULL) {
    free(decode->mp3_title);
    decode->mp3_title = NULL;
  }

  if (decode->mp3_artist != NULL) {
    free(decode->mp3_artist);
    decode->mp3_artist = NULL;
  }

  if (decode->mp3_album != NULL) {
    free(decode->mp3_album);
    decode->mp3_album = NULL;
  }
}

//
//  setup decode operation
//
int32_t mp3_decode_setup(MP3_DECODE_HANDLE* decode, void* mp3_data, size_t mp3_data_len, int16_t mp3_quality) {

  int32_t rc = 0;

  // baseline
  decode->mp3_data = mp3_data;
  decode->mp3_data_len = mp3_data_len;
  decode->mp3_quality = mp3_quality;

  // sampling parameters
  decode->mp3_sample_rate = -1;
  decode->mp3_channels = -1;

  // for resampling
  decode->resample_counter = 0;

  // mad frame options
  decode->mp3_frame_options = 
    (decode->mp3_quality == 1) ? (MAD_OPTION_IGNORECRC | MAD_OPTION_HALFSAMPLERATE) : MAD_OPTION_IGNORECRC;

  mad_stream_init(&(decode->mad_stream));
  mad_frame_init(&(decode->mad_frame));
  mad_synth_init(&(decode->mad_synth));
  mad_stream_buffer(&(decode->mad_stream), mp3_data, mp3_data_len);

  decode->current_mad_pcm = NULL;

exit:
  return rc;
}

//
//  parse ID3v2 tags
//
int32_t mp3_decode_parse_tags(MP3_DECODE_HANDLE* decode, int16_t pic_brightness, int16_t pic_half_size, int32_t fd) {

  // read the first 10 bytes of the MP3 file
  uint8_t mp3_header[10];
  size_t ret = _dos_read(fd, mp3_header, 10);
  if (ret != 10) {
    printf("error: cannot read mp3 file.\n");
    return -1;
  }

  // check if the MP3 file has an ID3v2 tag
  if (!(mp3_header[0] == 'I' && mp3_header[1] == 'D' && mp3_header[2] == '3')) {
    return 0;
  }

  // extract the total tag size (syncsafe integer)
  uint32_t total_tag_size = ((mp3_header[6] & 0x7f) << 21) | ((mp3_header[7] & 0x7f) << 14) |
                            ((mp3_header[8] & 0x7f) << 7)  | (mp3_header[9] & 0x7f);

  // ID3v2 version
  int16_t id3v2_version = mp3_header[3];
  if (id3v2_version < 0x03) {
    return total_tag_size + 10;     // does not support ID3v2.2 or before
  }

  // skip extended ID3v2 header
  if (mp3_header[5] & (1<<6)) {
    uint8_t ext_header[6];
    _dos_read(fd, ext_header, 6);
    uint32_t ext_header_size = id3v2_version == 0x03 ? *((uint32_t*)(ext_header + 0)) :
                                ((ext_header[0] & 0x7f) << 21) | ((ext_header[1] & 0x7f) << 14) |
                                ((ext_header[2] & 0x7f) << 7)  | (ext_header[3] & 0x7f);
    _dos_seek(fd, ext_header_size, 1);
    total_tag_size -= 6 + ext_header_size;
  }

  uint8_t frame_header[10];
  int32_t ofs = 0;

  //printf("total tag size = %d\n",total_tag_size);

  while ((ofs + 10) < total_tag_size) {

    _dos_read(fd, frame_header, 10);

    uint32_t frame_size = (id3v2_version == 0x03) ? *((uint32_t*)(frame_header + 4)) :
                            ((frame_header[4] & 0x7f) << 21) | ((frame_header[5] & 0x7f) << 14) |
                            ((frame_header[6] & 0x7f) << 7)  |  (frame_header[7] & 0x7f);    

    //uint8_t tag_key[5];
    //memcpy(tag_key, frame_header, 4);
    //tag_key[4] = '\0';
    //printf("%s (%d)\n", tag_key, frame_size);
    
    //if ((ofs + frame_size) > total_tag_size) break;

    if (memcmp(frame_header, "0000", 4) < 0 || memcmp(frame_header, "ZZZZ", 4) > 0) {

      break;

    } else if (memcmp(frame_header, "TIT2", 4) == 0) {

      // title
      uint8_t* frame_data = malloc(frame_size);
      _dos_read(fd, frame_data, frame_size);
      if (frame_data[0] == 0x00) {              // ISO-8859-1
        decode->mp3_title = malloc(frame_size - 1 + 1);
        memcpy(decode->mp3_title, frame_data + 1, frame_size - 1);
        decode->mp3_title[frame_size - 1] = '\0';
      } else if (frame_data[0] == 0x01) {       // UTF-16 with BOM
        decode->mp3_title = malloc(frame_size - 3 + 1);
        decode->mp3_title[0] = '\0';
        utf16_to_cp932(decode->mp3_title, frame_size - 3 + 1, frame_data + 1, frame_size - 1);
      }
      free(frame_data);

    } else if (memcmp(frame_header, "TPE1", 4) == 0 && frame_size >= 4) {

      // artist
      uint8_t* frame_data = malloc(frame_size);
      _dos_read(fd, frame_data, frame_size);

      if (frame_data[0] == 0x00) {              // ISO-8859-1
        decode->mp3_artist = malloc(frame_size - 1 + 1);
        memcpy(decode->mp3_artist, frame_data + 1, frame_size - 1);
        decode->mp3_artist[frame_size - 1] = '\0';
      } else if (frame_data[0] == 0x01) {       // UTF-16 with BOM
        decode->mp3_artist = malloc(frame_size - 3 + 1);
        decode->mp3_artist[0] = '\0';
        utf16_to_cp932(decode->mp3_artist, frame_size - 3 + 1, frame_data + 1, frame_size - 1);
      }
      free(frame_data);   

    } else if (memcmp(frame_header, "TALB", 4) == 0) {

      // album
      uint8_t* frame_data = malloc(frame_size);
      _dos_read(fd, frame_data, frame_size);

      if (frame_data[0] == 0x00) {              // ISO-8859-1
        decode->mp3_album = malloc(frame_size - 1 + 1);
        memcpy(decode->mp3_album, frame_data + 1, frame_size - 1);
        decode->mp3_album[frame_size - 1] = '\0';
      } else if (frame_data[0] == 0x01) {       // UTF-16 with BOM
        decode->mp3_album = malloc(frame_size - 3 + 1);
        decode->mp3_album[0] = '\0';
        utf16_to_cp932(decode->mp3_album, frame_size - 3 + 1, frame_data + 1, frame_size - 1);
      }
      free(frame_data);

    } else if (pic_brightness > 0 && memcmp(frame_header, "APIC", 4) == 0) {

      // album art
      uint8_t* frame_data = malloc(frame_size);
      _dos_read(fd, frame_data, frame_size);

      uint8_t* mime = frame_data+1;
      uint8_t* desc = mime + strlen(mime) + 1 + 1;
      uint8_t* pic_data = desc + strlen(desc) + 1;
      uint32_t pic_data_len = frame_size - (pic_data - frame_data);

      if (pic_data[0] == 0xff && pic_data[1] == 0xd8) {

        // jpeg
        JPEG jpg;
        jpeg_open(&jpg, pic_brightness);
        if (jpeg_draw(&jpg, pic_data, pic_data_len, 0) != 0) {
//          printf("unsupported jpeg artwork format. (progressive JPEG?)\n");
        }
        jpeg_close(&jpg);

//      } else if (pic_data[0] == 0x89 && pic_data[1] == 0x50) {
//        // png
//        PNG_DECODE_HANDLE png = { 0 };
//        png_init(&png, pic_brightness, pic_half_size);
//        png_load(&png, pic_data, pic_data_len);
//        png_close(&png);
      }

      free(frame_data);

    } else {
      // other tags
      _dos_seek(fd, frame_size, 1);
    }

    ofs += 10 + frame_size;

  }

  return 10 + total_tag_size;
}

#ifndef __OPT_X68K_16BIT_PCM_DIRECT__
//
//  inline helper: 24bit signed int to 16bit signed int
//
static inline int16_t __attribute__((hot)) scale_16bit(mad_fixed_t sample) {

  // round
  sample += (1L << (MAD_F_FRACBITS - 16));

  // clip
  if (sample >= MAD_F_ONE) {
    sample = MAD_F_ONE - 1;
  }
  if (sample < -MAD_F_ONE) {
    sample = -MAD_F_ONE;
  }

  // quantize
  return sample >> (MAD_F_FRACBITS + 1 - 16);
}

//
//  inline helper: 24bit signed int to 12bit signed int
//
static inline int16_t scale_12bit(mad_fixed_t sample) {

  // round
  sample += (1L << (MAD_F_FRACBITS - 12));

  // clip
  if (sample >= MAD_F_ONE) {
    sample = MAD_F_ONE - 1;
  }
  if (sample < -MAD_F_ONE) {
    sample = -MAD_F_ONE;
  }

  // quantize
  return sample >> (MAD_F_FRACBITS + 1 - 12);
}
#endif

//
//  decode MP3 stream
//
int32_t mp3_decode_full(MP3_DECODE_HANDLE* decode, int16_t* decode_buffer, size_t decode_buffer_bytes, size_t* decoded_bytes) {

  // default return code
  int32_t rc = -1;

  // decode counter
  int32_t decode_ofs = 0;

#ifdef __VERBOSE__
  uint32_t t0 = (_iocs_ontime()).sec;
#endif

  for (;;) {
    
    if (decode->current_mad_pcm == NULL) {

      int16_t result = mad_frame_decode(&(decode->mad_frame), &(decode->mad_stream));
      if (result == -1) {
        if (decode->mad_stream.error == MAD_ERROR_BUFLEN) {
          // MP3 EOF
          break;
        } else if (MAD_RECOVERABLE(decode->mad_stream.error)) {
          continue;
        } else {
          _iocs_b_print("error: ");
          _iocs_b_print(mad_stream_errorstr(&(decode->mad_stream)));
          _iocs_b_print("\r\n");
          goto exit;
        }
      }

      decode->mad_frame.options = decode->mp3_frame_options;

      // --- 16bit直書き出し最適化 ---
#ifdef __OPT_X68K_16BIT_PCM_DIRECT__
      // synth_fullが直接書き込む先のポインタをセット
      // 現在の書き込みオフセット位置を渡す
      decode->mad_synth.pcm_16bit = &decode_buffer[decode_ofs];

      // バッファオーバーフローの事前チェック
      // Layer IIIなら最大1152サンプル * 2ch = 2304 samples 分の空きが必要
      if ((decode_ofs + MAD_MAX_SAMPLES * 2) * sizeof(int16_t) > decode_buffer_bytes) {
          break; 
      }
#endif

      mad_synth_frame(&(decode->mad_synth), &(decode->mad_frame));

#ifdef __OPT_X68K_16BIT_PCM_DIRECT__
      // synth_fullの中ですでに書き込みは完了しているので、
      // 実際に生成されたサンプル数分だけオフセットを進める
      decode_ofs += (decode->mad_synth.pcm.length * decode->mad_synth.pcm.channels);
      
      // 次のフレームへ（変換ループをスキップするためNULLのままにする）
      decode->current_mad_pcm = NULL; 
#else
      // 従来通り、後段の変換ループに処理を任せる
      decode->current_mad_pcm = &(decode->mad_synth.pcm);
#endif

      if (decode->mp3_sample_rate < 0) {
        decode->mp3_sample_rate = decode->mad_synth.pcm.samplerate;
        decode->mp3_channels = decode->mad_synth.pcm.channels;
      }

    } 

#ifndef __OPT_X68K_16BIT_PCM_DIRECT__
    // --- 従来の変換ループ（DIRECTオプション時はコンパイルされない） ---
    MAD_PCM* pcm = decode->current_mad_pcm;
    if (decode_ofs * sizeof(int16_t) + ( pcm->length * 2 * pcm->channels ) > decode_buffer_bytes) {
      break;
    }

    if (pcm->channels == 2) {
      for (int32_t i = 0; i < pcm->length; i++) {
        decode_buffer[ decode_ofs++ ] = scale_16bit(pcm->samples[0][i]);
        decode_buffer[ decode_ofs++ ] = scale_16bit(pcm->samples[1][i]);
      }
    } else {
      for (int32_t i = 0; i < pcm->length; i++) {
        decode_buffer[ decode_ofs++ ] = scale_16bit(pcm->samples[0][i]);
      }
    }
    decode->current_mad_pcm = NULL;
#endif

  }

  // success
  rc = 0;

exit:

  // push resampled count
  *decoded_bytes = decode_ofs * sizeof(int16_t);

#ifdef __VERBOSE__
  uint32_t t1 = (_iocs_ontime()).sec;
  printf("%d samples/sec\n",(int32_t)(decode_ofs * 100.0 / 2.0 / (t1 - t0)));
#endif

  return rc;
}

//
//  decode MP3 stream with resampling
//
int32_t mp3_decode_resample(MP3_DECODE_HANDLE* decode, int16_t* resample_buffer, size_t resample_buffer_bytes, int16_t resample_freq, size_t* resampled_bytes) {

  // default return code
  int32_t rc = -1;

  // down sampling counter
  int32_t resample_ofs = 0;

#ifdef __VERBOSE__
  uint32_t t0 = (_iocs_ontime()).sec;
#endif

  for (;;) {
    
    if (decode->current_mad_pcm == NULL) {

      int16_t result = mad_frame_decode(&(decode->mad_frame), &(decode->mad_stream));
      if (result == -1) {
        if (decode->mad_stream.error == MAD_ERROR_BUFLEN) {
          break;
        } else if (MAD_RECOVERABLE(decode->mad_stream.error)) {
          continue;
        } else {
          _iocs_b_print("error: ");
          _iocs_b_print(mad_stream_errorstr(&(decode->mad_stream)));
          _iocs_b_print("\r\n");
          goto exit;
        }
      }

      decode->mad_frame.options = decode->mp3_frame_options;

      // --- 16bit直書き出し最適化 ---
#ifdef __OPT_X68K_16BIT_PCM_DIRECT__
      // synth_full/half が書き出す先の作業用バッファを指定
      // decodeハンドル内に 1152サンプル*2ch 分の short領域を確保している前提
      decode->mad_synth.pcm_16bit = decode->resample_src_buffer; 
#endif

      mad_synth_frame(&(decode->mad_synth), &(decode->mad_frame));
      decode->current_mad_pcm = &(decode->mad_synth.pcm);

      if (decode->mp3_sample_rate < 0) {
        decode->mp3_sample_rate = decode->current_mad_pcm->samplerate;
        decode->mp3_channels = decode->current_mad_pcm->channels;
      }
    } 

    MAD_PCM* pcm = decode->current_mad_pcm;
    // バッファ溢れチェック（ダウンサンプリング後なので実際はもっと余裕があるはずですが安全のため）
    if (resample_ofs * sizeof(int16_t) + ( pcm->length * sizeof(int16_t) ) > resample_buffer_bytes) {
      break;
    }

#ifdef __OPT_X68K_16BIT_PCM_DIRECT__
    // --- 最適化された16bitソースからのダウンサンプリング ---
    int16_t* src_pcm = decode->resample_src_buffer;

    if (pcm->channels == 2) {
      for (int32_t i = 0; i < pcm->length; i++) {
        decode->resample_counter += resample_freq;
        if (decode->resample_counter < pcm->samplerate) continue;

        // すでに16bit化されているので、読み取って平均・シフトするだけ
        // (L + R) / 2 / 16  => ADPCM用12bitモノラル化
        resample_buffer[ resample_ofs++ ] = ( src_pcm[i*2] + src_pcm[i*2+1] ) >> 5; 
        decode->resample_counter -= pcm->samplerate;
      }
    } else {
      for (int32_t i = 0; i < pcm->length; i++) {
        decode->resample_counter += resample_freq;
        if (decode->resample_counter < pcm->samplerate) continue;

        // 単純に16bitから12bitへ
        resample_buffer[ resample_ofs++ ] = src_pcm[i] >> 4;
        decode->resample_counter -= pcm->samplerate;
      }
    }
#else
    // --- 従来の32bitソースからのダウンサンプリング ---
    if (pcm->channels == 2) {
      for (int32_t i = 0; i < pcm->length; i++) {
        decode->resample_counter += resample_freq;
        if (decode->resample_counter < pcm->samplerate) continue;
        resample_buffer[ resample_ofs++ ] = ( scale_16bit(pcm->samples[0][i]) + scale_16bit(pcm->samples[1][i]) ) / 2 / 16;
        decode->resample_counter -= pcm->samplerate;
      }
    } else {
      for (int32_t i = 0; i < pcm->length; i++) {
        decode->resample_counter += resample_freq;
        if (decode->resample_counter < pcm->samplerate) continue;
        resample_buffer[ resample_ofs++ ] = scale_12bit(pcm->samples[0][i]);
        decode->resample_counter -= pcm->samplerate;
      }
    }
#endif

    decode->current_mad_pcm = NULL;
  }

  rc = 0;

exit:
  *resampled_bytes = resample_ofs * sizeof(int16_t);

#ifdef __VERBOSE__
  uint32_t t1 = (_iocs_ontime()).sec;
  printf("%d samples/sec\n",(int32_t)(resample_ofs * 100.0 / (t1 - t0)));
#endif

  return rc;
}
