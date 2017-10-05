################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include kit_flashpwr/BRD4302A/subdir.mk
-include emlib/subdir.mk
-include device/EFR32_B_1_1_B/gcc/subdir.mk
-include bgapi/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Assignment_collection.axf

# Tool invocations
Assignment_collection.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "/home/sarang/IoT-Embedded-Firmware/Assignment_collection/linker/GCC/efr32bg1b232f256gm56.ld" -Xlinker -no-enum-size-warning -Xlinker -no-wchar-size-warning -Xlinker --gc-sections -Xlinker -Map="Assignment_collection.map" -mfpu=fpv4-sp-d16 -mfloat-abi=hard -o Assignment_collection.axf "./application_properties.o" "./gatt_db.o" "./main.o" "./bgapi/dmadrv.o" "./bgapi/em_adc.o" "./bgapi/em_ldma.o" "./bgapi/em_leuart.o" "./device/EFR32_B_1_1_B/gcc/startup_efr32bg1b.o" "./emlib/em_acmp.o" "./emlib/em_aes.o" "./emlib/em_assert.o" "./emlib/em_burtc.o" "./emlib/em_can.o" "./emlib/em_cmu.o" "./emlib/em_cryotimer.o" "./emlib/em_crypto.o" "./emlib/em_csen.o" "./emlib/em_dac.o" "./emlib/em_dbg.o" "./emlib/em_dma.o" "./emlib/em_ebi.o" "./emlib/em_gpcrc.o" "./emlib/em_gpio.o" "./emlib/em_i2c.o" "./emlib/em_idac.o" "./emlib/em_int.o" "./emlib/em_lcd.o" "./emlib/em_lesense.o" "./emlib/em_letimer.o" "./emlib/em_mpu.o" "./emlib/em_msc.o" "./emlib/em_opamp.o" "./emlib/em_pcnt.o" "./emlib/em_prs.o" "./emlib/em_qspi.o" "./emlib/em_rmu.o" "./emlib/em_rtc.o" "./emlib/em_rtcc.o" "./emlib/em_system.o" "./emlib/em_timer.o" "./emlib/em_usart.o" "./emlib/em_vcmp.o" "./emlib/em_vdac.o" "./emlib/em_wdog.o" "./kit_flashpwr/BRD4302A/mx25flash_spi.o" "./src/InitDevice.o" "./src/adc.o" "./src/bma280.o" "./src/cmu.o" "./src/gpio.o" "./src/i2c.o" "./src/letimer.o" "./src/sleep_modes.o" "./src/spi.o" "./src/timer.o" "/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/lib/EFR32BG1B/EABI/stack.a" "/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/lib/EFR32BG1B/EABI/binstack.o" "/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/lib/EFR32BG1B/EABI/binbootloader.o" "/home/sarang/SimplicityStudio_v4/developer/sdks/gecko_sdk_suite/v1.1//protocol/bluetooth_2.4/lib/EFR32BG1B/GCC/bgapi.a" -lm -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: Assignment_collection.hex'
	arm-none-eabi-objcopy -O ihex "Assignment_collection.axf" "Assignment_collection.hex"
	@echo ' '

	@echo 'Building bin file: Assignment_collection.bin'
	arm-none-eabi-objcopy -O binary "Assignment_collection.axf" "Assignment_collection.bin"
	@echo ' '

	@echo 'Building s37 file: Assignment_collection.s37'
	arm-none-eabi-objcopy -O srec "Assignment_collection.axf" "Assignment_collection.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "Assignment_collection.axf"
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) Assignment_collection.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
