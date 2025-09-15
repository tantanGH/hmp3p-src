#include <stdint.h>
#include <string.h>
#include <doslib.h>
#include <iocslib.h>
#include "pcm8pp.h"

//
//  play in array chain mode
//
void mdrv_play_array_chain(uint16_t freq_pan, uint16_t count, void* addr) {

  register uint32_t reg_d0 asm ("d0") = 0xf4;
  register uint32_t reg_d1 asm ("d1") = 2;
  register uint32_t reg_d2 asm ("d2") = freq_pan;
  register uint32_t reg_d3 asm ("d3") = count;
  register uint32_t reg_a1 asm ("a1") = (uint32_t)addr;

  asm volatile (
    "trap #15\n"        // trap #15
    :                   // output (&input) operand
    : "r"   (reg_d0),   // input operand
      "r"   (reg_d1),   // input operand
      "r"   (reg_d2),   // input operand
      "r"   (reg_d3),   // input operand
      "r"   (reg_a1)    // input operand
    :                   // clobbered register
  );
}

//
//  _PCMSNS
//
int32_t mdrv_sense() {

  register uint32_t reg_d0 asm ("d0") = 0xf4;
  register uint32_t reg_d1 asm ("d1") = 0x06;

  asm volatile (
    "trap #15\n"        // trap #15
    : "+r"  (reg_d0)    // output (&input) operand
    : "r"   (reg_d1)    // input operand
    :                   // clobbered register
  );

  return reg_d0;
}

//
//  _PCMMOD
//
void mdrv_mode(int16_t mode) {

  register uint32_t reg_d0 asm ("d0") = 0xf4;
  register uint32_t reg_d1 asm ("d1") = 0x07;
  register uint32_t reg_d2 asm ("d2") = mode;   // 0:stop 1:pause 2:resume

  asm volatile (
    "trap #15\n"        // trap #15
    :                   // output (&input) operand
    : "r"   (reg_d0),   // input operand
      "r"   (reg_d1),   // input operand
      "r"   (reg_d2)    // input operand
    :                   // clobbered register
  );
}

//
//  _MUCHECK
//
int32_t mdrv_mu_check() {

  register uint32_t reg_d0 asm ("d0") = 0xf4;
  register uint32_t reg_d1 asm ("d1") = 0x09;

  asm volatile (
    "trap #15\n"        // trap #15
    : "+r"  (reg_d0)    // output (&input) operand
    : "r"   (reg_d1)    // input operand
    :                   // clobbered register
  );

  return reg_d0;
}

//
//  _START
//
void mdrv_start() {

  register uint32_t reg_d0 asm ("d0") = 0xf4;
  register uint32_t reg_d1 asm ("d1") = 0x0e;

  asm volatile (
    "trap #15\n"        // trap #15
    :                   // output (&input) operand
    : "r"   (reg_d0),   // input operand
      "r"   (reg_d1)    // input operand
    :                   // clobbered register
  );
}

//
//  _STOP
//
void mdrv_stop() {

  register uint32_t reg_d0 asm ("d0") = 0xf4;
  register uint32_t reg_d1 asm ("d1") = 0x0f;

  asm volatile (
    "trap #15\n"        // trap #15
    :                   // output (&input) operand
    : "r"   (reg_d0),   // input operand
      "r"   (reg_d1)    // input operand
    :                   // clobbered register
  );
}

//
//  MercuryDriver keep check
//
int32_t mdrv_keepchk() {

  uint32_t eye_catch_addr = INTVCG(0x1f4) - 8;

  uint8_t eye_catch[4];
  for (int16_t i = 0; i < 4; i++) {
    eye_catch[i] = B_BPEEK((uint8_t*)(eye_catch_addr + i));
  }

  return (memcmp(eye_catch, "*MD*", 4) == 0) ? 1 : 0;
}