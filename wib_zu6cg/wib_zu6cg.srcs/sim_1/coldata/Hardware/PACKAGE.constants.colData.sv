`ifndef COLDATA_CONST
`define COLDATA_CONST

//***************************
//***
//***	Simple Verilog/SystemVerilog Constants
//***
//***************************
parameter	ONE				=	1'b1;
parameter	ZERO			=	1'b0;
parameter	TRUE			=	1'b1;
parameter	FALSE			=	1'b0;
parameter	YES				=	1'b1;
parameter	NO				=	1'b0;
parameter	PONG			=	1'b1;
parameter	PING			=	1'b0;
parameter	PASS			=	1'b1;
parameter	FAIL			=	1'b0;
parameter	POSITIVE	=	1'b1;
parameter	NEGATIVE	=	1'b0;

parameter UNKNOWN	= 1'bX;

//***************************
//***
//***	8b10b Control Characters
//***
//***************************
parameter	K_28_0	=	8'b000_11100;		//FRAMEDD Frame Start
parameter	K_28_1	=	8'b001_11100;		//Idle Comma
parameter	K_28_2	=	8'b010_11100;		//FRAME12 Frame Start
parameter	K_28_3	=	8'b011_11100;		//FRAME14 Frame Start
parameter	K_28_4	=	8'b100_11100;		//unused
parameter	K_28_5	=	8'b101_11100;		//Startup/Synchronization
parameter	K_28_6	=	8'b110_11100;		//FRAME15 Frame Start
parameter	K_28_7	=	8'b111_11100;		//unused
parameter K_23_7	=	8'b111_10111;		//unused
parameter K_27_7	=	8'b111_11011;		//unused
parameter K_29_7	=	8'b111_11101;		//unused
parameter K_30_7	=	8'b111_11110;		//unused

//*** Remember, 8b10b flips everything from MSB to LSB.  I don't.  Therefore,
//*** These numbers shown below are (in 8b10b land) from j (MSB) down to a (LSB)
//*** In most 8b10b tables, they would be shown from a (LSB) down to j (MSB) so
//*** 	parameter K_28_0_ENC_PLUS		=	10'b1101_000011;
//*** in my table would more typically be shown as
//***		parameter K_28_0_ENC_PLUS		=	10'b110000_1011;
//*** in a typical 8b10b table.
parameter K_28_0_ENC_PLUS		=	10'b1101_000011;
parameter K_28_0_ENC_MINUS	=	10'b0010_111100;
parameter K_28_1_ENC_PLUS		=	10'b0110_000011;
parameter K_28_1_ENC_MINUS	=	10'b1001_111100;
parameter K_28_2_ENC_PLUS		=	10'b0101_000011;
parameter K_28_2_ENC_MINUS	=	10'b1010_111100;
parameter K_28_3_ENC_PLUS		=	10'b0011_000011;
parameter K_28_3_ENC_MINUS	=	10'b1100_111100;
parameter K_28_4_ENC_PLUS		=	10'b1011_000011;
parameter K_28_4_ENC_MINUS	=	10'b0100_111100;
parameter K_28_5_ENC_PLUS		=	10'b1010_000011;
parameter K_28_5_ENC_MINUS	=	10'b0101_111100;
parameter K_28_6_ENC_PLUS		=	10'b1001_000011;
parameter K_28_6_ENC_MINUS	=	10'b0110_111100;
parameter K_28_7_ENC_PLUS		=	10'b1110_000011;
parameter K_28_7_ENC_MINUS	=	10'b0001_111100;

//***************************
//***
//***	Serial Out selection parameters
//***
//***************************
parameter	SERIAL_OUT1	=	1'b0;
parameter	SERIAL_OUT2	=	1'b1;

//***************************
//***
//***	Port selection parameters
//***
//***************************
parameter	I2C		=	1'b0;
parameter	UART	=	1'b1;
//***************************
//***
//***	Misc Interface command parameters
//***


//***************************
parameter	RST_ON	=	2'b00;
parameter	RST_OFF	=	2'b01;
parameter	CLK_ON	=	2'b10;
parameter	CLK_OFF	=	2'b11;
//***************************
//***
//***	colData-specific Constants
//***
//***************************
parameter	FRAME12	=	2'b00;
parameter	FRAME14	=	2'b01;
parameter	FRAME15	=	2'b10;
parameter	FRAMEDD	=	2'b11;

