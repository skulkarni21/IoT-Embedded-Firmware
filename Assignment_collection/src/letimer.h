/*
 * timer1.h
 *
 *  Created on: 26-Sep-2017
 *      Author: Sarang Kulkarni
 */

#ifndef SRC_LETIMER_H_
#define SRC_LETIMER_H_

#define LETIMER_CTRL 0x00000200
#define LETIMER_IEN  0x00000003;
#define LETIMER_IFS  0x00000007
void letimer_init();


#endif /* SRC_LETIMER_H_ */
