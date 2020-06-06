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

module	COLDATAP2	(	//*** Total pads: 158 ( 10/22/2018 )
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
	input 	logic 					I2C_COLDATA_SDA_C2W,			//I2C Data Output being relayed from other colData
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
	output 	logic 					LARASIC_RESET	,
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
// Pads for the Frontend Mother Board (2 pads)
	output 	logic 					FMB_CONTROL_0,
	output 	logic 					FMB_CONTROL_1,
	//output 	logic 					FMB_CONTROL_2,
	// Pad-facing signals of the SMU Trinity (13 pads)
	input 	logic 					CKIN,
	output 	logic 					CKOUTN,
	output 	logic 					CKOUTP,
	inout 	logic 					VCEXT,
	inout 	logic 					ATO,
	output 	logic 					LOCK,
	input 	logic 					PLL_EXTERNAL_RESETN,
	inout 	logic 					IBIAS_CML,
	inout 	logic 					IBIAS_CS,
	output 	logic 					SEROUTN1,
	output 	logic 					SEROUTP1,
	output 	logic 					SEROUTN2,
	output 	logic 					SEROUTP2,
	//	EFUSE (6 pads)
	input 	logic 					EFUSE_CSB,
	input 	logic 					EFUSE_DIN,
	input 	logic 					EFUSE_PGM,
	input 	logic 					EFUSE_SCLK,
	output 	logic 					EFUSE_DOUT,
	input 	logic 					EFUSE_VDDQ,
	//Power-on Rst (1 pad)
	//input 	logic 					Rst_PowerOn,									//	REMOVED because we now have the POR Active Low Power-On Reset NOT FROM A PAD
	input 	logic 					PAD_RESET,											//	Active Low CMOS Reset from a PAD
	//Power
	inout		logic 					VDD_IO,
	inout 	logic 					VDD_CORE,
	inout 	logic 					VDD_LARASIC,
	inout 	logic 					VSS
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

	//***************************
	//***
	//***	ADC1/LARASIC1 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	LARASIC1_Config_1;
	wire	logic	[7:0]	LARASIC1_Config_2;
	wire	logic	[7:0]	LARASIC1_Config_3;
	wire	logic	[7:0]	LARASIC1_Config_4;
	wire	logic	[7:0]	LARASIC1_Config_5;
	wire	logic	[7:0]	LARASIC1_Config_6;
	wire	logic	[7:0]	LARASIC1_Config_7;
	wire	logic	[7:0]	LARASIC1_Config_8;
	wire	logic	[7:0]	LARASIC1_Config_9;
	wire	logic	[7:0]	LARASIC1_Config_10;
	wire	logic	[7:0]	LARASIC1_Config_11;
	wire	logic	[7:0]	LARASIC1_Config_12;
	wire	logic	[7:0]	LARASIC1_Config_13;
	wire	logic	[7:0]	LARASIC1_Config_14;
	wire	logic	[7:0]	LARASIC1_Config_15;
	wire	logic	[7:0]	LARASIC1_Config_16;
	wire	logic	[7:0]	LARASIC1_Config_17;
	wire	logic	[7:0]	LARASIC1_Config_18;

	wire	logic				LARASIC1_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC1_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC1_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC1_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC1_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC1_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedLARASIC1;
	wire	logic	[4:0]					ADC1_frameCount;
	wire	logic								ADC1_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameLARASIC1;

	//***************************
	//***
	//***	ADC2/LARASIC2 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	LARASIC2_Config_1;
	wire	logic	[7:0]	LARASIC2_Config_2;
	wire	logic	[7:0]	LARASIC2_Config_3;
	wire	logic	[7:0]	LARASIC2_Config_4;
	wire	logic	[7:0]	LARASIC2_Config_5;
	wire	logic	[7:0]	LARASIC2_Config_6;
	wire	logic	[7:0]	LARASIC2_Config_7;
	wire	logic	[7:0]	LARASIC2_Config_8;
	wire	logic	[7:0]	LARASIC2_Config_9;
	wire	logic	[7:0]	LARASIC2_Config_10;
	wire	logic	[7:0]	LARASIC2_Config_11;
	wire	logic	[7:0]	LARASIC2_Config_12;
	wire	logic	[7:0]	LARASIC2_Config_13;
	wire	logic	[7:0]	LARASIC2_Config_14;
	wire	logic	[7:0]	LARASIC2_Config_15;
	wire	logic	[7:0]	LARASIC2_Config_16;
	wire	logic	[7:0]	LARASIC2_Config_17;
	wire	logic	[7:0]	LARASIC2_Config_18;

	wire	logic				LARASIC2_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC2_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC2_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC2_chainLength;							//LARASIC dasiychain length
	wire	logic	[7:0]	LARASIC2_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC2_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC2_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedLARASIC2;
	wire	logic	[4:0]					ADC2_frameCount;
	wire	logic								DC2_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameLARASIC2;

	//***************************
	//***
	//***	ADC3/LARASIC3 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	LARASIC3_Config_1;
	wire	logic	[7:0]	LARASIC3_Config_2;
	wire	logic	[7:0]	LARASIC3_Config_3;
	wire	logic	[7:0]	LARASIC3_Config_4;
	wire	logic	[7:0]	LARASIC3_Config_5;
	wire	logic	[7:0]	LARASIC3_Config_6;
	wire	logic	[7:0]	LARASIC3_Config_7;
	wire	logic	[7:0]	LARASIC3_Config_8;
	wire	logic	[7:0]	LARASIC3_Config_9;
	wire	logic	[7:0]	LARASIC3_Config_10;
	wire	logic	[7:0]	LARASIC3_Config_11;
	wire	logic	[7:0]	LARASIC3_Config_12;
	wire	logic	[7:0]	LARASIC3_Config_13;
	wire	logic	[7:0]	LARASIC3_Config_14;
	wire	logic	[7:0]	LARASIC3_Config_15;
	wire	logic	[7:0]	LARASIC3_Config_16;
	wire	logic	[7:0]	LARASIC3_Config_17;
	wire	logic	[7:0]	LARASIC3_Config_18;

	wire	logic				LARASIC3_Config_ExecComplete;			//FE Execution Complete Return Line
	wire	logic				LARASIC3_Comparison_Done;					//Status of Double Scan and Comparison
	wire	logic				LARASIC3_Comparison_Result;				//Result of Double Scan and Comparison
	wire	logic	[7:0]	LARASIC3_chainLength;							//LARASIC dasiychain length
	wire	logic	[7:0]	LARASIC3_samplePeriodsPerStrobe;	//Calibrate Strobe - 2MHz Clock rising edges before Strobe
	wire	logic	[7:0]	LARASIC3_64MHzPeriodsAfterSample;	//Calibrate Strobe - 64MHz Periods after 2MHz rising edge before Strobe
	wire	logic	[7:0]	LARASIC3_CalibrateStrobeWidth;		//Calibrate Strobe - Width of Calibrate Strobe in 64MHz Periods

	wire	logic	[15:0][15:0]	capturedLARASIC3;
	wire	logic	[4:0]					ADC3_frameCount;
	wire	logic								ADC3_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameLARASIC3;

	//***************************
	//***
	//***	ADC4/LARASIC4 Connectivity
	//***
	//***************************
	wire	logic	[7:0]	LARASIC4_Config_1;
	wire	logic	[7:0]	LARASIC4_Config_2;
	wire	logic	[7:0]	LARASIC4_Config_3;
	wire	logic	[7:0]	LARASIC4_Config_4;
	wire	logic	[7:0]	LARASIC4_Config_5;
	wire	logic	[7:0]	LARASIC4_Config_6;
	wire	logic	[7:0]	LARASIC4_Config_7;
	wire	logic	[7:0]	LARASIC4_Config_8;
	wire	logic	[7:0]	LARASIC4_Config_9;
	wire	logic	[7:0]	LARASIC4_Config_10;
	wire	logic	[7:0]	LARASIC4_Config_11;
	wire	logic	[7:0]	LARASIC4_Config_12;
	wire	logic	[7:0]	LARASIC4_Config_13;
	wire	logic	[7:0]	LARASIC4_Config_14;
	wire	logic	[7:0]	LARASIC4_Config_15;
	wire	logic	[7:0]	LARASIC4_Config_16;
	wire	logic	[7:0]	LARASIC4_Config_17;
	wire	logic	[7:0]	LARASIC4_Config_18;

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

	wire	logic	[15:0][15:0]	capturedLARASIC4;
	wire	logic	[4:0]					ADC4_frameCount;
	wire	logic								ADC4_CLK_2MHZ_Ext;
	wire	logic	[30:0][7:0]		frameLARASIC4;

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
	wire 	logic [7:0]	REG_CONFIG_DRV_DELAY_CS;
	wire 	logic	[7:0]	REG_CONFIG_DRV_CML;
	wire 	logic [7:0]	REG_CONFIG_DRV_BIAS_CML_INTERNAL;
	wire 	logic [7:0]	REG_CONFIG_DRV_BIAS_CS_INTERNAL;

	//***************************
	//***
	//***	FastCommand Connectivity
	//***
	//***************************
	wire 	logic  			FAST_CMD_SYNC;
	wire 	logic  			FAST_CMD_2MHZ_EDGENOW;
	wire 	logic  			FAST_CMD_COLDATA_RST;
	wire 	logic  			FAST_CMD_ACT;

	//***************************
	//***
	//***	I2C IO Connectivity
	//***
	//***************************
	wire 	logic				I2C_LVDS_SCL_internal;
	wire 	logic				I2C_LVDS_SDA_W2C_internal;
	wire 	logic				I2C_LVDS_SDA_C2W_internal;
	wire 	logic				I2C_CMOS_SCL_internal;
	wire 	logic				I2C_CMOS_SDA_W2C_internal;
	wire 	logic				I2C_CMOS_SDA_C2W_internal;
	wire 	logic				I2C_LVDS1_CMOS0_MODE_internal;
	wire 	logic				I2C_COLDATA_SCL_internal;
	wire 	logic				I2C_COLDATA_SDA_W2C_internal;
	wire 	logic				I2C_THIS_COLDATA_SDA_C2W_internal;
	wire 	logic				I2C_OTHER_COLDATA_SDA_C2W_internal;
	wire 	logic				I2C_ADC_1_SDA_C2W_internal;
	wire 	logic				I2C_ADC_2_SDA_C2W_internal;
	wire 	logic				I2C_ADC_3_SDA_C2W_internal;
	wire 	logic				I2C_ADC_4_SDA_C2W_internal;
	wire 	logic 			CHIP_ID_internal;

	wire	logic				valid_chipID;
	wire	logic	[6:0]	capturedPageAddr;
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
	wire 	logic 			FAKE_I2C_SOFT_RESET;
	wire  logic 			REAL_I2C_SOFT_RESET;


//***************************
	//***
	//***	ADC1 IO Connectivity
	//***
	//***************************
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
	wire 	logic					ADC1_CLK_64MHZ_internal;

	//***************************
	//***
	//***	ADC2 IO Connectivity
	//***
	//***************************

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
	wire 	logic					ADC2_CLK_64MHZ_internal;

	//***************************
	//***
	//***	ADC3 IO Connectivity
	//***
	//***************************

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
	wire 	logic					ADC3_CLK_64MHZ_internal;

	//***************************
	//***
	//***	ADC4 IO Connectivity
	//***
	//***************************

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
	wire 	logic					ADC4_CLK_64MHZ_internal;

	//***************************
	//***
	//***	Clock and Fast Command IO Connectivity
	//***
	//***************************

	wire 	logic		CLK_64MHZ_SYS_internal;
	wire 	logic		FASTCOMMAND_IN_internal;
	wire 	logic		PAD_RESET_internal;

	//***************************
	//***
	//***	LARASIC1 IO Connectivity
	//***
	//***************************

	wire 	logic		LARASIC1_SCK_internal;
	wire 	logic		LARASIC1_SDO_internal;
	wire 	logic		LARASIC1_CS_internal;
	wire 	logic		LARASIC1_SDI_internal;

	//***************************
	//***
	//***	LARASIC2 IO Connectivity
	//***
	//***************************

	wire 	logic		LARASIC2_SCK_internal;
	wire 	logic		LARASIC2_SDO_internal;
	wire 	logic		LARASIC2_CS_internal;
	wire 	logic		LARASIC2_SDI_internal;

	//***************************
	//***
	//***	LARASIC3 IO Connectivity
	//***
	//***************************

	wire 	logic		LARASIC3_SCK_internal;
	wire 	logic		LARASIC3_SDO_internal;
	wire 	logic		LARASIC3_CS_internal;
	wire 	logic		LARASIC3_SDI_internal;

	//***************************
	//***
	//***	LARASIC4 IO Connectivity
	//***
	//***************************

	wire 	logic		LARASIC4_SCK_internal;
	wire 	logic		LARASIC4_SDO_internal;
	wire 	logic		LARASIC4_CS_internal;
	wire 	logic		LARASIC4_SDI_internal;

	//***************************
	//***
	//***	Reset IO Connectivity
	//***
	//***************************

	wire 	logic		ADC_MASTER_RESET_internal;
	wire 	logic		LARASIC_MASTER_RESET_internal;

	//***************************
	//***
	//***	Fuse Connectivity
	//***
	//***************************

	wire 					[26:0]	chipNumber;
	wire 					[3:0]	CHIP_ID_fuse;
	wire 								FUSE_Capture;

				logic					I2C_LVDS1_CMOS0_MODE_final;
				logic 	[3:0]	CHIP_ID_final;

	//***************************
	//***
	//***	Misc Connectivity
	//***
	//***************************

	wire 	logic 	[2:0]	CONFIG_PLL_ICP;
	wire 	logic 	[5:0]	CONFIG_PLL_BAND;
	wire 	logic 	[1:0]	CONFIG_PLL_LPFR;
	wire 	logic 	[1:0]	CONFIG_PLL_ATO;
	wire 	logic 				CONFIG_PLL_PDCP;
	wire 	logic 				CONFIG_PLL_OPEN;
	wire 	logic 				CONFIG_SER_MODE;
	wire 	logic 				CONFIG_SER_INV_SER_CLK;
	wire 	logic 	[2:0]	CONFIG_DRV_VMBOOST;
	wire 	logic 	[2:0]	CONFIG_DRV_VMDRIVER;
	wire 	logic 	[3:0]	CONFIG_DRV_SELPRE;
	wire 	logic 	[3:0]	CONFIG_DRV_SELPST1;
	wire 	logic 	[2:0]	CONFIG_DRV_SELPST2;
	wire 	logic 	[3:0]	CONFIG_DRV_SELCM_MAIN;
	wire 	logic 				CONFIG_DRV_ENABLE_CM;
	wire 	logic 				CONFIG_DRV_INVERSE_CLK;
	wire 	logic 	[2:0]	CONFIG_DRV_DELAYSEL;
	wire 	logic 	[3:0]	CONFIG_DRV_DELAY_CS;
	wire 	logic 				CONFIG_DRV_CML;
	wire 	logic 				Interface_LOCK;
	wire 	logic 	[7:0]	ADC_Clock_Control_Bus;
	wire 	logic 	[7:0]	LVDS_CURRENT_SET;
	wire 	logic 	[7:0]	LVDS_CURRENT_SETB;
	wire 	logic 	[7:0]	FMB_CONTROL_WORD;
	wire 	logic 	[7:0]	LARASIC_RST_COUNT;
	wire 	logic 	[7:0]	ADC_RST_COUNT;
	wire	logic					PLL_MASTER_RESET;
	wire	logic					DLL_MASTER_RESET;
	wire	logic					CORE_MASTER_RESET;
	wire	logic					CORE_MASTER_RESET_ACTIVE_HIGH;
	wire	logic					CORE_MASTER_RESET_ACTIVE_LOW;
	wire 	logic					Async_Rst_Active_Low;
	wire 	logic					CLK_2MHZ_SYS_generated;
	wire 	logic		[7:0]	timeStamp;
	wire 	logic 	[7:0]	FASTACT_Command;
	wire 	logic 				FASTACT_RESET;
	wire 	logic  				FASTACT_LARASIC_CAL;
	wire 	logic  				FASTACT_SAVE_TIMESTAMP;
	wire 	logic  				FASTACT_SAVE_STATUS;
	wire 	logic 				FASTACT_CLEAR_SAVES;
	wire 	logic 				FASTACT_COLDADC_RESET;
	wire 	logic 				FASTACT_LARASIC_RESET;
	wire 	logic 				FASTACT_LARASIC_SPIRST;
	wire 	logic 				FASTACT_LARASIC_PROG;
	wire 	logic 	[7:0]	LARASIC_dataFeedCount;
	wire 	logic 	[7:0] BYPASS_8b10b;
	wire 	logic 	[7:0]	LARASIC1_HardRstCount;
	wire 	logic 	[7:0]	LARASIC2_HardRstCount;
	wire 	logic 	[7:0]	LARASIC3_HardRstCount;
	wire 	logic 	[7:0]	LARASIC4_HardRstCount;


	//***************************
	//***
	//***	Variables
	//***
	//***************************

				logic 					status_Heartbeat_perpetual;
				logic 	[7:0]		FIFO1_D;
				logic 					FIFO1_K;
				logic 	[7:0]		FIFO2_D;
				logic 					FIFO2_K;
				logic		[9:0]		PRBS7_Data;
				logic		[9:0]		PRBS15_Data;
				logic		[9:0]		almostReadyForSMU1;
				logic		[9:0]		almostReadyForSMU2;
				logic		[9:0]		possiblyFlippedForSMU1;
				logic		[9:0]		possiblyFlippedForSMU2;
				logic		[9:0]		readyForSMU1;
				logic		[9:0]		readyForSMU2;

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
	//***	*** Power Supply Pad Modules ***
	//***
	//*******************************************************************************************
		VSSCells	VSSCells_0	( .VDD_LARASIC(	VDD_LARASIC	),
														.VDD_IO(			VDD_IO			),
														.VDD_CORE(		VDD_CORE		)
													);
		VDDCells	VDDCells_0	( .VDD_LARASIC(	VDD_LARASIC	),
														.VDD_IO(			VDD_IO			),
														.VDD_CORE(		VDD_CORE		)
													);

		LVDS_bias3 		LVDSBIAS3INST();
		LVDS_biasCM 	LVDSBIASCM();

	//*******************************************************************************************
	//***
	//***	*** IO Modules ***
	//***
	//*******************************************************************************************

	//*******************************************************************************************
	//***
	//***	*** I2C IO ***
	//***
	//*******************************************************************************************

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
																		.I2C_COLDATA_SDA_C2W(						I2C_COLDATA_SDA_C2W						),
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
																		.I2C_COLDATA_SDA_C2W_internal(	I2C_OTHER_COLDATA_SDA_C2W_internal	),
																		.I2C_ADC_1_SDA_C2W_internal(		I2C_ADC_1_SDA_C2W_internal		),
																		.I2C_ADC_2_SDA_C2W_internal(		I2C_ADC_2_SDA_C2W_internal		),
																		.I2C_ADC_3_SDA_C2W_internal(		I2C_ADC_3_SDA_C2W_internal		),
																		.I2C_ADC_4_SDA_C2W_internal(		I2C_ADC_4_SDA_C2W_internal		),
																		.CHIP_ID_internal(							CHIP_ID_internal							),
																		.LVDS_bias(											LVDS_CURRENT_SET[2:0]					),
																		.LVDS_biasB(										LVDS_CURRENT_SETB[2:0]				),
																		.VDD_IO(												VDD_IO												)
																	);

