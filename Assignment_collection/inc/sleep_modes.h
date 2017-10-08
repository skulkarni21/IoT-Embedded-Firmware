/*
 * sleep.h
 *
 *  Created on: 13-Sep-2017
 *      Author: Sarang Kulkarni
 */

#ifndef SRC_SLEEP_MODES_H_
#define SRC_SLEEP_MODES_H_

#define EM0 0
#define EM1 1
#define EM2 2
#define EM3 3
#define ON 2.5
#define OFF 3
#define Lowest_Energy EM3

unsigned int LETimerDUTY;
unsigned int LETimerFreq;
unsigned int sleep_modes[4];

void sleep();

void unblockSleepMode(int energy_mode);

void blockSleepMode(int energy_mode);

#endif /* SRC_SLEEP_MODES_H_ */
