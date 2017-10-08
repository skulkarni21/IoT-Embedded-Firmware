/*
 * timer1.c
 *
 *  Created on: 26-Sep-2017
 *      Author: Sarang Kulkarni
 */

#include <letimer.h>
#include <sleep_modes.h>
#include "stdint.h"
#include "em_device.h"
#include "em_chip.h"
#include "main.h"
#include "gpio.h"
#include "cmu.h"
#include "em_cmu.h"
#include "em_letimer.h"


void letimer_init()
{
    float timePeriod, onTimePeriod;
    int CFreq;
    LETIMER0->CTRL |= LETIMER_CTRL;
    CFreq = CMU_ClockFreqGet(cmuClock_LFA);							//setting the value of LFA clock to a global variable
    timePeriod = (CFreq * OFF);    								//macro for periods
    onTimePeriod = (CFreq * ON);

    unsigned int LETIMER0_prescalar = 0;										//initialised the prescalar
    while(timePeriod > 0xFFFF){
    LETIMER0_prescalar++;
    timePeriod /=2;
    onTimePeriod /=2;
    }
    CMU->LFAPRESC0 = LETIMER0_prescalar;
    while (LETIMER0->SYNCBUSY);
    LETIMER_CompareSet(LETIMER0, 0,timePeriod );
    LETIMER_CompareSet(LETIMER0, 1, onTimePeriod);
    LETIMER0->IFC  |= LETIMER_IFS;
    LETIMER0->IEN  |= LETIMER_IEN;
    NVIC_EnableIRQ(LETIMER0_IRQn);
    blockSleepMode(Lowest_Energy);//blocking minimum energy mode
															//blocking minimum energy mode
}