//*******************************************************************************************
//***
//***	*** ADC1 IO ***
//***
//*******************************************************************************************

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
																		.LVDS_bias(									LVDS_CURRENT_SET[2:0]				),
																		.LVDS_biasB(								LVDS_CURRENT_SETB[2:0]			),
																		.VDD_IO(												VDD_IO									)
																	);

	//*******************************************************************************************
	//***
	//***	*** ADC2 IO ***
	//***
	//*******************************************************************************************

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
																		.LVDS_bias(									LVDS_CURRENT_SET[2:0]				),
																		.LVDS_biasB(								LVDS_CURRENT_SETB[2:0]			),
																		.VDD_IO(												VDD_IO									)
																	);

	//*******************************************************************************************
	//***
	//***	*** ADC3 IO ***
	//***
	//*******************************************************************************************

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
																		.LVDS_bias(									LVDS_CURRENT_SET[2:0]				),
																		.LVDS_biasB(								LVDS_CURRENT_SETB[2:0]			),
																		.VDD_IO(												VDD_IO									)
																	);

	//*******************************************************************************************
	//***
	//***	*** ADC4 IO ***
	//***
	//*******************************************************************************************

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
																		.LVDS_bias(									LVDS_CURRENT_SET[2:0]				),
																		.LVDS_biasB(								LVDS_CURRENT_SETB[2:0]			),
																		.VDD_IO(												VDD_IO									)
																	);

	//*******************************************************************************************
	//***
	//***	*** System IO***
	//***
	//*******************************************************************************************