//***************************
//***
//***parameters for FastCommand Commands
//***
//***************************
parameter 	FASTCMD_EDGE 			=	8'b1110_0001;
parameter 	FASTCMD_SYNC 			=	8'b1110_0010;
parameter 	FASTCMD_ACT 			=	8'b1110_0100;
parameter 	FASTCMD_RST 			=	8'b1110_1000;
parameter 	FASTCMD_ALERT			=	8'b1111_0000;
parameter 	FASTCMD_IDLE			=	8'b1010_1010;
parameter 	FASTCMD_IDLE_INV	=	8'b0101_0101;

//***************************
//***
//***parameters for specific FAST_CMD_ACT Commands
//***
//***************************
parameter	FASTACT_IDLE_COMMAND						=		8'b0000_0000;
parameter	FASTACT_LARASIC_CAL_COMMAND			=		8'b0000_0001;
parameter	FASTACT_SAVE_TIMESTAMP_COMMAND	=		8'b0000_0010;
parameter	FASTACT_SAVE_STATUS_COMMAND			=		8'b0000_0011;
parameter	FASTACT_CLEAR_SAVES_COMMAND			=		8'b0000_0100;
parameter	FASTACT_COLDADC_RESET_COMMAND		=		8'b0000_0101;
parameter	FASTACT_LARASIC_RESET_COMMAND		=		8'b0000_0110;
parameter	FASTACT_LARASIC_SPIRST_COMMAND	=		8'b0000_0111;
parameter	FASTACT_LARASIC_PROG_COMMAND		=		8'b0000_1000;

//***************************
//***
//***parameters for I2C Addressing
//***
//***************************
//*** I2C Constants
parameter	I2CWRITE					=		1'b0;
parameter	I2CREAD						=		1'b1;
parameter	I2CIDLE						=		1'b1;
parameter I2CBROADCASTCHIP 	= 	4'b0000;
parameter I2CBROADCASTPAGE 	= 	3'b000;
parameter I2CRESETREG 			= 	8'b0000_0110;
parameter I2CCOMMAND 				= 	1'b0;

parameter CONFIG_BUFFER			=		8'h80 + 0;
parameter CONFIG_SHA_0			=		8'h80 + 1;
parameter CONFIG_SHA_1			=		8'h80 + 2;
parameter CONFIG_SHA_2			=		8'h80 + 3;
parameter CONFIG_SHA_3			=		8'h80 + 4;
parameter CONFIG_SHA_4			=		8'h80 + 5;
parameter CONFIG_SHA_5			=		8'h80 + 6;
parameter CONFIG_SHA_6			=		8'h80 + 7;
parameter CONFIG_ADC_0			=		8'h80 + 8;
parameter CONFIG_ADC_1			=		8'h80 + 9;
parameter CONFIG_REF_0			=		8'h80 + 10;
parameter CONFIG_REF_1			=		8'h80 + 11;
parameter CONFIG_REF_2			=		8'h80 + 12;
parameter CONFIG_REF_3			=		8'h80 + 13;
parameter CONFIG_REF_4			=		8'h80 + 14;
parameter CONFIG_REF_5			=		8'h80 + 15;
parameter CONFIG_REF_6			=		8'h80 + 16;
parameter CONFIG_REF_7			=		8'h80 + 17;
parameter CONFIG_REF_8			=		8'h80 + 18;
parameter CONFIG_REF_9			=		8'h80 + 19;
parameter CONFIG_REF_10			=		8'h80 + 20;
parameter CONFIG_REF_11			=		8'h80 + 21;
parameter CONFIG_REF_12			=		8'h80 + 22;
parameter CONFIG_REF_13			=		8'h80 + 23;
parameter CONFIG_CMOS_REF_0	=		8'h80 + 24;
parameter CONFIG_CMOS_REF_1	=		8'h80 + 25;
parameter CONFIG_CMOS_REF_2	=		8'h80 + 26;
parameter CONFIG_CMOS_REF_3	=		8'h80 + 27;
parameter CONFIG_CMOS_REF_4	=		8'h80 + 28;
parameter CONFIG_CMOS_REF_5	=		8'h80 + 29;
parameter CONFIG_CMOS_REF_6	=		8'h80 + 30;
parameter CONFIG_CAL_0			=		8'h80 + 31;
parameter CONFIG_CAL_1			=		8'h80 + 32;
parameter CONFIG_CAL_2			=		8'h80 + 33;
parameter CONFIG_CAL_3			=		8'h80 + 34;
parameter CONFIG_CAL_4			=		8'h80 + 35;
parameter CONFIG_CAL_5			=		8'h80 + 36;
parameter CONFIG_CAL_6			=		8'h80 + 37;
parameter CONFIG_CAL_7			=		8'h80 + 38;
parameter CONFIG_CAL_8			=		8'h80 + 39;
parameter CONFIG_CAL_9			=		8'h80 + 40;
parameter CONFIG_SSO_0			=		8'h80 + 41;
parameter CONFIG_SSO_1			=		8'h80 + 42;
parameter CONFIG_SSO_2			=		8'h80 + 43;
parameter CONFIG_FORCE_0		=		8'h80 + 44;
parameter CONFIG_FORCE_1		=		8'h80 + 45;
parameter CONFIG_FORCE_2		=		8'h80 + 46;
parameter CONFIG_MONITOR		=		8'h80 + 47;
parameter CONFIG_BACKEND_0 	= 	8'h80 + 48;
parameter CONFIG_BACKEND_1 	= 	8'h80 + 49;
parameter CONFIG_BACKEND_2 	= 	8'h80 + 50;
parameter CONFIG_BACKEND_3 	= 	8'h80 + 51;
parameter CONFIG_BACKEND_4 	= 	8'h80 + 52;
parameter CONFIG_BACKEND_5 	= 	8'h80 + 53;
parameter CONFIG_BACKEND_6 	= 	8'h80 + 54;
parameter CONFIG_SPARE		 	= 	8'h80 + 55;

