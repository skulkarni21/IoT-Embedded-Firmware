#include "si7021.h"

void si_measure_start(void){
	//signifying write of address (0x40) to the slave
	I2C0->TXDATA = (0x40 << 1) | 0x00 ;//start with write
	//send the START bit
	I2C0->CMD = I2C_CMD_START;
	while ((I2C0->IF & I2C_IF_ACK) == 0);
	I2C0->IFC = I2C_IFC_ACK;

	// Command Code: 0xF3 for No Hold Master mode
	I2C0->TXDATA = 0xF3;
	I2C0->CMD = I2C_CMD_START;
	while ((I2C0->IF & I2C_IF_ACK) == 0);
	I2C0->IFC = I2C_IFC_ACK;

	I2C0->TXDATA = (0x40 << 1) | 0x01 ;//read
	I2C0->CMD = I2C_CMD_START;

	for(int i =0 ; i<1250; i++);
	//I2C0->CMD = I2C_CMD_NACK;
	while ((I2C0->IF & I2C_IF_NACK)){
		I2C0->IFC = I2C_IFC_NACK;
	}

}

uint16_t si_read_result(void){
	uint16_t read_data;

	I2C0->TXDATA = (0x40 << 1) | 0x01 ;//read
	I2C0->CMD = I2C_CMD_START;
	while ((I2C0->IF & I2C_IF_ACK) == 0);
	I2C0->IFC = I2C_IFC_ACK;

	while((I2C0->IF & I2C_IF_RXDATAV) ==0);
	read_data = I2C0->RXDATA;    //receive MSB
	read_data = read_data << 8;

	I2C0->CMD = I2C_CMD_ACK;    //send ACK

	while((I2C0->IF & I2C_IF_RXDATAV) ==0);
	read_data |= I2C0->RXDATA;    //receive LSB

	I2C0->CMD = I2C_CMD_NACK;
	I2C0->CMD = I2C_CMD_STOP;

	return read_data;
}