colData_IO_Sys	colData_IO_Sys_0	(
																		.CLK_64MHZ_SYS_P(					CLK_64MHZ_SYS_P					),
																		.CLK_64MHZ_SYS_N(					CLK_64MHZ_SYS_N					),
																		.FASTCOMMAND_IN_P(				FASTCOMMAND_IN_P				),
																		.FASTCOMMAND_IN_N(				FASTCOMMAND_IN_N				),
																		.PAD_RESET(								PAD_RESET								),
																		.CLK_64MHZ_SYS_internal(	CLK_64MHZ_SYS_internal	),
																		.FASTCOMMAND_IN_internal(	FASTCOMMAND_IN_internal	),
																		.PAD_RESET_internal(			PAD_RESET_internal			),
																		.VDD_IO(												VDD_IO						)
																	);

	//*******************************************************************************************
	//***
	//***	*** LARASIC1 IO ***
	//***
	//*******************************************************************************************

	colData_IO_LARASIC	colData_IO_LARASIC1_0	(
																						 .LARASIC_SCK(										LARASIC1_SCK									),
																						 .LARASIC_SDO(										LARASIC1_SDO									),
																						 .LARASIC_CS(											LARASIC1_CS										),
																						 .LARASIC_SDI(										LARASIC1_SDI									),
																						 .LARASIC_SCK_internal(						LARASIC1_SCK_internal					),
																						 .LARASIC_SDO_internal(						LARASIC1_SDO_internal					),
																						 .LARASIC_CS_internal(						LARASIC1_CS_internal					),
																						 .LARASIC_SDI_internal(						LARASIC1_SDI_internal					),
																						 .VDD_LARASIC(										VDD_LARASIC										)
																						);

	//*******************************************************************************************
	//***
	//***	*** LARASIC2 IO ***
	//***
	//*******************************************************************************************

	colData_IO_LARASIC	colData_IO_LARASIC2_0	(
																						 .LARASIC_SCK(										LARASIC2_SCK									),
																						 .LARASIC_SDO(										LARASIC2_SDO									),
																						 .LARASIC_CS(											LARASIC2_CS										),
																						 .LARASIC_SDI(										LARASIC2_SDI									),
																						 .LARASIC_SCK_internal(						LARASIC2_SCK_internal					),
																						 .LARASIC_SDO_internal(						LARASIC2_SDO_internal					),
																						 .LARASIC_CS_internal(						LARASIC2_CS_internal					),
																						 .LARASIC_SDI_internal(						LARASIC2_SDI_internal					),
																						 .VDD_LARASIC(										VDD_LARASIC										)
																						);

	//*******************************************************************************************
	//***
	//***	*** LARASIC3 IO ***
	//***
	//*******************************************************************************************

	colData_IO_LARASIC	colData_IO_LARASIC3_0	(
																						 .LARASIC_SCK(										LARASIC3_SCK									),
																						 .LARASIC_SDO(										LARASIC3_SDO									),
																						 .LARASIC_CS(											LARASIC3_CS										),
																						 .LARASIC_SDI(										LARASIC3_SDI									),
																						 .LARASIC_SCK_internal(						LARASIC3_SCK_internal					),
																						 .LARASIC_SDO_internal(						LARASIC3_SDO_internal					),
																						 .LARASIC_CS_internal(						LARASIC3_CS_internal					),
																						 .LARASIC_SDI_internal(						LARASIC3_SDI_internal					),
																						 .VDD_LARASIC(										VDD_LARASIC										)
																						);

	//*******************************************************************************************
	//***
	//***	*** LARASIC4 IO ***
	//***
	//*******************************************************************************************

	colData_IO_LARASIC	colData_IO_LARASIC4_0	(
																						 .LARASIC_SCK(										LARASIC4_SCK									),
																						 .LARASIC_SDO(										LARASIC4_SDO									),
																						 .LARASIC_CS(											LARASIC4_CS										),
																						 .LARASIC_SDI(										LARASIC4_SDI									),
																						 .LARASIC_SCK_internal(						LARASIC4_SCK_internal					),
																						 .LARASIC_SDO_internal(						LARASIC4_SDO_internal					),
																						 .LARASIC_CS_internal(						LARASIC4_CS_internal					),
																						 .LARASIC_SDI_internal(						LARASIC4_SDI_internal					),
																						 .VDD_LARASIC(										VDD_LARASIC										)
																						);

	//*******************************************************************************************
	//***
	//***	*** Front End Reset IO ***
	//***
	//*******************************************************************************************

	colData_IO_Misc	colData_IO_Misc_0	(  	.ADC_MASTER_RESET(							ADC_MASTER_RESET							),
	                            					.LARASIC_MASTER_RESET(					LARASIC_RESET									),
	                            					.ADC_MASTER_RESET_internal(			ADC_MASTER_RESET_internal			),
	                            					.LARASIC_MASTER_RESET_internal(	LARASIC_MASTER_RESET_internal	),
				                      					.EFUSE_CSB(											EFUSE_CSB											),
				                      					.EFUSE_CSB_internal(						EFUSE_CSB_internal						),
				                      					.EFUSE_DIN(											EFUSE_DIN											),
				                      					.EFUSE_DIN_internal(						EFUSE_DIN_internal						),
				                      					.EFUSE_PGM(											EFUSE_PGM											),
				                      					.EFUSE_PGM_internal(						EFUSE_PGM_internal						),
				                      					.EFUSE_SCLK(										EFUSE_SCLK										),
				                      					.EFUSE_SCLK_internal(						EFUSE_SCLK_internal						),
				                      					.EFUSE_DOUT(										EFUSE_DOUT										),
				                      					.EFUSE_DOUT_internal(						EFUSE_DOUT_internal						),
																				.FMB_CONTROL_0(									FMB_CONTROL_0									),
																				.FMB_CONTROL_0_internal(				FMB_CONTROL_0_internal				),
																				.FMB_CONTROL_1(									FMB_CONTROL_1									),
																				.FMB_CONTROL_1_internal(				FMB_CONTROL_1_internal				),
																				.VDD_IO(												VDD_IO												),
																				.VDD_LARASIC(										VDD_LARASIC										)

	                          				);

	//*******************************************************************************************
	//***
	//***	*** FUSE ***
	//***
	//*******************************************************************************************

	//*** This is the model of the 32-bit eFuse module we received from CERN/IMEC/TSMC
	    EFUSE_TS efuses_x32 (	.CSB(		EFUSE_CSB_internal	),
													        .PGM(		EFUSE_PGM_internal	),
													        .SCLK(	EFUSE_SCLK_internal	),
													        .DIN(		EFUSE_DIN_internal	),
													        .VDDQ(	EFUSE_VDDQ					),
													        .DOUT(	EFUSE_DOUT_internal	),
													        .Q0(		FUSE_Programmed			),
													        .Q1(		CHIP_ID_fuse[0]			),
													        .Q2(		CHIP_ID_fuse[1]			),
													        .Q3(		CHIP_ID_fuse[2]			),
													        .Q4(		CHIP_ID_fuse[3]			),
													        .Q5(		chipNumber[0]				),
													        .Q6(		chipNumber[1]				),
													        .Q7(		chipNumber[2]				),
													        .Q8(		chipNumber[3]				),
													        .Q9(		chipNumber[4]				),
													        .Q10(		chipNumber[5]				),
													        .Q11(		chipNumber[6]				),
													        .Q12(		chipNumber[7]				),
													        .Q13(		chipNumber[8]				),
													        .Q14(		chipNumber[9]				),
													        .Q15(		chipNumber[10]			),
													        .Q16(		chipNumber[11]			),
													        .Q17(		chipNumber[12]			),
													        .Q18(		chipNumber[13]			),
													        .Q19(		chipNumber[14]			),
													        .Q20(		chipNumber[15]			),
													        .Q21(		chipNumber[16]			),
													        .Q22(		chipNumber[17]			),
													        .Q23(		chipNumber[18]			),
													        .Q24(		chipNumber[19]			),
													        .Q25(		chipNumber[20]			),
													        .Q26(		chipNumber[21]			),
													        .Q27(		chipNumber[22]			),
													        .Q28(		chipNumber[23]			),
													        .Q29(		chipNumber[24]			),
													        .Q30(		chipNumber[25]			),
													        .Q31(		chipNumber[26]			)
	    													);

	//*** The LSB of the fuse block is called FUSE_Programmed.  If the fuses have
	//***		been programmed, the FUSE_Programmed must be a ONE .  If they have not
	//***		been programmed, the FUSE_Programmed will be a zero.
	//***	If FUSE_Programmed is a ONE, then we use the fuse-programmed chipID.
	//***		Otherwise we get it from the Pads.
	//***
	//*** Removed by Jim and Sandeep over concerns about EFUSE functionality
