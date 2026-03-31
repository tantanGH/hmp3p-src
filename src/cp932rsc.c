#include <stdint.h>

const uint8_t cp932rsc_unknown_option[] =           "未対応のオプションです。(%s)";
const uint8_t cp932rsc_too_many_files[] =           "指定したMP3ファイルの数が多すぎます。";
const uint8_t cp932rsc_file_open_error[] =          "指定ファイルがオープンできませんでした。";
const uint8_t cp932rsc_file_read_error[] =          "ファイル全体の読み込みができませんでした。";
const uint8_t cp932rsc_id3tag_read_error[] =        "ID3タグの読み込みができませんでした。";
const uint8_t cp932rsc_header_read_error[] =        "ヘッダーの読み込みができませんでした。";
const uint8_t cp932rsc_himem_not_available[] =      "ハイメモリドライバが組み込まれていません。";
const uint8_t cp932rsc_pcm8_not_available[] =       "PCM8A/PCM8PPのいずれかを組み込む必要があります。";
const uint8_t cp932rsc_pcm8pp_not_available[] =     "PCM8PPを組み込む必要があります。";
const uint8_t cp932rsc_himem_shortage[] =           "ハイメモリエリアが不足しています。";
const uint8_t cp932rsc_mainmem_shortage[] =         "メインメモリエリアが不足しています。";
const uint8_t cp932rsc_mp3_decoder_init_error[] =   "MP3デコーダーの初期化に失敗しました。";
const uint8_t cp932rsc_mp3_decoder_setup_error[] =  "MP3デコーダーのセットアップに失敗しました。";
const uint8_t cp932rsc_mp3_decode_error[] =         "MP3のデコードに失敗しました。";
const uint8_t cp932rsc_buffer_underrun[] =          "バッファアンダーランを検出しました。再バッファリングします。";
const uint8_t cp932rsc_mpu_type_68060[] =           "このプログラムは68060専用です。";
const uint8_t cp932rsc_mpu_type_68030[] =           "このプログラムは68030以上専用です。";
const uint8_t cp932rsc_not_mp3_file[] =             "MP3ファイルではありません。";
const uint8_t cp932rsc_half_rate_mercury35[] =      "ハーフレートでの再生にはMercury-UNIT V3.5以上が必要です。";

const uint8_t cp932rsc_mp3_file_name[] = "File name     : %s\r\n";
const uint8_t cp932rsc_mp3_data_size[] = "Data size     : %d [bytes]\r\n";
const uint8_t cp932rsc_mp3_data_format[] = "Data format   : %s\r\n";

const uint8_t cp932rsc_pcm_driver[] = "PCM driver    : %s (volume:%d)\r\n";

const uint8_t cp932rsc_mp3_quality[] = "MP3 quality   : %s\r\n";

const uint8_t cp932rsc_mp3_title[] = "MP3 title     : %s\r\n";
const uint8_t cp932rsc_mp3_artist[] = "MP3 artist    : %s\r\n";
const uint8_t cp932rsc_mp3_album[] = "MP3 album     : %s\r\n";

const uint8_t cp932rsc_mp3_frequency[] = "MP3 frequency : %d [Hz]\r\n";
const uint8_t cp932rsc_mp3_channels[] = "MP3 channels  : %s\r\n"; 

const uint8_t cp932rsc_erase_line[] = "\r\x1b[0K";
const uint8_t cp932rsc_erase_line_and_up[] = "\r\x1b[0K\x1bM";

const uint8_t cp932rsc_crlf[] = "\r\n";

const uint8_t cp932rsc_progress_normal[] = ">";
const uint8_t cp932rsc_progress_under[] = "*";
const uint8_t cp932rsc_progress_last[] = "|";

const uint8_t cp932rsc_stopped[] = "\r\nStopped.";
const uint8_t cp932rsc_finished[] = "\r\nFinished.\r\n";
const uint8_t cp932rsc_canceled[] = "\r\x1b[KCanceled.\r\n";

const uint8_t cp932rsc_now_loading[] = "\rLoading MP3 file...\x1b[0K";
const uint8_t cp932rsc_now_buffering[] = "\rNow buffering (%d/%d) ... [SHIFT] key to cancel.";
const uint8_t cp932rsc_now_playing[] = "\r\nNow playing ... push [ESC]/[Q] key to quit. [SPACE] to pause.\x1b[0K\r\n";
