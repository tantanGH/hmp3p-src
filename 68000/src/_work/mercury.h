#ifndef __H_MERCURY__
#define __H_MERCURY__

#define MERCURY_BOARD_CHECK_ADDR1  (0xECC000)
#define MERCURY_BOARD_CHECK_ADDR2  (0xECC080)

#define MERCURY_DATA_PORT          (0xECC080)
#define MERCURY_COMMAND_PORT       (0xECC091)
#define MERCURY_STATUS_PORT        (0xECC0A1)

#define REG_DMAC_CH2_CSR (0xE84080 + 0x00)
#define REG_DMAC_CH2_DCR (0xE84080 + 0x04)
#define REG_DMAC_CH2_OCR (0xE84080 + 0x05)
#define REG_DMAC_CH2_SCR (0xE84080 + 0x06)
#define REG_DMAC_CH2_CCR (0xE84080 + 0x07)
#define REG_DMAC_CH2_DAR (0xE84080 + 0x14)
#define REG_DMAC_CH2_BTC (0xE84080 + 0x1A)
#define REG_DMAC_CH2_BAR (0xE84080 + 0x1C)

void mercury_start(int32_t freq, int16_t channels, void* addr);
void mercury_stop();
void mercury_pause();
void mercury_resume();
int16_t mercury_sense();
void* mercury_get_block_address();
int16_t mercury_get_unit_version();

#endif