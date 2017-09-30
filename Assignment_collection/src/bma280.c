/*
 * adc.c
 *
 *  Created on: 26-Sep-2017
 *      Author: Sarang Kulkarni
 */
#include "bma280.h"

void bma_init(void){
	spi_write(0x0f, 0x05);
	spi_write(0x10, 0x0C);
	spi_write(0x16, 0x30);
	spi_write(0x19, 0x30);
	spi_write(0x2a, 0x03);
	spi_write(0x2b, 0x48);

	GPIO_PinModeSet(gpioPortD, 11, gpioModeInput, 0);

	GPIO_IntConfig(gpioPortD,11,1,0,1);


//	NVIC_EnableIRQ(GPIO_EVEN_IRQn);

	NVIC_EnableIRQ(GPIO_ODD_IRQn);
}
