################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/InitDevice.c \
../src/adc.c \
../src/bma280.c \
../src/cmu.c \
../src/gpio.c \
../src/letimer.c \
../src/sleep_modes.c \
../src/spi.c \
../src/timer.c 

OBJS += \
./src/InitDevice.o \
./src/adc.o \
./src/bma280.o \
./src/cmu.o \
./src/gpio.o \
./src/letimer.o \
./src/sleep_modes.o \
./src/spi.o \
./src/timer.o 

C_DEPS += \
./src/InitDevice.d \
./src/adc.d \
./src/bma280.d \
./src/cmu.d \
./src/gpio.d \
./src/letimer.d \
./src/sleep_modes.d \
./src/spi.d \
./src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
src/InitDevice.o: ../src/InitDevice.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/InitDevice.d" -MT"src/InitDevice.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/adc.o: ../src/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/adc.d" -MT"src/adc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/bma280.o: ../src/bma280.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/bma280.d" -MT"src/bma280.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/cmu.o: ../src/cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/cmu.d" -MT"src/cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/gpio.o: ../src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/gpio.d" -MT"src/gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/letimer.o: ../src/letimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/letimer.d" -MT"src/letimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sleep_modes.o: ../src/sleep_modes.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/sleep_modes.d" -MT"src/sleep_modes.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/spi.o: ../src/spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/spi.d" -MT"src/spi.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/timer.o: ../src/timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor/src" -I"/home/sarang/IoT-Embedded-Firmware/SPI_Tap_Sensor" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"src/timer.d" -MT"src/timer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

