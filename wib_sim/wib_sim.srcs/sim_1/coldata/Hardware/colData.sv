`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData
//***	Description: Top level of colDataP2.  Hereinafter, "SMU Trinity" refers to the
//***		PLL, Serializer and Line Driver.
//***
//*******************************************************************************************
//*******************************************************************************************

module	coldData	(	//*** Total pads: 158 ( 10/22/2018 )
	//I2C related pins (from the Warm) (18 pads)
	input		logic						I2C_LVDS_SCL_P,					//I2C Clock from Warm via LVDS
	input		logic						I2C_LVDS_SCL_N,					//I2C Clock from Warm via LVDS
	input		logic						I2C_LVDS_SDA_W2C_P,			//I2C Data Input from Warm via LVDS
	input		logic						I2C_LVDS_SDA_W2C_N,			//I2C Data Input from Warm via LVDS
	output	logic						I2C_LVDS_SDA_C2W_P,			//I2C Data Output to Warm via LVDS
	output	logic						I2C_LVDS_SDA_C2W_N,			//I2C Data Output to Warm via LVDS
	input		logic						I2C_CMOS_SCL,						//I2C Clock from Warm via relay from other colData
	input		logic						I2C_CMOS_SDA_W2C,				//I2C Data Input from Warm via relay from other colData
	output	logic						I2C_CMOS_SDA_C2W,				//I2C Data Output to Warm via relay by other colData
	input 	logic 					I2C_LVDS1_CMOS0_MODE,		//Control Signal: Select I2C via LVDS or relay
	output 	logic 					I2C_COLDATA_SCL,				//I2C Clock relayed to other colData and subordinate ADCs
	output 	logic 					I2C_COLDATA_SDA_W2C,		//I2C Data Input relayed to other colData and subordinate ADCs
	input 	logic 					I2C_OTHER_SDA_C2W,			//I2C Data Output being relayed from other colData
	input 	logic						I2C_ADC_1_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_1
	input 	logic						I2C_ADC_2_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_2
	input 	logic						I2C_ADC_3_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_3
	input 	logic						I2C_ADC_4_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_4
	input		logic						CHIP_ID_0,							//I2C ChipID.  Must be 4'b0010 (COLDATA0 (bottom)) or4'b0011 (COLDATA1 (top))
	//System Clock (2 pads)
	input		logic						CLK_64MHZ_SYS_P,
	input		logic						CLK_64MHZ_SYS_N,
	//FastCommand Input (2 pads)
	input 	logic 					FASTCOMMAND_IN_P,
	input 	logic 					FASTCOMMAND_IN_N,
	//SPI-like Interface for LARASIC
	// All 4 (1 pad)
	output 	logic 					LARASIC_MASTER_RESET,
	//LARASIC1 (4 pads)
	output	logic						LARASIC1_SCK,
	output	logic						LARASIC1_SDO,
	output	logic						LARASIC1_CS,
	input		logic						LARASIC1_SDI,
	//LARASIC2 (4 pads)
	output	logic						LARASIC2_SCK,
	output	logic						LARASIC2_SDO,
	output	logic						LARASIC2_CS,
	input		logic						LARASIC2_SDI,
	//LARASIC3 (4 pads)
	output	logic						LARASIC3_SCK,
	output	logic						LARASIC3_SDO,
	output	logic						LARASIC3_CS,
	input		logic						LARASIC3_SDI,
	//LARASIC4 (4 pads)
	output	logic						LARASIC4_SCK,
	output	logic						LARASIC4_SDO,
	output	logic						LARASIC4_CS,
	input		logic						LARASIC4_SDI,
	//ADC Interface
	// All 4 (1 pad)
	output	logic						ADC_MASTER_RESET,
	//ADC1 (24 pads)
	input		logic						ADC1_DIG_OUTA_P,
	input		logic						ADC1_DIG_OUTA_N,
	input		logic						ADC1_DIG_OUTB_P,
	input		logic						ADC1_DIG_OUTB_N,
	input		logic						ADC1_DIG_OUTC_P,
	input		logic						ADC1_DIG_OUTC_N,
	input		logic						ADC1_DIG_OUTD_P,
	input		logic						ADC1_DIG_OUTD_N,
	input		logic						ADC1_DIG_OUTE_P,
	input		logic						ADC1_DIG_OUTE_N,
	input		logic						ADC1_DIG_OUTF_P,
	input		logic						ADC1_DIG_OUTF_N,
	input		logic						ADC1_DIG_OUTG_P,
	input		logic						ADC1_DIG_OUTG_N,
	input		logic						ADC1_DIG_OUTH_P,
	input		logic						ADC1_DIG_OUTH_N,
	input		logic						ADC1_DIG_FRAME_P,
	input		logic						ADC1_DIG_FRAME_N,
	input		logic						ADC1_DIG_CLKOUT_P,
	input		logic						ADC1_DIG_CLKOUT_N,
	output	logic						ADC1_CLK_2MHZ_P,
	output	logic						ADC1_CLK_2MHZ_N,
	output	logic						ADC1_CLK_64MHZ_P,
	output	logic						ADC1_CLK_64MHZ_N,
	//ADC2 (24 pads)
	input		logic						ADC2_DIG_OUTA_P,
	input		logic						ADC2_DIG_OUTA_N,
	input		logic						ADC2_DIG_OUTB_P,
	input		logic						ADC2_DIG_OUTB_N,
	input		logic						ADC2_DIG_OUTC_P,
	input		logic						ADC2_DIG_OUTC_N,
	input		logic						ADC2_DIG_OUTD_P,
	input		logic						ADC2_DIG_OUTD_N,
	input		logic						ADC2_DIG_OUTE_P,
	input		logic						ADC2_DIG_OUTE_N,
	input		logic						ADC2_DIG_OUTF_P,
	input		logic						ADC2_DIG_OUTF_N,
	input		logic						ADC2_DIG_OUTG_P,
	input		logic						ADC2_DIG_OUTG_N,
	input		logic						ADC2_DIG_OUTH_P,
	input		logic						ADC2_DIG_OUTH_N,
	input		logic						ADC2_DIG_FRAME_P,
	input		logic						ADC2_DIG_FRAME_N,
	input		logic						ADC2_DIG_CLKOUT_P,
	input		logic						ADC2_DIG_CLKOUT_N,
	output	logic						ADC2_CLK_2MHZ_P,
	output	logic						ADC2_CLK_2MHZ_N,
	output	logic						ADC2_CLK_64MHZ_P,
	output	logic						ADC2_CLK_64MHZ_N,
	//ADC3 (24 pads)
	input		logic						ADC3_DIG_OUTA_P,
	input		logic						ADC3_DIG_OUTA_N,
	input		logic						ADC3_DIG_OUTB_P,
	input		logic						ADC3_DIG_OUTB_N,
	input		logic						ADC3_DIG_OUTC_P,
	input		logic						ADC3_DIG_OUTC_N,
	input		logic						ADC3_DIG_OUTD_P,
	input		logic						ADC3_DIG_OUTD_N,
	input		logic						ADC3_DIG_OUTE_P,
	input		logic						ADC3_DIG_OUTE_N,
	input		logic						ADC3_DIG_OUTF_P,
	input		logic						ADC3_DIG_OUTF_N,
	input		logic						ADC3_DIG_OUTG_P,
	input		logic						ADC3_DIG_OUTG_N,
	input		logic						ADC3_DIG_OUTH_P,
	input		logic						ADC3_DIG_OUTH_N,
	input		logic						ADC3_DIG_FRAME_P,
	input		logic						ADC3_DIG_FRAME_N,
	input		logic						ADC3_DIG_CLKOUT_P,
	input		logic						ADC3_DIG_CLKOUT_N,
	output	logic						ADC3_CLK_2MHZ_P,
	output	logic						ADC3_CLK_2MHZ_N,
	output	logic						ADC3_CLK_64MHZ_P,
	output	logic						ADC3_CLK_64MHZ_N,
	//ADC4 (24 pads)
	input		logic						ADC4_DIG_OUTA_P,
	input		logic						ADC4_DIG_OUTA_N,
	input		logic						ADC4_DIG_OUTB_P,
	input		logic						ADC4_DIG_OUTB_N,
	input		logic						ADC4_DIG_OUTC_P,
	input		logic						ADC4_DIG_OUTC_N,
	input		logic						ADC4_DIG_OUTD_P,
	input		logic						ADC4_DIG_OUTD_N,
	input		logic						ADC4_DIG_OUTE_P,
	input		logic						ADC4_DIG_OUTE_N,
	input		logic						ADC4_DIG_OUTF_P,
	input		logic						ADC4_DIG_OUTF_N,
	input		logic						ADC4_DIG_OUTG_P,
	input		logic						ADC4_DIG_OUTG_N,
	input		logic						ADC4_DIG_OUTH_P,
	input		logic						ADC4_DIG_OUTH_N,
	input		logic						ADC4_DIG_FRAME_P,
	input		logic						ADC4_DIG_FRAME_N,
	input		logic						ADC4_DIG_CLKOUT_P,
	input		logic						ADC4_DIG_CLKOUT_N,
	output	logic						ADC4_CLK_2MHZ_P,
	output	logic						ADC4_CLK_2MHZ_N,
	output	logic						ADC4_CLK_64MHZ_P,
	output	logic						ADC4_CLK_64MHZ_N,
	// Pads for the Frontend Mother Board (3 pads)
	output 	logic 					FMB_CONTROL_0,
	output 	logic 					FMB_CONTROL_1,
	output 	logic 					FMB_CONTROL_2,
	// Pad-facing signals of the SMU Trinity (13 pads)
	input 	logic 					CKIN,
	output 	logic 					CKOUTN,
	output 	logic 					CKOUTP,
	inout 	logic 					VCEXT,
	inout 	logic 					ATO,
	output 	logic 					LOCK,
	input 	logic 					SMU_PLL_RESET,
	inout 	logic 					IBIAS_CML,
	inout 	logic 					IBIAS_CS,
	output 	logic 					SEROUTN1,
	output 	logic 					SEROUTP1,
	output 	logic 					SEROUTN2,
	output 	logic 					SEROUTP2,
	//Power-on Rst (1 pad)
	input 	logic 					Rst_PowerOn,										//	Active Low Power-On Reset NOT FROM A PAD
	input 	logic 					PAD_RESET												//	Active Low CMOS Reset from a PAD
);

//*******************************************************************************************
//*******************************************************************************************
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Variables
//***
//*******************************************************************************************
//*******************************************************************************************
//*******************************************************************************************
//*******************************************************************************************
	//***************************
	//***
	//***	Top Level Control Signals
	//***
	//***************************
	wire	logic	[7:0]	ADC_Configure;
	wire	logic	[8:0]	outFIFO1;
	wire	logic	[8:0]	outFIFO2;
	wire	logic	[9:0]	encodedData1;
	wire	logic	[9:0]	encodedData2;

	var	logic	[9:0]		capturedEncodedData1;
	var	logic	[9:0]		capturedEncodedData2;

	//***************************
	//***
	//***	ADC1/LARASIC1 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	Data_LARASIC1_Config_1;
	wire	logic	[7:0]	Data_LARASIC1_Config_2;
	wire	logic	[7:0]	Data_LARASIC1_Config_3;
	wire	logic	[7:0]	Data_LARASIC1_Config_4;
	wire	logic	[7:0]	Data_LARASIC1_Config_5;
	wire	logic	[7:0]	Data_LARASIC1_Config_6;
	wire	logic	[7:0]	Data_LARASIC1_Config_7;
	wire	logic	[7:0]	Data_LARASIC1_Config_8;
	wire	logic	[7:0]	Data_LARASIC1_Config_9;
	wire	logic	[7:0]	Data_LARASIC1_Config_10;
	wire	logic	[7:0]	Data_LARASIC1_Config_11;
	wire	logic	[7:0]	Data_LARASIC1_Config_12;
	wire	logic	[7:0]	Data_LARASIC1_Config_13;
	wire	logic	[7:0]	Data_LARASIC1_Config_14;
	wire	logic	[7:0]	Data_LARASIC1_Config_15;
	wire	logic	[7:0]	Data_LARASIC1_Config_16;
	wire	logic	[7:0]	Data_LARASIC1_Config_17;
	wire	logic	[7:0]	Data_LARASIC1_Config_18;
	wire	logic	[7:0]	Data_LARASIC1_Config_19;
	wire	logic	[7:0]	Data_LARASIC1_Config_20;
	wire	logic	[7:0]	Data_LARASIC1_Config_21;
	wire	logic	[7:0]	Data_LARASIC1_Config_22;
	wire	logic	[7:0]	Data_LARASIC1_Config_23;
	wire	logic	[7:0]	Data_LARASIC1_Config_24;

	wire	logic				LARASIC1_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC1_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC1_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC1_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC1_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC1_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedData_LARASIC1;
	wire	logic	[4:0]					ADC1_frameCount;
	wire	logic								ADC1_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameData_LARASIC1;

	//***************************
	//***
	//***	ADC2/LARASIC2 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	Data_LARASIC2_Config_1;
	wire	logic	[7:0]	Data_LARASIC2_Config_2;
	wire	logic	[7:0]	Data_LARASIC2_Config_3;
	wire	logic	[7:0]	Data_LARASIC2_Config_4;
	wire	logic	[7:0]	Data_LARASIC2_Config_5;
	wire	logic	[7:0]	Data_LARASIC2_Config_6;
	wire	logic	[7:0]	Data_LARASIC2_Config_7;
	wire	logic	[7:0]	Data_LARASIC2_Config_8;
	wire	logic	[7:0]	Data_LARASIC2_Config_9;
	wire	logic	[7:0]	Data_LARASIC2_Config_10;
	wire	logic	[7:0]	Data_LARASIC2_Config_11;
	wire	logic	[7:0]	Data_LARASIC2_Config_12;
	wire	logic	[7:0]	Data_LARASIC2_Config_13;
	wire	logic	[7:0]	Data_LARASIC2_Config_14;
	wire	logic	[7:0]	Data_LARASIC2_Config_15;
	wire	logic	[7:0]	Data_LARASIC2_Config_16;
	wire	logic	[7:0]	Data_LARASIC2_Config_17;
	wire	logic	[7:0]	Data_LARASIC2_Config_18;
	wire	logic	[7:0]	Data_LARASIC2_Config_19;
	wire	logic	[7:0]	Data_LARASIC2_Config_20;
	wire	logic	[7:0]	Data_LARASIC2_Config_21;
	wire	logic	[7:0]	Data_LARASIC2_Config_22;
	wire	logic	[7:0]	Data_LARASIC2_Config_23;
	wire	logic	[7:0]	Data_LARASIC2_Config_24;

	wire	logic				LARASIC2_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC2_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC2_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC2_chainLength;							//LARASIC dasiychain length
	wire	logic	[7:0]	LARASIC2_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC2_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC2_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedData_LARASIC2;
	wire	logic	[4:0]					ADC2_frameCount;
	wire	logic								DC2_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameData_LARASIC2;

	//***************************
	//***
	//***	ADC3/LARASIC3 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	Data_LARASIC3_Config_1;
	wire	logic	[7:0]	Data_LARASIC3_Config_2;
	wire	logic	[7:0]	Data_LARASIC3_Config_3;
	wire	logic	[7:0]	Data_LARASIC3_Config_4;
	wire	logic	[7:0]	Data_LARASIC3_Config_5;
	wire	logic	[7:0]	Data_LARASIC3_Config_6;
	wire	logic	[7:0]	Data_LARASIC3_Config_7;
	wire	logic	[7:0]	Data_LARASIC3_Config_8;
	wire	logic	[7:0]	Data_LARASIC3_Config_9;
	wire	logic	[7:0]	Data_LARASIC3_Config_10;
	wire	logic	[7:0]	Data_LARASIC3_Config_11;
	wire	logic	[7:0]	Data_LARASIC3_Config_12;
	wire	logic	[7:0]	Data_LARASIC3_Config_13;
	wire	logic	[7:0]	Data_LARASIC3_Config_14;
	wire	logic	[7:0]	Data_LARASIC3_Config_15;
	wire	logic	[7:0]	Data_LARASIC3_Config_16;
	wire	logic	[7:0]	Data_LARASIC3_Config_17;
	wire	logic	[7:0]	Data_LARASIC3_Config_18;
	wire	logic	[7:0]	Data_LARASIC3_Config_19;
	wire	logic	[7:0]	Data_LARASIC3_Config_20;
	wire	logic	[7:0]	Data_LARASIC3_Config_21;
	wire	logic	[7:0]	Data_LARASIC3_Config_22;
	wire	logic	[7:0]	Data_LARASIC3_Config_23;
	wire	logic	[7:0]	Data_LARASIC3_Config_24;

	wire	logic				LARASIC3_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC3_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC3_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC3_chainLength;							//LARASIC dasiychain length
	wire	logic	[7:0]	LARASIC3_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC3_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC3_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedData_LARASIC3;
	wire	logic	[4:0]					ADC3_frameCount;
	wire	logic								ADC3_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameData_LARASIC3;

	//***************************
	//***
	//***	ADC4/LARASIC4 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	Data_LARASIC4_Config_1;
	wire	logic	[7:0]	Data_LARASIC4_Config_2;
	wire	logic	[7:0]	Data_LARASIC4_Config_3;
	wire	logic	[7:0]	Data_LARASIC4_Config_4;
	wire	logic	[7:0]	Data_LARASIC4_Config_5;
	wire	logic	[7:0]	Data_LARASIC4_Config_6;
	wire	logic	[7:0]	Data_LARASIC4_Config_7;
	wire	logic	[7:0]	Data_LARASIC4_Config_8;
	wire	logic	[7:0]	Data_LARASIC4_Config_9;
	wire	logic	[7:0]	Data_LARASIC4_Config_10;
	wire	logic	[7:0]	Data_LARASIC4_Config_11;
	wire	logic	[7:0]	Data_LARASIC4_Config_12;
	wire	logic	[7:0]	Data_LARASIC4_Config_13;
	wire	logic	[7:0]	Data_LARASIC4_Config_14;
	wire	logic	[7:0]	Data_LARASIC4_Config_15;
	wire	logic	[7:0]	Data_LARASIC4_Config_16;
	wire	logic	[7:0]	Data_LARASIC4_Config_17;
	wire	logic	[7:0]	Data_LARASIC4_Config_18;
	wire	logic	[7:0]	Data_LARASIC4_Config_19;
	wire	logic	[7:0]	Data_LARASIC4_Config_20;
	wire	logic	[7:0]	Data_LARASIC4_Config_21;
	wire	logic	[7:0]	Data_LARASIC4_Config_22;
	wire	logic	[7:0]	Data_LARASIC4_Config_23;
	wire	logic	[7:0]	Data_LARASIC4_Config_24;

	wire	logic				LARASIC4_ExecHR_Start;						//Hard Reset Command Line
	wire	logic				LARASIC4_ExecSR_Start;						//Soft Reset Command Line
	wire	logic				LARASIC4_ExecTP_Start;						//Test Pattern Command Line
	wire	logic				LARASIC4_ExecXX_Start;						//Scan the stored pattern Command Line
	wire	logic				LARASIC4_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC4_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC4_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC4_chainLength;							//LARASIC dasiychain length
	wire	logic	[7:0]	LARASIC4_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC4_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC4_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedData_LARASIC4;
	wire	logic	[4:0]					ADC4_frameCount;
	wire	logic								ADC4_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameData_LARASIC4;

	//***************************
	//***
	//***	SMU Trinity Connectivity
	//***
	//***************************
	wire 	logic [7:0]	REG_CONFIG_PLL_ICP;
	wire 	logic [7:0]	REG_CONFIG_PLL_BAND;
	wire 	logic [7:0] REG_CONFIG_PLL_LPFR;
	wire 	logic [7:0] REG_CONFIG_PLL_ATO;
	wire 	logic	[7:0] REG_CONFIG_PLL_PDCP;
	wire 	logic [7:0] REG_CONFIG_PLL_OPEN;
	wire 	logic [7:0] REG_CONFIG_SER_MODE;
	wire 	logic [7:0] REG_CONFIG_SER_INV_SER_CLK;
	wire 	logic [7:0] REG_CONFIG_DRV_VMBOOST;
	wire 	logic [7:0] REG_CONFIG_DRV_VMDRIVER;
	wire 	logic [7:0] REG_CONFIG_DRV_SELPRE;
	wire 	logic [7:0] REG_CONFIG_DRV_SELPST1;
	wire 	logic [7:0] REG_CONFIG_DRV_SELPST2;
	wire 	logic [7:0] REG_CONFIG_DRV_SELCM_MAIN;
	wire 	logic [7:0] REG_CONFIG_DRV_ENABLE_CM;
	wire 	logic [7:0] REG_CONFIG_DRV_INVERSE_CLK;
	wire 	logic [7:0] REG_CONFIG_DRV_DELAYSEL;
	wire 	logic	[7:0]	REG_CONFIG_DRV_CML;
	wire 	logic [7:0]	REG_CONFIG_DRV_BIAS_CML_INTERNAL;
	wire 	logic [7:0]	REG_CONFIG_DRV_BIAS_CS_INTERNAL;

	//***************************
	//***
	//***	FastCommand Connectivity
	//***
	//***************************
	wire 	logic  			FAST_CMD_RST;
	wire 	logic  			FAST_CMD_SYNC;
	wire 	logic  			FAST_CMD_2MHZ_EDGENOW;
	wire 	logic  			FAST_CMD_COLDATA_RST;
	wire 	logic  			FAST_CMD_ACT;

	//*******************************************************************************************
	//*******************************************************************************************
	//*******************************************************************************************
	//*******************************************************************************************
	//***
	//***	Modules start here.
	//***
	//*******************************************************************************************
	//*******************************************************************************************
	//*******************************************************************************************
	//*******************************************************************************************

			//*******************************************************************************************
			//***
			//***	*** FUSE ***
			//***
			//*******************************************************************************************

	wire [26:0] chipNumber;
	wire [3:0]	CHIP_ID_fuse;
	wire [3:0]	CHIP_ID_final;
	wire 				FUSE_Capture;

	//*** This is a temporary model of the 32-bit eFuse module we ultimately will
	//***		get from TSMC
	eFuse  eFuse_0	( .fuseData(	{	chipNumber[],
																	CHIP_ID_fuse,
																	FUSE_Programmed
																}		)
									);

	//*** The LSB of the fuse block is called FUSE_Programmed.  If the fuses have
	//***		been programmed, the FUSE_Programmed will be a ONE .  If they have not
	//***		been programmed, the FUSE_Programmed will be a zero.
	//***	If FUSE_Programmed is a ONE, then we use the fuse-programmed chipID.
	//***		Otherwise we get it from the Pads.
always_comb
		if( FUSE_Programmed == ONE)
			CHIP_ID_final	=	{3'b001,CHIP_ID_fuse[0]};		//I2C ChipID.  Must be 4'b0010 (COLDATA0 (bottom)) or4'b0011 (COLDATA1 (top))
		else
			CHIP_ID_final	=	{3'b001,CHIP_ID_internal};	//I2C ChipID.  Must be 4'b0010 (COLDATA0 (bottom)) or4'b0011 (COLDATA1 (top))

	//***	If FUSE_Programmed is a ONE and we are COLDATA1, then we are the top chip
	//***		and we answer to the I2C_LVDS signals.  If FUSE_Programmed is a ONE
	//***		and we are COLDATA0, then we are the bottom chip and we answer to the
	//***		I2C_CMOS signals. Otherwise we get our direction from I2C_LVDS1_CMOS0_MODE.
	always_comb
		if(( FUSE_Programmed == ONE) && (CHIP_ID_final == COLDATA1))
			I2C_LVDS1_CMOS0_MODE_final	=	ONE;
		else if (( FUSE_Programmed == ONE) && (CHIP_ID_final == COLDATA0))
			I2C_LVDS1_CMOS0_MODE_final	=	ZERO;
		else
			I2C_LVDS1_CMOS0_MODE_final	=	I2C_LVDS1_CMOS0_MODE_internal;

	//***	We have to be able to read out the programmed eFuses through the I2C
	regForceAction	FUSEWRITEreg_0	(	.dataOutBus(				I2C_Data_Read_Bus		),
																		.pageAddr(					I2C_Page_Addr_Bus		),
																		.requiredChipAddr1(	COLDATA0						),
																		.requiredChipAddr2(	COLDATA1						),
																		.requiredPageAddr(	MAINPAGE						),
																		.regAddr(						I2C_Reg_Addr_Bus		),
																		.requiredRegAddr(		FUSE_REG_WRITE			),
																		.writeReq(					I2C_writeReq				)
																		.actNow(						FUSE_Capture				)
																	);

	regReadOnly_noClk	FUSEreg_0	(	.dataForReading(		{	chipNumber[2:0],
																											CHIP_ID_fuse,
																											FUSE_Programmed	}	),
																.dataOutBus(				I2C_Data_Read_Bus		),
																.pageAddr(					I2C_Page_Addr_Bus		),
																.requiredChipAddr1(	COLDATA0						),
																.requiredChipAddr2(	COLDATA1						),
																.requiredPageAddr(	MAINPAGE						),
																.regAddr(						I2C_Reg_Addr_Bus		),
																.requiredRegAddr(		FUSE_REG_0					),
																.softReset(					I2C_writeReq				),
																.captureNow(				FUSE_Capture				)
															);

	regReadOnly_noClk	FUSEreg_1	(	.dataForReading(		chipNumber[10:3]		),
																.dataOutBus(				I2C_Data_Read_Bus		),
																.pageAddr(					I2C_Page_Addr_Bus		),
																.requiredChipAddr1(	COLDATA0						),
																.requiredChipAddr2(	COLDATA1						),
																.requiredPageAddr(	MAINPAGE						),
																.regAddr(						I2C_Reg_Addr_Bus		),
																.requiredRegAddr(		FUSE_REG_1					),
																.softReset(					I2C_writeReq				),
																.captureNow(				FUSE_Capture				)
															);

	regReadOnly_noClk	FUSEreg_2	(	.dataForReading(		chipNumber[18:11]		),
																.dataOutBus(				I2C_Data_Read_Bus		),
																.pageAddr(					I2C_Page_Addr_Bus		),
																.requiredChipAddr1(	COLDATA0						),
																.requiredChipAddr2(	COLDATA1						),
																.requiredPageAddr(	MAINPAGE						),
																.regAddr(						I2C_Reg_Addr_Bus		),
																.requiredRegAddr(		FUSE_REG_2					),
																.softReset(					I2C_writeReq				),
																.captureNow(				FUSE_Capture				)
															);

	regReadOnly_noClk	FUSEreg_3	(	.dataForReading(		chipNumber[26:19]		),
																.dataOutBus(				I2C_Data_Read_Bus		),
																.pageAddr(					I2C_Page_Addr_Bus		),
																.requiredChipAddr1(	COLDATA0						),
																.requiredChipAddr2(	COLDATA1						),
																.requiredPageAddr(	MAINPAGE						),
																.regAddr(						I2C_Reg_Addr_Bus		),
																.requiredRegAddr(		FUSE_REG_3					),
																.softReset(					I2C_writeReq				),
																.captureNow(				FUSE_Capture				)
															);

	//*******************************************************************************************
	//***
	//***	*** LVDS Current Magnitude ***
	//***
	//*******************************************************************************************

	wire 	logic 	[7:0]	LVDS_CURRENT_SET;

	reg8bit_0000_0000	LVDS_Current_Set_0	(	.Data(							LVDS_CURRENT_SET		),
																					.dataOutBus(				I2C_Data_Read_Bus		),
																					.dataInBus(					I2C_Data_Write_Bus	),
																					.pageAddr(					I2C_Page_Addr_Bus		),
																					.requiredChipAddr1(	COLDATA0						),
																					.requiredChipAddr2(	COLDATA1						),
																					.requiredPageAddr(	MAINPAGE						),
																					.regAddr(						I2C_Reg_Addr_Bus		),
																					.requiredRegAddr(		LVDS_CURRENT_SET_REG),
																					.writeReq(					I2C_writeReq				),
																					.softReset(					I2C_softReset				)
																				);

		//*******************************************************************************************
		//***
		//***	*** I2C IO ***
		//***
		//*******************************************************************************************

	wire 	logic					I2C_LVDS_SCL_internal;
	wire 	logic					I2C_LVDS_SDA_W2C_internal;
	wire 	logic					I2C_LVDS_SDA_C2W_internal;
	wire 	logic					I2C_CMOS_SCL_internal;
	wire 	logic					I2C_CMOS_SDA_W2C_internal;
	wire 	logic					I2C_CMOS_SDA_C2W_internal;
	wire 	logic					I2C_LVDS1_CMOS0_MODE_internal;
	wire 	logic					I2C_COLDATA_SCL_internal;
	wire 	logic					I2C_COLDATA_SDA_W2C_internal;
	wire 	logic					I2C_OTHER_SDA_C2W_internal;
	wire 	logic					I2C_ADC_1_SDA_C2W_internal;
	wire 	logic					I2C_ADC_2_SDA_C2W_internal;
	wire 	logic					I2C_ADC_3_SDA_C2W_internal;
	wire 	logic					I2C_ADC_4_SDA_C2W_internal;
	wire 	logic 				CHIP_ID_internal;

	colData_IO_I2C	colData_IO_I2C_0	(
																			.I2C_LVDS_SCL_P(								I2C_LVDS_SCL_P								),
																			.I2C_LVDS_SCL_N(								I2C_LVDS_SCL_N								),
																			.I2C_LVDS_SDA_W2C_P(						I2C_LVDS_SDA_W2C_P						),
																			.I2C_LVDS_SDA_W2C_N(						I2C_LVDS_SDA_W2C_N						),
																			.I2C_LVDS_SDA_C2W_P(						I2C_LVDS_SDA_C2W_P						),
																			.I2C_LVDS_SDA_C2W_N(						I2C_LVDS_SDA_C2W_N						),
																			.I2C_CMOS_SCL(									I2C_CMOS_SCL									),
																			.I2C_CMOS_SDA_W2C(							I2C_CMOS_SDA_W2C							),
																			.I2C_CMOS_SDA_C2W(							I2C_CMOS_SDA_C2W							),
																			.I2C_LVDS1_CMOS0_MODE(					I2C_LVDS1_CMOS0_MODE					),
																			.I2C_COLDATA_SCL(								I2C_COLDATA_SCL								),
																			.I2C_COLDATA_SDA_W2C(						I2C_COLDATA_SDA_W2C						),
																			.I2C_OTHER_SDA_C2W(							I2C_OTHER_SDA_C2W							),
																			.I2C_ADC_1_SDA_C2W(							I2C_ADC_1_SDA_C2W							),
																			.I2C_ADC_2_SDA_C2W(							I2C_ADC_2_SDA_C2W							),
																			.I2C_ADC_3_SDA_C2W(							I2C_ADC_3_SDA_C2W							),
																			.I2C_ADC_4_SDA_C2W(							I2C_ADC_4_SDA_C2W							),
																			.CHIP_ID_0(											CHIP_ID_0											),
																			.I2C_LVDS_SCL_internal(					I2C_LVDS_SCL_internal					),
																			.I2C_LVDS_SDA_W2C_internal(			I2C_LVDS_SDA_W2C_internal			),
																			.I2C_LVDS_SDA_C2W_internal(			I2C_LVDS_SDA_C2W_internal			),
																			.I2C_CMOS_SCL_internal(					I2C_CMOS_SCL_internal					),
																			.I2C_CMOS_SDA_W2C_internal(			I2C_CMOS_SDA_W2C_internal			),
																			.I2C_CMOS_SDA_C2W_internal(			I2C_CMOS_SDA_C2W_internal			),
																			.I2C_LVDS1_CMOS0_MODE_internal(	I2C_LVDS1_CMOS0_MODE_internal	),
																			.I2C_COLDATA_SCL_internal(			I2C_COLDATA_SCL_internal			),
																			.I2C_COLDATA_SDA_W2C_internal(	I2C_COLDATA_SDA_W2C_internal	),
																			.I2C_OTHER_SDA_C2W_internal(		I2C_OTHER_SDA_C2W_internal		),
																			.I2C_ADC_1_SDA_C2W_internal(		I2C_ADC_1_SDA_C2W_internal		),
																			.I2C_ADC_2_SDA_C2W_internal(		I2C_ADC_2_SDA_C2W_internal		),
																			.I2C_ADC_3_SDA_C2W_internal(		I2C_ADC_3_SDA_C2W_internal		),
																			.I2C_ADC_4_SDA_C2W_internal(		I2C_ADC_4_SDA_C2W_internal		),
																			.CHIP_ID_internal(							CHIP_ID_internal							),
																			.LVDS_bias(											LVDS_CURRENT_SET[2:0]					)
																		);
//***
		//*******************************************************************************************
		//***
		//***	*** ADC1 IO ***
		//***
		//*******************************************************************************************

	wire 	logic					ADC1_CLK_2MHZ_internal;
	wire 	logic					ADC1_DIG_OUTA_internal;
	wire 	logic					ADC1_DIG_OUTB_internal;
	wire 	logic					ADC1_DIG_OUTC_internal;
	wire 	logic					ADC1_DIG_OUTD_internal;
	wire 	logic					ADC1_DIG_OUTE_internal;
	wire 	logic					ADC1_DIG_OUTF_internal;
	wire 	logic					ADC1_DIG_OUTG_internal;
	wire 	logic					ADC1_DIG_OUTH_internal;
	wire 	logic					ADC1_DIG_FRAME_internal;
	wire 	logic					ADC1_DIG_CLKOUT_internal;
	wire 	logic					ADC1_CLK_2MHZ_internal;
	wire 	logic					ADC1_CLK_64MHZ_internal;
	wire 	logic					ADC1_MASTER_RESET_internal;

	colData_IO_ADC	colData_IO_ADC1_0	(
																			.ADC_DIG_OUTA_P(						ADC1_DIG_OUTA_P							),
																			.ADC_DIG_OUTA_N(						ADC1_DIG_OUTA_N							),
																			.ADC_DIG_OUTB_P(						ADC1_DIG_OUTB_P							),
																			.ADC_DIG_OUTB_N(						ADC1_DIG_OUTB_N							),
																			.ADC_DIG_OUTC_P(						ADC1_DIG_OUTC_P							),
																			.ADC_DIG_OUTC_N(						ADC1_DIG_OUTC_N							),
																			.ADC_DIG_OUTD_P(						ADC1_DIG_OUTD_P							),
																			.ADC_DIG_OUTD_N(						ADC1_DIG_OUTD_N							),
																			.ADC_DIG_OUTE_P(						ADC1_DIG_OUTE_P							),
																			.ADC_DIG_OUTE_N(						ADC1_DIG_OUTE_N							),
																			.ADC_DIG_OUTF_P(						ADC1_DIG_OUTF_P							),
																			.ADC_DIG_OUTF_N(						ADC1_DIG_OUTF_N							),
																			.ADC_DIG_OUTG_P(						ADC1_DIG_OUTG_P							),
																			.ADC_DIG_OUTG_N(						ADC1_DIG_OUTG_N							),
																			.ADC_DIG_OUTH_P(						ADC1_DIG_OUTH_P							),
																			.ADC_DIG_OUTH_N(						ADC1_DIG_OUTH_N							),
																			.ADC_DIG_FRAME_P(						ADC1_DIG_FRAME_P						),
																			.ADC_DIG_FRAME_N(						ADC1_DIG_FRAME_N						),
																		  .ADC_DIG_CLKOUT_P(					ADC1_DIG_CLKOUT_P						),
																		  .ADC_DIG_CLKOUT_N(					ADC1_DIG_CLKOUT_N						),
																			.ADC_CLK_2MHZ_P(						ADC1_CLK_2MHZ_P							),
																			.ADC_CLK_2MHZ_N(						ADC1_CLK_2MHZ_N							),
																			.ADC_CLK_64MHZ_P(						ADC1_CLK_64MHZ_P						),
																			.ADC_CLK_64MHZ_N(						ADC1_CLK_64MHZ_N						),
																			.ADC_DIG_OUTA_internal(			ADC1_DIG_OUTA_internal			),
																			.ADC_DIG_OUTB_internal(			ADC1_DIG_OUTB_internal			),
																			.ADC_DIG_OUTC_internal(			ADC1_DIG_OUTC_internal			),
																			.ADC_DIG_OUTD_internal(			ADC1_DIG_OUTD_internal			),
																			.ADC_DIG_OUTE_internal(			ADC1_DIG_OUTE_internal			),
																			.ADC_DIG_OUTF_internal(			ADC1_DIG_OUTF_internal			),
																			.ADC_DIG_OUTG_internal(			ADC1_DIG_OUTG_internal			),
																			.ADC_DIG_OUTH_internal(			ADC1_DIG_OUTH_internal			),
																			.ADC_DIG_FRAME_internal(		ADC1_DIG_FRAME_internal			),
																		  .ADC_DIG_CLKOUT_internal(		ADC1_DIG_CLKOUT_internal		),
																			.ADC_CLK_2MHZ_internal(			ADC1_CLK_2MHZ_internal			),
																			.ADC_CLK_64MHZ_internal(		ADC1_CLK_64MHZ_internal			),
																		  .LVDS_bias(									LVDS_CURRENT_SET[2:0]				)
																		);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** ADC2 IO ***
		//***
		//*******************************************************************************************

	wire 	logic					ADC2_CLK_2MHZ_internal;
	wire 	logic					ADC2_DIG_OUTA_internal;
	wire 	logic					ADC2_DIG_OUTB_internal;
	wire 	logic					ADC2_DIG_OUTC_internal;
	wire 	logic					ADC2_DIG_OUTD_internal;
	wire 	logic					ADC2_DIG_OUTE_internal;
	wire 	logic					ADC2_DIG_OUTF_internal;
	wire 	logic					ADC2_DIG_OUTG_internal;
	wire 	logic					ADC2_DIG_OUTH_internal;
	wire 	logic					ADC2_DIG_FRAME_internal;
	wire 	logic					ADC2_DIG_CLKOUT_internal;
	wire 	logic					ADC2_CLK_2MHZ_internal;
	wire 	logic					ADC2_CLK_64MHZ_internal;
	wire 	logic					ADC2_MASTER_RESET_internal;

	colData_IO_ADC	colData_IO_ADC2_0	(
																			.ADC_DIG_OUTA_P(						ADC2_DIG_OUTA_P							),
																			.ADC_DIG_OUTA_N(						ADC2_DIG_OUTA_N							),
																			.ADC_DIG_OUTB_P(						ADC2_DIG_OUTB_P							),
																			.ADC_DIG_OUTB_N(						ADC2_DIG_OUTB_N							),
																			.ADC_DIG_OUTC_P(						ADC2_DIG_OUTC_P							),
																			.ADC_DIG_OUTC_N(						ADC2_DIG_OUTC_N							),
																			.ADC_DIG_OUTD_P(						ADC2_DIG_OUTD_P							),
																			.ADC_DIG_OUTD_N(						ADC2_DIG_OUTD_N							),
																			.ADC_DIG_OUTE_P(						ADC2_DIG_OUTE_P							),
																			.ADC_DIG_OUTE_N(						ADC2_DIG_OUTE_N							),
																			.ADC_DIG_OUTF_P(						ADC2_DIG_OUTF_P							),
																			.ADC_DIG_OUTF_N(						ADC2_DIG_OUTF_N							),
																			.ADC_DIG_OUTG_P(						ADC2_DIG_OUTG_P							),
																			.ADC_DIG_OUTG_N(						ADC2_DIG_OUTG_N							),
																			.ADC_DIG_OUTH_P(						ADC2_DIG_OUTH_P							),
																			.ADC_DIG_OUTH_N(						ADC2_DIG_OUTH_N							),
																			.ADC_DIG_FRAME_P(						ADC2_DIG_FRAME_P						),
																			.ADC_DIG_FRAME_N(						ADC2_DIG_FRAME_N						),
																		  .ADC_DIG_CLKOUT_P(					ADC2_DIG_CLKOUT_P						),
																		  .ADC_DIG_CLKOUT_N(					ADC2_DIG_CLKOUT_N						),
																			.ADC_CLK_2MHZ_P(						ADC2_CLK_2MHZ_P							),
																			.ADC_CLK_2MHZ_N(						ADC2_CLK_2MHZ_N							),
																			.ADC_CLK_64MHZ_P(						ADC2_CLK_64MHZ_P						),
																			.ADC_CLK_64MHZ_N(						ADC2_CLK_64MHZ_N						),
																			.ADC_DIG_OUTA_internal(			ADC2_DIG_OUTA_internal			),
																			.ADC_DIG_OUTB_internal(			ADC2_DIG_OUTB_internal			),
																			.ADC_DIG_OUTC_internal(			ADC2_DIG_OUTC_internal			),
																			.ADC_DIG_OUTD_internal(			ADC2_DIG_OUTD_internal			),
																			.ADC_DIG_OUTE_internal(			ADC2_DIG_OUTE_internal			),
																			.ADC_DIG_OUTF_internal(			ADC2_DIG_OUTF_internal			),
																			.ADC_DIG_OUTG_internal(			ADC2_DIG_OUTG_internal			),
																			.ADC_DIG_OUTH_internal(			ADC2_DIG_OUTH_internal			),
																			.ADC_DIG_FRAME_internal(		ADC2_DIG_FRAME_internal			),
																		  .ADC_DIG_CLKOUT_internal(		ADC2_DIG_CLKOUT_internal		),
																			.ADC_CLK_2MHZ_internal(			ADC2_CLK_2MHZ_internal			),
																			.ADC_CLK_64MHZ_internal(		ADC2_CLK_64MHZ_internal			),
																		  .LVDS_bias(									LVDS_CURRENT_SET[2:0]				)
																		);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** ADC3 IO ***
		//***
		//*******************************************************************************************

	wire 	logic					ADC3_CLK_2MHZ_internal;
	wire 	logic					ADC3_DIG_OUTA_internal;
	wire 	logic					ADC3_DIG_OUTB_internal;
	wire 	logic					ADC3_DIG_OUTC_internal;
	wire 	logic					ADC3_DIG_OUTD_internal;
	wire 	logic					ADC3_DIG_OUTE_internal;
	wire 	logic					ADC3_DIG_OUTF_internal;
	wire 	logic					ADC3_DIG_OUTG_internal;
	wire 	logic					ADC3_DIG_OUTH_internal;
	wire 	logic					ADC3_DIG_FRAME_internal;
	wire 	logic					ADC3_DIG_CLKOUT_internal;
	wire 	logic					ADC3_CLK_2MHZ_internal;
	wire 	logic					ADC3_CLK_64MHZ_internal;
	wire 	logic					ADC3_MASTER_RESET_internal;

	colData_IO_ADC	colData_IO_ADC3_0	(
																			.ADC_DIG_OUTA_P(						ADC3_DIG_OUTA_P							),
																			.ADC_DIG_OUTA_N(						ADC3_DIG_OUTA_N							),
																			.ADC_DIG_OUTB_P(						ADC3_DIG_OUTB_P							),
																			.ADC_DIG_OUTB_N(						ADC3_DIG_OUTB_N							),
																			.ADC_DIG_OUTC_P(						ADC3_DIG_OUTC_P							),
																			.ADC_DIG_OUTC_N(						ADC3_DIG_OUTC_N							),
																			.ADC_DIG_OUTD_P(						ADC3_DIG_OUTD_P							),
																			.ADC_DIG_OUTD_N(						ADC3_DIG_OUTD_N							),
																			.ADC_DIG_OUTE_P(						ADC3_DIG_OUTE_P							),
																			.ADC_DIG_OUTE_N(						ADC3_DIG_OUTE_N							),
																			.ADC_DIG_OUTF_P(						ADC3_DIG_OUTF_P							),
																			.ADC_DIG_OUTF_N(						ADC3_DIG_OUTF_N							),
																			.ADC_DIG_OUTG_P(						ADC3_DIG_OUTG_P							),
																			.ADC_DIG_OUTG_N(						ADC3_DIG_OUTG_N							),
																			.ADC_DIG_OUTH_P(						ADC3_DIG_OUTH_P							),
																			.ADC_DIG_OUTH_N(						ADC3_DIG_OUTH_N							),
																			.ADC_DIG_FRAME_P(						ADC3_DIG_FRAME_P						),
																			.ADC_DIG_FRAME_N(						ADC3_DIG_FRAME_N						),
																		  .ADC_DIG_CLKOUT_P(					ADC3_DIG_CLKOUT_P						),
																		  .ADC_DIG_CLKOUT_N(					ADC3_DIG_CLKOUT_N						),
																			.ADC_CLK_2MHZ_P(						ADC3_CLK_2MHZ_P							),
																			.ADC_CLK_2MHZ_N(						ADC3_CLK_2MHZ_N							),
																			.ADC_CLK_64MHZ_P(						ADC3_CLK_64MHZ_P						),
																			.ADC_CLK_64MHZ_N(						ADC3_CLK_64MHZ_N						),
																			.ADC_DIG_OUTA_internal(			ADC3_DIG_OUTA_internal			),
																			.ADC_DIG_OUTB_internal(			ADC3_DIG_OUTB_internal			),
																			.ADC_DIG_OUTC_internal(			ADC3_DIG_OUTC_internal			),
																			.ADC_DIG_OUTD_internal(			ADC3_DIG_OUTD_internal			),
																			.ADC_DIG_OUTE_internal(			ADC3_DIG_OUTE_internal			),
																			.ADC_DIG_OUTF_internal(			ADC3_DIG_OUTF_internal			),
																			.ADC_DIG_OUTG_internal(			ADC3_DIG_OUTG_internal			),
																			.ADC_DIG_OUTH_internal(			ADC3_DIG_OUTH_internal			),
																			.ADC_DIG_FRAME_internal(		ADC3_DIG_FRAME_internal			),
																		  .ADC_DIG_CLKOUT_internal(		ADC3_DIG_CLKOUT_internal		),
																			.ADC_CLK_2MHZ_internal(			ADC3_CLK_2MHZ_internal			),
																			.ADC_CLK_64MHZ_internal(		ADC3_CLK_64MHZ_internal			),
																		  .LVDS_bias(									LVDS_CURRENT_SET[2:0]				)
																		);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** ADC4 IO ***
		//***
		//*******************************************************************************************

	wire 	logic					ADC4_CLK_2MHZ_internal;
	wire 	logic					ADC4_DIG_OUTA_internal;
	wire 	logic					ADC4_DIG_OUTB_internal;
	wire 	logic					ADC4_DIG_OUTC_internal;
	wire 	logic					ADC4_DIG_OUTD_internal;
	wire 	logic					ADC4_DIG_OUTE_internal;
	wire 	logic					ADC4_DIG_OUTF_internal;
	wire 	logic					ADC4_DIG_OUTG_internal;
	wire 	logic					ADC4_DIG_OUTH_internal;
	wire 	logic					ADC4_DIG_FRAME_internal;
	wire 	logic					ADC4_DIG_CLKOUT_internal;
	wire 	logic					ADC4_CLK_2MHZ_internal;
	wire 	logic					ADC4_CLK_64MHZ_internal;
	wire 	logic					ADC4_MASTER_RESET_internal;

	colData_IO_ADC	colData_IO_ADC4_0	(
																			.ADC_DIG_OUTA_P(						ADC4_DIG_OUTA_P							),
																			.ADC_DIG_OUTA_N(						ADC4_DIG_OUTA_N							),
																			.ADC_DIG_OUTB_P(						ADC4_DIG_OUTB_P							),
																			.ADC_DIG_OUTB_N(						ADC4_DIG_OUTB_N							),
																			.ADC_DIG_OUTC_P(						ADC4_DIG_OUTC_P							),
																			.ADC_DIG_OUTC_N(						ADC4_DIG_OUTC_N							),
																			.ADC_DIG_OUTD_P(						ADC4_DIG_OUTD_P							),
																			.ADC_DIG_OUTD_N(						ADC4_DIG_OUTD_N							),
																			.ADC_DIG_OUTE_P(						ADC4_DIG_OUTE_P							),
																			.ADC_DIG_OUTE_N(						ADC4_DIG_OUTE_N							),
																			.ADC_DIG_OUTF_P(						ADC4_DIG_OUTF_P							),
																			.ADC_DIG_OUTF_N(						ADC4_DIG_OUTF_N							),
																			.ADC_DIG_OUTG_P(						ADC4_DIG_OUTG_P							),
																			.ADC_DIG_OUTG_N(						ADC4_DIG_OUTG_N							),
																			.ADC_DIG_OUTH_P(						ADC4_DIG_OUTH_P							),
																			.ADC_DIG_OUTH_N(						ADC4_DIG_OUTH_N							),
																			.ADC_DIG_FRAME_P(						ADC4_DIG_FRAME_P						),
																			.ADC_DIG_FRAME_N(						ADC4_DIG_FRAME_N						),
																		  .ADC_DIG_CLKOUT_P(					ADC4_DIG_CLKOUT_P						),
																		  .ADC_DIG_CLKOUT_N(					ADC4_DIG_CLKOUT_N						),
																			.ADC_CLK_2MHZ_P(						ADC4_CLK_2MHZ_P							),
																			.ADC_CLK_2MHZ_N(						ADC4_CLK_2MHZ_N							),
																			.ADC_CLK_64MHZ_P(						ADC4_CLK_64MHZ_P						),
																			.ADC_CLK_64MHZ_N(						ADC4_CLK_64MHZ_N						),
																			.ADC_DIG_OUTA_internal(			ADC4_DIG_OUTA_internal			),
																			.ADC_DIG_OUTB_internal(			ADC4_DIG_OUTB_internal			),
																			.ADC_DIG_OUTC_internal(			ADC4_DIG_OUTC_internal			),
																			.ADC_DIG_OUTD_internal(			ADC4_DIG_OUTD_internal			),
																			.ADC_DIG_OUTE_internal(			ADC4_DIG_OUTE_internal			),
																			.ADC_DIG_OUTF_internal(			ADC4_DIG_OUTF_internal			),
																			.ADC_DIG_OUTG_internal(			ADC4_DIG_OUTG_internal			),
																			.ADC_DIG_OUTH_internal(			ADC4_DIG_OUTH_internal			),
																			.ADC_DIG_FRAME_internal(		ADC4_DIG_FRAME_internal			),
																		  .ADC_DIG_CLKOUT_internal(		ADC4_DIG_CLKOUT_internal		),
																			.ADC_CLK_2MHZ_internal(			ADC4_CLK_2MHZ_internal			),
																			.ADC_CLK_64MHZ_internal(		ADC4_CLK_64MHZ_internal			),
																		  .LVDS_bias(									LVDS_CURRENT_SET[2:0]				)
																		);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** System IO***
		//***
		//*******************************************************************************************

	wire 	logic		CLK_64MHZ_SYS_internal;
	wire 	logic		FASTCOMMAND_IN_internal;
	wire 	logic		PAD_RESET_internal;

	colData_IO_Sys	colData_IO_Sys_0	(
							                        .CLK_64MHZ_SYS_P(					CLK_64MHZ_SYS_P					),
							                      	.CLK_64MHZ_SYS_N(					CLK_64MHZ_SYS_N					),
							                      	.FASTCOMMAND_IN_P(				FASTCOMMAND_IN_P				),
							                      	.FASTCOMMAND_IN_N(				FASTCOMMAND_IN_N				),
							                        .PAD_RESET(								PAD_RESET								),
							                        .CLK_64MHZ_SYS_internal(	CLK_64MHZ_SYS_internal	),
							                      	.FASTCOMMAND_IN_internal(	FASTCOMMAND_IN_internal	),
							                        .PAD_RESET_internal(			PAD_RESET_internal			)
							                    	);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** LARASIC1 IO ***
		//***
		//*******************************************************************************************

	wire 	logic		LARASIC1_SCK_internal;
	wire 	logic		LARASIC1_SDO_internal;
	wire 	logic		LARASIC1_CS_internal;
	wire 	logic		LARASIC1_SDI_internal;

	colData_IO_LARASIC	colData_IO_LARASIC1_0	(
											                       .LARASIC_SCK(										LARASIC1_SCK									),
											                       .LARASIC_SDO(										LARASIC1_SDO									),
											                       .LARASIC_CS(											LARASIC1_CS										),
											                       .LARASIC_SDI(										LARASIC1_SDI									),
											                       .LARASIC_SCK_internal(						LARASIC1_SCK_internal					),
											                       .LARASIC_SDO_internal(						LARASIC1_SDO_internal					),
											                       .LARASIC_CS_internal(						LARASIC1_CS_internal					),
											                       .LARASIC_SDI_internal(						LARASIC1_SDI_internal					),
											                     	);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** LARASIC2 IO ***
		//***
		//*******************************************************************************************

	wire 	logic		LARASIC2_SCK_internal;
	wire 	logic		LARASIC2_SDO_internal;
	wire 	logic		LARASIC2_CS_internal;
	wire 	logic		LARASIC2_SDI_internal;

	colData_IO_LARASIC	colData_IO_LARASIC2_0	(
											                       .LARASIC_SCK(										LARASIC2_SCK									),
											                       .LARASIC_SDO(										LARASIC2_SDO									),
											                       .LARASIC_CS(											LARASIC2_CS										),
											                       .LARASIC_SDI(										LARASIC2_SDI									),
											                       .LARASIC_SCK_internal(						LARASIC2_SCK_internal					),
											                       .LARASIC_SDO_internal(						LARASIC2_SDO_internal					),
											                       .LARASIC_CS_internal(						LARASIC2_CS_internal					),
											                       .LARASIC_SDI_internal(						LARASIC2_SDI_internal					),
											                     	);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** LARASIC3 IO ***
		//***
		//*******************************************************************************************

	wire 	logic		LARASIC3_SCK_internal;
	wire 	logic		LARASIC3_SDO_internal;
	wire 	logic		LARASIC3_CS_internal;
	wire 	logic		LARASIC3_SDI_internal;

	colData_IO_LARASIC	colData_IO_LARASIC3_0	(
											                       .LARASIC_SCK(										LARASIC3_SCK									),
											                       .LARASIC_SDO(										LARASIC3_SDO									),
											                       .LARASIC_CS(											LARASIC3_CS										),
											                       .LARASIC_SDI(										LARASIC3_SDI									),
											                       .LARASIC_SCK_internal(						LARASIC3_SCK_internal					),
											                       .LARASIC_SDO_internal(						LARASIC3_SDO_internal					),
											                       .LARASIC_CS_internal(						LARASIC3_CS_internal					),
											                       .LARASIC_SDI_internal(						LARASIC3_SDI_internal					),
											                     	);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** LARASIC4 IO ***
		//***
		//*******************************************************************************************

	wire 	logic		LARASIC4_SCK_internal;
	wire 	logic		LARASIC4_SDO_internal;
	wire 	logic		LARASIC4_CS_internal;
	wire 	logic		LARASIC4_SDI_internal;

	colData_IO_LARASIC	colData_IO_LARASIC4_0	(
											                       .LARASIC_SCK(										LARASIC4_SCK									),
											                       .LARASIC_SDO(										LARASIC4_SDO									),
											                       .LARASIC_CS(											LARASIC4_CS										),
											                       .LARASIC_SDI(										LARASIC4_SDI									),
											                       .LARASIC_SCK_internal(						LARASIC4_SCK_internal					),
											                       .LARASIC_SDO_internal(						LARASIC4_SDO_internal					),
											                       .LARASIC_CS_internal(						LARASIC4_CS_internal					),
											                       .LARASIC_SDI_internal(						LARASIC4_SDI_internal					),
											                     	);
//***
//***
//***
		//*******************************************************************************************
		//***
		//***	*** Front End Reset IO ***
		//***
		//*******************************************************************************************

	wire 	logic		ADC_MASTER_RESET_internal;
	wire 	logic		LARASIC_MASTER_RESET_internal;

	colData_IO_ADC	colData_IO_ADC_0	(
																			.ADC_MASTER_RESET(							ADC_MASTER_RESET							),
																			.LARASIC_MASTER_RESET(					LARASIC_MASTER_RESET					),
																			.ADC_MASTER_RESET_internal(			ADC_MASTER_RESET_internal			),
																			.LARASIC_MASTER_RESET_internal(	LARASIC_MASTER_RESET_internal	),
																		);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** FMB Control Bits ***
		//***
		//*******************************************************************************************

		wire 	logic [7:0]	FMB_CONTROL_WORD;

		assign 	FMB_CONTROL_0	=	FMB_CONTROL_WORD[0];
		assign 	FMB_CONTROL_1	=	FMB_CONTROL_WORD[1];
		assign 	FMB_CONTROL_2	=	FMB_CONTROL_WORD[2];

		reg8bit_0010_0000	LARASIC1_dataFeedCnt_Reg_1	(	.Data(							FMB_CONTROL_WORD			),
																										.dataOutBus(				I2C_Data_Read_Bus			),
																										.dataInBus(					I2C_Data_Write_Bus		),
																										.pageAddr(					I2C_Page_Addr_Bus			),
																										.requiredChipAddr1(	COLDATA0							),
																										.requiredChipAddr2(	COLDATA1							),
																										.requiredPageAddr(	MAINPAGE							),
																										.regAddr(						I2C_Reg_Addr_Bus			),
																										.requiredRegAddr(		REG_FMB_CONTROL_WORD	),
																										.writeReq(					I2C_writeReq					),
																										.softReset(					I2C_softReset					)
																									);
//***
//***
		//*******************************************************************************************
		//***
		//***	*** LARASIC and ADC Reset Control ***
		//***
		//*******************************************************************************************

		wire 	[7:0]	LARASIC_RST_COUNT;
		wire 	[7:0]	ADC_RST_COUNT;

		reg8bit_0010_0000	LARASIC1_dataFeedCnt_Reg_1	(	.Data(							LARASIC_RST_COUNT			),
																										.dataOutBus(				I2C_Data_Read_Bus			),
																										.dataInBus(					I2C_Data_Write_Bus		),
																										.pageAddr(					I2C_Page_Addr_Bus			),
																										.requiredChipAddr1(	COLDATA0							),
																										.requiredChipAddr2(	COLDATA1							),
																										.requiredPageAddr(	MAINPAGE							),
																										.regAddr(						I2C_Reg_Addr_Bus			),
																										.requiredRegAddr(		REG_LARASIC_RST_COUNT	),
																										.writeReq(					I2C_writeReq					),
																										.softReset(					I2C_softReset					)
																									);

		reg8bit_0010_0000	LARASIC1_dataFeedCnt_Reg_1	(	.Data(							ADC_RST_COUNT					),
																										.dataOutBus(				I2C_Data_Read_Bus			),
																										.dataInBus(					I2C_Data_Write_Bus		),
																										.pageAddr(					I2C_Page_Addr_Bus			),
																										.requiredChipAddr1(	COLDATA0							),
																										.requiredChipAddr2(	COLDATA1							),
																										.requiredPageAddr(	MAINPAGE							),
																										.regAddr(						I2C_Reg_Addr_Bus			),
																										.requiredRegAddr(		REG_ADC_RST_COUNT			),
																										.writeReq(					I2C_writeReq					),
																										.softReset(					I2C_softReset					)
																									);

		colData_FErst	colData_FErst0	(	.ADC_MASTER_RESET(			ADC_MASTER_RESET_internal 		),
																		.LARASIC_MASTER_RESET(	LARASIC_MASTER_RESET_internal	),
																		.FASTACT_COLDADC_RESET(	FASTACT_COLDADC_RESET					),
																		.FASTACT_LARASIC_RESET(	FASTACT_LARASIC_RESET					),
																		.COLDADC_RST_COUNT(			ADC_RST_COUNT									),
																		.LARASIC_RST_COUNT(			LARASIC_RST_COUNT							),
																		.Clk_64MHz_Sys(					Clk_64MHz_Sys_internal 				),
																		.Rst_ACTIVE_LOW( 				CORE_MASTER_RESET_ACTIVE_LOW	)
																	);
//***

//*******************************************************************************************
//*******************************************************************************************
//***
//***	*** Top-Level Assignments ***
//***
//*******************************************************************************************
//*******************************************************************************************
	wire	logic				PLL_MASTER_RESET;
	wire	logic				DLL_MASTER_RESET;
	wire	logic				CORE_MASTER_RESET;
	wire	logic				CORE_MASTER_RESET_ACTIVE_HIGH;
	wire	logic				CORE_MASTER_RESET_ACTIVE_LOW;
	wire 	logic				Async_Rst_Active_Low;

	assign 	Async_Rst_Active_Low						=	PAD_RESET && Rst_PowerOn;

	assign	CORE_MASTER_RESET_ACTIVE_HIGH		=	!CORE_MASTER_RESET;
	assign	CORE_MASTER_RESET_ACTIVE_LOW		=	CORE_MASTER_RESET;

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_resetSM
//***	Reset state machine in response to a COLDATA_RESET fast command
//***
//******************************************

	colData_resetSM	ResetSM0	(	.PLL_MASTER_RESET(			PLL_MASTER_RESET			),
															.DLL_MASTER_RESET(			DLL_MASTER_RESET			),
															.CORE_MASTER_RESET(			CORE_MASTER_RESET			),
															.CORE_Run(							CORE_Run							),
															.COLDATA_RESET(					FAST_CMD_COLDATA_RST	), 		//Positive-active signal from Fast Command
															.Rst_PowerOn(						Async_Rst_Active_Low	),		//Negative-active signal from power-on Rst or Pad
															.Clk64MHz(							CLK_64MHZ_SYS_internal)
														);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_2MHzClkGen
//***	Sets the frequency and edge of the 2MHz Clock
//***
//******************************************

	wire 	logic				CLK_2MHZ_SYS_generated;
	wire 	logic	[7:0]	timeStamp;

	colData_2MHzClkGen	colData_2MHzClkGen_0	(		.Clk_2MHz_Sys(			CLK_2MHZ_SYS_generated	),
																								.Clk_64MHz_Sys(			CLK_64MHZ_SYS_internal	),
																								.edgeNow(						FAST_CMD_2MHZ_EDGENOW		),
																								.syncNow(						FAST_CMD_SYNC						),
																								.timeStamp(					timeStamp								),
																								.DLL_MASTER_RESET(	DLL_MASTER_RESET				)
																						);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_2MHzClkGen
//***	Sets the frequency and edge of the 2MHz Clock
//***
//******************************************

	wire 	logic 	[7:0]	ADC_Clock_Control_Bus;

	colData_ADCclks	colData_ADCclks_0	(	.ADC1_CLK_2MHZ(						ADC1_CLK_2MHZ_internal 	),
																			.ADC1_CLK_64MHZ(					ADC1_CLK_64MHZ_internal ),
																			.ADC2_CLK_2MHZ(						ADC2_CLK_2MHZ_internal 	),
																			.ADC2_CLK_64MHZ(					ADC2_CLK_64MHZ_internal ),
																			.ADC3_CLK_2MHZ(						ADC3_CLK_2MHZ_internal 	),
																			.ADC3_CLK_64MHZ(					ADC3_CLK_64MHZ_internal ),
																			.ADC4_CLK_2MHZ(						ADC4_CLK_2MHZ_internal 	),
																			.ADC4_CLK_64MHZ(					ADC4_CLK_64MHZ_internal ),
																			.CLK_2MHZ_SYS_generated(	CLK_2MHZ_SYS_generated	),
																			.Clk_64MHz_Sys(						CLK_64MHZ_SYS_internal	),
																			.ADC_Clock_Control(				ADC_Clock_Control_Bus		)
																		);

	reg8bit_1111_1111	ADC_Clk_Control_Reg_0	(	.Data(							ADC_Clock_Control_Bus	),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	MAINPAGE							),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		ADCCLKCTRLREG					),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	FastCommand
//***	Interprets fast commands from the Warm
//***
//******************************************

	colData_FastCommand	colData_FastCommand_0	(	.Clk_64MHz_Sys(			CLK_64MHZ_SYS_internal	),
																							.FastCommand_In(		FASTCOMMAND_IN_internal	),
																							.cmd_Sync(					FAST_CMD_RST						),
																							.cmd_Edge(					FAST_CMD_2MHZ_EDGENOW		),
																							.cmd_colData_Rst(		FAST_CMD_COLDATA_RST		),
																							.cmd_Act(						FAST_CMD_ACT						),
																							.status_Heartbeat(	status_Heartbeat				)
																						);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Fast Command Act Logic
//***		Support circuitry for commands that result from the FastCommand Act Command (FAST_CMD_ACT)
//***
//******************************************

	wire 	logic 	[7:0]		FASTACT_Command;
	wire 	logic 					FASTACT_RESET;
	wire 	logic  					FASTACT_LARASIC_CAL;
	wire 	logic  					FASTACT_SAVE_TIMESTAMP;
	wire 	logic  					FASTACT_SAVE_STATUS;
	wire 	logic 					FASTACT_CLEAR_SAVES;
	wire 	logic 					FASTACT_COLDADC_RESET;
	wire 	logic 					FASTACT_LARASIC_RESET;
	wire 	logic 					FASTACT_LARASIC_SPIRST;
	wire 	logic 					FASTACT_LARASIC_PROG;

				logic 					status_Heartbeat_perpetual;

	assign 	FASTACT_LARASIC_CAL			=	(FASTACT_Command == FASTACT_LARASIC_CAL_COMMAND) 		&& FAST_CMD_ACT;
	assign 	FASTACT_SAVE_TIMESTAMP	=	(FASTACT_Command == FASTACT_SAVE_TIMESTAMP_COMMAND) && FAST_CMD_ACT;
	assign 	FASTACT_SAVE_STATUS			=	(FASTACT_Command == FASTACT_SAVE_STATUS_COMMAND) 		&& FAST_CMD_ACT;
	assign 	FASTACT_CLEAR_SAVES			=	(FASTACT_Command == FASTACT_CLEAR_SAVES_COMMAND) 		&& FAST_CMD_ACT;
	assign 	FASTACT_RESET 					=	I2C_softReset ||	FASTACT_CLEAR_SAVES;
	assign 	FASTACT_COLDADC_RESET		=	(FASTACT_Command == FASTACT_COLDADC_RESET_COMMAND) 	&& FAST_CMD_ACT;
	assign 	FASTACT_LARASIC_RESET		=	(FASTACT_Command == FASTACT_LARASIC_RESET_COMMAND) 	&& FAST_CMD_ACT;
	assign 	FASTACT_LARASIC_SPIRST	=	(FASTACT_Command == FASTACT_LARASIC_SPIRST_COMMAND) && FAST_CMD_ACT;
	assign 	FASTACT_LARASIC_PROG		=	(FASTACT_Command == FASTACT_LARASIC_PROG_COMMAND) 	&& FAST_CMD_ACT;

	//*** The actual slow control command that gets executed by the FAST_CMD_ACT command
	reg8bit_0000_0000	FASTACT_Command_Reg_0	(	.Data(							FASTACT_Command					),
																						.dataOutBus(				I2C_Data_Read_Bus		),
																						.dataInBus(					I2C_Data_Write_Bus	),
																						.pageAddr(					I2C_Page_Addr_Bus		),
																						.requiredChipAddr1(	COLDATA0						),
																						.requiredChipAddr2(	COLDATA1						),
																						.requiredPageAddr(	MAINPAGE						),
																						.regAddr(						I2C_Reg_Addr_Bus		),
																						.requiredRegAddr(		ACTCOMMANDREG				),
																						.writeReq(					I2C_writeReq				),
																						.softReset(					I2C_softReset				)
																					);

	//*** The "read only" (from the I2C perspective) register that will hold the value
	//***		of the timeStamp to be read out.  timeStamp is captured upon a FAST_CMD_ACT
	//***		command with the FASTACT_Command set to FASTACT_SAVE_TIMESTAMP_COMMAND.  This register
	//***		is cleared upon an I2C_softReset or upon a FAST_CMD_ACT command with the FASTACT_Command
	//***		set to FASTACT_CLEAR_SAVES_COMMAND.
	regReadOnly_noClk	FASTACT_Command_Reg_1	(	.dataForReading(		timeStamp						),
																						.dataOutBus(				I2C_Data_Read_Bus		),
																						.dataInBus(					I2C_Data_Write_Bus	),
																						.pageAddr(					I2C_Page_Addr_Bus		),
																						.requiredChipAddr1(	COLDATA0						),
																						.requiredChipAddr2(	COLDATA1						),
																						.requiredPageAddr(	MAINPAGE						),
																						.regAddr(						I2C_Reg_Addr_Bus		),
																						.requiredRegAddr(		ACTTSTAMPREG				),
																						.softReset(					FASTACT_RESET						)
																						.captureNow(				FASTACT_SAVE_TIMESTAMP	),
																					);

	always @(posedge CLK_64MHZ_SYS_internal or posedge FASTACT_RESET)
		if( FASTACT_RESET == ONE )
			status_Heartbeat_perpetual	<= ONE;
		else
			status_Heartbeat_perpetual	<= status_Heartbeat_perpetual && status_Heartbeat;

	//*** The "read only" (from the I2C perspective) register that will hold the value
	//***		of the chosen status bits to be read out.  The status bits are captured upon a FAST_CMD_ACT
	//***		command with the FASTACT_Command set to FASTACT_SAVE_STATUS_COMMAND.  This register
	//***		is cleared upon an I2C_softReset or upon a FAST_CMD_ACT command with the FASTACT_Command
	//***		set to FASTACT_CLEAR_SAVES_COMMAND.
	regReadOnly_noClk	FASTACT_Command_Reg_2	(		.dataForReading(		{	CORE_Run,
																																Interface_LOCK,
																																LARASIC4_Calibrate_Done,
																																LARASIC3_Calibrate_Done,
																																LARASIC2_Calibrate_Done,
																																LARASIC1_Calibrate_Done,
																																status_Heartbeat_perpetual,
																																status_Heartbeat
																															}										),
																					.dataOutBus(				I2C_Data_Read_Bus		),
																					.dataInBus(					I2C_Data_Write_Bus	),
																					.pageAddr(					I2C_Page_Addr_Bus		),
																					.requiredChipAddr1(	COLDATA0						),
																					.requiredChipAddr2(	COLDATA1						),
																					.requiredPageAddr(	MAINPAGE						),
																					.regAddr(						I2C_Reg_Addr_Bus		),
																					.requiredRegAddr(		ACTSTATUSREG				),
																					.softReset(					FASTACT_RESET						)
																					.captureNow(				FASTACT_SAVE_STATUS			),
																			);

	regReadOnly_noClk	FASTACT_Command_Reg_2	(		.dataForReading(		{	LARASIC4_Comparison_Result,
																																		LARASIC4_Comparison_Done,
																																		LARASIC3_Comparison_Result,
																																		LARASIC3_Comparison_Done,
																																		LARASIC2_Comparison_Result,
																																		LARASIC2_Comparison_Done,
																																		LARASIC1_Comparison_Result,
																																		LARASIC1_Comparison_Done
																																	}										),
																					.dataOutBus(				I2C_Data_Read_Bus		),
																					.dataInBus(					I2C_Data_Write_Bus	),
																					.pageAddr(					I2C_Page_Addr_Bus		),
																					.requiredChipAddr1(	COLDATA0						),
																					.requiredChipAddr2(	COLDATA1						),
																					.requiredPageAddr(	MAINPAGE						),
																					.regAddr(						I2C_Reg_Addr_Bus		),
																					.requiredRegAddr(		ACTSTATUSREG2				),
																					.softReset(					FASTACT_RESET						)
																					.captureNow(				FASTACT_SAVE_STATUS			),
																			);


//*******************************************************************************************
//*******************************************************************************************
//***
//***	Data Acquisition
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	*** ADC Data Acquisition ***
//***
//***		4 coldADC Data Capture Blocks
//***		4 Data Frame Formation Blocks
//***		1 Switch Yard
//***		Supporting Data and Control Registers
//***
//*******************************************************************************************
//*******************************************************************************************

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC1
//***
//******************************************
	colData_dataCapture	ADC1_dCap1	(	.capturedADCdata(	capturedData_LARASIC1					),
																		.frameCount(			ADC1_frameCount								),
																		.Clk_2MHz_Ext(		ADC1_CLK_2MHZ_Ext							),
																		.frameStart(			ADC1_DIG_FRAME_internal				),	//To Pin: ADCX_DIG_FRAME
																		.dataOutClk(			ADC1_DIG_CLKOUT_internal			),	//To Pin: ADCX_DIG_OUTClk
																		.dataOutA(				ADC1_DIG_OUTA_internal				),	//To Pin: ADCX_DIG_OUTA
																		.dataOutB(				ADC1_DIG_OUTB_internal				),	//To Pin: ADCX_DIG_OUTB
																		.dataOutC(				ADC1_DIG_OUTC_internal				),	//To Pin: ADCX_DIG_OUTC
																		.dataOutD(				ADC1_DIG_OUTD_internal				),	//To Pin: ADCX_DIG_OUTD
																		.dataOutE(				ADC1_DIG_OUTE_internal				),	//To Pin: ADCX_DIG_OUTE
																		.dataOutF(				ADC1_DIG_OUTF_internal				),	//To Pin: ADCX_DIG_OUTF
																		.dataOutG(				ADC1_DIG_OUTG_internal				),	//To Pin: ADCX_DIG_OUTG
																		.dataOutH(				ADC1_DIG_OUTH_internal				),	//To Pin: ADCX_DIG_OUTH
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	)	//Rst SM: Active Low Rst
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC1
//***
//******************************************
	colData_frameForm	ADC1_fForm2	(	.frameData(				frameData_LARASIC1		),
																	.ADCdata(					capturedData_LARASIC1	),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC1_DIG_CLKOUT				),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC1_CLK_2MHZ_Ext			),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC1_frameCount				),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]		)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC2
//***
//******************************************
	colData_dataCapture	ADC2_dCap1	(	.capturedADCdata(	capturedData_LARASIC2					),
																		.frameCount(			ADC2_frameCount								),
																		.Clk_2MHz_Ext(		ADC2_CLK_2MHZ_Ext							),
																		.frameStart(			ADC2_DIG_FRAME_internal				),	//To Pin: ADCX_DIG_FRAME
																		.dataOutClk(			ADC2_DIG_CLKOUT_internal			),	//To Pin: ADCX_DIG_OUTClk
																		.dataOutA(				ADC2_DIG_OUTA_internal				),	//To Pin: ADCX_DIG_OUTA
																		.dataOutB(				ADC2_DIG_OUTB_internal				),	//To Pin: ADCX_DIG_OUTB
																		.dataOutC(				ADC2_DIG_OUTC_internal				),	//To Pin: ADCX_DIG_OUTC
																		.dataOutD(				ADC2_DIG_OUTD_internal				),	//To Pin: ADCX_DIG_OUTD
																		.dataOutE(				ADC2_DIG_OUTE_internal				),	//To Pin: ADCX_DIG_OUTE
																		.dataOutF(				ADC2_DIG_OUTF_internal				),	//To Pin: ADCX_DIG_OUTF
																		.dataOutG(				ADC2_DIG_OUTG_internal				),	//To Pin: ADCX_DIG_OUTG
																		.dataOutH(				ADC2_DIG_OUTH_internal				),	//To Pin: ADCX_DIG_OUTH
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	)	//Rst SM: Active Low Rst
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC2
//***
//******************************************
	colData_frameForm	ADC2_fForm2	(	.frameData(				frameData_LARASIC2		),
																	.ADCdata(					capturedData_LARASIC2	),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC2_DIG_CLKOUT				),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC2_CLK_2MHZ_Ext			),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC2_frameCount				),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]		)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC3
//***
//******************************************
	colData_dataCapture	ADC3_dCap1	(	.capturedADCdata(	capturedData_LARASIC3					),
																		.frameCount(			ADC3_frameCount								),
																		.Clk_2MHz_Ext(		ADC3_CLK_2MHZ_Ext							),
																		.frameStart(			ADC3_DIG_FRAME_internal				),	//To Pin: ADCX_DIG_FRAME
																		.dataOutClk(			ADC3_DIG_CLKOUT_internal			),	//To Pin: ADCX_DIG_OUTClk
																		.dataOutA(				ADC3_DIG_OUTA_internal				),	//To Pin: ADCX_DIG_OUTA
																		.dataOutB(				ADC3_DIG_OUTB_internal				),	//To Pin: ADCX_DIG_OUTB
																		.dataOutC(				ADC3_DIG_OUTC_internal				),	//To Pin: ADCX_DIG_OUTC
																		.dataOutD(				ADC3_DIG_OUTD_internal				),	//To Pin: ADCX_DIG_OUTD
																		.dataOutE(				ADC3_DIG_OUTE_internal				),	//To Pin: ADCX_DIG_OUTE
																		.dataOutF(				ADC3_DIG_OUTF_internal				),	//To Pin: ADCX_DIG_OUTF
																		.dataOutG(				ADC3_DIG_OUTG_internal				),	//To Pin: ADCX_DIG_OUTG
																		.dataOutH(				ADC3_DIG_OUTH_interna					),	//To Pin: ADCX_DIG_OUTH
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	)		//Rst SM: Active Low Rst
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC3
//***
//******************************************
	colData_frameForm	ADC3_fForm2	(	.frameData(				frameData_LARASIC3		),
																	.ADCdata(					capturedData_LARASIC3	),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC3_DIG_CLKOUT				),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC3_CLK_2MHZ_Ext			),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC3_frameCount				),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]		)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC4
//***
//******************************************
	colData_dataCapture	ADC4_dCap1	(	.capturedADCdata(	capturedData_LARASIC4					),
																		.frameCount(			ADC4_frameCount								),
																		.Clk_2MHz_Ext(		ADC4_CLK_2MHZ_Ext							),
																		.frameStart(			ADC4_DIG_FRAME_internal				),	//To Pin: ADCX_DIG_FRAME
																		.dataOutClk(			ADC4_DIG_CLKOUT_internal			),	//To Pin: ADCX_DIG_OUTClk
																		.dataOutA(				ADC4_DIG_OUTA_internal				),	//To Pin: ADCX_DIG_OUTA
																		.dataOutB(				ADC4_DIG_OUTB_internal				),	//To Pin: ADCX_DIG_OUTB
																		.dataOutC(				ADC4_DIG_OUTC_internal				),	//To Pin: ADCX_DIG_OUTC
																		.dataOutD(				ADC4_DIG_OUTD_internal				),	//To Pin: ADCX_DIG_OUTD
																		.dataOutE(				ADC4_DIG_OUTE_internal				),	//To Pin: ADCX_DIG_OUTE
																		.dataOutF(				ADC4_DIG_OUTF_internal				),	//To Pin: ADCX_DIG_OUTF
																		.dataOutG(				ADC4_DIG_OUTG_internal				),	//To Pin: ADCX_DIG_OUTG
																		.dataOutH(				ADC4_DIG_OUTH_internal				),	//To Pin: ADCX_DIG_OUTH
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	)		//Rst SM: Active Low Rst
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC4
//***
//******************************************
	colData_frameForm	ADC4_fForm2	(	.frameData(				frameData_LARASIC4		),
																	.ADCdata(					capturedData_LARASIC4	),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC4_DIG_CLKOUT				),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC4_CLK_2MHZ_Ext			),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC4_frameCount				),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]		)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_switchYard
//***	coldADC Complete 64-word Frame Formation for all ADCs
//***		plus clock domain crossing plus readout FIFO
//***
//******************************************
	colData_switchYard	swYard9		(	.outFIFO1(				outFIFO1								),
																	.outFIFO2(				outFIFO2								),
																	.Clk_2MHz_SYS(		CLK_2MHZ_SYS_generated	),
																	.Clk_128MHz_PLL(	Clk_128MHz_PLL					),
																	.ADC1_framedData(	frameData_LARASIC1			),
																	.ADC2_framedData(	frameData_LARASIC2			),
																	.ADC3_framedData(	frameData_LARASIC3			),
																	.ADC4_framedData(	frameData_LARASIC4			),
																	.frameConfigure(	ADC_Configure[1:0]			),	//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																	.timeStamp(				timeStamp								),
																	.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	)			//Active Low Reset
																);

	reg8bit_0000_0000	ADC_Configure_Reg_0	(	.Data(							ADC_Configure				),
																					.dataOutBus(				I2C_Data_Read_Bus		),
																					.dataInBus(					I2C_Data_Write_Bus	),
																					.pageAddr(					I2C_Page_Addr_Bus		),
																					.requiredChipAddr1(	COLDATA0						),
																					.requiredChipAddr2(	COLDATA1						),
																					.requiredPageAddr(	MAINPAGE						),
																					.regAddr(						I2C_Reg_Addr_Bus		),
																					.requiredRegAddr(		FRAMECONFIGREG			),
																					.writeReq(					I2C_writeReq				),
																					.softReset(					I2C_softReset				)
																				);
//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_8b10b
//***	8b10b encoding of the switchYard/FIFO data
//***
//******************************************
reg8bit_0000_0000	BYPASS_8b10b_Reg_0	(	.Data(							BYPASS_8b10b				),
																				.dataOutBus(				I2C_Data_Read_Bus		),
																				.dataInBus(					I2C_Data_Write_Bus	),
																				.pageAddr(					I2C_Page_Addr_Bus		),
																				.requiredChipAddr1(	COLDATA0						),
																				.requiredChipAddr2(	COLDATA1						),
																				.requiredPageAddr(	MAINPAGE						),
																				.regAddr(						I2C_Reg_Addr_Bus		),
																				.requiredRegAddr(		BYPASS8B10BREG			),
																				.writeReq(					I2C_writeReq				),
																				.softReset(					I2C_softReset				)
																			);

	colData_8b10b	encode10	(	.Encoded(		encodedData1									),
														.Raw(				outFIFO1[7:0]									),
														.K(					outFIFO1[8]										),
														.Clk128Mhz(	Clk_128MHz_PLL								),
														.Bypass(		BYPASS_8b10b[0]								),
														.Rst(				CORE_MASTER_RESET_ACTIVE_HIGH	)
													);

	colData_8b10b	encode11	(	.Encoded(		encodedData2									),
														.Raw(				outFIFO2[7:0]									),
														.K(					outFIFO2[8]										),
														.Clk128Mhz(	Clk_128MHz_PLL								),
														.Bypass(		BYPASS_8b10b[1]								),
														.Rst(				CORE_MASTER_RESET_ACTIVE_HIGH	)
													);

	always_ff @(posedge Clk_128MHz_PLL)
	begin
		capturedEncodedData1	<=	encodedData1;
		capturedEncodedData2	<=	encodedData2;
	end

	//******************************************
	//***
	//***	*** CIRCUIT BLOCK INSTANTIATION ***
	//***
	//***	coldData_SMU_PLL_SER_DRV
	//***		The SMU Trinity and its configuration blocks
	//***
	//******************************************
		wire 	logic [2:0]	CONFIG_PLL_ICP;
		wire 	logic [5:0]	CONFIG_PLL_BAND;
		wire 	logic [1:0]	CONFIG_PLL_LPFR;
		wire 	logic [1:0]	CONFIG_PLL_ATO;
		wire 	logic 			CONFIG_PLL_PDCP;
		wire 	logic 			CONFIG_PLL_OPEN;
		wire 	logic 			CONFIG_SER_MODE;
		wire 	logic 			CONFIG_SER_INV_SER_CLK;
		wire 	logic [2:0]	CONFIG_DRV_VMBOOST;
		wire 	logic [2:0]	CONFIG_DRV_VMDRIVER;
		wire 	logic [3:0]	CONFIG_DRV_SELPRE;
		wire 	logic [3:0]	CONFIG_DRV_SELPST1;
		wire 	logic [2:0]	CONFIG_DRV_SELPST2;
		wire 	logic [3:0]	CONFIG_DRV_SELCM_MAIN;
		wire 	logic 			CONFIG_DRV_ENABLE_CM;
		wire 	logic 			CONFIG_DRV_INVERSE_CLK;
		wire 	logic [1:0]	CONFIG_DRV_DELAYSEL;
		wire 	logic [3:0]	CONFIG_DRV_DELAY_CS;
		wire 	logic 			CONFIG_DRV_CML;
		wire 	logic 			Interface_LOCK;

		coldData_SMU_PLL_SER_DRV coldData_SMU_PLL_SER_DRV_0	(
																	.Serializer_INput_Data1(				encodedData1									),
																	.Serializer_INput_Data2(				encodedData2									),
																	.Clk_128MHz_PLL(								Clk_128MHz_PLL								),
																	.PLL_MASTER_RESET_from_CORE(		PLL_MASTER_RESET 							),
																	.CORE_MASTER_RESET_ACTIVE_LOW( 	CORE_MASTER_RESET_ACTIVE_LOW 	),
																	.Interface_LOCK( 								Interface_LOCK								),
																	.CONFIG_PLL_ICP(								CONFIG_PLL_ICP								),
																	.CONFIG_PLL_BAND(								CONFIG_PLL_BAND								),
																	.CONFIG_PLL_LPFR(								CONFIG_PLL_LPFR								),
																	.CONFIG_PLL_ATO(								CONFIG_PLL_ATO								),
																	.CONFIG_PLL_PDCP(								CONFIG_PLL_PDCP								),
																	.CONFIG_PLL_OPEN(								CONFIG_PLL_OPEN								),
																	.CONFIG_SER_MODE(								CONFIG_SER_MODE								),
																	.CONFIG_SER_INV_SER_CLK(				CONFIG_SER_INV_SER_CLK				),
																	.CONFIG_DRV_VMBOOST(						CONFIG_DRV_VMBOOST						),
																	.CONFIG_DRV_VMDRIVER(						CONFIG_DRV_VMDRIVER						),
																	.CONFIG_DRV_SELPRE(							CONFIG_DRV_SELPRE							),
																	.CONFIG_DRV_SELPST1(						CONFIG_DRV_SELPST1						),
																	.CONFIG_DRV_SELPST2(						CONFIG_DRV_SELPST2						),
																	.CONFIG_DRV_SELCM_MAIN(					CONFIG_DRV_SELCM_MAIN					),
																	.CONFIG_DRV_ENABLE_CM(					CONFIG_DRV_ENABLE_CM					),
																	.CONFIG_DRV_INVERSE_CLK(				CONFIG_DRV_INVERSE_CLK				),
																	.CONFIG_DRV_DELAYSEL(						CONFIG_DRV_DELAYSEL						),
																	.CONFIG_DRV_DELAY_CS(						CONFIG_DRV_DELAY_CS						),
																	.CONFIG_DRV_CML(								CONFIG_DRV_CML								),
																	.CONFIG_DRV_BIAS_CML_INTERNAL(	CONFIG_DRV_BIAS_CML_INTERNAL	),
																	.CONFIG_DRV_BIAS_CS_INTERNAL(		CONFIG_DRV_BIAS_CS_INTERNAL		),
																	.CKIN(													CKIN													),
																	.CKOUTN(												CKOUTN												),
																	.CKOUTP(												CKOUTP												),
																	.VCEXT(													VCEXT													),
																	.ATO(														ATO														),
																	.LOCK(													LOCK													),
																	.SMU_PLL_RESET(									SMU_PLL_RESET									),
																	.IBIAS_CML(											IBIAS_CML											),
																	.IBIAS_CS(											IBIAS_CS											),
																	.SEROUTN1(											SEROUTN1											),
																	.SEROUTP1(											SEROUTP1											),
																	.SEROUTN2(											SEROUTN2											),
																	.SEROUTP2(											SEROUTP2											)
																);

		assign 	CONFIG_PLL_ICP 								= REG_CONFIG_PLL_ICP[2:0];
		assign 	CONFIG_PLL_BAND 							=	REG_CONFIG_PLL_BAND[5:0];
		assign 	CONFIG_PLL_LPFR 							=	REG_CONFIG_PLL_LPFR[1:0];
		assign 	CONFIG_PLL_ATO 								=	REG_CONFIG_PLL_ATO[1:0];
		assign 	CONFIG_PLL_PDCP 							=	REG_CONFIG_PLL_PDCP[0];
		assign 	CONFIG_PLL_OPEN 							=	REG_CONFIG_PLL_OPEN[0];
		assign 	CONFIG_SER_MODE 							=	REG_CONFIG_SER_MODE[0];
		assign 	CONFIG_SER_INV_SER_CLK				=	REG_CONFIG_SER_INV_SER_CLK[0];
		assign 	CONFIG_DRV_VMBOOST 						=	REG_CONFIG_DRV_VMBOOST[2:0];
		assign 	CONFIG_DRV_VMDRIVER 					=	REG_CONFIG_DRV_VMDRIVER[2:0];
		assign 	CONFIG_DRV_SELPRE 						=	REG_CONFIG_DRV_SELPRE[3:0];
		assign 	CONFIG_DRV_SELPST1 						=	REG_CONFIG_DRV_SELPST1[3:0];
		assign 	CONFIG_DRV_SELPST2 						=	REG_CONFIG_DRV_SELPST2[2:0];
		assign 	CONFIG_DRV_SELCM_MAIN 				=	REG_CONFIG_DRV_SELCM_MAIN[3:0];
		assign 	CONFIG_DRV_ENABLE_CM 					=	REG_CONFIG_DRV_ENABLE_CM[0];
		assign 	CONFIG_DRV_INVERSE_CLK 				=	REG_CONFIG_DRV_INVERSE_CLK[0];
		assign 	CONFIG_DRV_DELAYSEL 					=	REG_CONFIG_DRV_DELAYSEL[2:0];
		assign 	CONFIG_DRV_DELAY_CS 					=	REG_CONFIG_DRV_DELAY_CS[3:0];
		assign 	CONFIG_DRV_CML 								=	REG_CONFIG_DRV_CML[0];
		assign 	CONFIG_DRV_BIAS_CML_INTERNAL	=	REG_CONFIG_DRV_BIAS_CML_INTERNAL[0];
		assign 	CONFIG_DRV_BIAS_CS_INTERNAL		=	REG_CONFIG_DRV_BIAS_CS_INTERNAL[0];

		reg8bit_0000_0000	SMU_Configure_Reg_1	(	.Data(							REG_CONFIG_PLL_ICP		),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_PLL_ICP		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_2	(	.Data(							REG_CONFIG_PLL_BAND	),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_PLL_ICP		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_3	(	.Data(							REG_CONFIG_PLL_LPFR		),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_PLL_LPFR		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_4	(	.Data(							REG_CONFIG_PLL_ATO		),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_PLL_ATO		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_5	(	.Data(							REG_CONFIG_PLL_PDCP		),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_PLL_PDCP		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_6	(	.Data(							REG_CONFIG_PLL_OPEN		),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_PLL_OPEN		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_7	(	.Data(							REG_CONFIG_SER_MODE		),
																						.dataOutBus(				I2C_Data_Read_Bus			),
																						.dataInBus(					I2C_Data_Write_Bus		),
																						.pageAddr(					I2C_Page_Addr_Bus			),
																						.requiredChipAddr1(	COLDATA0							),
																						.requiredChipAddr2(	COLDATA1							),
																						.requiredPageAddr(	SMUPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus			),
																						.requiredRegAddr(		SMU_CONFIG_SER_MODE		),
																						.writeReq(					I2C_writeReq					),
																						.softReset(					I2C_softReset					)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_8	(	.Data(							REG_CONFIG_SER_INV_SER_CLK	),
																						.dataOutBus(				I2C_Data_Read_Bus						),
																						.dataInBus(					I2C_Data_Write_Bus					),
																						.pageAddr(					I2C_Page_Addr_Bus						),
																						.requiredChipAddr1(	COLDATA0										),
																						.requiredChipAddr2(	COLDATA1										),
																						.requiredPageAddr(	SMUPAGE											),
																						.regAddr(						I2C_Reg_Addr_Bus						),
																						.requiredRegAddr(		SMU_CONFIG_SER_INV_SER_CLK	),
																						.writeReq(					I2C_writeReq								),
																						.softReset(					I2C_softReset								)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_9	(	.Data(							REG_CONFIG_DRV_VMBOOST	),
																						.dataOutBus(				I2C_Data_Read_Bus				),
																						.dataInBus(					I2C_Data_Write_Bus			),
																						.pageAddr(					I2C_Page_Addr_Bus				),
																						.requiredChipAddr1(	COLDATA0								),
																						.requiredChipAddr2(	COLDATA1								),
																						.requiredPageAddr(	SMUPAGE									),
																						.regAddr(						I2C_Reg_Addr_Bus				),
																						.requiredRegAddr(		SMU_CONFIG_DRV_VMBOOST	),
																						.writeReq(					I2C_writeReq						),
																						.softReset(					I2C_softReset						)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_10	(	.Data(						REG_CONFIG_DRV_VMDRIVER	),
																						.dataOutBus(				I2C_Data_Read_Bus				),
																						.dataInBus(					I2C_Data_Write_Bus			),
																						.pageAddr(					I2C_Page_Addr_Bus				),
																						.requiredChipAddr1(	COLDATA0								),
																						.requiredChipAddr2(	COLDATA1								),
																						.requiredPageAddr(	SMUPAGE									),
																						.regAddr(						I2C_Reg_Addr_Bus				),
																						.requiredRegAddr(		SMU_CONFIG_DRV_VMDRIVER	),
																						.writeReq(					I2C_writeReq						),
																						.softReset(					I2C_softReset						)
																					);

		reg8bit_0000_0000	SMU_Configure_Reg_11	(	.Data(							REG_CONFIG_DRV_SELPRE		),
																							.dataOutBus(				I2C_Data_Read_Bus				),
																							.dataInBus(					I2C_Data_Write_Bus			),
																							.pageAddr(					I2C_Page_Addr_Bus				),
																							.requiredChipAddr1(	COLDATA0								),
																							.requiredChipAddr2(	COLDATA1								),
																							.requiredPageAddr(	SMUPAGE									),
																							.regAddr(						I2C_Reg_Addr_Bus				),
																							.requiredRegAddr(		SMU_CONFIG_DRV_SELPRE	),
																							.writeReq(					I2C_writeReq						),
																							.softReset(					I2C_softReset						)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_12	(	.Data(							REG_CONFIG_DRV_SELPST1	),
																							.dataOutBus(				I2C_Data_Read_Bus				),
																							.dataInBus(					I2C_Data_Write_Bus			),
																							.pageAddr(					I2C_Page_Addr_Bus				),
																							.requiredChipAddr1(	COLDATA0								),
																							.requiredChipAddr2(	COLDATA1								),
																							.requiredPageAddr(	SMUPAGE									),
																							.regAddr(						I2C_Reg_Addr_Bus				),
																							.requiredRegAddr(		SMU_CONFIG_DRV_SELPST1	),
																							.writeReq(					I2C_writeReq						),
																							.softReset(					I2C_softReset						)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_13	(	.Data(							REG_CONFIG_DRV_SELPST2	),
																							.dataOutBus(				I2C_Data_Read_Bus				),
																							.dataInBus(					I2C_Data_Write_Bus			),
																							.pageAddr(					I2C_Page_Addr_Bus				),
																							.requiredChipAddr1(	COLDATA0								),
																							.requiredChipAddr2(	COLDATA1								),
																							.requiredPageAddr(	SMUPAGE									),
																							.regAddr(						I2C_Reg_Addr_Bus				),
																							.requiredRegAddr(		SMU_CONFIG_DRV_SELPST2	),
																							.writeReq(					I2C_writeReq						),
																							.softReset(					I2C_softReset						)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_14	(	.Data(							REG_CONFIG_DRV_SELCM_MAIN	),
																							.dataOutBus(				I2C_Data_Read_Bus					),
																							.dataInBus(					I2C_Data_Write_Bus				),
																							.pageAddr(					I2C_Page_Addr_Bus					),
																							.requiredChipAddr1(	COLDATA0									),
																							.requiredChipAddr2(	COLDATA1									),
																							.requiredPageAddr(	SMUPAGE										),
																							.regAddr(						I2C_Reg_Addr_Bus					),
																							.requiredRegAddr(		SMU_CONFIG_DRV_SELCM_MAIN	),
																							.writeReq(					I2C_writeReq							),
																							.softReset(					I2C_softReset							)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_15	(	.Data(							REG_CONFIG_DRV_ENABLE_CM	),
																							.dataOutBus(				I2C_Data_Read_Bus					),
																							.dataInBus(					I2C_Data_Write_Bus				),
																							.pageAddr(					I2C_Page_Addr_Bus					),
																							.requiredChipAddr1(	COLDATA0									),
																							.requiredChipAddr2(	COLDATA1									),
																							.requiredPageAddr(	SMUPAGE										),
																							.regAddr(						I2C_Reg_Addr_Bus					),
																							.requiredRegAddr(		SMU_CONFIG_DRV_ENABLE_CM	),
																							.writeReq(					I2C_writeReq							),
																							.softReset(					I2C_softReset							)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_16	(	.Data(							REG_CONFIG_DRV_INVERSE_CLK	),
																							.dataOutBus(				I2C_Data_Read_Bus						),
																							.dataInBus(					I2C_Data_Write_Bus					),
																							.pageAddr(					I2C_Page_Addr_Bus						),
																							.requiredChipAddr1(	COLDATA0										),
																							.requiredChipAddr2(	COLDATA1										),
																							.requiredPageAddr(	SMUPAGE											),
																							.regAddr(						I2C_Reg_Addr_Bus						),
																							.requiredRegAddr(		SMU_CONFIG_DRV_INVERSE_CLK	),
																							.writeReq(					I2C_writeReq								),
																							.softReset(					I2C_softReset								)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_17	(	.Data(							REG_CONFIG_DRV_DELAYSEL	),
																							.dataOutBus(				I2C_Data_Read_Bus				),
																							.dataInBus(					I2C_Data_Write_Bus			),
																							.pageAddr(					I2C_Page_Addr_Bus				),
																							.requiredChipAddr1(	COLDATA0								),
																							.requiredChipAddr2(	COLDATA1								),
																							.requiredPageAddr(	SMUPAGE									),
																							.regAddr(						I2C_Reg_Addr_Bus				),
																							.requiredRegAddr(		SMU_CONFIG_DRV_DELAYSEL	),
																							.writeReq(					I2C_writeReq						),
																							.softReset(					I2C_softReset						)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_18	(	.Data(							REG_CONFIG_DRV_DELAY_CS	),
																							.dataOutBus(				I2C_Data_Read_Bus				),
																							.dataInBus(					I2C_Data_Write_Bus			),
																							.pageAddr(					I2C_Page_Addr_Bus				),
																							.requiredChipAddr1(	COLDATA0								),
																							.requiredChipAddr2(	COLDATA1								),
																							.requiredPageAddr(	SMUPAGE									),
																							.regAddr(						I2C_Reg_Addr_Bus				),
																							.requiredRegAddr(		SMU_CONFIG_DRV_DELAY_CS	),
																							.writeReq(					I2C_writeReq						),
																							.softReset(					I2C_softReset						)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_19	(	.Data(							REG_CONFIG_DRV_CML	),
																							.dataOutBus(				I2C_Data_Read_Bus		),
																							.dataInBus(					I2C_Data_Write_Bus	),
																							.pageAddr(					I2C_Page_Addr_Bus		),
																							.requiredChipAddr1(	COLDATA0						),
																							.requiredChipAddr2(	COLDATA1						),
																							.requiredPageAddr(	SMUPAGE							),
																							.regAddr(						I2C_Reg_Addr_Bus		),
																							.requiredRegAddr(		SMU_CONFIG_DRV_CML	),
																							.writeReq(					I2C_writeReq				),
																							.softReset(					I2C_softReset				)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_20	(	.Data(							REG_CONFIG_DRV_BIAS_CML_INTERNAL	),
																							.dataOutBus(				I2C_Data_Read_Bus									),
																							.dataInBus(					I2C_Data_Write_Bus								),
																							.pageAddr(					I2C_Page_Addr_Bus									),
																							.requiredChipAddr1(	COLDATA0													),
																							.requiredChipAddr2(	COLDATA1													),
																							.requiredPageAddr(	SMUPAGE														),
																							.regAddr(						I2C_Reg_Addr_Bus									),
																							.requiredRegAddr(		SMU_CONFIG_DRV_BIAS_CML_INTERNAL	),
																							.writeReq(					I2C_writeReq											),
																							.softReset(					I2C_softReset											)
																						);

		reg8bit_0000_0000	SMU_Configure_Reg_21	(	.Data(							REG_CONFIG_DRV_BIAS_CS_INTERNAL		),
																							.dataOutBus(				I2C_Data_Read_Bus									),
																							.dataInBus(					I2C_Data_Write_Bus								),
																							.pageAddr(					I2C_Page_Addr_Bus									),
																							.requiredChipAddr1(	COLDATA0													),
																							.requiredChipAddr2(	COLDATA1													),
																							.requiredPageAddr(	SMUPAGE														),
																							.regAddr(						I2C_Reg_Addr_Bus									),
																							.requiredRegAddr(		SMU_CONFIG_DRV_BIAS_CS_INTERNAL		),
																							.writeReq(					I2C_writeReq											),
																							.softReset(					I2C_softReset											)
																						);

//*******************************************************************************************
//*******************************************************************************************
//***
//***	*** LARASIC SPI DOWNLOAD ***
//***
//***		24x4 reg8bit_0000_0000 I2C Register Blocks
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	LARASIC1
//***
//*******************************************************************************************
//*******************************************************************************************
	wire 	logic [7:0]	LARASIC_dataFeedCount;

	reg8bit_0010_0000	LARASIC_dataFeedCnt_Reg_1		(	.Data(							LARASIC_dataFeedCount		),
																									.dataOutBus(				I2C_Data_Read_Bus				),
																									.dataInBus(					I2C_Data_Write_Bus			),
																									.pageAddr(					I2C_Page_Addr_Bus				),
																									.requiredChipAddr1(	COLDATA0								),
																									.requiredChipAddr2(	COLDATA1								),
																									.requiredPageAddr(	MAINPAGE								),
																									.regAddr(						I2C_Reg_Addr_Bus				),
																									.requiredRegAddr(		REG_LARASIC_DATAFEEDCNT	),
																									.writeReq(					I2C_writeReq						),
																									.softReset(					I2C_softReset						)
																								);


//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC1 ***
//***		Includes all (24) I2C registers for FE Configuration
//***	and registers for forcing reset and programming for FE
//***
//******************************************

	reg8bit_0000_0000	LARASIC1_Configure_Reg_1	(	.Data(							Data_LARASIC1_Config_1),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_1							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_2	(	.Data(							Data_LARASIC1_Config_2),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_2							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_3	(	.Data(							Data_LARASIC1_Config_3),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_3							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_4	(	.Data(							Data_LARASIC1_Config_4),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_4							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_5	(	.Data(							Data_LARASIC1_Config_5),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_5							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_6	(	.Data(							Data_LARASIC1_Config_6),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_6							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_7	(	.Data(							Data_LARASIC1_Config_7),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_7							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_8	(	.Data(							Data_LARASIC1_Config_8),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_8							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_9	(	.Data(							Data_LARASIC1_Config_9),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_9							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_10	(	.Data(							Data_LARASIC1_Config_10	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_10						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_11	(	.Data(							Data_LARASIC1_Config_11	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_11						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_12	(	.Data(							Data_LARASIC1_Config_12	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_12						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_13	(	.Data(							Data_LARASIC1_Config_13	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_13						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_14	(	.Data(							Data_LARASIC1_Config_14	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_14						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_15	(	.Data(							Data_LARASIC1_Config_15	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_15						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_16	(	.Data(							Data_LARASIC1_Config_16	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_16						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_17	(	.Data(							Data_LARASIC1_Config_17	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_17						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC1_Configure_Reg_18	(	.Data(							Data_LARASIC1_Config_18	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_18						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC1 ***
//***		colData_feConfig
//***	and the register for configuring this block
//***
//******************************************
	//The actual circuitry for the front end configuration (scanning, test pattern, reset, etc)
	colData_feConfig	LARASIC1_feCtrl	(	.SCK(												LARASIC1_SCK_internal						),
																			.SDO(												LARASIC1_SDO_internal						),
																			.SDI(												LARASIC1_SDI_internal						),
																			.CS(												LARASIC1_CS_internal						),
																			.Clk_64MHz_Sys(							CLK_64MHZ_SYS_internal					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		fastAct_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC1_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC1_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC1_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC1_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC1_FE_Config1,
																																	LARASIC1_FE_Config2,
																																	LARASIC1_FE_Config3,
																																	LARASIC1_FE_Config4,
																																	LARASIC1_FE_Config5,
																																	LARASIC1_FE_Config6,
																																	LARASIC1_FE_Config7,
																																	LARASIC1_FE_Config8,
																																	LARASIC1_FE_Config9,
																																	LARASIC1_FE_Config10,
																																	LARASIC1_FE_Config11,
																																	LARASIC1_FE_Config12,
																																	LARASIC1_FE_Config13,
																																	LARASIC1_FE_Config14,
																																	LARASIC1_FE_Config15,
																																	LARASIC1_FE_Config16,
																																	LARASIC1_FE_Config17,
																																	LARASIC1_FE_Config18	}				),
																			.compDone(									LARASIC1_Comparison_Done			),
																			.compResult(								LARASIC1_Comparison_Result		),
																			.calibDone(									LARASIC1_Calibrate_Done				),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_0000_0000	LARASIC1_CalibConfig_1	(	.Data(							LARASIC1_samplePeriodsPerStrobe	),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		SAMPLES_PER_CALIB								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC1_CalibConfig_2	(	.Data(							LARASIC1_64MHzPeriodsAfterSample),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC1_CalibConfig_3	(	.Data(							LARASIC1_CalibrateStrobeWidth		),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC1_HardRstCnt_4		(	.Data(							LARASIC1_HardRstCount						),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		HARD_RESET_COUNT								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

//*******************************************************************************************
//*******************************************************************************************
//***
//***	End LARASIC1
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	LARASIC2
//***
//*******************************************************************************************
//*******************************************************************************************

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC2 ***
//***		Includes all (24) I2C registers for FE Configuration
//***	and registers for forcing reset and programming for FE
//***
//******************************************

	reg8bit_0000_0000	LARASIC2_Configure_Reg_1	(	.Data(							Data_LARASIC2_Config_1),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_1							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_2	(	.Data(							Data_LARASIC2_Config_2),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_2							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_3	(	.Data(							Data_LARASIC2_Config_3),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_3							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_4	(	.Data(							Data_LARASIC2_Config_4),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_4							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_5	(	.Data(							Data_LARASIC2_Config_5),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_5							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_6	(	.Data(							Data_LARASIC2_Config_6),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_6							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_7	(	.Data(							Data_LARASIC2_Config_7),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_7							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_8	(	.Data(							Data_LARASIC2_Config_8),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_8							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_9	(	.Data(							Data_LARASIC2_Config_9),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_9							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_10	(	.Data(							Data_LARASIC2_Config_10	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_10						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_11	(	.Data(							Data_LARASIC2_Config_11	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_11						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_12	(	.Data(							Data_LARASIC2_Config_12	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_12						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_13	(	.Data(							Data_LARASIC2_Config_13	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_13						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_14	(	.Data(							Data_LARASIC2_Config_14	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_14						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_15	(	.Data(							Data_LARASIC2_Config_15	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_15						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_16	(	.Data(							Data_LARASIC2_Config_16	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_16						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_17	(	.Data(							Data_LARASIC2_Config_17	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_17						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC2_Configure_Reg_18	(	.Data(							Data_LARASIC2_Config_18	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_18						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC2 ***
//***		colData_feConfig
//***	and the register for configuring this block
//***
//******************************************
	//The actual circuitry for the front end configuration (scanning, test pattern, reset, etc)
	colData_feConfig	LARASIC2_feCtrl	(	.SCK(												LARASIC2_SCK_internal						),
																			.SDO(												LARASIC2_SDO_internal						),
																			.SDI(												LARASIC2_SDI_internal						),
																			.CS(												LARASIC2_CS_internal						),
																			.Clk_64MHz_Sys(							CLK_64MHZ_SYS_internal					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		fastAct_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC2_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC2_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC2_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC2_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC2_FE_Config1,
																																	LARASIC2_FE_Config2,
																																	LARASIC2_FE_Config3,
																																	LARASIC2_FE_Config4,
																																	LARASIC2_FE_Config5,
																																	LARASIC2_FE_Config6,
																																	LARASIC2_FE_Config7,
																																	LARASIC2_FE_Config8,
																																	LARASIC2_FE_Config9,
																																	LARASIC2_FE_Config10,
																																	LARASIC2_FE_Config11,
																																	LARASIC2_FE_Config12,
																																	LARASIC2_FE_Config13,
																																	LARASIC2_FE_Config14,
																																	LARASIC2_FE_Config15,
																																	LARASIC2_FE_Config16,
																																	LARASIC2_FE_Config17,
																																	LARASIC2_FE_Config18	}				),
																			.compDone(									LARASIC2_Comparison_Done			),
																			.compResult(								LARASIC2_Comparison_Result		),
																			.calibDone(									LARASIC2_Calibrate_Done				),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_0000_0000	LARASIC2_CalibConfig_1	(	.Data(							LARASIC2_samplePeriodsPerStrobe	),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		SAMPLES_PER_CALIB								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC2_CalibConfig_2	(	.Data(							LARASIC2_64MHzPeriodsAfterSample),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC2_CalibConfig_3	(	.Data(							LARASIC2_CalibrateStrobeWidth		),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC2_HardRstCnt_4		(	.Data(							LARASIC2_HardRstCount						),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		HARD_RESET_COUNT								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

//*******************************************************************************************
//*******************************************************************************************
//***
//***	End LARASIC2
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	LARASIC3
//***
//*******************************************************************************************
//*******************************************************************************************

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC3 ***
//***		Includes all (24) I2C registers for FE Configuration
//***	and registers for forcing reset and programming for FE
//***
//******************************************

	reg8bit_0000_0000	LARASIC3_Configure_Reg_1	(	.Data(							Data_LARASIC3_Config_1),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_1							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_2	(	.Data(							Data_LARASIC3_Config_2),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_2							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_3	(	.Data(							Data_LARASIC3_Config_3),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_3							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_4	(	.Data(							Data_LARASIC3_Config_4),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_4							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_5	(	.Data(							Data_LARASIC3_Config_5),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_5							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_6	(	.Data(							Data_LARASIC3_Config_6),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_6							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_7	(	.Data(							Data_LARASIC3_Config_7),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_7							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_8	(	.Data(							Data_LARASIC3_Config_8),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_8							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_9	(	.Data(							Data_LARASIC3_Config_9),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_9							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_10	(	.Data(							Data_LARASIC3_Config_10	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_10						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_11	(	.Data(							Data_LARASIC3_Config_11	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_11						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_12	(	.Data(							Data_LARASIC3_Config_12	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_12						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_13	(	.Data(							Data_LARASIC3_Config_13	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_13						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_14	(	.Data(							Data_LARASIC3_Config_14	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_14						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_15	(	.Data(							Data_LARASIC3_Config_15	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_15						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_16	(	.Data(							Data_LARASIC3_Config_16	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_16						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_17	(	.Data(							Data_LARASIC3_Config_17	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_17						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC3_Configure_Reg_18	(	.Data(							Data_LARASIC3_Config_18	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_18						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC3 ***
//***		colData_feConfig
//***	and the register for configuring this block
//***
//******************************************
	//The actual circuitry for the front end configuration (scanning, test pattern, reset, etc)
	colData_feConfig	LARASIC3_feCtrl	(	.SCK(												LARASIC3_SCK_internal						),
																			.SDO(												LARASIC3_SDO_internal						),
																			.SDI(												LARASIC3_SDI_internal						),
																			.CS(												LARASIC3_CS_internal						),
																			.Clk_64MHz_Sys(							CLK_64MHZ_SYS_internal					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		fastAct_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC3_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC3_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC3_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC3_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC3_FE_Config1,
																																	LARASIC3_FE_Config2,
																																	LARASIC3_FE_Config3,
																																	LARASIC3_FE_Config4,
																																	LARASIC3_FE_Config5,
																																	LARASIC3_FE_Config6,
																																	LARASIC3_FE_Config7,
																																	LARASIC3_FE_Config8,
																																	LARASIC3_FE_Config9,
																																	LARASIC3_FE_Config10,
																																	LARASIC3_FE_Config11,
																																	LARASIC3_FE_Config12,
																																	LARASIC3_FE_Config13,
																																	LARASIC3_FE_Config14,
																																	LARASIC3_FE_Config15,
																																	LARASIC3_FE_Config16,
																																	LARASIC3_FE_Config17,
																																	LARASIC3_FE_Config18	}				),
																			.compDone(									LARASIC3_Comparison_Done			),
																			.compResult(								LARASIC3_Comparison_Result		),
																			.calibDone(									LARASIC3_Calibrate_Done				),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_0000_0000	LARASIC3_CalibConfig_1	(	.Data(							LARASIC3_samplePeriodsPerStrobe	),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		SAMPLES_PER_CALIB								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC3_CalibConfig_2	(	.Data(							LARASIC3_64MHzPeriodsAfterSample),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC3_CalibConfig_3	(	.Data(							LARASIC3_CalibrateStrobeWidth		),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC3_HardRstCnt_4		(	.Data(							LARASIC3_HardRstCount						),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		HARD_RESET_COUNT								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

//*******************************************************************************************
//*******************************************************************************************
//***
//***	End LARASIC3
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	LARASIC4
//***
//*******************************************************************************************
//*******************************************************************************************

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC4 ***
//***		Includes all (24) I2C registers for FE Configuration
//***	and registers for forcing reset and programming for FE
//***
//******************************************

	reg8bit_0000_0000	LARASIC4_Configure_Reg_1	(	.Data(							Data_LARASIC4_Config_1),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_1							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_2	(	.Data(							Data_LARASIC4_Config_2),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_2							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_3	(	.Data(							Data_LARASIC4_Config_3),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_3							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_4	(	.Data(							Data_LARASIC4_Config_4),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_4							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_5	(	.Data(							Data_LARASIC4_Config_5),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_5							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_6	(	.Data(							Data_LARASIC4_Config_6),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_6							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_7	(	.Data(							Data_LARASIC4_Config_7),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_7							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_8	(	.Data(							Data_LARASIC4_Config_8),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_8							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_9	(	.Data(							Data_LARASIC4_Config_9),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_9							),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_10	(	.Data(							Data_LARASIC4_Config_10	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_10						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_11	(	.Data(							Data_LARASIC4_Config_11	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_11						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_12	(	.Data(							Data_LARASIC4_Config_12	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_12						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_13	(	.Data(							Data_LARASIC4_Config_13	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_13						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_14	(	.Data(							Data_LARASIC4_Config_14	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_14						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_15	(	.Data(							Data_LARASIC4_Config_15	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_15						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_16	(	.Data(							Data_LARASIC4_Config_16	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_16						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_17	(	.Data(							Data_LARASIC4_Config_17	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_17						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

	reg8bit_0000_0000	LARASIC4_Configure_Reg_18	(	.Data(							Data_LARASIC4_Config_18	),
																								.dataOutBus(				I2C_Data_Read_Bus			),
																								.dataInBus(					I2C_Data_Write_Bus		),
																								.pageAddr(					I2C_Page_Addr_Bus			),
																								.requiredChipAddr1(	COLDATA0							),
																								.requiredChipAddr2(	COLDATA1							),
																								.requiredPageAddr(	ADC1PAGE							),
																								.regAddr(						I2C_Reg_Addr_Bus			),
																								.requiredRegAddr(		LARASIC_18						),
																								.writeReq(					I2C_writeReq					),
																								.softReset(					I2C_softReset					)
																							);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	Front End Configuration Logic for *** LARASIC4 ***
//***		colData_feConfig
//***	and the register for configuring this block
//***
//******************************************
	//The actual circuitry for the front end configuration (scanning, test pattern, reset, etc)
	colData_feConfig	LARASIC4_feCtrl	(	.SCK(												LARASIC4_SCK_internal						),
																			.SDO(												LARASIC4_SDO_internal						),
																			.SDI(												LARASIC4_SDI_internal						),
																			.CS(												LARASIC4_CS_internal						),
																			.Clk_64MHz_Sys(							CLK_64MHZ_SYS_internal					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		fastAct_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC4_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC4_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC4_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC4_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC4_FE_Config1,
																																	LARASIC4_FE_Config2,
																																	LARASIC4_FE_Config3,
																																	LARASIC4_FE_Config4,
																																	LARASIC4_FE_Config5,
																																	LARASIC4_FE_Config6,
																																	LARASIC4_FE_Config7,
																																	LARASIC4_FE_Config8,
																																	LARASIC4_FE_Config9,
																																	LARASIC4_FE_Config10,
																																	LARASIC4_FE_Config11,
																																	LARASIC4_FE_Config12,
																																	LARASIC4_FE_Config13,
																																	LARASIC4_FE_Config14,
																																	LARASIC4_FE_Config15,
																																	LARASIC4_FE_Config16,
																																	LARASIC4_FE_Config17,
																																	LARASIC4_FE_Config18	}				),
																			.compDone(									LARASIC4_Comparison_Done			),
																			.compResult(								LARASIC4_Comparison_Result		),
																			.calibDone(									LARASIC4_Calibrate_Done				),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_0000_0000	LARASIC4_CalibConfig_1	(	.Data(							LARASIC4_samplePeriodsPerStrobe	),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		SAMPLES_PER_CALIB								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC4_CalibConfig_2	(	.Data(							LARASIC4_64MHzPeriodsAfterSample),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC4_CalibConfig_3	(	.Data(							LARASIC4_CalibrateStrobeWidth		),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

	reg8bit_0000_0000	LARASIC4_HardRstCnt_4		(	.Data(							LARASIC4_HardRstCount						),
																							.dataOutBus(				I2C_Data_Read_Bus								),
																							.dataInBus(					I2C_Data_Write_Bus							),
																							.pageAddr(					I2C_Page_Addr_Bus								),
																							.requiredChipAddr1(	COLDATA0												),
																							.requiredChipAddr2(	COLDATA1												),
																							.requiredPageAddr(	ADC1PAGE												),
																							.regAddr(						I2C_Reg_Addr_Bus								),
																							.requiredRegAddr(		HARD_RESET_COUNT								),
																							.writeReq(					I2C_writeReq										),
																							.softReset(					I2C_softReset										)
																						);

//*******************************************************************************************
//*******************************************************************************************
//***
//***	End LARASIC4
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	I2C Interface
//***
//*******************************************************************************************
//*******************************************************************************************
wire	logic				valid_chipID;
wire	logic	[3:0]	rcvChipID;
wire 	logic 			I2C_COLDATA_SDA_C2W;
wire	logic	[6:0]	I2C_Page_Addr_Bus;
wire	logic	[7:0]	I2C_Reg_Addr_Bus;
wire	logic	[7:0]	I2C_Data_Write_Bus;
wire	logic	[7:0]	I2C_Data_Read_Bus;
wire 	logic 			I2C_writeOp;
wire 	logic 			I2C_readOp;
wire 	logic 			I2C_Ack1;
wire 	logic 			I2C_Ack2;
wire 	logic 			I2C_Ack3;
wire 	logic 			I2C_writeReq;
wire 	logic 			I2C_softReset;

	coldADC_I2C_relay	coldADC_I2C_relay0	( .I2C_S_LVDS_SCL(								I2C_LVDS_SCL_internal					),
																					.I2C_S_LVDS_SDA_W2C(						I2C_LVDS_SDA_W2C_internal			),
																					.I2C_S_LVDS_SDA_C2W(						I2C_LVDS_SDA_C2W_internal			),
																					.I2C_S_CMOS_SCL(								I2C_CMOS_SCL_internal					),
																					.I2C_S_CMOS_SDA_W2C(						I2C_CMOS_SDA_W2C_internal			),
																					.I2C_S_CMOS_SDA_C2W(						I2C_CMOS_SDA_C2W_internal			),
																					.OBEY_LVDS1_CMOS0(							I2C_LVDS1_CMOS0_MODE_final		),
																					.I2C_R_ADC_1_SDA_C2W(						I2C_ADC_1_SDA_C2W_internal		),
																					.I2C_R_ADC_2_SDA_C2W(						I2C_ADC_2_SDA_C2W_internal		),
																					.I2C_R_ADC_3_SDA_C2W(						I2C_ADC_3_SDA_C2W_internal		),
																					.I2C_R_ADC_4_SDA_C2W(						I2C_ADC_4_SDA_C2W_internal		),
																					.I2C_R_COLDATA_SCL(							I2C_COLDATA_SCL_internal			),
																					.I2C_R_COLDATA_SDA_W2C(					I2C_COLDATA_SDA_W2C_internal	),
																					.I2C_R_COLDATA_SDA_C2W(					I2C_COLDATA_SDA_C2W_internal	),
																					.I2C_R_OTHER_SDA_C2W(						I2C_OTHER_SDA_C2W_internal		),
																					.myChipID(											CHIP_ID_final									),
																					.valid_chipID(									valid_chipID									),
																					.rcvChipID(											rcvChipID											),
																					.CORE_MASTER_RESET_ACTIVE_LOW(	CORE_MASTER_RESET_ACTIVE_LOW	)
																				);

	colData_I2Cslave	colData_I2Cslave_0	(	.SDA_C2W(						I2C_COLDATA_SDA_C2W_internal	),
																					.SDA_W2C(						I2C_COLDATA_SDA_W2C_internal	),
																					.SCL(								I2C_COLDATA_SCL_internal			),
																					.pageAddr(					I2C_Page_Addr_Bus							),
																					.regAddr(						I2C_Reg_Addr_Bus							),
																					.Data_W2C(					I2C_Data_Write_Bus						),
																					.Data_C2W(					I2C_Data_Read_Bus							),
																					.capturedPageAddr(	rcvChipID											),
																					.validCapPageAddr(	valid_chipID									),
																					.writeOp(						I2C_writeOp 									),
																					.readOp(						I2C_readOp 										),
																					.Ack1(							I2C_Ack1 											),
																					.Ack2(							I2C_Ack2 											),
																					.Ack3(							I2C_Ack3 											),
																					.writeReq(					I2C_writeReq									),
																					.softReset(					I2C_softReset									),
																					.chipID(						CHIP_ID_final									),
																					.Clk64MHz(					CLK_64MHZ_SYS_internal				),
																					.Rst_ACTIVE_LOW(		CORE_MASTER_RESET_ACTIVE_LOW	)
																				);
endmodule
