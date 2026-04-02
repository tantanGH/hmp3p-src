#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <jstring.h>
#include <cmdline.h>
#include <himem.h>
#include <x68k/dos.h>
#include <x68k/iocs.h>

// pcm driver
#include <pcm8a.h>
#include <pcm8pp.h>

// jpeg
#include <jpeg.h>

// devices
#include "keyboard.h"

// resource
#include "cp932rsc.h"

// codec
#include "mp3_decode.h"

// application
#include "hmp3p.h"

//
//  abort vectors
//
static void* g_abort_vector1 = NULL;
static void* g_abort_vector2 = NULL;

//
//  chain table top
//
static CHAIN_TABLE* g_init_chain_table = NULL;
static CHAIN_TABLE_EX* g_init_chain_table_ex = NULL;

//
//  original function key mode preservation
//
static int32_t g_funckey_mode = -1;

//
//  original pcm8pp frequency mode / max channels
//
static uint32_t g_original_pcm8pp_frequency_mode = 0;
static uint32_t g_original_pcm8pp_max_channels = 0;

//
//  abort vector handler
//
static __attribute__((interrupt)) void abort_application() {

  // resume abort vectors
  if (g_abort_vector1 != NULL) _dos_intvcs(0xFFF1, g_abort_vector1);
  if (g_abort_vector2 != NULL) _dos_intvcs(0xFFF2, g_abort_vector2);  

  // stop pcm8a
  if (pcm8a_isavailable()) {
    pcm8a_pause();
    pcm8a_stop();
  }

  // stop pcm8pp
  if (pcm8pp_isavailable()) {
    pcm8pp_pause();
    pcm8pp_stop();
    if (g_original_pcm8pp_frequency_mode > 0) pcm8pp_set_frequency_mode(g_original_pcm8pp_frequency_mode);
    if (g_original_pcm8pp_max_channels > 0) pcm8pp_set_max_channels(g_original_pcm8pp_max_channels);
  }

  // reclaim chain table buffers (pcm8a)
  if (pcm8a_isavailable()) {
    CHAIN_TABLE* rct = g_init_chain_table;
    while (rct != NULL) {
      if (rct->buffer != NULL) {
        himem_free(rct->buffer);
        rct->buffer = NULL;
      }
      CHAIN_TABLE* pre_rct = rct;
      rct = rct->next;
      himem_free(pre_rct);
    }
    g_init_chain_table = NULL;
  }

  // reclaim chain table buffers (pcm8pp)
  if (pcm8pp_isavailable()) {
    CHAIN_TABLE_EX* rct = g_init_chain_table_ex;
    while (rct != NULL) {
      if (rct->buffer != NULL) {
        himem_free(rct->buffer);
        rct->buffer = NULL;
      }
      CHAIN_TABLE_EX* pre_rct = rct;
      rct = rct->next;
      himem_free(pre_rct);
    }
    g_init_chain_table_ex = NULL;
  }

  // cursor on
  _dos_c_curon();

  // funckey mode
  if (g_funckey_mode >= 0) {
    _dos_c_fnkmod(g_funckey_mode);
  }
  
  // flush key buffer
  _dos_kflushio(0xff);

  _iocs_b_print(cp932rsc_aborted);

  exit(1);
}

//
//  get mpu type
//
static int32_t get_mpu_type() {

  int32_t mpu_type = 0;

  uint32_t rom_version = ((uint32_t)_iocs_romver()) >> 24;
  if (rom_version <= 0x12) goto exit;

  struct iocs_regs in_regs = { 0 };
  struct iocs_regs out_regs = { 0 };

  in_regs.d0 = 0xac;      // IOCS _SYS_STAT

  _iocs_trap15(&in_regs, &out_regs);

  mpu_type = out_regs.d0 & 0xff;

exit:
  return mpu_type;
}

//
//  show help message
//
static void show_help_message() {
  printf("HMP3P.X - High Memory MP3 player for X680x0 version " VERSION " by tantan\n");
  printf("usage: hmp3p [options] <input-file.mp3>\n");
  printf("options:\n");
  printf("     -l[n] ... loop count (none:endless, default:1)\n");
  printf("     -v<n> ... volume (1-15, default:%d)\n", DEFAULT_VOLUME);
  printf("     -q<n> ... mp3 quality (0:high, 1:normal, default:0)\n");
  printf("     -t<n> ... album art display brightness (1-100, default:off)\n");
  printf("     -b<n> ... buffer size [x 64KB] (3-32,default:%d)\n", DEFAULT_BUFFERS);
  printf("     -n    ... no progress bar\n");
  printf("     -s    ... use main memory for file reading (SCSI disk)\n");
  printf("     -h    ... show help message\n");
}

