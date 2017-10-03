/*
 * spi.c
 *
 *  Created on: 27-Sep-2017
 *      Author: Sarang Kulkarni
 */


#include "spi.h"
#include "em_usart.h"

void SPI_Init(void){
	USART_InitSync_TypeDef spi_init;

	GPIO_Mode_TypeDef gpioModeMosi;
	GPIO_Mode_TypeDef gpioModeMiso;
	GPIO_Mode_TypeDef gpioModeCs;
	GPIO_Mode_TypeDef gpioModeClk;

	/* Set GPIO config to master */
    gpioModeMosi = gpioModePushPull; //check with someone
    gpioModeMiso = gpioModeInput;
    gpioModeCs   = gpioModePushPull;
    gpioModeClk  = gpioModePushPull;

	//SPI pins for BMA280 are mapped to the ports as follows
	//SPI_CS	PC9
	//SPI_SCLK	PC8
	//SPI_MISO	PC7
	//SPI_MOSI	PC6
	//setting these pins to appropriate GPIO mode.
    GPIO_PinModeSet(gpioPortC, 9, gpioModeCs,1);
	GPIO_PinModeSet(gpioPortC, 8, gpioModeClk,1);
	GPIO_PinModeSet(gpioPortC, 7, gpioModeMiso,0);
	GPIO_PinModeSet(gpioPortC, 6, gpioModeMosi,1);

	CMU_ClockEnable(cmuClock_HFPER, true);
	CMU_ClockEnable(cmuClock_USART1, true);


	spi_init.enable = usartDisable;		//Enable USART after init
	spi_init.refFreq = 0;
	spi_init.baudrate = 100000;		//set the baudrate to 5Mhz
	spi_init.databits =usartDatabits8;	//set 8 bit transmit mode
	spi_init.master = 1;				//set the device as master
	spi_init.msbf= 1; 				//send lsb first; see in accelerometer DS
	spi_init.clockMode = usartClockMode3;//see in accelerometer DS
	spi_init.prsRxEnable = 0;
	spi_init.prsRxCh = usartPrsRxCh0;
	spi_init.autoTx = 0;
	spi_init.autoCsEnable = 1;		//Enable auto chip select
	spi_init.autoCsHold = 0;
	spi_init.autoCsSetup = 0;

	USART_InitSync(USART1, &spi_init);
	USART1->ROUTELOC0 = USART_ROUTELOC0_CLKLOC_LOC11 | USART_ROUTELOC0_TXLOC_LOC11 | USART_ROUTELOC0_RXLOC_LOC11 | USART_ROUTELOC0_CSLOC_LOC11;
	USART1->ROUTEPEN = USART_ROUTEPEN_CLKPEN | USART_ROUTEPEN_TXPEN | USART_ROUTEPEN_RXPEN | USART_ROUTEPEN_CSPEN;

	USART_Enable(USART1, usartEnable);
	//The accelerometer interrupts are connected to GPIO port D11


}

uint8_t spi_write(uint8_t reg_addr, uint8_t data){
	uint16_t final_value = 0x0000;
	uint8_t result;


	final_value |= data;
	final_value <<=8;
	final_value |= reg_addr;

	while (!(USART1->STATUS & USART_STATUS_TXBL));
	USART1 -> TXDOUBLE = final_value;
	while (!(USART1->STATUS & USART_STATUS_TXC));

	result= (USART1 -> RXDOUBLEXP & _USART_RXDOUBLEXP_RXDATAP1_MASK );
	USART1->CMD |= _USART_CMD_CLEARRX_MASK;
	USART1->CMD &= ~(_USART_CMD_CLEARRX_MASK);
	return result;
}

uint8_t spi_read(uint8_t reg_addr){
	uint16_t final_value = 0x0000;
	uint8_t result;


	final_value |= 0xff;
	final_value <<=8;
	final_value |= (reg_addr | 0x80);

	while (!(USART1->STATUS & USART_STATUS_TXBL));
	USART1 -> TXDOUBLE = final_value;
	while (!(USART1->STATUS & USART_STATUS_TXC));

	result= (USART1 -> RXDOUBLEXP & _USART_RXDOUBLEXP_RXDATAP1_MASK );
	USART1->CMD |= _USART_CMD_CLEARRX_MASK;
	USART1->CMD &= ~(_USART_CMD_CLEARRX_MASK);
	return result;
}
