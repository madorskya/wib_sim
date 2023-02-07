#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>
#include <linux/limits.h>


int run_command(char* cline, char* output)
{
	FILE *fp;
	int status;
	char path[PATH_MAX];

	output[0] = 0; // clear output string

	strcat (cline, " 2>&1"); // to include error stream

	fp = popen(cline, "r");
	if (fp == NULL)
	{
	  printf ("cannot popen\n");
	  return (-1);
	}
/* Handle error */;


	while (fgets(path, PATH_MAX, fp) != NULL)
	{
		strcat(output, path);
//	  printf("%s", path);
	}

	status = pclose(fp);
	if (status == -1)
	{
	  /* Error reported by pclose() */

	}
	else
	{
	  /* Use macros described under wait() to inspect `status' in order
		 to determine success/failure of command executed by popen() */
	}
	return status;
}


void REG_WR (unsigned addr, unsigned value)
{
	char cline[100], output[100];
	sprintf (cline, "./devreg.sh i2c_select 0x%x", value);
	run_command (cline, output);
	if (strlen(output) > 0) 
		printf ("%s %s", cline, output);
}

int I2C_open (int lane)
{
	// nothing to do here
	return 0;
}

void I2C_close (int status)
{
	// nothing to do here
}

int I2C_write_buf (unsigned I2C_addr, unsigned lng, unsigned char *buffer )
{
	char cline[100], output[100];
	sprintf (cline, "i2cset -y 0 0x%x 0x%x 0x%x 0x%x i", I2C_addr, buffer[0], buffer[1], buffer[2]);
	run_command (cline, output);
	if (strlen(output) > 0) 
		printf ("%s %s", cline, output);
	return 0;
}

// procedure below is reference code from Jack, 2020-10-05 email, unmodified
int PWR_FEMB_Voltage_CNTL(unsigned int FEMB, unsigned int regulator_id,double voltage)
{

	int I2C_lane    = 0x00;
	int I2C_addr;
	int status;
	int value;
	unsigned char ADDR = 0x00;
	unsigned char DATA = 0x00;
	unsigned char buffer[10];
	unsigned int DAC_value = 0;

	if(regulator_id <= 3)
	{

		REG_WR(0x01,0x06);   // SET I2C mux to 0x06 for FEMB DC2DC DAC access
		DAC_value   = (unsigned int)  ((voltage * -482.47267) + 2407.15);
		buffer[0]             = (unsigned char) (0x10 | ((regulator_id & 0x0f) << 1));
		buffer[1]             = (unsigned char) (DAC_value >> 4) & 0xff;
		buffer[2]             = (unsigned char) (DAC_value << 4) & 0xf0;

		if(FEMB == 0)
			I2C_addr = 0x4C;
		else if(FEMB == 1)
			I2C_addr = 0x4D;
		else if(FEMB == 2)
			I2C_addr = 0x4E;
		else if(FEMB == 3)
			I2C_addr = 0x4F;
		else
			return(-1);

	}
	else if(regulator_id == 4)
	{

		REG_WR(0x01,0x08);   // SET I2C mux to 0x08 for FEMB LDO DAC access
		I2C_addr = 0x4C;
		buffer[0]      = (0x10 | ((FEMB & 0x0f) << 1));
		DAC_value   = (unsigned int)  ((voltage * -819.9871877) + 2705.465);
		buffer[1]      = (unsigned char) (DAC_value >> 4) & 0xff;
		buffer[2]      = (unsigned char) (DAC_value << 4) & 0xf0;
	}
	else if(regulator_id == 5)
	{

		REG_WR(0x01,0x08);   // SET I2C mux to 0x08 for FEMB LDO DAC access
		I2C_addr = 0x4D;
		buffer[0]             = (0x10 | ((FEMB & 0x0f) << 1));
		DAC_value   = (unsigned int)  ((voltage * -819.9871877) + 2705.465);
		buffer[1]             = (unsigned char) (DAC_value >> 4) & 0xff;
		buffer[2]             = (unsigned char) (DAC_value << 4) & 0xf0;
	}
	else
		return(-1);

	status = I2C_open(I2C_lane);  // SELECT I2CLANE
	if(status <0) {printf("I2C_open_ERROR\n");return(-1); }

	status = I2C_write_buf(I2C_addr,3,buffer );
	if(status <0) {printf("I2C_write ERROR\n");return(-1) ;}

	I2C_close(status);

	REG_WR(0x01,0x08);

	return(0);
}

int main (int argc, char* argv [])
{
	printf ("writing voltage settings into DC-DC and LDOs for COLDATA\n");

	for (int i = 0; i <= 3; i++) // FEMB loop
	{
		PWR_FEMB_Voltage_CNTL(i, 0, 4.0);
		PWR_FEMB_Voltage_CNTL(i, 1, 4.0);
		PWR_FEMB_Voltage_CNTL(i, 2, 4.0);
		PWR_FEMB_Voltage_CNTL(i, 3, 4.0);
		// for WIB3 only: linear regulators are missing, the lines below will fail
		PWR_FEMB_Voltage_CNTL(i, 4, 2.5);
		PWR_FEMB_Voltage_CNTL(i, 5, 2.5);
	}
}
