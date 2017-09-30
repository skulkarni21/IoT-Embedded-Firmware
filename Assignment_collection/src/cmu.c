//***********************************************************************************
// Include files
//***********************************************************************************
#include <sleep_modes.h>
#include "cmu.h"

//***********************************************************************************
// defined files
//***********************************************************************************


//***********************************************************************************
// global variables
//***********************************************************************************


//***********************************************************************************
// function prototypes
//***********************************************************************************
void cmu_init(void){
	    CMU_HFRCOBandSet(cmuHFRCOFreq_2M0Hz); 				            // Set HFRCO frequency
		CMU_OscillatorEnable(cmuOsc_HFRCO, true, true);                 // enable HFRCO oscillator
		CMU_HFXOAutostartEnable(0, false, false);                       //disabling the HFXO autostart
		CMU_ClockSelectSet(cmuClock_HF, cmuSelect_HFRCO);               //Selecting the HF clock tree
		CMU_OscillatorEnable(cmuOsc_HFXO, false, false);                //while implemeting ADC enable this

		if (Lowest_Energy == EM3) {                                //setting the energy mode to EM3
	        CMU_OscillatorEnable(cmuOsc_ULFRCO, true, true);            //In this energy mode select ULFRCO
	        CMU_ClockSelectSet(cmuClock_LFA, cmuSelect_ULFRCO);         //clock tree select
		}
		else{
		    CMU_OscillatorEnable(cmuOsc_LFXO, true, true);              //other than EM3 use LFXO
	        CMU_ClockSelectSet(cmuClock_LFA, cmuSelect_LFXO);           //selecting the clock tree
	    }

		CMU_ClockEnable(cmuClock_GPIO, true);                           //enabling the clock for GPIO
		CMU_ClockEnable(cmuClock_HFLE, true);                           //enabling the coreLE clock
		CMU_ClockEnable(cmuClock_LETIMER0, true);                       //enbling the LETIMER0 clock

		CMU->ADCCTRL |= CMU_ADCCTRL_ADC0CLKSEL_AUXHFRCO;				//writing directly to the register
		CMU_AUXHFRCOBandSet(cmuAUXHFRCOFreq_1M0Hz);						//setting the AUX calibration for 2MHz frequency
		CMU_OscillatorEnable(cmuOsc_AUXHFRCO, true, true);				//oscillator enable
		CMU_ClockEnable(cmuClock_ADC0, true);
		CMU_OscillatorEnable(cmuOsc_HFXO, true, true);
		CMU_ClockEnable(cmuClock_TIMER0, true);
}

