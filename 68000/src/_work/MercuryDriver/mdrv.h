#ifndef __H_MDRV__
#define __H_MDRV__

void mdrv_play_array_chain(uint16_t freq_pan, uint16_t count, void* addr);
int32_t mdrv_sense();
void mdrv_mode(int16_t mode);
int32_t mdrv_mu_check();
void mdrv_start();
void mdrv_stop();
int32_t mdrv_keepchk();

#endif