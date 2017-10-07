#ifndef SI7021
#define SI7021

#include "i2c.h"

void si_measure_start(void);
uint16_t si_read_result(void);

#endif