parameter WEIGHT_FIRST		 	= 	0;
parameter WEIGHT_LAST			 	= 	8'h7F;

//*** UART Constants
parameter	UARTWRITE						=		1'b1;
parameter	UARTREAD						=		1'b0;
parameter	UARTSHORTIDLE				=		1;
parameter	UARTLONGIDLE				=		16;
parameter	UARTCOMMAND					=		0;

parameter UART_REG_BACKEND_0 	= 	8'h80 + 48;
parameter UART_REG_BACKEND_1 	= 	8'h80 + 49;
parameter UART_REG_BACKEND_2 	= 	8'h80 + 50;
parameter UART_REG_BACKEND_3 	= 	8'h80 + 51;
parameter UART_REG_BACKEND_4 	= 	8'h80 + 52;
parameter UART_REG_BACKEND_5 	= 	8'h80 + 53;

//*** ADC Data Source
parameter ADC_SYNCED_CAL		=	2'b00;
parameter ADC_SYNCED_NOCAL	=	2'b01;
parameter ADC_SYNCED_LSB 		=	2'b10;
parameter ADC_SYNCED_MSB		=	2'b11;

//*** Chip ID Numbers
parameter	COLDATA0		=		4'b0010;		//*** The BOT colData
parameter	COLDATA_BOT	=		4'b0010;		//*** The BOT colData
parameter	COLDATA1		=		4'b0011;		//*** The TOP colData
parameter	COLDATA_TOP	=		4'b0011;		//*** The TOP colData
parameter	ADC_BOT_1		=		4'b0100;
parameter	ADC_BOT_2		=		4'b0101;
parameter	ADC_BOT_3		=		4'b0110;
parameter	ADC_BOT_4		=		4'b0111;
parameter	ADC_TOP_1		=		4'b1000;
parameter	ADC_TOP_2		=		4'b1001;
parameter	ADC_TOP_3		=		4'b1010;
parameter	ADC_TOP_4		=		4'b1011;

//*** Page ID Numbers for Chip IDs COLDATA0 and COLDATA1
parameter	MAINPAGE	=		3'b000;		//colData Main Programming
parameter	ADC1PAGE	=		3'b001;		//Use for ADC1/LARASIC1
parameter	ADC2PAGE	=		3'b010;		//Use for ADC2/LARASIC2
parameter	ADC3PAGE	=		3'b011;		//Use for ADC3/LARASIC3
parameter	ADC4PAGE	=		3'b100;		//Use for ADC4/LARASIC4
parameter	SMUPAGE		=		3'b101;		//Use for SMU Trinity
parameter	MAIN2PAGE	=		3'b110;
parameter	PAGE7			=		3'b111;

