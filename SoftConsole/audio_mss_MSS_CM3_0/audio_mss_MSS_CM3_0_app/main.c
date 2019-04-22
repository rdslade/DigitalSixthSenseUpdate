#include <stdio.h>
#include <inttypes.h>
#include "drivers/mss_ace/mss_ace.h"
#include "drivers/mss_gpio/mss_gpio.h"
#include "tfmini.h"
#include "motor_control.h"
#include "drivers/mss_i2c/mss_i2c.h"
#include "motor_control.h"
#include <stdlib.h>
#include <assert.h>
#include <math.h>
void io_init();
void GPIO_init();
void DAC_init();
void init_motors_on_mux();
void level_audio_emit(int level);
int signal_level_mapping(double signal, int scaling_factor, int constant_factor);
void level_motor_mapper(int mode, int level);
void GPIO1_IRQHandler(void);


// Shared Data
int level = 5;


int main(){
	uint32_t mode = 0;
	io_init();
	motor_routine(aquire_level);  
	return 0;
}

int aquire_level(){
	double distance = measure();
	return signal_level_mapping(distance, 1, 30);
}

void motor_routine(int level){
    uint32_t measure_counter = 0;
    while(MOTOR_ON) {
    	if(measure_counter == 20000){
			level_motor_mapper(mode, level);
			go();
			measure_counter = 0;
    	}
    	measure_counter++;
    }
}

void sound_routine(int level){
	while(SOUND_ON) {
		level_audio_emit(level)
    }
}

void io_init(){
	// const uint8_t frame_size = 32;
	// const uint32_t master_tx_frame = 0x0100A0E1;
	// SPI_init(master_tx_frame, frame_size);
	GPIO_init();
	DAC_init();
	MSS_I2C_init( &g_mss_i2c1, TCAADDR, MSS_I2C_PCLK_DIV_256 );
	init_motors_on_mux();
}
void GPIO_init(){
	MSS_GPIO_init();
	MSS_GPIO_config(MSS_GPIO_1, MSS_GPIO_INPUT_MODE | MSS_GPIO_IRQ_EDGE_POSITIVE);
	MSS_GPIO_enable_irq( MSS_GPIO_1);
}
void DAC_init(){
    /* DAC initialization */
	ACE_init();
    ACE_configure_sdd(
    	SDD1_OUT,
    	SDD_16_BITS,
    	SDD_VOLTAGE_MODE | SDD_RETURN_TO_ZERO,
    	INDIVIDUAL_UPDATE
    );
    ACE_enable_sdd(SDD1_OUT);
}

// void SPI_init(const uint32_t master_tx_frame, const uint8_t frame_size){
// 	MSS_SPI_init( &g_mss_spi1 );
// 	MSS_SPI_configure_master_mode(
// 		&g_mss_spi1,
// 		MSS_SPI_SLAVE_0,
// 		MSS_SPI_MODE1,
// 		MSS_SPI_PCLK_DIV_256,
// 		frame_size
// 	);

// 	MSS_SPI_set_slave_select( &g_mss_spi1, MSS_SPI_SLAVE_0 );
// 	MSS_SPI_transfer_frame( &g_mss_spi1, master_tx_frame );
// 	MSS_SPI_clear_slave_select( &g_mss_spi1, MSS_SPI_SLAVE_0 );
// }

void init_motors_on_mux(){
	uint8_t i = 0b11111111;
	tcaselect((uint8_t)0b00011111);
	init();
	selectLibrary(1);
	setMode(DRV2605_MODE_INTTRIG);
	setWaveform(1, 0);
}

void level_audio_emit(int level){
	uint32_t counter = 0;
	if(counter >= level * 400) {
		if (sigSw == 0) {
			outSig = 65536;
			sigSw = 1;
		}
		else if (sigSw == 1) {
			outSig = 0;
			sigSw = 0;
		}
		ACE_set_sdd_value(SDD1_OUT, (uint32_t)(outSig>>4));	
		counter++;
	}
}

int level_audio_mapping(int level){
	uint32_t counter = 0;
	if(counter >= level * 400) {
		if (sigSw == 0) {
			outSig = 65536;
			sigSw = 1;
		}
		else if (sigSw == 1) {
			outSig = 0;
			sigSw = 0;
		}
		ACE_set_sdd_value(SDD1_OUT, (uint32_t)(outSig>>4));
		counter = 0;
	}
}

int signal_level_mapping(double signal, int scaling_factor, int constant_factor){
	int level = 5;
	int power = 2;
	while(level > 0){
		if(signal < exp(pow)*scaling_factor + constant_factor){
			return level;
		}
		level--;
		power++;
	}
	return 0;
}

void level_motor_mapper(int mode, int level){
	if (mode == 0) {
		//MSS_GPIO_set_outputs(MSS_GPIO_2_MASK | MSS_GPIO_3_MASK | MSS_GPIO_4_MASK | MSS_GPIO_5_MASK | MSS_GPIO_6_MASK);
		tcaselect((uint8_t)0b00011111);
		setWaveform(0, 69 - level);
	}
	else if (mode == 1 && level > 0) {
		if (level == 1) {
			tcaselect((uint8_t)0b00000001);
		}
		else if (level == 2) {
			tcaselect((uint8_t)0b00000011);
		}
		else if (level == 3) {
			tcaselect((uint8_t)0b00000111);
		}
		else if (level == 4) {
			tcaselect((uint8_t)0b00001111);
		}
		else {
			tcaselect((uint8_t)0b00011111);
		}
		setWaveform(0, 64);
	}
}

void GPIO1_IRQHandler( void ) {
	uint32_t gpioOut = 65536;
	uint32_t sw = 0;
	uint32_t count = 0;
	uint32_t max = 500;
	uint32_t count2 = 0;

	while (count2 < 3000000) {
		if (count == max) {
			if (sw == 0) {
				gpioOut = 65536;
				sw = 1;
			}
			else if (sw == 1) {
				gpioOut = 0;
				sw = 0;
			}
			ACE_set_sdd_value(SDD1_OUT, (uint32_t)(gpioOut>>4));
			count = 0;
		}
		count += 1;
		count2 += 1;
	}
	//uint32_t gpioOut = MSS_GPIO_get_outputs();
	//MSS_GPIO_set_output(MSS_GPIO_0, (~gpioOut));
	//gpioOut = MSS_GPIO_get_outputs();
	mode = mode ^ 1;
	MSS_GPIO_clear_irq( MSS_GPIO_1 );
}


