/*
 * timer.c
 *
 *  Created on: Sep 25, 2017
 *      Author: Sarang Kulkarni
 */

#include "em_device.h"
#include "em_timer.h"
#include "stdbool.h"
#include "timer.h"
#include "em_cmu.h"

void timer_init(void)
{

TIMER_InitCC_TypeDef timer_divider;
TIMER_Init_TypeDef timer_init;

TIMER0->LOCK = _TIMER_LOCK_TIMERLOCKKEY_UNLOCK;

timer_divider.eventCtrl  = timerEventEveryEdge;
timer_divider.edge       = timerEdgeBoth;
timer_divider.prsSel     = timerPRSSELCh0;
timer_divider.cufoa      = timerOutputActionNone;
timer_divider.cofoa      = timerOutputActionNone;
timer_divider.cmoa       = timerOutputActionNone;
timer_divider.mode       = timerCCModeCompare;
timer_divider.filter     = false;
timer_divider.prsInput   = false;
timer_divider.coist      = false;
timer_divider.outInvert  = false;

timer_init.enable = false;
timer_init.debugRun = false;
timer_init.prescale = timerPrescale1024;
timer_init.clkSel = timerClkSelHFPerClk;
timer_init.count2x = false;
timer_init.ati = false;
timer_init.fallAction = timerInputActionNone;
timer_init.riseAction = timerInputActionNone;
timer_init.mode = timerModeUp;
timer_init.dmaClrAct = false;
timer_init.quadModeX4 = false;
timer_init.oneShot = false;
timer_init.sync = false;

TIMER0->CNT = 0x0000;

TIMER_InitCC(TIMER0, 0, &timer_divider);
TIMER_TopSet(TIMER0, 75);
TIMER_IntEnable(TIMER0, TIMER_IF_OF);
NVIC_SetPriority(TIMER0_IRQn, 1);
NVIC_EnableIRQ(TIMER0_IRQn);
TIMER_Init(TIMER0,&timer_init);
}
