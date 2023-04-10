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

	int i;
	if (argc == 2)
	{
		printf ("COLDATA soft reset, all chips\n");
		femb->i2c_write (0, 0, 0, 6, 0);  // COLDATA soft reset

		for (i = 1; i >= 0; i--)
		{
			printf ("writing COLDATA %d\n", i);
//			i2c_write (coldata_idx, chip_addr, page, reg_addr, data) 
//			i2c_read  (coldata_idx, chip_addr, page, reg_addr)

            femb->i2c_write (0, 3-i, 0,    1,    1);  // 0=frame-12 1=frame-14 3=frame-DD
			femb->i2c_write (0, 3-i, 0,    3, 0x3c);  // 3c=normal operation, c3=PRBS7
//          COLDADC reset is done after COLDADC power is enabled.
			femb->i2c_write (0, 3-i, 0, 0x20,  0x5); // ACT = COLDADC reset
		}
	}
	for (i = 0; i < 2; i++)
	//for (i = 1; i >= 0; i--)
	{
		printf ("reading COLDATA %d\n", i);
		int err = 0;
		reg3 = femb->i2c_read  (0, 3-i, 0, 0x01);	if (reg3 != 0x1 ) err = 0x01; printf("FRAME = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 0, 0x03);	if (reg3 != 0x3c) err = 0x03; printf("PRBS = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 0, 0x20);	if (reg3 != 0x05) err = 0x20; printf("ACT = %x\n",reg3);
		if (err != 0) printf ("FEMB: %d COLDATA: %d register %x mismatch\n", femb_ind, i, err);
	}


}

