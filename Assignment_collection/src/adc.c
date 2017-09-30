/*
 * adc.c
 *
 *  Created on: 26-Sep-2017
 *      Author: Sarang Kulkarni
 */
#include <sleep_modes.h>
#include "em_adc.h"
#include "adc.h"
#include "gpio.h"



void adc_init()
{
	GPIO_PinModeSet(0,0,0,0);


		ADC0->CTRL =  ADC_CONTROL_REG;
		ADC0->SINGLECTRL = ADC_SINGLE_CONTROL_REG;
		ADC0->SINGLECTRLX |= ADC_SINGLECONTROLX_REG;
	    ADC0->SINGLEFIFOCLEAR = ADC_SINGLEFIFOCLEAR_SINGLEFIFOCLEAR;
	    ADC0->CMPTHR = _ADC_CMPTHR_RESETVALUE;
	    ADC0->CMPTHR = (ADC_LOW << _ADC_CMPTHR_ADGT_SHIFT) + (ADC_HIGH << _ADC_CMPTHR_ADLT_SHIFT);
	    ADC0->SINGLECTRL |= ADC_SINGLECTRL_CMPEN;
	    ADC0->SINGLECTRL |= ADC_SINGLECTRL_REP;
	    ADC0->BIASPROG = ADC_BIASPROG_ADCBIASPROG_NORMAL;
	    ADC0->BIASPROG = ADC_BIASPROG_GPBIASACC_LOWACC;
	    blockSleepMode(Lowest_Energy);								//setting the blocksleep mode to EM3
		ADC_IntEnable(ADC0, ADC_IEN_SINGLECMP);
	    NVIC_ClearPendingIRQ(ADC0_IRQn);
	    NVIC_EnableIRQ(ADC0_IRQn);
	    ADC0->CMD |= ADC_COMMAND_REG;

}
