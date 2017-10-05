#include "i2c.h"
#include "em_gpio.h"

void I2C_init(void){
	//i2c is on PC11 and PC 10 on location 16
	I2C_Init_TypeDef i2c_init = I2C_INIT_DEFAULT;

	CMU_ClockEnable(cmuClock_HFPER, true);//enable high frequency peripheral clock
	CMU_ClockEnable(cmuClock_I2C0, true);

	//set gpio pin modes
	GPIO_PinModeSet(gpioPortC, 10, gpioModeWiredAnd, 1);//pull up SCL
	GPIO_PinModeSet(gpioPortC, 11, gpioModeWiredAnd, 1);//SDA

	i2c_init.clhr = i2cClockHLRStandard;
	i2c_init.master = true;
	i2c_init.freq = 10000; //check the datasheet
	i2c_init.enable = false;//

	//init I2C
	I2C_Init(I2C0, &i2c_init);
	//route the pins to respective location
	I2C0 -> ROUTELOC0 = I2C_ROUTELOC0_SDALOC_LOC16 |I2C_ROUTELOC0_SCLLOC_LOC14;
	I2C0 -> ROUTEPEN = I2C_ROUTEPEN_SCLPEN | I2C_ROUTEPEN_SDAPEN;

	I2C_IntClear(I2C0, I2C_IEN_ADDR | I2C_IEN_RXDATAV | I2C_IEN_SSTOP);//clear all the pending interrupt
	I2C_IntEnable(I2C0, I2C_IEN_ADDR | I2C_IEN_RXDATAV | I2C_IEN_SSTOP);//enable all the interrupts
	NVIC_EnableIRQ(I2C0_IRQn);

	I2C_Enable(I2C0,true);


	//read through the datasheet of the sensor
}

