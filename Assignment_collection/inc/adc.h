/*
 * adc.h
 *
 *  Created on: 26-Sep-2017
 *      Author: Sarang Kulkarni
 */

#ifndef SRC_ADC_H_
#define SRC_ADC_H_

#define ADC_CONTROL_REG 0x00016FC0
#define ADC_SINGLE_CONTROL_REG 0x86FF6841
#define ADC_SINGLECONTROLX_REG 0x00004000
#define ADC_LOW 14
#define ADC_HIGH 3475
#define ADC_COMMAND_REG 0x00000001

void adc_init();



#endif /* SRC_ADC_H_ */
