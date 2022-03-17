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


	FEMB* femb = new FEMB(0);

	

	int reg3;

	// chip_num_on_FEMB=(0|1), chip_addr, reg_page, reg_addr, [value]
	// chip addresses: 
	// COLDATA = 2 (always)
	// ADC:  4, 5, 6, 7
	// ADC: 12,13,14,15 (maybe)

	int i, j;
	if (argc == 1)
	{
		printf ("writing\n");
		for (i = 1; i >= 0; i--)
		{
			for (j = 4; j <= 7; j++ )
			{
				femb->i2c_write (i, j, 1, 0x80, i*16+j);	
				printf ("\n");
			}
		}
	}
	for (i = 0; i < 2; i++)
	//for (i = 1; i >= 0; i--)
	{
		for (j = 4; j <= 7; j++ )
		{
			reg3 = femb->i2c_read  (i, j, 1, 0x80);	
			printf("chip: %d vrefp_ctrl = %x\n",j,reg3);
		}
//		for (j = 12; j <= 15; j++ )
//		{
//			reg3 = femb->i2c_read  (i, j, 1, 0x80);	
//			printf("chip: %d vrefp_ctrl = %x\n",j,reg3);
//		}
	}


}

