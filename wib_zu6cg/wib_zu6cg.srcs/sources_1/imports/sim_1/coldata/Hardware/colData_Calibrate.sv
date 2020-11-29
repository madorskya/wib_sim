`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: calibrateMode
//***
//*******************************************************************************************
//*******************************************************************************************
module	calibrateMode	(	output	logic		cMode,
				input	logic		calibrateFastCommand,
				input	logic		Clk_64MHz_Sys,
				input	logic		Rst_ACTIVE_LOW
			);
	
//***************************
//***
//***	Parameters
//***
//***************************
	parameter	S0_IDLE		=	ZERO;
	parameter	S1_CALIBRATE	=	ONE;
	
//***************************
//***
//***	Variables
//***
//***************************
	var	logic		foundActivateCalibrateMode;
	var	logic		foundDeactivateCalibrateMode;
	var	logic		nextcMode;
	var	logic		basicClearACM;
	var	logic		basicClearDCM;

	wire	logic		clearACM;
	wire	logic		clearDCM;
	
	//Generate the foundActivateCalibrateMode
	always_ff @(posedge calibrateFastCommand or posedge clearACM)
	if (clearACM == ONE)
		foundActivateCalibrateMode	=	ZERO;
	else if (cMode == S0_IDLE)
		foundActivateCalibrateMode	=	ONE;
		
	//Generate the foundDeactivateCalibrateMode
	always_ff @(posedge calibrateFastCommand or posedge clearDCM)
	if (clearDCM == ONE)
		foundDeactivateCalibrateMode	=	ZERO;
	else if (cMode == S1_CALIBRATE)
		foundDeactivateCalibrateMode	=	ONE;
		
//***************************
//***
//***	State Machine
//***
//***************************
	//State Registers
	always_ff @(posedge Clk_64MHz_Sys or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		cMode	<=	S0_IDLE;
	else
		cMode	<=	nextcMode;
		
	
	//State Logic
	always_comb
	case	(cMode)
	
	S0_IDLE		:	if(foundActivateCalibrateMode == ONE)
					nextcMode <= S1_CALIBRATE;
				else
					nextcMode <= S0_IDLE;
					
	S1_CALIBRATE	:	if(foundDeactivateCalibrateMode == ONE)
					nextcMode <= S0_IDLE;
				else
					nextcMode <= S1_CALIBRATE;
					
	endcase	
	
//***************************
//***
//***	Follow-on Logic
//***
//***************************
	//Generate clearACM
	always_ff @(negedge Clk_64MHz_Sys)
	if (cMode == S1_CALIBRATE)
		basicClearACM	=	foundActivateCalibrateMode;
	else
		basicClearACM	=	ZERO;
		
	assign	clearACM	=	basicClearACM || (!Rst_ACTIVE_LOW);
	
	//Generate clearDCM
	always_ff @(negedge Clk_64MHz_Sys)
	if (cMode == S0_IDLE)
		basicClearDCM	=	foundDeactivateCalibrateMode;
	else
		basicClearDCM	=	ZERO;
		
	assign	clearDCM	=	basicClearDCM || (!Rst_ACTIVE_LOW);
	
endmodule	

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_Calibrate
//***
//*******************************************************************************************
//*******************************************************************************************
module	colData_Calibrate	(	output	logic		CALIB_STRB,
					input	logic		Clk_64MHz_Sys,
					input	logic		Clk_2MHz_Sys,
					input	logic	[7:0]	Req_samplePer_Count,
					input	logic	[7:0]	Req_64MHz_Count,
					input	logic	[7:0]	Req_calibPer_Count,
					input	logic		calibrateFastCommand,
					output	logic		cMode,
					input	logic		Rst_ACTIVE_LOW
				);
//***************************
//***
//***	Variables
//***
//***************************
	var	logic	[1:0]	calibrateState;
	var	logic	[1:0]	nextCalibrateState;
	
	var	logic		found_ADC_CONV;
	var	logic	[7:0]	count_samplePer;
	var	logic	[7:0]	count_64MHz;
	var	logic	[7:0]	count_calibPer;
	var	logic		basicClearFAC;
	var	logic		calibrateClear;
	var	logic		Clear2;
	
	wire	logic		clearCounters;
	wire	logic		clearCalibCnt;
	
	wire	logic		clearFAC;
	
//***************************
//***
//***	Parameters
//***
//***************************
	parameter	S0_CMODE_IDLE		=	ZERO;
	parameter	S1_CMODE_CALIBRATE	=	ONE;
	
	parameter	S0_CTRL_IDLE		=	2'b00;
	parameter	S1_COUNT_SAMPLE_PERIODS	=	2'b01;
	parameter	S2_COUNT_64MHz_PERIODS	=	2'b10;
	parameter	S3_CALIBRATE		=	2'b11;
	
//***************************
//***
//***	Assignments
//***
//***************************
	assign	flagIdle	=	(calibrateState == S0_CTRL_IDLE)	?	ONE	:	ZERO;
	
	assign	ZeroSamplePer	=	(Req_samplePer_Count	== 8'b0000_0000)	?	ONE	:	ZERO;
	assign	Zero64MHzPer	=	(Req_64MHz_Count 	== 8'b0000_0000)	?	ONE	:	ZERO;
	assign	ZeroCalibWidth	=	(Req_calibPer_Count 	== 8'b0000_0000)	?	ONE	:	ZERO;
	//Block Calibrate if all Requested Counts are zero
	assign	BlockCalibrate	=	ZeroSamplePer && Zero64MHzPer && ZeroCalibWidth;	
	
//***************************
//***
//***	State Machine
//***
//***************************
	//State Registers
	always_ff @(posedge Clk_64MHz_Sys or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		calibrateState	<=	S0_CTRL_IDLE;
	else
		calibrateState	<=	nextCalibrateState;
		
	//State Logic
	always_comb
	case	(calibrateState)
	
	S0_CTRL_IDLE		:	if ((cMode == S1_CMODE_CALIBRATE) && (BlockCalibrate == ZERO))
						nextCalibrateState	=	S1_COUNT_SAMPLE_PERIODS;
					else
						nextCalibrateState	=	S0_CTRL_IDLE;
					
	S1_COUNT_SAMPLE_PERIODS	:	if (count_samplePer	==	Req_samplePer_Count)
						nextCalibrateState	=	S2_COUNT_64MHz_PERIODS;
					else
						nextCalibrateState	=	S1_COUNT_SAMPLE_PERIODS;
						
	S2_COUNT_64MHz_PERIODS	:	if (count_64MHz		==	Req_64MHz_Count)
						nextCalibrateState	=	S3_CALIBRATE;
					else
						nextCalibrateState	=	S2_COUNT_64MHz_PERIODS;
						
	S3_CALIBRATE		:	if (count_calibPer	==	Req_calibPer_Count)
						nextCalibrateState	=	S0_CTRL_IDLE;
					else
						nextCalibrateState	=	S3_CALIBRATE;
	
	endcase

//***************************
//***
//***	Follow-on Logic
//***
//***************************
	//If I am in Calibrate Mode, I start in S1_COUNT_SAMPLE_PERIODS
	//First I count the number of Clk_2MHz_Sys rising edges
	always @(posedge Clk_2MHz_Sys or posedge flagIdle)
	if (flagIdle == ONE)
		count_samplePer	<=	8'b0000_0000;
	else if (calibrateState == S1_COUNT_SAMPLE_PERIODS)
		count_samplePer	<=	count_samplePer + 8'b0000_0001;

	//When I reach the appropriate number of Clk_2MHz_Sys rising edges
	//then I count the number of Clk_64MHz_Sys rising edges
	always @(posedge Clk_64MHz_Sys or posedge flagIdle)
	if (flagIdle == ONE)
		count_64MHz	<=	8'b0000_0000;
	else if (calibrateState == S2_COUNT_64MHz_PERIODS)
		count_64MHz	<=	count_64MHz + 8'b0000_0001;

	//When I reach the appropriate number of Clk_64MHz_Sys rising edges
	//then I activate the Calibrate signal and count the number of Clk_64MHz_Sys rising edges
	//to obtain the appropriate Calibrate signal width
	
	//Output the CALIB_STRB signal
	assign	CALIB_STRB	=	(calibrateState == S3_CALIBRATE)	?	ONE	:	ZERO;
	
	always @(posedge Clk_64MHz_Sys or posedge flagIdle)
	if (flagIdle == ONE)
		count_calibPer	<=	8'b0000_0000;
	else if (calibrateState == S3_CALIBRATE)
		count_calibPer	<=	count_calibPer + 8'b0000_0001;

//***************************
//***
//***	Instantiate calibrateMode
//***
//***************************
	calibrateMode		cMode0	(	.cMode(			cMode			),
						.calibrateFastCommand(	calibrateFastCommand	),
						.Clk_64MHz_Sys(		Clk_64MHz_Sys		),
						.Rst_ACTIVE_LOW(	Rst_ACTIVE_LOW		)
					);

	
endmodule
		