//always_comb
//		if( FUSE_Programmed == ONE)
//			CHIP_ID_final	=	{3'b001,CHIP_ID_fuse[0]};		//I2C ChipID.  Must be 4'b0010 (COLDATA0 (bottom)) or 4'b0011 (COLDATA1 (top))
//		else
//			CHIP_ID_final	=	{3'b001,CHIP_ID_internal};	//I2C ChipID.  Must be 4'b0010 (COLDATA0 (bottom)) or 4'b0011 (COLDATA1 (top))

		always_comb
				CHIP_ID_final	=	{3'b001,CHIP_ID_internal};

	//***	If FUSE_Programmed is a ONE and we are COLDATA1, then we are the top chip
	//***		and we answer to the I2C_LVDS signals.  If FUSE_Programmed is a ONE
	//***		and we are COLDATA0, then we are the bottom chip and we answer to the
	//***		I2C_CMOS signals. Otherwise we get our direction from I2C_LVDS1_CMOS0_MODE.
	//***
	//*** Removed by Jim and Sandeep over concerns about EFUSE functionality
//	always_comb
//		if(( FUSE_Programmed == ONE) && (CHIP_ID_final == COLDATA1))
//			I2C_LVDS1_CMOS0_MODE_final	=	ONE;
//		else if (( FUSE_Programmed == ONE) && (CHIP_ID_final == COLDATA0))
//			I2C_LVDS1_CMOS0_MODE_final	=	ZERO;
//		else
//			I2C_LVDS1_CMOS0_MODE_final	=	I2C_LVDS1_CMOS0_MODE_internal;

		always_comb
				I2C_LVDS1_CMOS0_MODE_final	=	I2C_LVDS1_CMOS0_MODE_internal;

	//***	We have to be able to read out the programmed eFuses through the I2C
	regForceAction	FUSEWRITEreg_0	(	.dataOutBus(				I2C_Data_Read_Bus		),
																		.pageAddr(					I2C_Page_Addr_Bus		),
																		.requiredChipAddr1(	COLDATA0						),
																		.requiredChipAddr2(	COLDATA1						),
																		.requiredPageAddr(	MAINPAGE						),
																		.regAddr(						I2C_Reg_Addr_Bus		),
																		.requiredRegAddr(		FUSE_REG_WRITE			),
																		.writeReq(					I2C_writeReq				),
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
																.softReset(					I2C_softReset				),
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
																.softReset(					I2C_softReset				),
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
																.softReset(					I2C_softReset				),
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
																.softReset(					I2C_softReset				),
																.captureNow(				FUSE_Capture				)
															);

	//*******************************************************************************************
	//***
	//***	*** LVDS Current Magnitude ***
	//***
	//*******************************************************************************************

	assign LVDS_CURRENT_SETB[0] = !LVDS_CURRENT_SET[0];
	assign LVDS_CURRENT_SETB[1] = !LVDS_CURRENT_SET[1];
	assign LVDS_CURRENT_SETB[2] = !LVDS_CURRENT_SET[2];
	assign LVDS_CURRENT_SETB[3] = !LVDS_CURRENT_SET[3];
	assign LVDS_CURRENT_SETB[4] = !LVDS_CURRENT_SET[4];
	assign LVDS_CURRENT_SETB[5] = !LVDS_CURRENT_SET[5];
	assign LVDS_CURRENT_SETB[6] = !LVDS_CURRENT_SET[6];
	assign LVDS_CURRENT_SETB[7] = !LVDS_CURRENT_SET[7];

	reg8bit_colData_0000_0000	LVDS_Current_Set_0	(	.Data(							LVDS_CURRENT_SET		),
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
		//***	*** FMB Control Bits ***
		//***
		//*******************************************************************************************

		assign 	FMB_CONTROL_0_internal	=	FMB_CONTROL_WORD[0];
		assign 	FMB_CONTROL_1_internal	=	FMB_CONTROL_WORD[1];
		//assign 	FMB_CONTROL_2	=	FMB_CONTROL_WORD[2];

		reg8bit_colData_0010_0000	FMB_controlWord_Reg_1	(	.Data(							FMB_CONTROL_WORD			),
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

		//*******************************************************************************************
		//***
		//***	*** LARASIC and ADC Reset Control ***
		//***
		//*******************************************************************************************

		reg8bit_colData_0010_0000	LARASIC_resetCount_Reg_1		(	.Data(							LARASIC_RST_COUNT			),
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

		reg8bit_colData_0010_0000	ADC_dataFeedCnt_Reg_1				(	.Data(							ADC_RST_COUNT					),
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
																		.Clk_64MHz_Sys(					CLK_64MHZ_SYS_internal 				),
																		.Rst_ACTIVE_LOW( 				CORE_MASTER_RESET_ACTIVE_LOW	)
																	);

//*******************************************************************************************
//*******************************************************************************************
//***
//***	*** Top-Level Assignments ***
//***
//*******************************************************************************************
//*******************************************************************************************
	logic 	Rst_PowerOn;
	assign 	Async_Rst_Active_Low						=	PAD_RESET_internal && Rst_PowerOn;

	assign	CORE_MASTER_RESET_ACTIVE_HIGH		=	!CORE_MASTER_RESET;
	assign	CORE_MASTER_RESET_ACTIVE_LOW		=	CORE_MASTER_RESET;

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	POR_v4
//***	Davide's PowerOn Reset
//***
//******************************************
logic 	UNCONNECTED_COLDATA_POR_VCAP;
logic 	UNCONNECTED_COLDATA_POR_NAND;

	POR_v4 					POR0 	( .POR_gated(	Rst_PowerOn										),
													.Vcap(			UNCONNECTED_COLDATA_POR_VCAP	),
													.POR_NAND(	UNCONNECTED_COLDATA_POR_NAND	)
												);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_resetSM
//***	Reset state machine in response to a COLDATA_RESET fast command
//***
//******************************************

	colData_resetSM	ResetSM0	(	.PLL_Reset(						PLL_MASTER_RESET			),
															.DLL_Reset(						DLL_MASTER_RESET			),
															.CORE_Reset(					CORE_MASTER_RESET			),
															.CORE_Run(						CORE_Run							),
															.FAKE_I2C_SOFT_RESET(	FAKE_I2C_SOFT_RESET		),
															.COLDATA_RESET(				FAST_CMD_COLDATA_RST	), 		//Positive-active signal from Fast Command
															.Rst_PowerOn(					Async_Rst_Active_Low	),		//Negative-active signal from power-on Rst or Pad
															.Clk64MHz(						CLK_64MHZ_SYS_internal)
														);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_2MHzClkGen
//***	Sets the frequency and edge of the 2MHz Clock
//***
//******************************************

	colData_2MHzClkGen	colData_2MHzClkGen_0	(		.Clk_2MHz_Sys(			CLK_2MHZ_SYS_generated	),
																								.Clk_64MHz_Sys(			CLK_64MHZ_SYS_internal	),
																								.edgeNow(						FAST_CMD_2MHZ_EDGENOW		),
																								.syncNow(						FAST_CMD_SYNC						),
																								.timeStamp(					timeStamp								),
																								.DLL_Reset(					DLL_MASTER_RESET				),
																								.CORE_Run(					CORE_Run								)
																						);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_ADCclks
//***	Sets the frequency and edge of the 2MHz Clock
//***
//******************************************

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
																			.ADC_Clock_Control(				ADC_Clock_Control_Bus		),
																			.CORE_Run(								CORE_Run								)
																		);

	reg8bit_colData_1111_1111	ADC_Clk_Control_Reg_0	(	.Data(							ADC_Clock_Control_Bus	),
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
																							.cmd_Sync(					FAST_CMD_SYNC						),
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
	reg8bit_colData_0000_0000	FASTACT_Command_Reg_0	(	.Data(							FASTACT_Command					),
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
	regReadOnly_noClk	FASTACT_Command_Reg_1	(	.dataForReading(		timeStamp								),
																						.dataOutBus(				I2C_Data_Read_Bus				),
																						.pageAddr(					I2C_Page_Addr_Bus				),
																						.requiredChipAddr1(	COLDATA0								),
																						.requiredChipAddr2(	COLDATA1								),
																						.requiredPageAddr(	MAINPAGE								),
																						.regAddr(						I2C_Reg_Addr_Bus				),
																						.requiredRegAddr(		ACTTSTAMPREG						),
																						.softReset(					FASTACT_RESET						),
																						.captureNow(				FASTACT_SAVE_TIMESTAMP	)
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
	regReadOnly_noClk	FASTACT_Status_Reg_1	(	.dataForReading(	{	CORE_Run,
																																Interface_LOCK,
																																ONE,
																																ZERO,
																																ZERO,
																																ONE,
																																status_Heartbeat_perpetual,
																																status_Heartbeat
																															}															),
																						.dataOutBus(				I2C_Data_Read_Bus						),
																						.pageAddr(					I2C_Page_Addr_Bus						),
																						.requiredChipAddr1(	COLDATA0										),
																						.requiredChipAddr2(	COLDATA1										),
																						.requiredPageAddr(	MAINPAGE										),
																						.regAddr(						I2C_Reg_Addr_Bus						),
																						.requiredRegAddr(		ACTSTATUSREG								),
																						.softReset(					FASTACT_RESET								),
																						.captureNow(				FASTACT_SAVE_STATUS					)
																			);

	regReadOnly_noClk	FASTACT_Status_Reg_2	(	.dataForReading(	{	LARASIC4_Comparison_Result,
																																LARASIC4_Comparison_Done,
																																LARASIC3_Comparison_Result,
																																LARASIC3_Comparison_Done,
																																LARASIC2_Comparison_Result,
																																LARASIC2_Comparison_Done,
																																LARASIC1_Comparison_Result,
																																LARASIC1_Comparison_Done
																															}															),
																						.dataOutBus(				I2C_Data_Read_Bus						),
																						.pageAddr(					I2C_Page_Addr_Bus						),
																						.requiredChipAddr1(	COLDATA0										),
																						.requiredChipAddr2(	COLDATA1										),
																						.requiredPageAddr(	MAINPAGE										),
																						.regAddr(						I2C_Reg_Addr_Bus						),
																						.requiredRegAddr(		ACTSTATUSREG2								),
																						.softReset(					FASTACT_RESET								),
																						.captureNow(				FASTACT_SAVE_STATUS					)
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
	colData_dataCapture	ADC1_dCap1	(	.capturedADCdata(	capturedLARASIC1					),
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
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	),	//Rst SM: Active Low Rst
																		.CORE_Run(				CORE_Run											)
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC1
//***
//******************************************
	colData_frameForm	ADC1_fForm2	(	.frameData(				frameLARASIC1							),
																	.ADCdata(					capturedLARASIC1					),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC1_DIG_CLKOUT_internal	),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC1_CLK_2MHZ_Ext					),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC1_frameCount						),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]				)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC2
//***
//******************************************
	colData_dataCapture	ADC2_dCap1	(	.capturedADCdata(	capturedLARASIC2					),
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
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	),	//Rst SM: Active Low Rst
																		.CORE_Run(				CORE_Run											)
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC2
//***
//******************************************
	colData_frameForm	ADC2_fForm2	(	.frameData(				frameLARASIC2							),
																	.ADCdata(					capturedLARASIC2					),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC2_DIG_CLKOUT_internal	),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC2_CLK_2MHZ_Ext					),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC2_frameCount						),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]				)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC3
