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

//    printf ("Checking ADC I2C registers on FEMB %d\n", femb_ind);

    FEMB* femb = new FEMB(femb_ind);


	int reg3, reg4;

	// chip_num_on_FEMB=0, chip_addr, reg_page, reg_addr, [value]
	// chip addresses: 
	// COLDATA = TOP=3, BOT=2 
	// ADC TOP:  8, 9,10,11
	// ADC BOT:  4, 5, 6, 7

	int i, j, t;
	uint8_t val = 0xa9;
	int err_cnt = 0;

//goto distort_test;
	printf ("register write/read\n");
	for (t = 0; t < 10000; t++)
	{
//		val <<= 1;
//		if (val == 0) val = 1;
		val++;		
		for (i = 1; i >= 0; i--) // COLDATA loop
		//i = 0;
		{
			//j = 0;
			for (j = 0; j <= 3; j++ ) // ADC loop
			{
				femb->i2c_write (0, 4+i*4+j, 1, 0x80+24, val); //i*16+j);
				femb->i2c_write (0, 3-i, 0, 3, val); // COLDATA PRBS register
			}
		}
		//i = 0;
		for (i = 1; i >= 0; i--) // COLDATA loop
		{
			//j = 0;
			for (j = 0; j <= 3; j++ ) // ADC loop
			{
				reg3 = femb->i2c_read  (0, 4+i*4+j, 1, 0x80+24);
				reg4 = femb->i2c_read  (0, 3-i, 0, 3); // COLDATA PRBS register
				if (reg3 != val) //(i*16+j))	
				{
					printf("COLDADC mismatch: FEMB: %d COLDATA: %d ADC: %d vrefp_ctrl = %x exp: %x err: %x\n",femb_ind, i, j, reg3, val, reg3^val);
					err_cnt++;
				}
				if (reg4 != val) //(i*16+j))	
				{
					printf("COLDATA mismatch: FEMB: %d COLDATA: 3 prbs = %x exp: %x err: %x\n", femb_ind, reg4, val, reg4^val);
					err_cnt++;
				}
			}
		}
	}
//		usleep (100000);
//exit(0);
distort_test:

	printf ("register distort test\n");
	for (int t = 0; t < 1000; t++) // iterations loop
	{
		for (int i = 4; i <= 11; i++) // ADC loop
		{
			bool res = true;

			femb->i2c_write (0, i, 1, 0x98, 0xDF);  //reg 24 vrefp
			femb->i2c_write (0, i, 1, 0x99, 0x33);  //reg 25 vrefn
			uint8_t vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0x99\n",femb_ind,i,vrefRead);

			femb->i2c_write (0, i, 1, 0x9a, 0x89);  //reg 26 vcmo
			vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0x9a\n",femb_ind,i,vrefRead);

			femb->i2c_write (0, i, 1, 0x9b, 0x67);  //reg 27 vcmi
			vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0x9b\n",femb_ind,i,vrefRead);

			femb->i2c_write (0, i, 1, 0x9C, 0x15);  //vt45uA
			vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0x9c\n",femb_ind,i,vrefRead);

			femb->i2c_write (0, i, 1, 0x9d, 0x27);  //reg 29 ibuff0_cmos
			vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0x9d\n",femb_ind,i,vrefRead);

			femb->i2c_write (0, i, 1, 0x9e, 0x27);  //reg 30 ibuff1_cmos
			vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0x9e\n",femb_ind,i,vrefRead);

			femb->i2c_write (0, i, 1, 0xb1, 0x0c);  //config_start_number, as recommended by David
			vrefRead = femb->i2c_read(0, i, 1, 0x98);
			if (vrefRead != 0xDF) printf("FEMB:%i chip:%i reg:0x98 reads 0x%02X after writing to 0xb1\n",femb_ind,i,vrefRead);		
		}
	}

	printf ("error count: %d\n", err_cnt);
}