//*** Register Numbers for MAINPAGE for Chip IDs COLDATA0 and COLDATA1
parameter	FRAMECONFIGREG					=	8'b0000_0001;
parameter CONFIGCLKREG 						=	8'b0000_0010;
parameter BYPASS8B10BREG 					= 8'b0000_0011;
parameter	CALIB_REPEAT						=	8'b0000_0111;
parameter	CALIB_DELAY							=	8'b0000_1000;
parameter	MASK_CALIBRATION				=	8'b0000_1001;
parameter LVDS_CURRENT_SET_REG		=	8'b0001_0001;
parameter FUSE_REG_0							=	8'b0001_1000;
parameter FUSE_REG_1							=	8'b0001_1001;
parameter FUSE_REG_2							=	8'b0001_1010;
parameter FUSE_REG_3							=	8'b0001_1011;
parameter FUSE_REG_WRITE					=	8'b0001_1111;
parameter ACTCOMMANDREG						= 8'b0010_0000;
parameter ACTTSTAMPREG						= 8'b0010_0001;
parameter ACTSTATUSREG						= 8'b0010_0010;
parameter ACTSTATUSREG2						= 8'b0010_0011;
parameter REG_LARASIC_DATAFEEDCNT	=	8'b0010_0100;
parameter REG_FMB_CONTROL_WORD		=	8'b0010_0101;
parameter REG_LARASIC_RST_COUNT		=	8'b0010_0110;
parameter REG_ADC_RST_COUNT				=	8'b0010_0111;
parameter ADCCLKCTRLREG						=	8'b0010_1000;

parameter SMU_CONFIG_PLL_ICP								=	8'b0100_0000;
parameter SMU_CONFIG_PLL_BAND								=	8'b0100_0001;
parameter SMU_CONFIG_PLL_LPFR								=	8'b0100_0010;
parameter SMU_CONFIG_PLL_ATO								=	8'b0100_0011;
parameter SMU_CONFIG_PLL_PDCP								=	8'b0100_0100;
parameter SMU_CONFIG_PLL_OPEN								=	8'b0100_0101;
parameter SMU_CONFIG_SER_MODE								=	8'b0100_0110;
parameter SMU_CONFIG_SER_INV_SER_CLK				=	8'b0100_0111;
parameter SMU_CONFIG_DRV_VMBOOST						=	8'b0100_1000;
parameter SMU_CONFIG_DRV_VMDRIVER						=	8'b0100_1001;
parameter SMU_CONFIG_DRV_SELPRE							=	8'b0100_1010;
parameter SMU_CONFIG_DRV_SELPST1						=	8'b0100_1011;
parameter SMU_CONFIG_DRV_SELPST2						=	8'b0100_1100;
parameter SMU_CONFIG_DRV_SELCM_MAIN					=	8'b0100_1101;
parameter SMU_CONFIG_DRV_ENABLE_CM					=	8'b0100_1110;
parameter SMU_CONFIG_DRV_INVERSE_CLK				=	8'b0100_1111;
parameter SMU_CONFIG_DRV_DELAYSEL						=	8'b0101_0000;
parameter SMU_CONFIG_DRV_DELAY_CS						=	8'b0101_0001;
parameter SMU_CONFIG_DRV_CML								=	8'b0101_0010;
parameter SMU_CONFIG_DRV_BIAS_CML_INTERNAL	=	8'b0101_0011;
parameter SMU_CONFIG_DRV_BIAS_CS_INTERNAL		=	8'b0101_0100;

//*** Register Numbers for ADC1PAGE, ADC2PAGE, ADC3PAGE, ADC4PAGE for Chip IDs COLDATA0 and COLDATA1
//***	Non-CONFIGURE Registers
parameter	FORCE_SOFT_RESET				=	8'b0000_0001;
parameter	FORCE_HARD_RESET				=	8'b0000_0010;
parameter	FORCE_ADC_PATTERN				=	8'b0000_0011;
parameter	FORCE_SCAN							=	8'b0000_0100;
parameter	GET_COMPARISON_RESULT		=	8'b0000_0101;

parameter	SAMPLES_PER_CALIB				=	8'b0000_0110;
parameter	CALIB_CLKPER_AFTER_SAMP	=	8'b0000_0111;
parameter	CALIB_STROBE_WIDTH			=	8'b0000_1000;
parameter	START_NUMBER						=	8'b0000_1001;
parameter HARD_RESET_COUNT 				=	8'b0000_1010;

