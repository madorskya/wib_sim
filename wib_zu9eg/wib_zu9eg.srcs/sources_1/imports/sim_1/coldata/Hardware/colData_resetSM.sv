`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: colData_resetSM
//***	Description:
//***
//***************************
module	colData_resetSM	(	output	logic	PLL_Reset,
													output	logic	DLL_Reset,
													output	logic	CORE_Reset,
													output	logic	CORE_Run,
													output 	logic FAKE_I2C_SOFT_RESET,
													input		logic	COLDATA_RESET, 	//Positive-active signal from Fast Command
													input		logic	Rst_PowerOn,		//Active-Low Power-On Reset
													input		logic	Clk64MHz
												);

//***************************
//***
//***	Parameters
//***
//***************************
	parameter S0_BEGINNING 			=	4'b0000;//This is the state that you are pulled to on
																				//	a reset of either kind.  ALL resets are
																				//	activated in this state.
	parameter S1_ALL_RESET 			=	4'b0001;//ALL resets are active in this state until
																				//	ALL_COUNT is reached
	parameter S2_INTER_2_3			=	4'b0011;//ALL resets still active
	parameter S3_PLL_RELEASE		=	4'b0010;//PLL Reset released; DLL, CORE resets active
																				//	until PLL_COUNT is reached.
	parameter S4_INTER_3_4 			=	4'b0110;//DLL, CORE resets still active
	parameter S5_DLL_RELEASE		=	4'b0111;//PLL, DLL Resets released; CORE reset active
																				//	until DLL_COUNT is reached.
	parameter S6_INTER_5_6			=	4'b0101;//CORE reset still active
	parameter S7_CORE_RELEASE 	=	4'b0100;//ALL resets released until CORE COUNT
																				//	is reached
	parameter S8_RUN 						=	4'b1100;//CORE_Run State
	parameter S9_RUN_GARBAGE0		=	4'b1101;//Unreachable CORE_Run State
	parameter S10_RUN_GARBAGE1	=	4'b1111;//Unreachable CORE_Run State
	parameter S11_RUN_GARBAGE2	=	4'b1110;//Unreachable CORE_Run State
	parameter S12_RUN_GARBAGE3	=	4'b1010;//Unreachable CORE_Run State
	parameter S13_RUN_GARBAGE4	=	4'b1011;//Unreachable CORE_Run State
	parameter S14_RUN_GARBAGE5	=	4'b1001;//Unreachable CORE_Run State
	parameter S15_RUN_GARBAGE6	=	4'b1000;//Unreachable CORE_Run State

//***************************
//***
//***	Variables
//***
//***************************
	var		logic	[3:0]	rstState;
	var		logic	[3:0]	nextRstState;
	var		logic	[8:0]	PLL_Counter;
	var		logic	[8:0]	DLL_Counter;
	var		logic	[3:0]	CORE_Counter;
	var		logic	[3:0]	ALL_Counter;
	wire 	logic				asyncReset;		//Active low combination of either
																	//	the positive-active COLDATA_RESET or
																	//	the negative-active Rst_PowerOn

//***************************
//***
//***	Generate Async Reset
//***		and assignments
//***
//***************************
	assign	asyncReset	=	(!COLDATA_RESET) && Rst_PowerOn;

//***************************
//***
//***	State Machine
//***
//***************************
	//COLDATA_RESET is issued on the negative edge of the clock.

	//State Register
	always_ff @(posedge Clk64MHz or negedge asyncReset)
		if(asyncReset == ZERO)
			rstState	<=	S0_BEGINNING;
		else
			rstState	<=	nextRstState;

	always_comb
		case	(rstState)
		S0_BEGINNING		:	nextRstState = S1_ALL_RESET;

		S1_ALL_RESET		:	if( ALL_Counter == 4'b1111)
												nextRstState = S2_INTER_2_3;
											else
												nextRstState = S1_ALL_RESET;

		S2_INTER_2_3		:	nextRstState = S3_PLL_RELEASE;

		S3_PLL_RELEASE	:	if( PLL_Counter == 9'b1_1111_1111)
												nextRstState = S4_INTER_3_4;
											else
												nextRstState = S3_PLL_RELEASE;

		S4_INTER_3_4		:	nextRstState = S5_DLL_RELEASE;

		S5_DLL_RELEASE	:	if( DLL_Counter == 9'b1_1111_1111)
												nextRstState = S6_INTER_5_6;
											else
												nextRstState = S5_DLL_RELEASE;

		S6_INTER_5_6		:	nextRstState = S7_CORE_RELEASE;

		S7_CORE_RELEASE	:	if( CORE_Counter == 4'b1111)
												nextRstState = S8_RUN;
											else
												nextRstState = S7_CORE_RELEASE;

		S8_RUN					:	nextRstState = S8_RUN;

		S9_RUN_GARBAGE0	:	nextRstState = S8_RUN;

		S10_RUN_GARBAGE1:	nextRstState = S9_RUN_GARBAGE0;

		S11_RUN_GARBAGE2:	nextRstState = S10_RUN_GARBAGE1;

		S12_RUN_GARBAGE3:	nextRstState = S11_RUN_GARBAGE2;

		S13_RUN_GARBAGE4:	nextRstState = S12_RUN_GARBAGE3;

		S14_RUN_GARBAGE5:	nextRstState = S13_RUN_GARBAGE4;

		S15_RUN_GARBAGE6:	nextRstState = S14_RUN_GARBAGE5;

		endcase

//***************************
//***
//***	Follow-on Logic
//***
//***************************
	always_ff @(negedge Clk64MHz or negedge asyncReset)
		if(asyncReset == ZERO)
			ALL_Counter	<=	4'b0000;
		else if (	rstState	==	S1_ALL_RESET )
			ALL_Counter	<=	ALL_Counter + 4'b0001;
		else
			ALL_Counter	<=	ALL_Counter;

	always_ff @(negedge Clk64MHz or negedge asyncReset)
		if(asyncReset == ZERO)
			PLL_Counter	<=	9'b0_0000_0000;
		else if (	rstState	==	S3_PLL_RELEASE )
			PLL_Counter	<=	PLL_Counter + 9'b0_0000_0001;
		else
			PLL_Counter	<=	PLL_Counter;

	always_ff @(negedge Clk64MHz or negedge asyncReset)
		if(asyncReset == ZERO)
			DLL_Counter	<=	9'b0_0000_0000;
		else if (	rstState	==	S5_DLL_RELEASE )
			DLL_Counter	<=	DLL_Counter + 9'b0_0000_0001;
		else
			DLL_Counter	<=	DLL_Counter;

	always_ff @(negedge Clk64MHz or negedge asyncReset)
		if(asyncReset == ZERO)
			CORE_Counter	<=	4'b0000;
		else if (	rstState	==	S7_CORE_RELEASE )
			CORE_Counter	<=	CORE_Counter + 4'b0001;
		else
			CORE_Counter	<=	CORE_Counter;

//***************************
//***
//***	Generate Resets to the rest of colData
//***		Resets are negative-active
//***		CORE_Run is positive-active
//***
//***************************
	assign	PLL_Reset	=	!(	(rstState	==	S0_BEGINNING)	||
													(rstState	==	S1_ALL_RESET)	||
													(rstState	==	S2_INTER_2_3)
												);

	assign	DLL_Reset	=	!(	(rstState	==	S0_BEGINNING)		||
													(rstState	==	S1_ALL_RESET)		||
													(rstState	==	S2_INTER_2_3)		||
													(rstState	==	S3_PLL_RELEASE)	||
													(rstState	==	S4_INTER_3_4)
											);

	assign	CORE_Reset	=	!(	(rstState	==	S0_BEGINNING)		||
														(rstState	==	S1_ALL_RESET)		||
														(rstState	==	S2_INTER_2_3)		||
														(rstState	==	S3_PLL_RELEASE)	||
														(rstState	==	S4_INTER_3_4)		||
														(rstState	==	S5_DLL_RELEASE)	||
														(rstState	==	S6_INTER_5_6)
													);

	assign 	FAKE_I2C_SOFT_RESET	=	(rstState	==	S7_CORE_RELEASE);

	assign	CORE_Run	=	(	(rstState	==	S8_RUN)						||
												(rstState	==	S9_RUN_GARBAGE0)	||
												(rstState	==	S10_RUN_GARBAGE1)	||
												(rstState	==	S11_RUN_GARBAGE2)	||
												(rstState	==	S12_RUN_GARBAGE3)	||
												(rstState	==	S13_RUN_GARBAGE4)	||
												(rstState	==	S14_RUN_GARBAGE5)	||
												(rstState	==	S15_RUN_GARBAGE6)
											);

endmodule
