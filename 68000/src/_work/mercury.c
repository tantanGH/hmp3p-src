#include <stdint.h>
#include <string.h>
#include <doslib.h>
#include <iocslib.h>
#include "mercury.h"

//
//  start (linked array chain mode)
//
void mercury_start(int32_t freq, int16_t channels, void* addr) {

  uint8_t mode = freq == 22050 ? 0x2f :
                 freq == 24000 ? 0x3f :
                 freq == 32000 ? 0x8f :
                 freq == 44100 ? 0xaf :
                 freq == 48000 ? 0xbf : 0xaf;               

  if (channels == 1) mode -= 2;   

  register uint32_t reg_d1 asm ("d1") = mode;
  register uint32_t reg_a1 asm ("a1") = (uint32_t)addr;

  asm volatile (
    "movem.l	a0,-(sp)\n"
    "move.b   d1,$ecc091\n"           // mercury command port
    "movea.l  #$e84080,a0\n"          // DMAC ch2
    "move.b   #$ff,(a0)\n"            // CSR
    "move.b   #$88,4(a0)\n"           // DCR
    "move.b   #$1e,5(a0)\n"           // OCR
    "move.b   #$04,6(a0)\n"           // SCR
    "move.b   #$08,7(a0)\n"           // CCR
    "move.l   #$ecc080,$14(a0)\n"     // DAR
    "move.l   a1,$1c(a0)\n"           // BAR
    "@@: btst #0,(a0)\n"              // wait PCL line status for LR sync
    "beq      @b\n"
    "@@: btst #0,(a0)\n"
    "bne      @b\n"
    "move.b   #$80,7(a0)\n"           // CCR
    "movem.l	(sp)+,a0\n"
    :                                 // output (&input) operand
    : "r"     (reg_d1),               // input operand
      "r"     (reg_a1)                // input operand
    :                                 // clobbered register
  );

}

//
//  stop
//
void mercury_stop() {
  B_BPOKE((uint8_t*)REG_DMAC_CH2_CCR, 0x10);
}

//
//  pause
//
void mercury_pause() {
  B_BPOKE((uint8_t*)REG_DMAC_CH2_CCR, 0x20);
}

//
//  resume
//
void mercury_resume() {

  // wait LR
//  while (!(B_BPEEK((uint8_t*)REG_DMAC_CH2_CSR) & 0x01));
//  while ( (B_BPEEK((uint8_t*)REG_DMAC_CH2_CSR) & 0x01));

  // restart DMAC
  B_BPOKE((uint8_t*)REG_DMAC_CH2_CCR, 0x00);
}

//
//  sense
//
int16_t mercury_sense() {
  return (B_BPEEK((uint8_t*)REG_DMAC_CH2_CSR) & 0x80) ? 0 : 1;
}

//
//  current block address
//
void* mercury_get_block_address() {
  return (void*)B_LPEEK((uint32_t*)REG_DMAC_CH2_BAR);
}

//
//  Mercury-UNIT version check
//
int16_t mercury_get_unit_version() {

  int16_t rc = 0;   // not exists

  // exists?
  if (BUS_ERR((uint8_t*)MERCURY_BOARD_CHECK_ADDR2, (uint8_t*)MERCURY_BOARD_CHECK_ADDR2, 2) == 0) {

    // 3.1 or 3.5/4.0
    uint8_t status = B_BPEEK((uint8_t*)MERCURY_STATUS_PORT);
    B_BPOKE((uint8_t*)MERCURY_COMMAND_PORT, status & 0b01111111);
    uint8_t status2 = B_BPEEK((uint8_t*)MERCURY_STATUS_PORT);
    rc = status2 & 0x80 ? 31 : 35;

    // 3.5 or 4.0
    if (rc == 35) {
      if (BUS_ERR((uint8_t*)MERCURY_BOARD_CHECK_ADDR1, (uint8_t*)MERCURY_BOARD_CHECK_ADDR1, 2) != 0) {
        rc = 40;
      }
    }
  }

  return rc;    // 0:none 31:~V3.1 35:V3.5 40:V4.0
}
