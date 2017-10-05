################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.c 

OBJS += \
./device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.o 

C_DEPS += \
./device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.d 


# Each subdirectory must supply rules for building sources it contributes
device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.o: ../device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DSILABS_AF_USE_HWCONF=1' '-D__NO_SYSTEM_INIT=1' '-DEFR32BG1B232F256GM56=1' -I"/home/sarang/IoT-Embedded-Firmware/Assignment_collection/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/ble_stack/inc/soc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/bootloader/api" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emlib/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/CMSIS/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/Device/SiliconLabs/EFR32BG1B/Include" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/common/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/dmadrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/gpiointerrupt/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/nvm/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/rtcdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/sleep/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/spidrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/tempdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/uartdrv/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/emdrv/ustimer/inc" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/EFR32BG1_BRD4302A/config" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/bsp" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//hardware/kit/common/drivers" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32/rf/common/cortex" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/common" -I"/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//platform/radio/rail_lib/chip/efr32" -I"/home/sarang/IoT-Embedded-Firmware/Assignment_collection/src" -I"/home/sarang/IoT-Embedded-Firmware/Assignment_collection" -O0 -fno-short-enums -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=hard -MMD -MP -MF"device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.d" -MT"device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