//*** Register Numbers for ADC1PAGE, ADC2PAGE, ADC3PAGE, ADC4PAGE for Chip IDs COLDATA0 and COLDATA1
//***	CONFIGURE Registers
parameter	LARASIC_1			=	8'b1000_0000;
parameter	LARASIC_2			=	8'b1000_0001;
parameter	LARASIC_3			=	8'b1000_0010;
parameter	LARASIC_4			=	8'b1000_0011;
parameter	LARASIC_5			=	8'b1000_0100;
parameter	LARASIC_6			=	8'b1000_0101;
parameter	LARASIC_7			=	8'b1000_0110;
parameter	LARASIC_8			=	8'b1000_0111;
parameter	LARASIC_9			=	8'b1000_1000;
parameter	LARASIC_10		=	8'b1000_1001;
parameter	LARASIC_11		=	8'b1000_1010;
parameter	LARASIC_12		=	8'b1000_1011;
parameter	LARASIC_13		=	8'b1000_1100;
parameter	LARASIC_14		=	8'b1000_1101;
parameter	LARASIC_15		=	8'b1000_1110;
parameter	LARASIC_16		=	8'b1000_1111;
parameter	LARASIC_17		=	8'b1001_0000;
parameter	LARASIC_18		=	8'b1001_0001;
parameter	LARASIC_19		=	8'b1001_0010;
parameter	LARASIC_20		=	8'b1001_0011;
parameter	LARASIC_21		=	8'b1001_0100;
parameter	LARASIC_22		=	8'b1001_0101;
parameter	LARASIC_23		=	8'b1001_0110;
parameter	LARASIC_24		=	8'b1001_0111;
parameter	LARASIC_25		=	8'b1001_1000;
parameter	LARASIC_26		=	8'b1001_1001;
parameter	LARASIC_27		=	8'b1001_1010;
parameter	LARASIC_28		=	8'b1001_1011;
parameter	LARASIC_29		=	8'b1001_1100;
parameter	LARASIC_30		=	8'b1001_1101;
parameter	LARASIC_31		=	8'b1001_1110;
parameter	LARASIC_32		=	8'b1001_1111;
parameter	LARASIC_33		=	8'b1010_0000;
parameter	LARASIC_34		=	8'b1010_0001;
parameter	LARASIC_35		=	8'b1010_0010;
parameter	LARASIC_36		=	8'b1010_0011;
parameter	LARASIC_37		=	8'b1010_0100;
parameter	LARASIC_38		=	8'b1010_0101;
parameter	LARASIC_39		=	8'b1010_0110;
parameter	LARASIC_40		=	8'b1010_0111;
parameter	LARASIC_41		=	8'b1010_1000;
parameter	LARASIC_42		=	8'b1010_1001;
parameter	LARASIC_43		=	8'b1010_1010;
parameter	LARASIC_44		=	8'b1010_1011;
parameter	LARASIC_45		=	8'b1010_1100;
parameter	LARASIC_46		=	8'b1010_1101;
parameter	LARASIC_47		=	8'b1010_1110;
parameter	LARASIC_48		=	8'b1010_1111;
parameter	LARASIC_49		=	8'b1011_0000;
parameter	LARASIC_50		=	8'b1011_0001;
parameter	LARASIC_51		=	8'b1011_0010;
parameter	LARASIC_52		=	8'b1011_0011;
parameter	LARASIC_53		=	8'b1011_0100;
parameter	LARASIC_54		=	8'b1011_0101;
parameter	LARASIC_55		=	8'b1011_0110;
parameter	LARASIC_56		=	8'b1011_0111;
parameter	LARASIC_57		=	8'b1011_1000;
parameter	LARASIC_58		=	8'b1011_1001;
parameter	LARASIC_59		=	8'b1011_1010;
parameter	LARASIC_60		=	8'b1011_1011;
parameter	LARASIC_61		=	8'b1011_1100;
parameter	LARASIC_62		=	8'b1011_1101;
parameter	LARASIC_63		=	8'b1011_1110;
parameter	LARASIC_64		=	8'b1011_1111;

//*** Page ID Numbers for Chip IDs ADC_TOP_1 through ADC_BOT_4
parameter	REGPAGE		=		3'b001;		//colData Main Programming
parameter	BENDPAGE	=		3'b010;		//Use for ADC1/LARASIC1

//*** Register Numbers for MAINPAGE for Chip IDs ADC_TOP_1 through ADC_BOT_4
parameter	STARTNUMREG	=		8'b0000_0001;
parameter	LVDSMAGREG	=		8'b0000_0010;
parameter	DMUXSELREG	=		8'b0000_0011;

//*** Page ID Numbers for Chip IDs ADC_TOP_1 through ADC_BOT_4
parameter	ADC_REGPAGE		=		3'b001;		//colData Main Programming
parameter	ADC_BENDPAGE	=		3'b010;		//Use for ADC1/LARASIC1

//*** Register Numbers for MAINPAGE for Chip IDs ADC_TOP_1 through ADC_BOT_4
parameter	ADC_STARTNUMREG	=		8'b0000_0001;
parameter	ADC_LVDSMAGREG	=		8'b0000_0010;
parameter	ADC_DMUXSELREG	=		8'b0000_0011;

`endif
