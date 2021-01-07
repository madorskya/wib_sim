`ifndef COLDATA_TYPES
`define COLDATA_TYPES


//***************************
//***
//***	Enumerated Type definitions
//***
//***************************

typedef	enum	bit [1:0]	{
			PHASE_STATE_0	=	2'b00,
			PHASE_STATE_1	=	2'b01,
			PHASE_STATE_2	=	2'b11,
			PHASE_STATE_3	=	2'b10
		}	backEndStates_t;

//***	writeFIFO_States_t
typedef	enum	bit	[5:0]	{
			S0_FIFO_IDLE	=	6'b00_0000,
			S1_COUNT0			=	6'b00_0001,
			S2_COUNT1			=	6'b00_0010,
			S3_COUNT2			=	6'b00_0011,
			S4_COUNT3			=	6'b00_0100,
			S5_COUNT4			=	6'b00_0101,
			S6_COUNT5			=	6'b00_0110,
			S7_COUNT6			=	6'b00_0111,
			S8_COUNT7			=	6'b00_1000,
			S9_COUNT8			=	6'b00_1001,
			S10_COUNT9		=	6'b00_1010,
			S11_COUNT10		=	6'b00_1011,
			S12_COUNT11		=	6'b00_1100,
			S13_COUNT12		=	6'b00_1101,
			S14_COUNT13		=	6'b00_1110,
			S15_COUNT14		=	6'b00_1111,
			S16_COUNT15		=	6'b01_0000,
			S17_COUNT16		=	6'b01_0001,
			S18_COUNT17		=	6'b01_0010,
			S19_COUNT18		=	6'b01_0011,
			S20_COUNT19		=	6'b01_0100,
			S21_COUNT20		=	6'b01_0101,
			S22_COUNT21		=	6'b01_0110,
			S23_COUNT22		=	6'b01_0111,
			S24_COUNT23		=	6'b01_1000,
			S25_COUNT24		=	6'b01_1001,
			S26_COUNT25		=	6'b01_1010,
			S27_COUNT26		=	6'b01_1011,
			S28_COUNT27		=	6'b01_1100,
			S29_COUNT28		=	6'b01_1101,
			S30_COUNT29		=	6'b01_1110,
			S31_COUNT30		=	6'b01_1111,
			S32_COUNT31		=	6'b10_0000,
			S33_DUMMY			=	6'b10_0001
		}			writeFIFO_States_t;

//***	I2C_States_t
typedef	enum	bit	[4:0]	{
			S0_I2C_IDLE				=	5'b0_0000,
			S1_WORD1_BIT7			=	5'b0_0001,
			S2_WORD1_BIT6			=	5'b0_0011,
			S3_WORD1_BIT5			=	5'b0_0010,
			S4_WORD1_BIT4			=	5'b0_0110,
			S5_WORD1_BIT3			=	5'b0_0111,
			S6_WORD1_BIT2			=	5'b0_0101,
			S7_WORD1_BIT1			=	5'b0_0100,
			S8_WORD1_RW				=	5'b0_1100,
			S9_ACK1						=	5'b0_1101,
			S10_WORD2_BIT8		=	5'b0_1111,
			S11_WORD2_BIT7		=	5'b0_1110,
			S12_WORD2_BIT6		=	5'b0_1010,
			S13_WORD2_BIT5		=	5'b0_1011,
			S14_WORD2_BIT4		=	5'b0_1001,
			S15_WORD2_BIT3		=	5'b0_1000,
			S16_WORD2_BIT2		=	5'b1_1000,
			S17_WORD2_BIT1		=	5'b1_1001,
			S18_ACK2					=	5'b1_1011,
			S19_WORD3_BIT8		=	5'b1_1010,
			S20_WORD3_BIT7		=	5'b1_1110,
			S21_WORD3_BIT6		=	5'b1_1111,
			S22_WORD3_BIT5		=	5'b1_1101,
			S23_WORD3_BIT4		=	5'b1_1100,
			S24_WORD3_BIT3		=	5'b1_0100,
			S25_WORD3_BIT2		=	5'b1_0101,
			S26_WORD3_BIT1		=	5'b1_0111,
			S27_ACK3_WRITE		=	5'b1_0110,
			S28_ACK3_READ			=	5'b1_0010,
			S29_UNUSED				=	5'b1_0011,
			S30_UNUSED				=	5'b1_0001,
			S31_UNUSED				=	5'b1_0000
		}			I2C_States_t;

typedef	enum	bit	[2:0]	{
			I2C_Idle	=	3'b000,
			I2C_Word1	=	3'b001,
			I2C_Word2	=	3'b011,
			I2C_Word3	=	3'b010,
			I2C_Bad		=	3'b110
		} 	I2C_Monitor_States;

typedef	enum	bit	[2:0]	{	FastCommand_BitState_0	=	3'b000,
													FastCommand_BitState_1	=	3'b001,
													FastCommand_BitState_2	=	3'b011,
													FastCommand_BitState_3	=	3'b010,
													FastCommand_BitState_4	=	3'b110,
													FastCommand_BitState_5	=	3'b111,
													FastCommand_BitState_6	=	3'b101,
													FastCommand_BitState_7	=	3'b100
												}	FastCommand_BitStates_t;

