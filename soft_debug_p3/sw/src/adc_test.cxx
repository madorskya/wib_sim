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

    printf ("Checking ADC I2C registers on FEMB %d\n", femb_ind);

    FEMB* femb = new FEMB(femb_ind);


	int reg3;

	// chip_num_on_FEMB=0, chip_addr, reg_page, reg_addr, [value]
	// chip addresses: 
	// COLDATA = TOP=3, BOT=2 
	// ADC TOP:  8, 9,10,11
	// ADC BOT:  4, 5, 6, 7

	int i, j;
	if (argc == 2)
	{
		for (i = 1; i >= 0; i--) // COLDATA loop
		{
			for (j = 0; j <= 3; j++ ) // ADC loop
			{
				femb->i2c_write (0, 4+i*4+j, 1, 0x80, i*16+j);	
			}
		}
	}
	for (i = 0; i < 2; i++) // COLDATA loop
	{
		for (j = 0; j <= 3; j++ ) // ADC loop
		{
			reg3 = femb->i2c_read  (0, 4+i*4+j, 1, 0x80);
			if (reg3 != (i*16+j))	
				printf("COLDADC mismatch: FEMB: %d COLDATA: %d ADC: %d vrefp_ctrl = %x\n",femb_ind, i, j, reg3);
		}
	}


}
