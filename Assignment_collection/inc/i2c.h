#ifndef I2C
#define I2C

#include "em_i2c.h"
#include "em_cmu.h"

void i2c_init(void);
void i2c_enable(void);
float Caculate_Celsius(uint16_t i2c_read_data);
void i2c_disable(void);
uint16_t I2C0_read (void);
void I2C0_write (uint8_t reg, uint8_t data);

#endif