//***	I2C_Rst_States_t
typedef	enum	bit	[1:0]	{
			S0_STANDBY	=	2'b00,
			S1_COUNT		=	2'b01,
			S2_RESET		=	2'b11,
			S3_UNUSED		=	2'b10
		}			I2C_Rst_States_t;

//typedef	enum 	bit	[2:0]	{	S0_SISO_IDLE		=	3'b000,
//													S1_SISO_LOADA		=	3'b001,
//													S2_SISO_ACTDF		=	3'b010,
//													S3_SISO_SCAN		=	3'b011,
//													S4_SISO_DONE		=	3'b100,
//													S5_SISO_GARBAGE	=	3'b101,
//													S6_SISO_GARBAGE	=	3'b110,
//													S7_SISO_GARBAGE	=	3'b111
//												}	scanInOutStates;

typedef	enum 	bit	[1:0]	{	S0_SISO_IDLE		=	2'b00,
													S1_SISO_LOAD		=	2'b01,
													S2_SISO_SCAN		=	2'b11,
													S3_SISO_DONE		=	2'b10
												}	scanInOutStates;

typedef	enum 	bit	[1:0]	{	S0_CALIB_IDLE			=	2'b00,
													S1_CALIB_CNT2MHZ	=	2'b01,
													S2_CALIB_CNT64MHZ	=	2'b11,
													S3_CALIB_CALIB		=	2'b10
												}	calibrateState_type;

typedef enum 	bit	[3:0]	{	S0_IDLE					=	4'b0000,
													S1_PROG_START		=	4'b0001,
													S2_PROG_SCAN1		=	4'b0010,
													S3_PROG_PAUSE		=	4'b0011,
													S4_PROG_SCAN2		=	4'b0100,
													S5_PROG_DONE		=	4'b0101,
													S6_CALIB_START	=	4'b0110,
													S7_CALIB_RUN		=	4'b0111,
													S8_CALIB_DONE		=	4'b1000,
													S9_HARD_START		=	4'b1001,
													S10_HARD_STEP1	=	4'b1010,
													S11_HARD_STEP2	=	4'b1011,
													S12_HARD_STEP3	=	4'b1100,
													S13_HARD_DONE		=	4'b1101,
													S14_UNUSED2			=	4'b1110,
													S15_UNUSED3			=	4'b1111
												}	feConfigStates;

typedef	enum 	bit [2:0] {	S0_FE_MAIN_IDLE	=	3'b000,
													S1_FE_MAIN_PROG	=	3'b001,
													S2_FE_MAIN_HRST	=	3'b010,
													S3_FE_MAIN_CAL	=	3'b100,
													S4_FE_MAIN_GAR3	=	3'b011,
													S5_FE_MAIN_GAR5	=	3'b101,
													S6_FE_MAIN_GAR6	=	3'b110,
													S7_FE_MAIN_GAR7	=	3'b111
												}	feMainConfigStates;

typedef	enum 	bit [2:0] {	S0_FE_PROG_IDLE		=	3'b000,
													S1_FE_PROG_WAIT1	=	3'b001,
													S2_FE_PROG_SCAN1	=	3'b011,
													S3_FE_PROG_WAIT2	=	3'b010,
													S4_FE_PROG_WAIT3	=	3'b110,
													S5_FE_PROG_SCAN2	=	3'b111,
													S6_FE_PROG_WAIT4	=	3'b101,
													S7_FE_PROG_DONE		=	3'b100
												}	feProgConfigStates;

typedef	enum 	bit [2:0]	{	S0_FE_HARD_IDLE		=	3'b000,
													S1_FE_HARD_START	=	3'b001,
													S2_FE_HARD_STEP1	=	3'b011,
													S3_FE_HARD_RST		=	3'b010,
													S4_FE_HARD_STEP2	=	3'b110,
													S5_FE_HARD_DONE		=	3'b111,
													S6_FE_HARD_EXTRA1	=	3'b101,
													S7_FE_HARD_EXTRA2	=	3'b100
												}	feHardConfigStates;

typedef enum 	bit [1:0]	{	S0_FE_CALIB_IDLE	=	2'b00,
													S1_FE_CALIB_START	=	2'b01,
													S2_FE_CALIB_RUN		=	2'b11,
													S3_FE_CALIB_DONE	=	2'b10
												}	feCalibConfigStates;

//typedef	enum 	bit	[2:0]	{	S0_DF_IDLE		=	3'b000,
//													S1_DF_NEWDATA	=	3'b001,
//													S2_DF_SCK1		=	3'b010,
//													S3_DF_SCK0		=	3'b011,
//													S4_DF_SDI			=	3'b100,
//													S5_DF_GARBAGE	=	3'b101,
//													S6_DF_GARBAGE	=	3'b110,
//													S7_DF_GARBAGE	=	3'b111
//												}	dataFeedStates;

typedef	enum 	bit	[1:0]	{	S0_DF_IDLE		=	2'b00,
													S1_DF_NEWDATA	=	2'b01,
													S2_DF_SCK1		=	2'b11,
													S3_DF_SCK0		=	2'b10
												}	dataFeedStates;

typedef enum 	bit	[1:0]	{	FERST_S0_IDLE						=	2'b00,
													FERST_S1_COLDADC_RESET	=	2'b01,
													FERST_S2_LARASIC_RESET	=	2'b10,
													FERST_S3_UNUSED					=	2'b11
												}	feResetStates;

`endif
