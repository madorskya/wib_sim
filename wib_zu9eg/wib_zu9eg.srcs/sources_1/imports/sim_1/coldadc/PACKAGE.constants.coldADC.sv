`ifndef COLDADC_CONST
`define COLDADC_CONST


//Standard parameters
parameter	ONE_ADC		=	1'b1;
parameter	ZERO_ADC	=	1'b0;
parameter	TRUE_ADC	=	1'b1;
parameter	FALSE_ADC	=	1'b0;
parameter	YES_ADC		=	1'b1;
parameter	NO_ADC		=	1'b0;

//I2C_ADC comma parameters
parameter	K_28_1_ADC	=	8'b00111100;
parameter	K_28_5_ADC	=	8'b10111100;

//Port selection parameters
parameter	I2C_ADC		=	1'b0;
parameter	UART_ADC	=	1'b1;

//Misc Interface command parameters
parameter	RST_ON_ADC	=	2'b00;
parameter	RST_OFF_ADC	=	2'b01;
parameter	CLK_ON_ADC	=	2'b10;
parameter	CLK_OFF_ADC	=	2'b11;

//***************************
//***
//***	parameters for I2C_ADC Addressing
//***
//***************************
//*** I2C_ADC Constants
parameter	I2C_ADCWRITE					=		1'b0;
parameter	I2C_ADCREAD						=		1'b1;
parameter	I2C_ADCIDLE						=		1'b1;
parameter I2C_ADCBROADCASTCHIP 	= 	4'b0000;
parameter I2C_ADCBROADCASTPAGE 	= 	3'b000;
parameter I2C_ADCRESETREG 			= 	8'b00000110;
parameter I2C_ADCCOMMAND 				= 	1'b0;

parameter CONFIG_BUFFER_ADC			=		8'h80 + 0;
parameter CONFIG_SHA_0_ADC			=		8'h80 + 1;
parameter CONFIG_SHA_1_ADC			=		8'h80 + 2;
parameter CONFIG_SHA_2_ADC			=		8'h80 + 3;
parameter CONFIG_SHA_3_ADC			=		8'h80 + 4;
parameter CONFIG_SHA_4_ADC			=		8'h80 + 5;
parameter CONFIG_SHA_5_ADC			=		8'h80 + 6;
parameter CONFIG_SHA_6_ADC			=		8'h80 + 7;
parameter CONFIG_ADC_0_ADC			=		8'h80 + 8;
parameter CONFIG_ADC_1_ADC			=		8'h80 + 9;
parameter CONFIG_REF_0_ADC			=		8'h80 + 10;
parameter CONFIG_REF_1_ADC			=		8'h80 + 11;
parameter CONFIG_REF_2_ADC			=		8'h80 + 12;
parameter CONFIG_REF_3_ADC			=		8'h80 + 13;
parameter CONFIG_REF_4_ADC			=		8'h80 + 14;
parameter CONFIG_REF_5_ADC			=		8'h80 + 15;
parameter CONFIG_REF_6_ADC			=		8'h80 + 16;
parameter CONFIG_REF_7_ADC			=		8'h80 + 17;
parameter CONFIG_REF_8_ADC			=		8'h80 + 18;
parameter CONFIG_REF_9_ADC			=		8'h80 + 19;
parameter CONFIG_REF_1_ADC0			=		8'h80 + 20;
parameter CONFIG_REF_1_ADC1			=		8'h80 + 21;
parameter CONFIG_REF_1_ADC2			=		8'h80 + 22;
parameter CONFIG_REF_1_ADC3			=		8'h80 + 23;
parameter CONFIG_CMOS_REF_0_ADC	=		8'h80 + 24;
parameter CONFIG_CMOS_REF_1_ADC	=		8'h80 + 25;
parameter CONFIG_CMOS_REF_2_ADC	=		8'h80 + 26;
parameter CONFIG_CMOS_REF_3_ADC	=		8'h80 + 27;
parameter CONFIG_CMOS_REF_4_ADC	=		8'h80 + 28;
parameter CONFIG_CMOS_REF_5_ADC	=		8'h80 + 29;
parameter CONFIG_CMOS_REF_6_ADC	=		8'h80 + 30;
parameter CONFIG_CAL_0_ADC			=		8'h80 + 31;
parameter CONFIG_CAL_1_ADC			=		8'h80 + 32;
parameter CONFIG_CAL_2_ADC			=		8'h80 + 33;
parameter CONFIG_CAL_3_ADC			=		8'h80 + 34;
parameter CONFIG_CAL_4_ADC			=		8'h80 + 35;
parameter CONFIG_CAL_5_ADC			=		8'h80 + 36;
parameter CONFIG_CAL_6_ADC			=		8'h80 + 37;
parameter CONFIG_CAL_7_ADC			=		8'h80 + 38;
parameter CONFIG_CAL_8_ADC			=		8'h80 + 39;
parameter CONFIG_CAL_9_ADC			=		8'h80 + 40;
parameter CONFIG_SSO_0_ADC			=		8'h80 + 41;
parameter CONFIG_SSO_1_ADC			=		8'h80 + 42;
parameter CONFIG_SSO_2_ADC			=		8'h80 + 43;
parameter CONFIG_FORCE_0_ADC		=		8'h80 + 44;
parameter CONFIG_FORCE_1_ADC		=		8'h80 + 45;
parameter CONFIG_FORCE_2_ADC		=		8'h80 + 46;
parameter CONFIG_MONITOR_ADC		=		8'h80 + 47;
parameter CONFIG_BACKEND_0_ADC 	= 	8'h80 + 48;
parameter CONFIG_BACKEND_1_ADC 	= 	8'h80 + 49;
parameter CONFIG_BACKEND_2_ADC 	= 	8'h80 + 50;
parameter CONFIG_BACKEND_3_ADC 	= 	8'h80 + 51;
parameter CONFIG_BACKEND_4_ADC 	= 	8'h80 + 52;
parameter CONFIG_BACKEND_5_ADC 	= 	8'h80 + 53;
parameter CONFIG_BACKEND_6_ADC 	= 	8'h80 + 54;
parameter CONFIG_SPARE_ADC		 	= 	8'h80 + 55;

