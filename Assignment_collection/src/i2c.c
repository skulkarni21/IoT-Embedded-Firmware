#include "i2c.h"

void I2C_init(void){
	//i2c is on PC11 and PC 10 on location 16
	I2C_Init_TypeDef i2c_init = I2C_INIT_DEFAULT;

	CMU_ClockEnable(cmuClock_HFPER, true);//enable high frequency peripheral clock
	CMU_ClockEnable(cmuClock_I2C0, true);

	i2c_init.clhr = i2cClockHLRStandard;
	i2c_init.master = true;
	i2c_init.freq = 10000; //check the datasheet
	i2c_init.enable = true;



	//route the pins to respective location
	I2C0 -> ROUTELOC0 = I2C_ROUTELOC0_SDALOC_LOC16 |I2C_ROUTELOC0_SCLLOC_LOC14;
	I2C0 -> ROUTEPEN = I2C_ROUTEPEN_SCLPEN | I2C_ROUTEPEN_SDAPEN;
	//set gpio pin modes and locations
	//enable the i2c
	//read through the datasheet of the sensor
}