//
//  main
//
int32_t main(int32_t argc_, uint8_t* argv_[]) {

  // default return code
  int32_t rc = 1;

  // command line options
  uint8_t* mp3_file_name = NULL;
  int16_t playback_volume = DEFAULT_VOLUME;
  int16_t loop_count = 1;
  int16_t mp3_quality = 0;
  int16_t num_buffers = DEFAULT_BUFFERS;
  int16_t use_high_memory = 0;
  int16_t playback_driver = DRIVER_NONE;
  int16_t staging_file_read = 0;
  int16_t pic_brightness = 0;
  int16_t quiet_mode = 0;
  int16_t debug_mode = 0;

  // total number of chains
  int32_t num_chains = 0;

  // exit error message
  static uint8_t error_mes[ 256 ];
  error_mes[0] = '\0';

  // check mpu type
#ifdef __mc68060__
  if (get_mpu_type() < 6) {
    strcpy(error_mes, cp932rsc_mpu_type_68060);
    goto exit;
  }
#elif __mc68030__
  if (get_mpu_type() < 3) {
    strcpy(error_mes, cp932rsc_mpu_type_68030);
    goto exit;
  }
#endif

  // preserve abort vectors
  g_abort_vector1 = _dos_intvcs(0xFFF1, (void*)abort_application);
  g_abort_vector2 = _dos_intvcs(0xFFF2, (void*)abort_application);  

  // preserve function key mode
  g_funckey_mode = _dos_c_fnkmod(-1);

  // parse command line options
  int32_t argc = cmdline_get_argc();
  char** argv = cmdline_get_argv();

  for (int16_t i = 1; i < argc; i++) {
    if (argv[i][0] == '-' && strlen(argv[i]) >= 2) {
      if (argv[i][1] == 'v') {
        playback_volume = atoi(argv[i]+2);
        if (playback_volume < 1 || playback_volume > 15 || strlen(argv[i]) < 3) {
          show_help_message();
          goto exit;
        }
      } else if (argv[i][1] == 'l') {
        loop_count = atoi(argv[i]+2);
      } else if (argv[i][1] == 'q') {
        mp3_quality = atoi(argv[i]+2);
        if (mp3_quality < 0 || mp3_quality > 1 || strlen(argv[i]) < 3) {
          show_help_message();
          goto exit;
        }
      } else if (argv[i][1] == 'b') {
        num_buffers = atoi(argv[i]+2);
        if (num_buffers < 3 || num_buffers > 32) {
          show_help_message();
          goto exit;
        }
      } else if (argv[i][1] == 's') {
        staging_file_read = 1;
      } else if (argv[i][1] == 'n') {
        quiet_mode = 1;
      } else if (argv[i][1] == 'd') {
        debug_mode = 1;
      } else if (argv[i][1] == 't') {
        pic_brightness = atoi(argv[i]+2);
        if (pic_brightness < 0 || pic_brightness > 100 || strlen(argv[i]) < 3) {
          show_help_message();
          goto exit;
        }
      } else if (argv[i][1] == 'h') {
        show_help_message();
        goto exit;
      } else {
        sprintf(error_mes, cp932rsc_unknown_option, argv[i]);
        goto exit;
      }
    } else {
      if (mp3_file_name != NULL) {
        strcpy(error_mes, cp932rsc_too_many_files);
        goto exit;
      }
      mp3_file_name = argv[i];
      if (strlen(mp3_file_name) < 5 || strcasecmp(mp3_file_name + strlen(mp3_file_name) - 4, ".mp3") != 0) {
        strcpy(error_mes, cp932rsc_not_mp3_file);
        goto exit;
      }
    }
  }

  // mp3 file is specified?
  if (mp3_file_name == NULL || strlen(mp3_file_name) < 5) {
    show_help_message();
    goto exit;
  }

  // check himem availability
  if (himem_isavailable()) {
    use_high_memory = 1;
  } else {
    strcpy(error_mes, cp932rsc_himem_not_available);
    goto exit;
  }

  // check pcm8a/pcm8pp availability
  if (pcm8a_isavailable()) {
    playback_driver = DRIVER_PCM8A;
  } else if (pcm8pp_isavailable()) {
    playback_driver = DRIVER_PCM8PP;    
    g_original_pcm8pp_frequency_mode = pcm8pp_get_frequency_mode();   // preserve original pcm8pp frequency mode
    g_original_pcm8pp_max_channels = pcm8pp_get_max_channels();       // preserve original pcm8pp max channels
  } else {
    strcpy(error_mes, cp932rsc_pcm8_not_available);
    goto exit;
  }

  // half rate check (pcm8pp)
  if (playback_driver == DRIVER_PCM8PP && mp3_quality == 1) {
    if (pcm8pp_get_mercury_version() < 0x35) {
      strcpy(error_mes, cp932rsc_half_rate_mercury35);
      goto exit;
    }
  }

  // credit
  if (pic_brightness == 0) {
    _iocs_b_print("HMP3P.X - High Memory MP3 player for X680x0 version " VERSION " by tantan\n");
  }

  // reset PCM8A/PCM8PP
  if (playback_driver == DRIVER_PCM8A) {
    pcm8a_pause();
    pcm8a_stop();
  } else if (playback_driver == DRIVER_PCM8PP) {
    pcm8pp_pause();
    pcm8pp_stop();
  }

  // cursor off
  _dos_c_curoff();

  // display mp3 attribute at first play
  int16_t first_play = 1;

loop:

  // init crtc if album art is required
  if (pic_brightness > 0) {
    jpeg_crtmod_768x512_65536();
    _dos_c_fnkmod(3);     // function key display off
    _dos_c_cls_al();
    jpeg_fill_text_masks();
  }

  // current chain table entries
  CHAIN_TABLE* cur_chain_table = NULL;
  size_t chain_table_buffer_bytes = CHAIN_TABLE_BUFFER_BYTES;   // no need to adjust because of fixed resampling rate
  CHAIN_TABLE_EX* cur_chain_table_ex = NULL;
  size_t chain_table_ex_buffer_bytes = CHAIN_TABLE_EX_BUFFER_BYTES / (mp3_quality + 1);

  // reclaimable chain table entries
  CHAIN_TABLE* reclaim_chain_table = NULL;
  CHAIN_TABLE_EX* reclaim_chain_table_ex = NULL;
  int32_t reclaim_block_counter = 0;

  // file read buffers
  void* fread_buffer = NULL;
  void* fread_staging_buffer = NULL;
  int32_t fd = -1;

try:

  // init mp3 decoder
  MP3_DECODE_HANDLE mp3_decoder = { 0 };
  if (mp3_decode_init(&mp3_decoder) != 0) {
    strcpy(error_mes, cp932rsc_mp3_decoder_init_error);
    goto catch;
  }

  // open input file
  fd = _dos_open(mp3_file_name, 0);
  if (fd < 0) {
    strcpy(error_mes, cp932rsc_file_open_error);
    goto catch;
  }

  // parse ID3v2 tags
  size_t skip_offset = 0;
  int32_t ofs = mp3_decode_parse_tags(&mp3_decoder, pic_brightness, 0, fd);
  if (ofs < 0) {
    strcpy(error_mes, cp932rsc_id3tag_read_error);
    goto catch;
  }
  skip_offset = ofs;

  // adjust scroll position
  if (pic_brightness > 0) {
    jpeg_open_text_masks();
  }

  // obtain data content size
  uint32_t mp3_data_size = _dos_seek(fd, 0, 2) - skip_offset;
  _dos_seek(fd, skip_offset, 0);

  // allocate file read buffer
  size_t fread_buffer_len = mp3_data_size;
  fread_buffer = himem_malloc(fread_buffer_len);
  if (fread_buffer == NULL) {
    strcpy(error_mes, cp932rsc_himem_shortage);
    goto catch;
  }

  // read whole mp3 file content into high memory
  if (staging_file_read) {
    // use staging buffer on main memory (for SCSI disk)
    _iocs_b_print(cp932rsc_now_loading);
    fread_staging_buffer = malloc(FREAD_STAGING_BUFFER_BYTES);   // allocate in main memory
    if (fread_staging_buffer == NULL) {
      strcpy(error_mes, cp932rsc_mainmem_shortage);
      goto catch;
    }    
    size_t read_len = 0; 
    do {
      size_t len = _dos_read(fd, fread_staging_buffer, FREAD_STAGING_BUFFER_BYTES);
      memcpy(fread_buffer + read_len, fread_staging_buffer, len);
      read_len += len;
    } while (read_len < mp3_data_size);
    free(fread_staging_buffer);
    fread_staging_buffer = NULL;
    _iocs_b_print(cp932rsc_erase_line);
  } else {
    // direct load to high memory from VDISK/WindrvXM
    size_t read_len = 0; 
    do {
      size_t read_size = (mp3_data_size - read_len) < FREAD_CHUNK_BYTES ? (mp3_data_size - read_len) : FREAD_CHUNK_BYTES;
      size_t len = _dos_read(fd, fread_buffer + read_len, read_size);
      read_len += len;
    } while (read_len < mp3_data_size);
  }
  _dos_close(fd);
  fd = -1;

  // setup mp3 decoder
  if (mp3_decode_setup(&mp3_decoder, fread_buffer, mp3_data_size, mp3_quality) != 0) {
    strcpy(error_mes, cp932rsc_mp3_decoder_setup_error);
    goto catch;
  }

  // describe mp3 attributes
  if (first_play || pic_brightness > 0) {

    static uint8_t mes[256];

    _iocs_b_print(cp932rsc_crlf);

    sprintf(mes, cp932rsc_mp3_file_name, mp3_file_name);
    _iocs_b_print(mes);
    sprintf(mes, cp932rsc_mp3_data_size, mp3_data_size);
    _iocs_b_print(mes);
    sprintf(mes, cp932rsc_mp3_data_format, "MP3");
    _iocs_b_print(mes);

    // describe playback drivers
    sprintf(mes, cp932rsc_pcm_driver, 
              playback_driver == DRIVER_PCM8PP ? "PCM8PP" : 
              playback_driver == DRIVER_PCM8A  ? "PCM8A"  : "-", 
              playback_volume);
    _iocs_b_print(mes);

    sprintf(mes, cp932rsc_mp3_quality, mp3_quality == 1 ? "normal" : "high");
    _iocs_b_print(mes);

    if (mp3_decoder.mp3_title != NULL) {
      sprintf(mes, cp932rsc_mp3_title, mp3_decoder.mp3_title);
      _iocs_b_print(mes);
    }
    if (mp3_decoder.mp3_artist != NULL) {
      sprintf(mes, cp932rsc_mp3_artist, mp3_decoder.mp3_artist);
      _iocs_b_print(mes);
    }
    if (mp3_decoder.mp3_album != NULL) {
      sprintf(mes, cp932rsc_mp3_album, mp3_decoder.mp3_album);
      _iocs_b_print(mes);
    }

    _iocs_b_print(cp932rsc_crlf);

    //first_play = 0;
  }

  // initial buffering
  int16_t end_flag = 0;
  for (int16_t i = 0; i < num_buffers; i++) {

    if (end_flag) break;

    static uint8_t mes[256];
    sprintf(mes, cp932rsc_now_buffering, i+1, num_buffers);
    _iocs_b_print(mes);

    if (playback_driver == DRIVER_PCM8A) {

      // allocate a new chain table entry in high memory
      CHAIN_TABLE* ct = (CHAIN_TABLE*)himem_calloc(sizeof(CHAIN_TABLE), 1);   // zero clear
      if (ct == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // zero clear
      //memset(ct, 0, sizeof(CHAIN_TABLE));

      // allocate pcm data buffer for this chain table entry
      ct->buffer = himem_malloc(chain_table_buffer_bytes);
      if (ct->buffer == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // decode mp3 stream into pcm data buffer as much as possible with resampling
      size_t decoded_bytes;
      if (mp3_decode_resample(&mp3_decoder, ct->buffer, chain_table_buffer_bytes, 15625, &decoded_bytes) != 0) {
        strcpy(error_mes, cp932rsc_mp3_decode_error);
        goto catch;      
      }

      // end of mp3?
      if (decoded_bytes == 0) {
        himem_free(ct->buffer);
        himem_free(ct);
        end_flag = 1;
        break;
      }

      // decoded size (pcm8pp requires length in bytes)
      ct->buffer_len = decoded_bytes;

      // global chain table top entry
      if (g_init_chain_table == NULL) {
        g_init_chain_table = ct;
      }

      // link the entry at the last
      if (cur_chain_table == NULL) {
        cur_chain_table = ct;
      } else {
        cur_chain_table->next = ct;
        cur_chain_table = ct;
      }

      // reclaimable chain table top entry
      if (reclaim_chain_table == NULL) {
        reclaim_chain_table = ct;
      }

      num_chains++;

    }

    if (playback_driver == DRIVER_PCM8PP) {

      // allocate a new chain table entry in high memory
      CHAIN_TABLE_EX* ct = (CHAIN_TABLE_EX*)himem_calloc(sizeof(CHAIN_TABLE_EX), 1);   // zero clear
      if (ct == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // zero clear
      //memset(ct, 0, sizeof(CHAIN_TABLE_EX));

      // allocate pcm data buffer for this chain table entry
      ct->buffer = himem_malloc(chain_table_ex_buffer_bytes);
      if (ct->buffer == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // decode mp3 stream into pcm data buffer as much as possible
      size_t decoded_bytes;
      if (mp3_decode_full(&mp3_decoder, ct->buffer, chain_table_ex_buffer_bytes, &decoded_bytes) != 0) {
        strcpy(error_mes, cp932rsc_mp3_decode_error);
        goto catch;      
      }

      // end of mp3?
      if (decoded_bytes == 0) {
        himem_free(ct->buffer);
        himem_free(ct);
        end_flag = 1;
        break;
      }

      // decoded size (pcm8pp requires length in bytes)
      ct->buffer_len = decoded_bytes;

      // global chain table top entry
      if (g_init_chain_table_ex == NULL) {
        g_init_chain_table_ex = ct;
      }

      // link the entry at the last
      if (cur_chain_table_ex == NULL) {
        cur_chain_table_ex = ct;
      } else {
        cur_chain_table_ex->next = ct;
        cur_chain_table_ex = ct;
      }
      
      // reclaimable chain table top entry
      if (reclaim_chain_table_ex == NULL) {
        reclaim_chain_table_ex = ct;
      }

      num_chains++;

    }

    // check shift key to exit
    if (_iocs_b_sftsns() & 0x01) {
      _iocs_b_print(cp932rsc_canceled);
      goto exit;
    }

  }

  // display mp3 frequency and channels (we cannot get this before any frame data decoding)
  int32_t pcm_freq = mp3_decoder.mp3_sample_rate;
  int16_t pcm_channels = mp3_decoder.mp3_channels;
  _iocs_b_print(cp932rsc_erase_line_and_up);
  if (first_play) {
    static uint8_t mes[256];
    sprintf(mes, cp932rsc_mp3_frequency, mp3_decoder.mp3_sample_rate);
    _iocs_b_print(mes);
    sprintf(mes, cp932rsc_mp3_channels, mp3_decoder.mp3_channels == 1 ? "mono" : "stereo");
    _iocs_b_print(mes);
    first_play = 0;
  }

  // pcm8a channel mode
  int16_t pcm8a_volume = playback_volume;
  int16_t pcm8a_pan = 0x03;
  int16_t pcm8a_freq = 0x14;  // 16bit PCM
  uint32_t pcm8a_channel_mode = ( pcm8a_volume << 16 ) | ( pcm8a_freq << 8 ) | pcm8a_pan;

  if (playback_driver == DRIVER_PCM8A) {
      pcm8a_set_polyphonic_mode(1);     // must use polyphonic mode for 16bit PCM use
      pcm8a_play_linked_array_chain(0, pcm8a_channel_mode, g_init_chain_table);
  }

  // pcm8pp channel mode
  int16_t pcm8pp_volume = playback_volume;
  int16_t pcm8pp_pan = 0x03;
  int16_t pcm8pp_freq = pcm_freq == 22050 && pcm_channels == 1 ? 0x0a :
                        pcm_freq == 24000 && pcm_channels == 1 ? 0x0b :
                        pcm_freq == 32000 && pcm_channels == 1 ? 0x0c :
                        pcm_freq == 44100 && pcm_channels == 1 ? 0x0d :
                        pcm_freq == 48000 && pcm_channels == 1 ? 0x0e :
                        pcm_freq == 22050 && pcm_channels == 2 ? 0x1a :
                        pcm_freq == 24000 && pcm_channels == 2 ? 0x1b :
                        pcm_freq == 32000 && pcm_channels == 2 ? 0x1c :
                        pcm_freq == 44100 && pcm_channels == 2 ? 0x1d : 
                        pcm_freq == 48000 && pcm_channels == 2 ? 0x1e : 0x1d;

  uint32_t pcm8pp_channel_mode = ( pcm8pp_volume << 16 ) | ( pcm8pp_freq << 8 ) | pcm8pp_pan;

  if (playback_driver == DRIVER_PCM8PP) {

    pcm8pp_set_max_channels(1);

    // start playback with pcm8pp extended linked array chain mode
    if ((pcm8pp_freq == 0x0e || pcm8pp_freq == 0x1e) && pcm8pp_get_frequency_mode() != 0x02) {
      pcm8pp_set_frequency_mode(0x02);    // 48kHz mode (stereo)
    } else if ((pcm8pp_freq == 0x0d || pcm8pp_freq == 0x1d) && pcm8pp_get_frequency_mode() != 0x01) {
      pcm8pp_set_frequency_mode(0x01);    // 44.1kHz mode (streo)
    }

    pcm8pp_play_ex_linked_array_chain(0, pcm8pp_channel_mode, 1, pcm_freq * 256, g_init_chain_table_ex);

  }

  _iocs_b_print(cp932rsc_now_playing);
  int16_t paused = 0;

  // dummy wait to make sure DMAC start (200 msec)
  for (int32_t t0 = (_iocs_ontime()).sec; (_iocs_ontime()).sec < t0 + 20;) {}

  int32_t block_counter_ofs = 0;
  int16_t buffer_delta = num_buffers;

  // main loop for pcm8a
  if (playback_driver == DRIVER_PCM8A) {

    for (;;) {
   
      // check esc key to exit, space key to pause
      if (_iocs_b_keysns() != 0) {
        int16_t scan_code = (_iocs_b_keyinp() >> 8);
        if (scan_code == KEY_SCAN_CODE_ESC || scan_code == KEY_SCAN_CODE_Q) {
          _iocs_b_print(cp932rsc_stopped);
          rc = 1;
          break;
        } else if (scan_code == KEY_SCAN_CODE_SPACE) {
          if (paused) {
            pcm8a_resume();
            paused = 0;
          } else {
            pcm8a_pause();
            paused = 1;
          }
        }
      }

      // exit if not playing
      if (!paused) {
        if (pcm8a_get_data_length(0) == 0) {
          if (end_flag) { 
            _iocs_b_print(cp932rsc_finished);
            rc = 0;
            break;
          } else {
            // in case playback is stopped but not reached to the end, buffer underrun is observed.
            _iocs_b_print(cp932rsc_buffer_underrun);
          }
        }
      }

      // already finishing decoding?
      if (end_flag) {
        usleep(500000);
        continue;
      }

      // decode additional data

      // allocate the next chain table entry
      CHAIN_TABLE* ct = (CHAIN_TABLE*)himem_calloc(sizeof(CHAIN_TABLE), 1);   // zero clear
      if (ct == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // zero clear
      //memset(ct, 0, sizeof(CHAIN_TABLE));

      // allocate pcm buffer for this chain table entry
      ct->buffer = himem_malloc(chain_table_buffer_bytes);
      if (ct->buffer == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // decode mp3 stream into pcm buffer
      size_t decoded_bytes;
      if (mp3_decode_resample(&mp3_decoder, ct->buffer, chain_table_buffer_bytes, 15625, &decoded_bytes) != 0) {
        strcpy(error_mes, cp932rsc_mp3_decode_error);
        goto catch;      
      }

      // end of mp3?
      if (decoded_bytes == 0) {
        himem_free(ct->buffer);
        himem_free(ct);
        end_flag = 1;
        if (!quiet_mode) _iocs_b_print(cp932rsc_progress_last);
        continue;
      }

      // decoded byte length
      ct->buffer_len = decoded_bytes;

      // update current chain table entry pointer
      cur_chain_table->next = ct;
      cur_chain_table = ct;

      // number of total chains
      num_chains++;

      // in case any buffered chain is consumed, display '*'. Otherwise display '.'.
      void* cur_pcm8a_addr = pcm8a_get_access_address(0);
      int32_t block_counter = 0;
      CHAIN_TABLE* rct = g_init_chain_table;
      CHAIN_TABLE* resume_chain_table = NULL;
      while (rct != NULL) {
        if (rct->buffer != NULL && rct->buffer <= cur_pcm8a_addr && cur_pcm8a_addr < (rct->buffer + rct->buffer_len * 2)) {
          resume_chain_table = rct;
          break;
        }
        block_counter++;
        rct = rct->next;
      }

      int32_t dt = num_chains - block_counter;
      if (dt >= buffer_delta) {
        if (!quiet_mode) _iocs_b_print(cp932rsc_progress_normal);
        if (reclaim_block_counter < block_counter && reclaim_chain_table->buffer != NULL) {    // reclaim buffer memory
          himem_free(reclaim_chain_table->buffer);
          reclaim_chain_table->buffer = NULL;
          reclaim_chain_table = reclaim_chain_table->next;
          reclaim_block_counter = block_counter;
        }
      } else {
        if (!quiet_mode) _iocs_b_print(cp932rsc_progress_under);
        buffer_delta = dt;
      }

      // buffer underrun recovery
      if (pcm8a_get_data_length(0) == 0) {
        if ((num_chains - block_counter) > 6) {
          if (resume_chain_table != NULL) {  
            pcm8a_play_linked_array_chain(0, pcm8a_channel_mode, resume_chain_table);
            buffer_delta = num_chains - block_counter;
          }
        }
      }

    }
  }

  // main loop for pcm8pp
  if (playback_driver == DRIVER_PCM8PP) {

    for (;;) {

      // check esc key to exit, space key to pause
      if (_iocs_b_keysns() != 0) {
        int16_t scan_code = (_iocs_b_keyinp() >> 8);
        if (scan_code == KEY_SCAN_CODE_ESC || scan_code == KEY_SCAN_CODE_Q) {
          _iocs_b_print(cp932rsc_stopped);
          rc = 1;
          break;
        } else if (scan_code == KEY_SCAN_CODE_SPACE) {
          if (paused) {
            pcm8pp_resume();
            paused = 0;
          } else {
            pcm8pp_pause();
            paused = 1;
          }
        }
      }

      // exit if not playing
      if (!paused) {
        if (pcm8pp_get_data_length(0) == 0) {
          if (end_flag) { 
            _iocs_b_print(cp932rsc_finished);
            rc = 0;
            break;
          } else {
            // in case playback is stopped but not reached to the end, buffer underrun is observed.
            _iocs_b_print(cp932rsc_buffer_underrun);
          }
        }
      }

      // already finishing decoding?
      if (end_flag) {
        usleep(500000);
        continue;
      }

      // decode additional data

      // allocate the next chain table entry
      CHAIN_TABLE_EX* ct = (CHAIN_TABLE_EX*)himem_calloc(sizeof(CHAIN_TABLE_EX), 1);    // with zero clear
      if (ct == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // zero clear
      //memset(ct, 0, sizeof(CHAIN_TABLE_EX));

      // allocate pcm buffer for this chain table entry
      ct->buffer = himem_malloc(chain_table_ex_buffer_bytes);
      if (ct->buffer == NULL) {
        strcpy(error_mes, cp932rsc_himem_shortage);
        goto catch;
      }

      // decode mp3 stream into pcm buffer
      size_t decoded_bytes;
      if (mp3_decode_full(&mp3_decoder, ct->buffer, chain_table_ex_buffer_bytes, &decoded_bytes) != 0) {
        strcpy(error_mes, cp932rsc_mp3_decode_error);
        goto catch;      
      }

      // end of mp3?
      if (decoded_bytes == 0) {
        himem_free(ct->buffer);
        himem_free(ct);
        end_flag = 1;
        if (!quiet_mode) _iocs_b_print(cp932rsc_progress_last);
        continue;
      }

      // decoded byte length
      ct->buffer_len = decoded_bytes;

      // update current chain table entry pointer
      cur_chain_table_ex->next = ct;
      cur_chain_table_ex = ct;

      // number of total chains
      num_chains++;

      // in case any buffered chain is consumed, display '*'. Otherwise display '.'.
      int32_t block_counter = pcm8pp_get_block_counter(0);
      int32_t dt = num_chains - (block_counter_ofs + block_counter);
      if (dt >= buffer_delta) {
        if (!quiet_mode) _iocs_b_print(cp932rsc_progress_normal);
        if (reclaim_block_counter < block_counter && reclaim_chain_table_ex->buffer != NULL) {    // reclaim buffer memory
          himem_free(reclaim_chain_table_ex->buffer);
          reclaim_chain_table_ex->buffer = NULL;
          reclaim_chain_table_ex = reclaim_chain_table_ex->next;
          reclaim_block_counter = block_counter;
        }
      } else {
        if (!quiet_mode) _iocs_b_print(cp932rsc_progress_under);
        buffer_delta = dt;
      }

      // buffer underrun recovery
      if (pcm8pp_get_data_length(0) == 0) {
        int32_t block_counter = pcm8pp_get_block_counter(0) + block_counter_ofs;
        if ((num_chains - block_counter) > 6) {
          CHAIN_TABLE_EX* resume_chain_table = g_init_chain_table_ex;
          for (int32_t i = 0; i < block_counter; i++) {
            resume_chain_table = resume_chain_table->next;
            if (resume_chain_table == NULL) break;
          }
          if (resume_chain_table != NULL) {  
            pcm8pp_play_ex_linked_array_chain(0, pcm8pp_channel_mode, 1, pcm_freq * 256, resume_chain_table);
            block_counter_ofs = block_counter;
            buffer_delta = num_chains - (block_counter_ofs + pcm8pp_get_block_counter(0));
          }
        }
      }

    }

  }

catch:

  // stop pcm8a
  if (playback_driver == DRIVER_PCM8A) {
    pcm8a_pause();
    pcm8a_stop();
  }

  // stop pcm8pp
  if (playback_driver == DRIVER_PCM8PP) {
    pcm8pp_pause();
    pcm8pp_stop();
  }

  // dummy wait to make sure DMAC stop (200 msec)
  for (int32_t t0 = (_iocs_ontime()).sec; (_iocs_ontime()).sec < t0 + 20;) {}

  // close input file if still opened
  if (fd != -1) {
    _dos_close(fd);
    fd = -1;
  }

  // reclaim file read buffers
  if (fread_staging_buffer != NULL) {
    free(fread_staging_buffer);
    fread_staging_buffer = NULL;
  }

  if (fread_buffer != NULL) {
    himem_free(fread_buffer);
    fread_buffer = NULL;
  }

  // close mp3 decoder
  mp3_decode_close(&mp3_decoder);

  // reclaim chain table buffers (pcm8a)
  if (playback_driver == DRIVER_PCM8A) {
    CHAIN_TABLE* rct = g_init_chain_table;
    while (rct != NULL) {
      if (rct->buffer != NULL) {
        himem_free(rct->buffer);
        rct->buffer = NULL;
      }
      CHAIN_TABLE* pre_rct = rct;
      rct = rct->next;
      himem_free(pre_rct);
    }
    g_init_chain_table = NULL;
  }

  // reclaim chain table buffers (pcm8pp)
  if (playback_driver == DRIVER_PCM8PP) {
    CHAIN_TABLE_EX* rct = g_init_chain_table_ex;
    while (rct != NULL) {
      if (rct->buffer != NULL) {
        himem_free(rct->buffer);
        rct->buffer = NULL;
      }
      CHAIN_TABLE_EX* pre_rct = rct;
      rct = rct->next;
      himem_free(pre_rct);
    }
    g_init_chain_table_ex = NULL;
  }

  // loop check
  if (rc == 0) {
    if (loop_count == 0 || --loop_count > 0) {
      _iocs_b_print(cp932rsc_crlf);
      goto loop;
    }
  }

  _iocs_b_print(cp932rsc_crlf);

exit:

  // resume pcm8pp settings
  if (pcm8pp_isavailable()) {
    if (g_original_pcm8pp_frequency_mode > 0) pcm8pp_set_frequency_mode(g_original_pcm8pp_frequency_mode);
    if (g_original_pcm8pp_max_channels > 0) pcm8pp_set_max_channels(g_original_pcm8pp_max_channels);
  }

  // screen clear
  if (pic_brightness > 0) {
    jpeg_reset_text_masks();
    _dos_c_cls_al();
    _iocs_g_clr_on();
  }

  // cursor on
  _dos_c_curon();

  // function key mode
  if (g_funckey_mode >= 0) {
    _dos_c_fnkmod(g_funckey_mode);
  }

  // resume abort vectors
  if (g_abort_vector1 != NULL) _dos_intvcs(0xFFF1, g_abort_vector1);
  if (g_abort_vector2 != NULL) _dos_intvcs(0xFFF2, g_abort_vector2);  

  // flush key buffer
  _dos_kflushio(0xff);

  // print error message
  if (error_mes[0] != '\0') {
    _iocs_b_print("error: ");
    _iocs_b_print(error_mes);
    _iocs_b_print(cp932rsc_crlf);
  }

  return rc;
}
