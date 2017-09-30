/*
 * sleep.c
 *
 *  Created on: 13-Sep-2017
 *      Author: Sarang Kulkarni
 */

#include <sleep_modes.h>
#include "em_emu.h"
#include "cmsis_gcc.h"

void sleep(){
	if(sleep_modes[EM0]>0){
		return ;
	}
	else if(sleep_modes[EM1]>0){
		EMU_EnterEM1();
	}
	else if(sleep_modes[EM2]>0){
		EMU_EnterEM2(1);
	}
	else if(sleep_modes[EM3]>0){
		EMU_EnterEM3(1);
	}
}

void unblockSleepMode(int energy_mode){
	__disable_irq();
	if(sleep_modes[energy_mode]>0){
		sleep_modes[energy_mode]--;	}
	__enable_irq();
}

void blockSleepMode(int energy_mode){
	__disable_irq();
	sleep_modes[energy_mode]++;
	__enable_irq();
}

