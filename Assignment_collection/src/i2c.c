#include "i2c.h"
#include "em_gpio.h"

void i2c_init(void){
	//i2c is on PC11 and PC 10 on location 16
	I2C_Init_TypeDef i2c_init = I2C_INIT_DEFAULT;

	CMU_ClockEnable(cmuClock_I2C0, true);

	//set gpio pin modes
	GPIO_PinModeSet(gpioPortC, 10, gpioModeWiredAnd, 1);//pull up SCL
	GPIO_PinModeSet(gpioPortC, 11, gpioModeWiredAnd, 1);//SDA

	i2c_init.clhr = i2cClockHLRStandard;
	i2c_init.master = true;
	i2c_init.refFreq = 0;
	i2c_init.freq = I2C_FREQ_STANDARD_MAX; //check the datasheet
	i2c_init.enable = false;//

	//route the pins to respective location
	I2C0 -> ROUTELOC0 = I2C_ROUTELOC0_SDALOC_LOC16 |I2C_ROUTELOC0_SCLLOC_LOC14;
	I2C0 -> ROUTEPEN = I2C_ROUTEPEN_SCLPEN | I2C_ROUTEPEN_SDAPEN;

	//init I2C
	I2C_Init(I2C0, &i2c_init);

	//clear buffers in I2C slave
	for (int i=0; i<9; i++){
		GPIO_PinOutClear(gpioPortC, 10);
		GPIO_PinOutSet(gpioPortC, 10);
	}

	//reset the I2C bus
	if(I2C0->STATE & I2C_STATE_BUSY){
		I2C0->CMD = I2C_CMD_ABORT;
	}


//	I2C_IntClear(I2C0, I2C_IEN_ADDR | I2C_IEN_RXDATAV | I2C_IEN_SSTOP);//clear all the pending interrupt
//	I2C_IntEnable(I2C0, I2C_IEN_ADDR | I2C_IEN_RXDATAV | I2C_IEN_SSTOP);//enable all the interrupts
//	NVIC_EnableIRQ(I2C0_IRQn);
}

void i2c_enable(void){
	GPIO_PinOutSet(gpioPortD, 9);
	for(int i = 0; i <100000; i++);
	i2c_init();
	I2C_Enable(I2C0, true);
}

void i2c_disabe(void){
	GPIO_PinOutClear(gpioPortD, 9);
	I2C_Enable(I2C0, false);
}

float Caculate_Celsius(uint16_t i2c_read_data){
	float temperatureC = (175.72 * i2c_read_data ) / 65536 - 46.85;

	return temperatureC;
}

uint16_t I2C0_read (void){
	uint16_t read_data;

	//signifying write of address (0x40) to the slave
	I2C0->TXDATA = (0x40 << 1) | 0x00 ;//start with write

	//send the START bit
	I2C0->CMD = I2C_CMD_START;
	//I2C0 -> IFC = I2C_IFC_START;

	//wait for the salve to respond
	while ((I2C0->IF & I2C_IF_ACK) == 0);

	//after ACK has been received, it must be cleared from the IF
	I2C0->IFC = I2C_IFC_ACK;

	// Set "Command Code: 0xE3"
	I2C0->TXDATA = 0xF3;

	I2C0->CMD = I2C_CMD_START;

	//wait for the salve to respond
	while ((I2C0->IF & I2C_IF_ACK) == 0);

	//after ACK has been received, it must be cleared from the IF
	I2C0->IFC = I2C_IFC_ACK;

	//signifying read of address to the slave
	I2C0->TXDATA = (0x40 << 1) | 0x01 ;//read

	//Sr
	I2C0->CMD = I2C_CMD_START;

	//wait for the salve to respond
	while ((I2C0->IF & I2C_IF_ACK) == 0);

	//after ACK has been received, it must be cleared from the IF
	I2C0->IFC = I2C_IFC_ACK;

	while((I2C0->IF & I2C_IF_RXDATAV) ==0);

	read_data = I2C0->RXDATA;    //receive MSB
    //I2C0->IFC = I2C_IFC_ACK;

    read_data = read_data << 8;

    I2C0->CMD = I2C_CMD_ACK;    //send ACK
    while((I2C0->IF & I2C_IF_RXDATAV) == 0);
    read_data |= I2C0->RXDATA;    //receive LSB

	I2C0->CMD = I2C_CMD_NACK;

	I2C0->CMD = I2C_CMD_STOP;

	return read_data;
}

void I2C0_write (uint8_t reg, uint8_t data) {
	//signifying write of address (0x40) to the slave
	I2C0->TXDATA = (0x40 << 1) | 0 ;//start with write

	//send the START bit
	I2C0->CMD = I2C_CMD_START;

	//wait for the salve to respond
	while ((I2C0->IF & I2C_IF_ACK) == 0);

	//after ACK has been received, it must be cleared from the IF
	I2C0->IFC = I2C_IFC_ACK;

	// Set "Command Code: 0xE0"
	I2C0->TXDATA = reg;

	//wait for the salve to respond
	while ((I2C0->IF & I2C_IF_ACK) == 0);

	//after ACK has been received, it must be cleared from the IF
	I2C0->IFC = I2C_IFC_ACK;

	I2C0->TXDATA = data;

	I2C0->CMD = I2C_CMD_ACK;

	I2C0->CMD = I2C_CMD_STOP;
}