parameter WEIGHT_FIRST_ADC		 	= 	0;
parameter WEIGHT_LAST_ADC			 	= 	8'h7F;

//*** UART_ADC Constants
parameter	UART_ADCWRITE						=		1'b1;
parameter	UART_ADCREAD						=		1'b0;
parameter	UART_ADCSHORTIDLE				=		1;
parameter	UART_ADCLONGIDLE				=		16;
parameter	UART_ADCCOMMAND					=		0;

parameter UART_ADC_REG_BACKEND_0 	= 	8'h80 + 48;
parameter UART_ADC_REG_BACKEND_1 	= 	8'h80 + 49;
parameter UART_ADC_REG_BACKEND_2 	= 	8'h80 + 50;
parameter UART_ADC_REG_BACKEND_3 	= 	8'h80 + 51;
parameter UART_ADC_REG_BACKEND_4 	= 	8'h80 + 52;
parameter UART_ADC_REG_BACKEND_5 	= 	8'h80 + 53;


//*** Chip ID Numbers
parameter	COLDATA0_ADC	=		4'b0010;
parameter	COLDATA1_ADC	=		4'b0011;
parameter	ADC_BOT_1_ADC	=		4'b0100;
parameter	ADC_BOT_2_ADC	=		4'b0101;
parameter	ADC_BOT_3_ADC	=		4'b0110;
parameter	ADC_BOT_4_ADC	=		4'b0111;
parameter	ADC_TOP_1_ADC	=		4'b1000;
parameter	ADC_TOP_2_ADC	=		4'b1001;
parameter	ADC_TOP_3_ADC	=		4'b1010;
parameter	ADC_TOP_4_ADC	=		4'b1011;

//*** Page ID Numbers
parameter	REGPAGE_ADC		=		3'b001;		//colData Main Programming
parameter	BENDPAGE_ADC	=		3'b010;		//Use for ADC1/LARASIC1

//*** Register Numbers for MAINPAGE
parameter	STARTNUMREG_ADC	=		8'b00000001;
parameter	LVDSMAGREG_ADC	=		8'b00000010;
parameter	DMUXSELREG_ADC	=		8'b00000011;

`endif
