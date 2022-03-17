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


int main (int argc, char* argv [])
{
	printf ("reading spy memory\n");
	char cline[100], output[100];

	unsigned int addr = 0xa0100000;
	for (int i = 0; i < 120*3; i++) // word loop
	{
		sprintf (cline, "devmem 0x%x 32", addr);	
		run_command (cline, output);
		printf ("i = %04d d = %s", i, output);
		addr += 4;
	}
}
