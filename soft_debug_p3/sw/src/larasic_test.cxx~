#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <fstream>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdio.h>

#include "femb.h"

using namespace std;

int main (int argc, char * argv[])
{


	int femb_ind = -1;
	sscanf (argv[1], "%d", &femb_ind);
	if (femb_ind < 0 || femb_ind > 3) 
	{
		printf ("invalid FEMB index. Usage: femb_test index(0..3)");
		exit (4);
	}

	printf ("Configuring FEMB %d\n", femb_ind);

	FEMB* femb = new FEMB(femb_ind);

	int reg3;

	// chip_num_on_FEMB=(0|1), chip_addr=2, reg_page, reg_addr

	uint8_t global_reg_1 = 0xaa, global_reg_2 = 0xaa, channel_reg; 

	int i;
	if (argc == 2)
	{
		// See COLDATA datasheet
		// MSB goes first
		// [MSB] Ch15 .. Ch0 global_reg_1 global_reg_2 [LSB]
		// COLDATA registers 0x80 .. 0x91

		for (uint8_t i = 2; i < 4; i++) // COLDATA loop
		{ 
			for (uint8_t page = 1; page <= 4; page++) // LArASIC loop
			{

				for (uint8_t addr = 0x80; addr < 0x90; addr++) // channel loop
				{ 
					channel_reg = addr - 0x80;
					femb->i2c_write(0, i, page, addr, channel_reg);
				}

				femb->i2c_write(0, i, page, 0x90, global_reg_1);
				femb->i2c_write(0, i, page, 0x91, global_reg_2);

				// COLDATA calibration stobe parameters
				//i2c_write_verify(0, i, page, 0x06, c.cal_skip);
				//i2c_write_verify(0, i, page, 0x07, c.cal_delay);
				//i2c_write_verify(0, i, page, 0x08, c.cal_length);
			}
			femb->i2c_write(0, i, 0, 0x20, 8); // ACT = Program LArASIC SPI
		}

		// issue FAST ACT command to actually run LArASIC configuration
		system ("./devreg.sh fast_cmd_code 2");

		usleep (100000);

		// store results
		for (uint8_t i = 2; i < 4; i++) // COLDATA loop
		{ 
			femb->i2c_write(0, i, 0, 0x20, 3); // ACT = Save Status
		}

		// issue FAST ACT command to actually save status
		system ("./devreg.sh fast_cmd_code 2");

		// check result
		for (uint8_t i = 2; i < 4; i++) // COLDATA loop
		{ 
			uint8_t larasic_result = femb->i2c_read (0, i, 0, 0x24);
			printf ("COLDATA: %d result: %02x\n", i, larasic_result);
		}
	}
}

