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
		//for (i = 0; i < 2; i++)
		for (i = 1; i >= 0; i--)
		{
			printf ("writing COLDATA %d\n", i);
			// all parameters are apparently good by default in COLDATA p3
/*
			femb->i2c_write (0, 3-i, 5, 0x40, 0x3 );	
			femb->i2c_write (0, 3-i, 5, 0x41, 0x10);	
			femb->i2c_write (0, 3-i, 5, 0x42, 0x2 );	
			femb->i2c_write (0, 3-i, 5, 0x43, 0x2 );	
			femb->i2c_write (0, 3-i, 5, 0x44, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x45, 0x0 );	

			femb->i2c_write (0, 3-i, 5, 0x46, 0x1 );	
			femb->i2c_write (0, 3-i, 5, 0x47, 0x0 );	

			femb->i2c_write (0, 3-i, 5, 0x48, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x49, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x4a, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x4b, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x4c, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x4d, 0x0F);	
			femb->i2c_write (0, 3-i, 5, 0x4e, 0x1 );	
			femb->i2c_write (0, 3-i, 5, 0x4f, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x50, 0x0 );	
			femb->i2c_write (0, 3-i, 5, 0x51, 0x0F);	
			femb->i2c_write (0, 3-i, 5, 0x52, 0x1 );	
			femb->i2c_write (0, 3-i, 5, 0x53, 0x1 );	
			femb->i2c_write (0, 3-i, 5, 0x54, 0x1 );	
*/
			//femb->i2c_write (0, 3-i, 0, 1, 0);  // frame-12
			femb->i2c_write (0, 3-i, 0, 1, 1);  // frame-14
			//femb->i2c_write (0, 3-i, 0, 1, 3);  // frame-DD
			//femb->i2c_write (0, 3-i, 0, 3, 0xc3);  // PRBS7, no 8b10b
			femb->i2c_write (0, 3-i, 0, 3, 0x3c);  // normal operation
			// COLDADC reset is done after COLDADC power is enabled.
			femb->i2c_write (0, 3-i, 0, 0x20, 0x5); // ACT = COLDADC reset
//			printf ("\n");
		}
	}
	for (i = 0; i < 2; i++)
	//for (i = 1; i >= 0; i--)
	{
		printf ("reading COLDATA %d\n", i);
		int err = 0;
/*
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x40);	if (reg3 != 0x3 ) err = 0x40; printf("CONFIG_PLL_ICP = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x41);	if (reg3 != 0x10) err = 0x41; printf("CONFIG_PLL_BAND = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x42);	if (reg3 != 0x2 ) err = 0x42; printf("CONFIG_PLL_LPFR = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x43);	if (reg3 != 0x2 ) err = 0x43; printf("CONFIG_PLL_ATO = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x44);	if (reg3 != 0x0 ) err = 0x44; printf("CONFIG_PLL_PDCP = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x45);	if (reg3 != 0x0 ) err = 0x45; printf("CONFIG_PLL_OPEN = %x\n",reg3);
                                                                                    
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x46);	if (reg3 != 0x1 ) err = 0x46; printf("CONFIG_SER_MODE = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x47);	if (reg3 != 0x0 ) err = 0x47; printf("CONFIG_SER_INV_SER_CLK = %x\n",reg3);
                                                                                    
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x48);	if (reg3 != 0x0 ) err = 0x48; printf("CONFIG_DRV_VMBOOST = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x49);	if (reg3 != 0x0 ) err = 0x49; printf("CONFIG_DRV_VMDRIVER = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x4a);	if (reg3 != 0x0 ) err = 0x4a; printf("CONFIG_DRV_SELPRE = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x4b);	if (reg3 != 0x0 ) err = 0x4b; printf("CONFIG_DRV_SELPST1 = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x4c);	if (reg3 != 0x0 ) err = 0x4c; printf("CONFIG_DRV_SELPST2 = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x4d);	if (reg3 != 0x0F) err = 0x4d; printf("CONFIG_DRV_SELCM_MAIN = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x4e);	if (reg3 != 0x1 ) err = 0x4e; printf("CONFIG_DRV_ENABLE_CM = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x4f);	if (reg3 != 0x0 ) err = 0x4f; printf("CONFIG_DRV_INVERSE_CLK = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x50);	if (reg3 != 0x0 ) err = 0x50; printf("CONFIG_DRV_DELAYSEL = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x51);	if (reg3 != 0x0F) err = 0x51; printf("CONFIG_DRV_DELAY_CS = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x52);	if (reg3 != 0x1 ) err = 0x52; printf("CONFIG_DRV_CML = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x53);	if (reg3 != 0x1 ) err = 0x53; printf("CONGIF_DRV_BIAS_CML_INTERNAL = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 5, 0x54);	if (reg3 != 0x1 ) err = 0x54; printf("CONGIF_DRV_BIAS_CS_INTERNAL = %x\n",reg3);
  */                                                                                  
		reg3 = femb->i2c_read  (0, 3-i, 0, 0x01);	if (reg3 != 0x1 ) err = 0x01; printf("FRAME = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 0, 0x03);	if (reg3 != 0x3c) err = 0x03; printf("PRBS = %x\n",reg3);
		reg3 = femb->i2c_read  (0, 3-i, 0, 0x20);	if (reg3 != 0x05) err = 0x20; printf("ACT = %x\n",reg3);
		if (err != 0) printf ("FEMB: %d COLDATA: %d register %x mismatch\n", femb_ind, i, err);
	}


}