//***
//******************************************
	colData_dataCapture	ADC3_dCap1	(	.capturedADCdata(	capturedLARASIC3							),
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
																		.dataOutH(				ADC3_DIG_OUTH_internal				),	//To Pin: ADCX_DIG_OUTH
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	),	//Rst SM: Active Low Rst
																		.CORE_Run(				CORE_Run											)
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC3
//***
//******************************************
	colData_frameForm	ADC3_fForm2	(	.frameData(				frameLARASIC3							),
																	.ADCdata(					capturedLARASIC3					),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC3_DIG_CLKOUT_internal	),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC3_CLK_2MHZ_Ext					),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC3_frameCount						),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]				)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_dataCapture
//***	coldADC Data Capture Block for ADC4
//***
//******************************************
	colData_dataCapture	ADC4_dCap1	(	.capturedADCdata(	capturedLARASIC4					),
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
																		.colData_Rst(			CORE_MASTER_RESET_ACTIVE_LOW	),	//Rst SM: Active Low Rst
																		.CORE_Run(				CORE_Run											)
																	);

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	colData_frameForm
//***	coldADC Data Frame Formation for ADC4
//***
//******************************************
	colData_frameForm	ADC4_fForm2	(	.frameData(				frameLARASIC4							),
																	.ADCdata(					capturedLARASIC4					),	//16x16 Data Array produced by colData_dataCapture
																	.dataOutClk(			ADC4_DIG_CLKOUT_internal	),	//To Pin: ADCX_DIG_OUTClk (64MHz)
																	.Clk_2MHz_Ext(		ADC4_CLK_2MHZ_Ext					),	//2MHz Clock Derived from dataOutClk
																	.frameCount(			ADC4_frameCount						),	//5-bit count based on dataOutClk and frameStart
																	.frameConfigure(	ADC_Configure[1:0]				)		//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
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

	colData_switchYard	swYard9		(	.outFIFO1(							outFIFO1											),
																	.outFIFO2(							outFIFO2											),
																	.Clk_2MHz_SYS(					CLK_2MHZ_SYS_generated				),
																	.FIFO1_Clk_128MHz_PLL(	FIFO1_Clk_128MHz_PLL					),
																	.FIFO2_Clk_128MHz_PLL(	FIFO2_Clk_128MHz_PLL					),
																	.ADC1_frameData(				frameLARASIC1									),
																	.ADC2_frameData(				frameLARASIC2									),
																	.ADC3_frameData(				frameLARASIC3									),
																	.ADC4_frameData(				frameLARASIC4									),
																	.frameConfigure(				ADC_Configure[1:0]						),	//Indicates Frame-12, Frame-14, Frame-15 or Frame-Dummy
																	.timeStamp(							timeStamp											),
																	.FIFO1active(						ActivateFIFO1									),
																	.FIFO2active(						ActivateFIFO2									),
																	.colData_Rst(						CORE_MASTER_RESET_ACTIVE_LOW	),		//Active Low Reset
																	.I2C_softReset(					I2C_softReset									)			//Active High Reset
																);

	reg8bit_colData_0000_0000	ADC_Configure_Reg_0	(	.Data(							ADC_Configure				),
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
reg8bit_colData_0010_1000	BYPASS_8b10b_Reg_0	(	.Data(							BYPASS_8b10b				),
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

	//*** BYPASS_8b10b	Bit 0:	Bypass 8b10b (1) or Encode (0) outFIFO1
	//*** BYPASS_8b10b	Bit 1:	Bypass 8b10b (1) or Encode (0) outFIFO2
	//*** BYPASS_8b10b	Bit 2:	(00) Unencoded PRBS7 -> SMU
	//*** BYPASS_8b10b	Bit 3:	(01) Unencoded PRBS15 -> SMU
	//***												(10) Unencoded K_28_5 -> Encoder -> SMU
	//***												(11) Unencoded outFIFO1 data -> Encoder -> SMU
	//*** BYPASS_8b10b	Bit 4:	(00) Unencoded PRBS7 -> SMU
	//*** BYPASS_8b10b	Bit 5:	(01) Unencoded PRBS15 -> SMU
	//***												(10) Unencoded K_28_5 -> Encoder -> SMU
	//***												(11) Unencoded outFIFO2 data -> Encoder -> SMU
	//*** BYPASS_8b10b	Bit 6:	Data to SMU LSB - MSB (0) Data to SMU MSB - LSB (1)
	//*** BYPASS_8b10b	Bit 7: 	Data to SMU LSB - MSB (0) Data to SMU MSB - LSB (1)

	//*** The first thing we have to do here is mux in the K28.5 comma character
	//*** for synchronization.  We need to do this before the 8b10b encoding
	//*** because our RunningDisparity has to be based on what came before. In
	//*** operation we will synchronize with K28.5 characters and then switch over
	//*** to data processing. Therefore, the RunningDisparity must be based on the
	//*** synchronization followed by the data processing.

	assign	ActivateFIFO1	=	BYPASS_8b10b[3] && BYPASS_8b10b[2];	//(11) Unencoded outFIFO1 data -> Encoder -> SMU
	assign	ActivateFIFO2	=	BYPASS_8b10b[5] && BYPASS_8b10b[4];	//(11) Unencoded outFIFO2 data -> Encoder -> SMU

	always_comb
		if( BYPASS_8b10b[2] ==	ZERO)
			begin
				FIFO1_D	=	K_28_5;
				FIFO1_K	=	ONE;
			end
		else
			begin
				FIFO1_D	=	outFIFO1[7:0];
				FIFO1_K	=	outFIFO1[8];
			end

	colData_8b10b	encode10	(	.Encoded(				encodedData1									),
														.Raw(						FIFO1_D												),
														.K(							FIFO1_K												),
														.Clk128Mhz(			FIFO1_Clk_128MHz_PLL					),
														.Bypass(				BYPASS_8b10b[0]								),
														.Rst(						CORE_MASTER_RESET_ACTIVE_HIGH	),
														.I2C_softReset(	I2C_softReset									)
													);

	//*** Repeat for outFIFO2

	always_comb
		if( BYPASS_8b10b[2] ==	ZERO)
			begin
				FIFO2_D	=	K_28_5;
				FIFO2_K	=	ONE;
			end
		else
			begin
				FIFO2_D	=	outFIFO2[7:0];
				FIFO2_K	=	outFIFO2[8];
			end

	colData_8b10b	encode11	(	.Encoded(				encodedData2									),
														.Raw(						FIFO2_D												),
														.K(							FIFO2_K												),
														.Clk128Mhz(			FIFO2_Clk_128MHz_PLL					),
														.Bypass(				BYPASS_8b10b[1]								),
														.Rst(						CORE_MASTER_RESET_ACTIVE_HIGH	),
														.I2C_softReset(	I2C_softReset									)
													);

	//*** Now that we have the correct stuff at encodedData1 and encodedData2,
	//*** we need to see if we are actually going to use it. **AFTER** the encoders
	//*** we mux together a PRBS7, a PRBS15, and the output of the encoders.

	colData_PRBS7 	colData_PRBS7_0	(	FIFO1_Clk_128MHz_PLL,
																		CORE_MASTER_RESET_ACTIVE_LOW,
																		(BYPASS_8b10b[3:2] == 2'b00),
																		PRBS7_Data
																	);

	colData_PRBS15 	colData_PRBS15_0	(	FIFO2_Clk_128MHz_PLL,
																			CORE_MASTER_RESET_ACTIVE_LOW,
																			(BYPASS_8b10b[3:2] == 2'b01),
																			PRBS15_Data
																		);

	always_comb
		case (BYPASS_8b10b[3:2])
			2'b00		: almostReadyForSMU1	=	PRBS7_Data;
			2'b01		: almostReadyForSMU1	=	PRBS15_Data;
			2'b10		: almostReadyForSMU1	=	encodedData1;
			2'b11		: almostReadyForSMU1	=	encodedData1;
			//default	: almostReadyForSMU1	=	encodedData1;
		endcase

	always_comb
		case (BYPASS_8b10b[5:4])
			2'b00		: almostReadyForSMU2	=	PRBS7_Data;
			2'b01		: almostReadyForSMU2	=	PRBS15_Data;
			2'b10		: almostReadyForSMU2	=	encodedData2;
			2'b11		: almostReadyForSMU2	=	encodedData2;
			//default	: almostReadyForSMU2	=	encodedData2;
		endcase

	//*** Flip the bit order if required

	always_comb
		if(BYPASS_8b10b[6] == ZERO)
			possiblyFlippedForSMU1 = {	almostReadyForSMU1[0],
																	almostReadyForSMU1[1],
																	almostReadyForSMU1[2],
																	almostReadyForSMU1[3],
																	almostReadyForSMU1[4],
																	almostReadyForSMU1[5],
																	almostReadyForSMU1[6],
																	almostReadyForSMU1[7],
																	almostReadyForSMU1[8],
																	almostReadyForSMU1[9]
																};
		else
			possiblyFlippedForSMU1 = {	almostReadyForSMU1[9],
																	almostReadyForSMU1[8],
																	almostReadyForSMU1[7],
																	almostReadyForSMU1[6],
																	almostReadyForSMU1[5],
																	almostReadyForSMU1[4],
																	almostReadyForSMU1[3],
																	almostReadyForSMU1[2],
																	almostReadyForSMU1[1],
																	almostReadyForSMU1[0]
																};

	always_comb
		if(BYPASS_8b10b[7] == ZERO)
			possiblyFlippedForSMU2 = {	almostReadyForSMU2[0],
																	almostReadyForSMU2[1],
																	almostReadyForSMU2[2],
																	almostReadyForSMU2[3],
																	almostReadyForSMU2[4],
																	almostReadyForSMU2[5],
																	almostReadyForSMU2[6],
																	almostReadyForSMU2[7],
																	almostReadyForSMU2[8],
																	almostReadyForSMU2[9]
																};
		else
			possiblyFlippedForSMU2 = {	almostReadyForSMU2[9],
																	almostReadyForSMU2[8],
																	almostReadyForSMU2[7],
																	almostReadyForSMU2[6],
																	almostReadyForSMU2[5],
																	almostReadyForSMU2[4],
																	almostReadyForSMU2[3],
																	almostReadyForSMU2[2],
																	almostReadyForSMU2[1],
																	almostReadyForSMU2[0]
																};

	//*** Finally, capture it at the rising edge of the PLL Clock so it is ready
	//*** 	for the SMU Serializer

	always @(posedge FIFO1_Clk_128MHz_PLL)
		readyForSMU1	<=	possiblyFlippedForSMU1;

	always @(posedge FIFO2_Clk_128MHz_PLL)
		readyForSMU2	<=	possiblyFlippedForSMU2;

	//******************************************
	//***
	//***	*** CIRCUIT BLOCK INSTANTIATION ***
	//***
	//***	coldData_SMU_PLL_SER_DRV
	//***		The SMU Trinity and its configuration blocks
	//***
	//******************************************

	//		coldData_SMU_PLL_SER_DRV coldData_SMU_PLL_SER_DRV_0	(
			TOP_CDP2_PLLA_SER_LD_INTERFACE_POWER_PADS coldData_SMU_PLL_SER_DRV_0	(
																	.SERIALIZER_INPUT_DATA1(				readyForSMU1										),
																	.SERIALIZER_INPUT_DATA2(				readyForSMU2 										),
																	.CLK_128MHZ_1(									FIFO1_Clk_128MHz_PLL						),
																	.CLK_128MHZ_2(									FIFO2_Clk_128MHz_PLL						),
																	.PLL_RESET_FROM_CORE(						PLL_MASTER_RESET 								),
																	.CORE_RESET_ACTIVE_LOW( 				CORE_MASTER_RESET_ACTIVE_LOW 		),
																	.INTERFACE_LOCK( 								Interface_LOCK									),
																	.CONFIG_PLL_ICP(								CONFIG_PLL_ICP									),
																	.CONFIG_PLL_BAND(								CONFIG_PLL_BAND									),
																	.CONFIG_PLL_LPFR(								CONFIG_PLL_LPFR									),
																	.CONFIG_PLL_ATO(								CONFIG_PLL_ATO									),
																	.CONFIG_PLL_PDCP(								CONFIG_PLL_PDCP									),
																	.CONFIG_PLL_OPEN(								CONFIG_PLL_OPEN									),
																	.CONFIG_SER_MODE(								CONFIG_SER_MODE									),
																	.CONFIG_SER_INV_SER_CLK(				CONFIG_SER_INV_SER_CLK					),
																	.CONFIG_DRV_VMBOOST(						CONFIG_DRV_VMBOOST							),
																	.CONFIG_DRV_VMDRIVER(						CONFIG_DRV_VMDRIVER							),
																	.CONFIG_DRV_SELPRE(							CONFIG_DRV_SELPRE								),
																	.CONFIG_DRV_SELPST1(						CONFIG_DRV_SELPST1							),
																	.CONFIG_DRV_SELPST2(						CONFIG_DRV_SELPST2							),
																	.CONFIG_DRV_SELCM_MAIN(					CONFIG_DRV_SELCM_MAIN						),
																	.CONFIG_DRV_ENABLE_CM(					CONFIG_DRV_ENABLE_CM						),
																	.CONFIG_DRV_INVERSE_CLK(				CONFIG_DRV_INVERSE_CLK					),
																	.CONFIG_DRV_DELAYSEL(						CONFIG_DRV_DELAYSEL							),
																	.CONFIG_DRV_DELAY_CS(						CONFIG_DRV_DELAY_CS							),
																	.CONFIG_DRV_CML(								CONFIG_DRV_CML									),
																	.CONFIG_DRV_BIAS_CML_INTERNAL(	CONFIG_DRV_BIAS_CML_INTERNAL		),
																	.CONFIG_DRV_BIAS_CS_INTERNAL(		CONFIG_DRV_BIAS_CS_INTERNAL			),
																	.CKIN(													CKIN														),
																	.CKOUTN(												CKOUTN													),
																	.CKOUTP(												CKOUTP													),
																	.VCEXT(													VCEXT														),
																	.ATO(														ATO															),
																	.LOCK(													LOCK														),
																	.PLL_EXTERNAL_RESETN(						PLL_EXTERNAL_RESETN							),
																	.IBIAS_CML(											IBIAS_CML												),
																	.IBIAS_CS(											IBIAS_CS												),
																	.SEROUTN1(											SEROUTN1												),
																	.SEROUTP1(											SEROUTP1												),
																	.SEROUTN2(											SEROUTN2												),
																	.SEROUTP2(											SEROUTP2												)
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_1	(	.Data(							REG_CONFIG_PLL_ICP		),
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

		reg8bit_colData_0001_0011	SMU_Configure_Reg_2	(	.Data(							REG_CONFIG_PLL_BAND		),
																										.dataOutBus(				I2C_Data_Read_Bus			),
																										.dataInBus(					I2C_Data_Write_Bus		),
																										.pageAddr(					I2C_Page_Addr_Bus			),
																										.requiredChipAddr1(	COLDATA0							),
																										.requiredChipAddr2(	COLDATA1							),
																										.requiredPageAddr(	SMUPAGE								),
																										.regAddr(						I2C_Reg_Addr_Bus			),
																										.requiredRegAddr(		SMU_CONFIG_PLL_BAND		),
																										.writeReq(					I2C_writeReq					),
																										.softReset(					I2C_softReset					)
																									);

		reg8bit_colData_0000_0010	SMU_Configure_Reg_3	(	.Data(							REG_CONFIG_PLL_LPFR		),
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

		reg8bit_colData_0000_0001	SMU_Configure_Reg_4	(	.Data(							REG_CONFIG_PLL_ATO		),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_5	(	.Data(							REG_CONFIG_PLL_PDCP		),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_6	(	.Data(							REG_CONFIG_PLL_OPEN		),
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

		reg8bit_colData_0000_0001	SMU_Configure_Reg_7	(	.Data(							REG_CONFIG_SER_MODE		),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_8	(	.Data(							REG_CONFIG_SER_INV_SER_CLK	),
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

		reg8bit_colData_1111_1111	SMU_Configure_Reg_9	(	.Data(							REG_CONFIG_DRV_VMBOOST	),
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

		reg8bit_colData_1111_1111	SMU_Configure_Reg_10	(	.Data(						REG_CONFIG_DRV_VMDRIVER	),
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

		reg8bit_colData_0000_0011	SMU_Configure_Reg_11	(	.Data(							REG_CONFIG_DRV_SELPRE		),
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

		reg8bit_colData_0000_0011	SMU_Configure_Reg_12	(	.Data(							REG_CONFIG_DRV_SELPST1	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_13	(	.Data(							REG_CONFIG_DRV_SELPST2	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_14	(	.Data(							REG_CONFIG_DRV_SELCM_MAIN	),
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

		reg8bit_colData_0000_0001	SMU_Configure_Reg_15	(	.Data(							REG_CONFIG_DRV_ENABLE_CM	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_16	(	.Data(							REG_CONFIG_DRV_INVERSE_CLK	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_17	(	.Data(							REG_CONFIG_DRV_DELAYSEL	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_18	(	.Data(							REG_CONFIG_DRV_DELAY_CS	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_19	(	.Data(							REG_CONFIG_DRV_CML	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_20	(	.Data(							REG_CONFIG_DRV_BIAS_CML_INTERNAL	),
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

		reg8bit_colData_0000_0000	SMU_Configure_Reg_21	(	.Data(							REG_CONFIG_DRV_BIAS_CS_INTERNAL		),
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
//***		24x4 reg8bit_colData_0000_0000 I2C Register Blocks
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

	reg8bit_colData_0010_0000	LARASIC_dataFeedCnt_Reg_1		(	.Data(							LARASIC_dataFeedCount		),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_1	(	.Data(							LARASIC1_Config_1),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_2	(	.Data(							LARASIC1_Config_2),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_3	(	.Data(							LARASIC1_Config_3),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_4	(	.Data(							LARASIC1_Config_4),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_5	(	.Data(							LARASIC1_Config_5),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_6	(	.Data(							LARASIC1_Config_6),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_7	(	.Data(							LARASIC1_Config_7),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_8	(	.Data(							LARASIC1_Config_8),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_9	(	.Data(							LARASIC1_Config_9),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_10	(	.Data(							LARASIC1_Config_10	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_11	(	.Data(							LARASIC1_Config_11	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_12	(	.Data(							LARASIC1_Config_12	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_13	(	.Data(							LARASIC1_Config_13	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_14	(	.Data(							LARASIC1_Config_14	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_15	(	.Data(							LARASIC1_Config_15	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_16	(	.Data(							LARASIC1_Config_16	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_17	(	.Data(							LARASIC1_Config_17	),
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

	reg8bit_colData_0000_0000	LARASIC1_Configure_Reg_18	(	.Data(							LARASIC1_Config_18	),
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
																			.Clk_2MHz_Sys(							CLK_2MHZ_SYS_generated					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		FASTACT_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC1_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC1_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC1_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC1_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC1_Config_1,
																																	LARASIC1_Config_2,
																																	LARASIC1_Config_3,
																																	LARASIC1_Config_4,
																																	LARASIC1_Config_5,
																																	LARASIC1_Config_6,
																																	LARASIC1_Config_7,
																																	LARASIC1_Config_8,
																																	LARASIC1_Config_9,
																																	LARASIC1_Config_10,
																																	LARASIC1_Config_11,
																																	LARASIC1_Config_12,
																																	LARASIC1_Config_13,
																																	LARASIC1_Config_14,
																																	LARASIC1_Config_15,
																																	LARASIC1_Config_16,
																																	LARASIC1_Config_17,
																																	LARASIC1_Config_18	}				),
																			.compDone(									LARASIC1_Comparison_Done			),
																			.compResult(								LARASIC1_Comparison_Result		),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_colData_0000_0000	LARASIC1_CalibConfig_1	(	.Data(							LARASIC1_samplePeriodsPerStrobe	),
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

	reg8bit_colData_0000_0000	LARASIC1_CalibConfig_2	(	.Data(							LARASIC1_64MHzPeriodsAfterSample),
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

	reg8bit_colData_0000_0000	LARASIC1_CalibConfig_3	(	.Data(							LARASIC1_CalibrateStrobeWidth		),
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

	reg8bit_colData_0000_0000	LARASIC1_HardRstCnt_4		(	.Data(							LARASIC1_HardRstCount						),
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

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_1	(	.Data(							LARASIC2_Config_1),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_1							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_2	(	.Data(							LARASIC2_Config_2),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_2							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_3	(	.Data(							LARASIC2_Config_3),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_3							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_4	(	.Data(							LARASIC2_Config_4),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_4							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_5	(	.Data(							LARASIC2_Config_5),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_5							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_6	(	.Data(							LARASIC2_Config_6),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_6							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_7	(	.Data(							LARASIC2_Config_7),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_7							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_8	(	.Data(							LARASIC2_Config_8),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_8							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_9	(	.Data(							LARASIC2_Config_9),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_9							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_10	(	.Data(							LARASIC2_Config_10	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_10						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_11	(	.Data(							LARASIC2_Config_11	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_11						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_12	(	.Data(							LARASIC2_Config_12	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_12						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_13	(	.Data(							LARASIC2_Config_13	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_13						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_14	(	.Data(							LARASIC2_Config_14	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_14						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_15	(	.Data(							LARASIC2_Config_15	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_15						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_16	(	.Data(							LARASIC2_Config_16	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_16						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_17	(	.Data(							LARASIC2_Config_17	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_17						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC2_Configure_Reg_18	(	.Data(							LARASIC2_Config_18	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC2PAGE							),
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
																			.Clk_2MHz_Sys(							CLK_2MHZ_SYS_generated					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		FASTACT_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC2_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC2_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC2_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC2_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC2_Config_1,
																																	LARASIC2_Config_2,
																																	LARASIC2_Config_3,
																																	LARASIC2_Config_4,
																																	LARASIC2_Config_5,
																																	LARASIC2_Config_6,
																																	LARASIC2_Config_7,
																																	LARASIC2_Config_8,
																																	LARASIC2_Config_9,
																																	LARASIC2_Config_10,
																																	LARASIC2_Config_11,
																																	LARASIC2_Config_12,
																																	LARASIC2_Config_13,
																																	LARASIC2_Config_14,
																																	LARASIC2_Config_15,
																																	LARASIC2_Config_16,
																																	LARASIC2_Config_17,
																																	LARASIC2_Config_18	}				),
																			.compDone(									LARASIC2_Comparison_Done			),
																			.compResult(								LARASIC2_Comparison_Result		),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_colData_0000_0000	LARASIC2_CalibConfig_1	(	.Data(							LARASIC2_samplePeriodsPerStrobe	),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC2PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		SAMPLES_PER_CALIB								),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC2_CalibConfig_2	(	.Data(							LARASIC2_64MHzPeriodsAfterSample),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC2PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC2_CalibConfig_3	(	.Data(							LARASIC2_CalibrateStrobeWidth		),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC2PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC2_HardRstCnt_4		(	.Data(							LARASIC2_HardRstCount						),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC2PAGE												),
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

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_1	(	.Data(							LARASIC3_Config_1),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_1							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_2	(	.Data(							LARASIC3_Config_2),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_2							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_3	(	.Data(							LARASIC3_Config_3),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_3							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_4	(	.Data(							LARASIC3_Config_4),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_4							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_5	(	.Data(							LARASIC3_Config_5),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_5							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_6	(	.Data(							LARASIC3_Config_6),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_6							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_7	(	.Data(							LARASIC3_Config_7),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_7							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_8	(	.Data(							LARASIC3_Config_8),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_8							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_9	(	.Data(							LARASIC3_Config_9),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_9							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_10	(	.Data(							LARASIC3_Config_10	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_10						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_11	(	.Data(							LARASIC3_Config_11	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_11						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_12	(	.Data(							LARASIC3_Config_12	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_12						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_13	(	.Data(							LARASIC3_Config_13	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_13						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_14	(	.Data(							LARASIC3_Config_14	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_14						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_15	(	.Data(							LARASIC3_Config_15	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_15						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_16	(	.Data(							LARASIC3_Config_16	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_16						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_17	(	.Data(							LARASIC3_Config_17	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_17						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC3_Configure_Reg_18	(	.Data(							LARASIC3_Config_18	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC3PAGE							),
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
																			.Clk_2MHz_Sys(							CLK_2MHZ_SYS_generated					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		FASTACT_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC3_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC3_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC3_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC3_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC3_Config_1,
																																	LARASIC3_Config_2,
																																	LARASIC3_Config_3,
																																	LARASIC3_Config_4,
																																	LARASIC3_Config_5,
																																	LARASIC3_Config_6,
																																	LARASIC3_Config_7,
																																	LARASIC3_Config_8,
																																	LARASIC3_Config_9,
																																	LARASIC3_Config_10,
																																	LARASIC3_Config_11,
																																	LARASIC3_Config_12,
																																	LARASIC3_Config_13,
																																	LARASIC3_Config_14,
																																	LARASIC3_Config_15,
																																	LARASIC3_Config_16,
																																	LARASIC3_Config_17,
																																	LARASIC3_Config_18	}				),
																			.compDone(									LARASIC3_Comparison_Done			),
																			.compResult(								LARASIC3_Comparison_Result		),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_colData_0000_0000	LARASIC3_CalibConfig_1	(	.Data(							LARASIC3_samplePeriodsPerStrobe	),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC3PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		SAMPLES_PER_CALIB								),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC3_CalibConfig_2	(	.Data(							LARASIC3_64MHzPeriodsAfterSample),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC3PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC3_CalibConfig_3	(	.Data(							LARASIC3_CalibrateStrobeWidth		),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC3PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC3_HardRstCnt_4		(	.Data(							LARASIC3_HardRstCount						),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC3PAGE												),
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

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_1	(	.Data(							LARASIC4_Config_1),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_1							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_2	(	.Data(							LARASIC4_Config_2),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_2							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_3	(	.Data(							LARASIC4_Config_3),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_3							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_4	(	.Data(							LARASIC4_Config_4),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_4							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_5	(	.Data(							LARASIC4_Config_5),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_5							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_6	(	.Data(							LARASIC4_Config_6),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_6							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_7	(	.Data(							LARASIC4_Config_7),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_7							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_8	(	.Data(							LARASIC4_Config_8),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_8							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_9	(	.Data(							LARASIC4_Config_9),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_9							),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_10	(	.Data(							LARASIC4_Config_10	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_10						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_11	(	.Data(							LARASIC4_Config_11	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_11						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_12	(	.Data(							LARASIC4_Config_12	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_12						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_13	(	.Data(							LARASIC4_Config_13	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_13						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_14	(	.Data(							LARASIC4_Config_14	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_14						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_15	(	.Data(							LARASIC4_Config_15	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_15						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_16	(	.Data(							LARASIC4_Config_16	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_16						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_17	(	.Data(							LARASIC4_Config_17	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
																												.regAddr(						I2C_Reg_Addr_Bus			),
																												.requiredRegAddr(		LARASIC_17						),
																												.writeReq(					I2C_writeReq					),
																												.softReset(					I2C_softReset					)
																											);

	reg8bit_colData_0000_0000	LARASIC4_Configure_Reg_18	(	.Data(							LARASIC4_Config_18	),
																												.dataOutBus(				I2C_Data_Read_Bus			),
																												.dataInBus(					I2C_Data_Write_Bus		),
																												.pageAddr(					I2C_Page_Addr_Bus			),
																												.requiredChipAddr1(	COLDATA0							),
																												.requiredChipAddr2(	COLDATA1							),
																												.requiredPageAddr(	ADC4PAGE							),
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
																			.Clk_2MHz_Sys(							CLK_2MHZ_SYS_generated					),
																			.fastAct_LARASIC_Calibrate(	FASTACT_LARASIC_CAL							),
																			.fastAct_LARASIC_Reset(			FASTACT_LARASIC_SPIRST					),
																			.fastAct_LARASIC_Program(		FASTACT_LARASIC_PROG						),
																			.Req_2MHZ_Count(						LARASIC4_samplePeriodsPerStrobe	),
																			.Req_64MHZ_Count(						LARASIC4_64MHzPeriodsAfterSample),
																			.Req_CALIB_Count(						LARASIC4_CalibrateStrobeWidth		),
																			.requiredHardCount(					LARASIC4_HardRstCount						),
																			.dataFeedCount(							LARASIC_dataFeedCount						),
																			.dataToBeScannedOut(	{			LARASIC4_Config_1,
																																	LARASIC4_Config_2,
																																	LARASIC4_Config_3,
																																	LARASIC4_Config_4,
																																	LARASIC4_Config_5,
																																	LARASIC4_Config_6,
																																	LARASIC4_Config_7,
																																	LARASIC4_Config_8,
																																	LARASIC4_Config_9,
																																	LARASIC4_Config_10,
																																	LARASIC4_Config_11,
																																	LARASIC4_Config_12,
																																	LARASIC4_Config_13,
																																	LARASIC4_Config_14,
																																	LARASIC4_Config_15,
																																	LARASIC4_Config_16,
																																	LARASIC4_Config_17,
																																	LARASIC4_Config_18	}				),
																			.compDone(									LARASIC4_Comparison_Done			),
																			.compResult(								LARASIC4_Comparison_Result		),
																			.Rst_ACTIVE_LOW(						CORE_MASTER_RESET_ACTIVE_LOW	)
																		);

	reg8bit_colData_0000_0000	LARASIC4_CalibConfig_1	(	.Data(							LARASIC4_samplePeriodsPerStrobe	),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC4PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		SAMPLES_PER_CALIB								),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC4_CalibConfig_2	(	.Data(							LARASIC4_64MHzPeriodsAfterSample),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC4PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		CALIB_CLKPER_AFTER_SAMP					),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC4_CalibConfig_3	(	.Data(							LARASIC4_CalibrateStrobeWidth		),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC4PAGE												),
																											.regAddr(						I2C_Reg_Addr_Bus								),
																											.requiredRegAddr(		CALIB_STROBE_WIDTH							),
																											.writeReq(					I2C_writeReq										),
																											.softReset(					I2C_softReset										)
																										);

	reg8bit_colData_0000_0000	LARASIC4_HardRstCnt_4		(	.Data(							LARASIC4_HardRstCount						),
																											.dataOutBus(				I2C_Data_Read_Bus								),
																											.dataInBus(					I2C_Data_Write_Bus							),
																											.pageAddr(					I2C_Page_Addr_Bus								),
																											.requiredChipAddr1(	COLDATA0												),
																											.requiredChipAddr2(	COLDATA1												),
																											.requiredPageAddr(	ADC4PAGE												),
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
																					.I2C_R_COLDATA_SDA_C2W(					I2C_THIS_COLDATA_SDA_C2W_internal	),
																					.I2C_R_OTHER_SDA_C2W(						I2C_OTHER_COLDATA_SDA_C2W_internal	),
																					.myChipID(											CHIP_ID_final									),
																					.valid_chipID(									valid_chipID									),
																					.rcvChipID(											capturedPageAddr[6:3]					),
																					.CORE_Reset_ACTIVE_LOW(					CORE_MASTER_RESET_ACTIVE_LOW	)
																				);

	colData_I2Cslave	colData_I2Cslave_0	(	.SDA_c2w(						I2C_THIS_COLDATA_SDA_C2W_internal	),
																					.SDA_w2c(						I2C_COLDATA_SDA_W2C_internal	),
																					.SCL(								I2C_COLDATA_SCL_internal			),
																					.pageAddr(					I2C_Page_Addr_Bus							),
																					.regAddr(						I2C_Reg_Addr_Bus							),
																					.Data_w2c(					I2C_Data_Write_Bus						),
																					.Data_c2w(					I2C_Data_Read_Bus							),
																					.capturedPageAddr(	capturedPageAddr							),
																					.validCapPageAddr(	valid_chipID									),
																					.writeOp(						I2C_writeOp 									),
																					.readOp(						I2C_readOp 										),
																					.Ack1(							I2C_Ack1 											),
																					.Ack2(							I2C_Ack2 											),
																					.Ack3(							I2C_Ack3 											),
																					.writeReq(					I2C_writeReq									),
																					.softReset(					REAL_I2C_SOFT_RESET						),
																					.chipID(						CHIP_ID_final									),
																					.Clk64MHz(					CLK_64MHZ_SYS_internal				),
																					.Rst_ACTIVE_LOW(		CORE_MASTER_RESET_ACTIVE_LOW	)
																				);

	assign I2C_softReset = FAKE_I2C_SOFT_RESET || REAL_I2C_SOFT_RESET;

endmodule
