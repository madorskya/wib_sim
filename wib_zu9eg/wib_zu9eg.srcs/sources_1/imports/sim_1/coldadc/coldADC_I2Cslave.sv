`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
// Madorsky: removed include
//`ifndef JIMSCONSTANTS
//	`define	JIMSCONSTANTS
//	`include "PACKAGE.constants.coldADC.sv"
//`endif

//*******************************************************************************************
//*******************************************************************************************
//***
//*** Title: I2C Interface for colData
//*** Author: Jim Hoff
//***
//*******************************************************************************************
//*******************************************************************************************

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: I2C_foundStart
//***
//*******************************************************************************************
//*******************************************************************************************
module	I2C_foundStart	(	output	logic	foundStart,
				input	logic	SDA,
				input	logic	SCL,
				input	logic	clearFind
			);

	//Generally speaking in I2C, SDA changes while SCL is a 0
	//If SDA makes a negative edge switch while SCL is a 1, it is a Start

	always_ff @(negedge SDA or posedge clearFind)
		if(clearFind == ONE_ADC)
			foundStart	<=	ZERO_ADC;
		else if(SCL == ONE_ADC)
			foundStart	<=	ONE_ADC;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: I2C_foundStop
//***
//*******************************************************************************************
//*******************************************************************************************
module	I2C_foundStop	(	output	logic	foundStop,
				input	logic	SDA,
				input	logic	SCL,
				input	logic	clearFind
			);

	//Generally speaking in I2C, SDA changes while SCL is a 0
	//If SDA makes a positive edge switch while SCL is a 1, it is a Stop

	always_ff @(posedge SDA or posedge clearFind)
		if(clearFind == ONE_ADC)
			foundStop	<=	ZERO_ADC;
		else if(SCL == ONE_ADC)
			foundStop	<=	ONE_ADC;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: I2C_state_adc
//***		An auxiliary reset for the I2C_ADC state machine in the event that communication
//***		is broken down and COLDATA and its FPGA handler do not agree on the present state
//***		of the I2C slave on COLDATA.  Holding the SDA=SCL=1 for more than 64 cycles of the
//***		64 MHz clock will ensure that the I2C slave is in its Idle State.
//***
//*******************************************************************************************
//*******************************************************************************************
module	I2C_auxIdleRst_adc	(	output	logic		ResetI2C,
				input	logic		Clk64MHz,
				input	logic		SDA,
				input	logic		SCL,
				input	I2C_States_adc	I2C_State,
				input	logic		Rst_ACTIVE_LOW
			);

//***************************
//***
//***	Variables
//***
//***************************
	var logic	[5:0]	badIdleCount;
	I2C_Rst_States_t_ADC	auxIdleState;
	I2C_Rst_States_t_ADC	nextAuxIdleState;
	I2C_Rst_States_t_ADC	temp1_AIS;
	I2C_Rst_States_t_ADC	temp2_AIS;
	I2C_Rst_States_t_ADC	temp3_AIS;

	var logic		idleSignal;
	var logic		badIdling;
	var logic		idleState;
	var logic		countDone;

//***************************
//***
//***	Assignments
//***
//***************************
	assign	idleState	=	(I2C_State	==	S0_I2C_IDLE_ADC)	?	ONE_ADC	:	ZERO_ADC;
	assign	idleSignal	=	SDA	&&	SCL;
	assign	badIdling	=	idleSignal	&&	!idleState;

	assign	ResetI2C	=	(auxIdleState	==	S2_RESET_ADC)	?	ONE_ADC	:	ZERO_ADC;
	assign	rstBadIdleCount	=	(auxIdleState	==	S0_STANDBY_ADC)	?	ONE_ADC	:	ZERO_ADC;
	assign	incBadIdleCount	=	(auxIdleState	==	S1_COUNT_ADC)	?	ONE_ADC	:	ZERO_ADC;
	assign	countDone	=	(badIdleCount	==	6'b111111)	?	ONE_ADC	:	ZERO_ADC;

//***************************
//***
//***	State Machine
//***
//***************************
	//State Registers
	always_ff @(posedge Clk64MHz or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO_ADC)
		auxIdleState	<=	S0_STANDBY_ADC;
	else
		auxIdleState	<=	nextAuxIdleState;

	//State Logic
	assign	temp1_AIS	=	(badIdling == ONE_ADC)	?	S1_COUNT_ADC	:	S0_STANDBY_ADC;
	assign	temp2_AIS	=	(countDone == ZERO_ADC)	?	S1_COUNT_ADC	:	S2_RESET_ADC;
	assign	temp3_AIS	=	(badIdling == ZERO_ADC)	?	S0_STANDBY_ADC	:	temp2_AIS;

	always_comb
		unique case	(auxIdleState)

			S0_STANDBY_ADC	:	nextAuxIdleState	=	temp1_AIS;

			S1_COUNT_ADC	:	nextAuxIdleState	=	temp3_AIS;

			S2_RESET_ADC	:	nextAuxIdleState	=	S0_STANDBY_ADC;

			S3_UNUSED_ADC	:	nextAuxIdleState	=	S0_STANDBY_ADC;

		endcase

//***************************
//***
//***	Follow-on Logic
//***
//***************************
	always_ff @(negedge Clk64MHz or posedge rstBadIdleCount)
	if (rstBadIdleCount == ONE_ADC)
		badIdleCount 	<= 	6'b0;
	else if (incBadIdleCount == ONE_ADC)
		badIdleCount	<=	badIdleCount + 6'b000001;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: I2C_state_adc
//***
//*******************************************************************************************
//*******************************************************************************************
module	I2C_state_adc	(	output	I2C_States_adc	currentState,
				input	logic		SDA,
				input	logic		SCL,
				input	logic		Clk64MHz,
				input	logic		Rst_ACTIVE_LOW
			);

//***************************
//***
//***	Variables
//***
//***************************
	var logic		foundStart;
	var logic		foundStop;
	var logic		stateRst;

	var logic		clearStart;
	var logic		clearStop;

	var logic		writeReq;

	var logic		auxiliaryReset;
	var logic		rstForced;
	var logic		stopTheStart;
	var logic		ssLogic;

	I2C_States_adc	nextState;

//***************************
//***
//***	Assignments
//***
//***************************
	//Instantiate I2C_foundStart and I2C_foundStop to find Start and Stop bits
	assign	rstForced	=	(!Rst_ACTIVE_LOW)	||	auxiliaryReset;
	assign	ssLogic		=	(currentState == S7_WORD1_BIT_ADC1)	?	ONE_ADC	:	ZERO_ADC;

	always_ff @(negedge SCL or posedge rstForced )
		if (rstForced	==	ONE_ADC)
			stopTheStart	<=	ZERO_ADC;
		else
			stopTheStart	<=	ssLogic;

	assign	clearStart	=	rstForced || stopTheStart;

	I2C_foundStart	start0	(	.foundStart(	foundStart	),
					.SDA(		SDA		),
					.SCL(		SCL		),
					.clearFind(	clearStart	)
				);

	assign	clearStop	=	rstForced || foundStart;

	I2C_foundStop	stop0	(	.foundStop(	foundStop	),
					.SDA(		SDA		),
					.SCL(		SCL		),
					.clearFind(	clearStop	)
				);

	//Instantiate auxiliary reset
	I2C_auxIdleRst_adc	aux1	(	.ResetI2C(		auxiliaryReset	),
					.Clk64MHz(		Clk64MHz	),
					.SDA(			SDA		),
					.SCL(			SCL		),
					.I2C_State(		currentState	),
					.Rst_ACTIVE_LOW(	Rst_ACTIVE_LOW	)
				);

//***************************
//***
//***	State Machine
//***
//***************************
	//State Registers
	assign	stateRst	=	(!Rst_ACTIVE_LOW)	||	auxiliaryReset	|| (foundStop && (currentState != S0_I2C_IDLE_ADC));

	always_ff @(posedge SCL or posedge stateRst)
	if (stateRst == ONE_ADC)
		currentState	<=	S0_I2C_IDLE_ADC;
	else
		currentState	<=	nextState;

	//State Logic
	always_comb
	begin
	case	(currentState)
	S0_I2C_IDLE_ADC		:	if(foundStart == ONE_ADC)
					nextState	=	S1_WORD1_BIT_ADC7;
				else
					nextState	=	S0_I2C_IDLE_ADC;

	S1_WORD1_BIT_ADC7	:	nextState	=	S2_WORD1_BIT_ADC6;

	S2_WORD1_BIT_ADC6	:	nextState	=	S3_WORD1_BIT_ADC5;

	S3_WORD1_BIT_ADC5	:	nextState	=	S4_WORD1_BIT_ADC4;

	S4_WORD1_BIT_ADC4	:	nextState	=	S5_WORD1_BIT_ADC3;

	S5_WORD1_BIT_ADC3	:	nextState	=	S6_WORD1_BIT_ADC2;

	S6_WORD1_BIT_ADC2	:	nextState	=	S7_WORD1_BIT_ADC1;

	S7_WORD1_BIT_ADC1	:	nextState	=	S8_WORD1_RW_ADC;

	S8_WORD1_RW_ADC	:	nextState	=	S9_ACK1_ADC;

	S9_ACK1_ADC		:	nextState	=	S10_WORD2_BIT_ADC8;

	S10_WORD2_BIT_ADC8	:	nextState	=	S11_WORD2_BIT_ADC7;

	S11_WORD2_BIT_ADC7	:	nextState	=	S12_WORD2_BIT_ADC6;

	S12_WORD2_BIT_ADC6	:	nextState	=	S13_WORD2_BIT_ADC5;

	S13_WORD2_BIT_ADC5	:	nextState	=	S14_WORD2_BIT_ADC4;

	S14_WORD2_BIT_ADC4	:	nextState	=	S15_WORD2_BIT_ADC3;

	S15_WORD2_BIT_ADC3	:	nextState	=	S16_WORD2_BIT_ADC2;

	S16_WORD2_BIT_ADC2	:	nextState	=	S17_WORD2_BIT_ADC1;

	S17_WORD2_BIT_ADC1	:	nextState	=	S18_ACK2_ADC;

	S18_ACK2_ADC	:	nextState	=	S19_WORD3_BIT_ADC8;

	S19_WORD3_BIT_ADC8	:	nextState	=	S20_WORD3_BIT_ADC7;

	S20_WORD3_BIT_ADC7	:	nextState	=	S21_WORD3_BIT_ADC6;

	S21_WORD3_BIT_ADC6	:	nextState	=	S22_WORD3_BIT_ADC5;

	S22_WORD3_BIT_ADC5	:	nextState	=	S23_WORD3_BIT_ADC4;

	S23_WORD3_BIT_ADC4	:	nextState	=	S24_WORD3_BIT_ADC3;

	S24_WORD3_BIT_ADC3	:	nextState	=	S25_WORD3_BIT_ADC2;

	S25_WORD3_BIT_ADC2	:	nextState	=	S26_WORD3_BIT_ADC1;

	S26_WORD3_BIT_ADC1	:	if(writeReq == ONE_ADC)
					nextState	=	S27_ACK3_WRITE_ADC;
				else
					nextState	=	S28_ACK3_READ_ADC;

	S27_ACK3_WRITE_ADC	:	nextState	=	S0_I2C_IDLE_ADC;

	S28_ACK3_READ_ADC	:	nextState	=	S0_I2C_IDLE_ADC;

	S29_UNUSED_ADC	:	nextState	=	S0_I2C_IDLE_ADC;

	S30_UNUSED_ADC	:	nextState	=	S0_I2C_IDLE_ADC;

	S31_UNUSED_ADC	:	nextState	=	S0_I2C_IDLE_ADC;

	default		:	nextState	=	S0_I2C_IDLE_ADC;

	endcase
	end

	//Establish the writeReq signal
	always_ff @(negedge SCL)
	if(currentState == S8_WORD1_RW_ADC)
		writeReq	<=	~SDA;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_I2Cslave
//***
//*******************************************************************************************
//*******************************************************************************************
module	coldADC_I2Cslave	(	output	logic				SDA_c2w,		//Data line from COLD to WARM
														input		logic				SDA_w2c,		//Data line from WARM to COLD
														input		logic				SCL,			//Clock line
														output	logic	[6:0]	pageAddr,
														output	logic	[7:0]	regAddr,
														output	logic	[7:0]	Data_w2c,
														input		logic	[7:0]	Data_c2w,
														output	logic	[6:0]	capturedPageAddr,
														output	logic				validCapPageAddr,
														output	logic				writeOp,
														output	logic				readOp,
														output	logic				Ack1,
														output	logic				Ack2,
														output	logic				Ack3,
														output	logic				writeReq,
														output	logic				softReset,
														input		logic	[3:0]	chipID,
														input		logic				Clk64MHz,
														input		logic				Rst_ACTIVE_LOW
													);

//***************************
//***
//***	Variables
//***
//***************************
	I2C_States_adc	currentState;

	logic		page00;
	logic		reg06;

	logic		softResetActive;

	wire		chipOK;

	logic 		I2C_Idle_ADC_State;

	//***************************
	//***
	//***	Combinatorial Logic
	//***
	//***************************

	always_comb begin
		I2C_Idle_ADC_State =	(currentState == S0_I2C_IDLE_ADC)	?	ONE_ADC	:	ZERO_ADC;
	end

//***************************
//***
//***	Logic to capture pageAddress for module I2C Relay Cell and notify of the validity
//***
//***************************
	assign	validCapPageAddr	=	(	(currentState	==	S10_WORD2_BIT_ADC8)	||
							(currentState	==	S11_WORD2_BIT_ADC7) ||
							(currentState	==	S12_WORD2_BIT_ADC6) ||
							(currentState	==	S13_WORD2_BIT_ADC5) ||
							(currentState	==	S14_WORD2_BIT_ADC4) ||
							(currentState	==	S15_WORD2_BIT_ADC3) ||
							(currentState	==	S16_WORD2_BIT_ADC2) ||
							(currentState	==	S17_WORD2_BIT_ADC1) ||
							(currentState	==	S18_ACK2_ADC) 	||
							(currentState	==	S19_WORD3_BIT_ADC8) ||
							(currentState	==	S20_WORD3_BIT_ADC7) ||
							(currentState	==	S21_WORD3_BIT_ADC6) ||
							(currentState	==	S22_WORD3_BIT_ADC5) ||
							(currentState	==	S23_WORD3_BIT_ADC4) ||
							(currentState	==	S24_WORD3_BIT_ADC3) ||
							(currentState	==	S25_WORD3_BIT_ADC2) ||
							(currentState	==	S26_WORD3_BIT_ADC1) ||
							(currentState	==	S27_ACK3_WRITE_ADC) ||
							(currentState	==	S28_ACK3_READ_ADC)	)	?	ONE_ADC	:	ZERO_ADC;

	always @(posedge validCapPageAddr)
		capturedPageAddr	<=	pageAddr;

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	I2C_state_adc
//***
//******************************************
	//Instantiate the State Machine
	I2C_state_adc	I2Cstate0	(	.currentState(		currentState	),
						.SDA(			SDA_w2c		),
						.SCL(			SCL		),
						.Clk64MHz(		Clk64MHz	),
						.Rst_ACTIVE_LOW(	Rst_ACTIVE_LOW	)
					);

	//Load pageAddr on negedge of SCL during the right periods
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO_ADC)
		pageAddr	<=	7'b0;
	else if (currentState == S1_WORD1_BIT_ADC7)
		pageAddr[6]	<=	SDA_w2c;
	else if (currentState == S2_WORD1_BIT_ADC6)
		pageAddr[5]	<=	SDA_w2c;
	else if (currentState == S3_WORD1_BIT_ADC5)
		pageAddr[4]	<=	SDA_w2c;
	else if (currentState == S4_WORD1_BIT_ADC4)
		pageAddr[3]	<=	SDA_w2c;
	else if (currentState == S5_WORD1_BIT_ADC3)
		pageAddr[2]	<=	SDA_w2c;
	else if (currentState == S6_WORD1_BIT_ADC2)
		pageAddr[1]	<=	SDA_w2c;
	else if (currentState == S7_WORD1_BIT_ADC1)
		pageAddr[0]	<=	SDA_w2c;

	//Capture the Read/Write Operation
	//always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	//if (Rst_ACTIVE_LOW == ZERO_ADC)
	//begin
	//	writeOp		<=	ZERO_ADC;
	//	readOp		<=	ZERO_ADC;
	//end
	//else if (currentState == S0_I2C_IDLE_ADC)
	//begin
	//	writeOp		<=	ZERO_ADC;
	//	readOp		<=	ZERO_ADC;
	//end
	//else if (currentState == S8_WORD1_RW_ADC)
	//begin
	//	writeOp		<=	!SDA_w2c;
	//	readOp		<=	SDA_w2c;
	//end

	//always_ff @(negedge SCL or posedge I2C_Idle_ADC_State)
	//if (I2C_Idle_ADC_State == ONE_ADC)
	//begin
	//	writeOp		<=	ZERO_ADC;
	//	readOp		<=	ZERO_ADC;
	//end
	//else if (currentState == S8_WORD1_RW_ADC)
	//begin
	//	writeOp		<=	!SDA_w2c;
	//	readOp		<=	SDA_w2c;
	//end

	logic 	setOpsNow;
	logic 	holdOpsNow;
	logic 	opsAreZero;

	assign 	setOpsNow 	= (currentState == S8_WORD1_RW_ADC);

	assign 	holdOpsNow	=	(currentState == S9_ACK1_ADC)					||
												(currentState == S10_WORD2_BIT_ADC8)	||
												(currentState == S11_WORD2_BIT_ADC7)	||
												(currentState == S12_WORD2_BIT_ADC6)	||
												(currentState == S13_WORD2_BIT_ADC5)	||
												(currentState == S14_WORD2_BIT_ADC4)	||
												(currentState == S15_WORD2_BIT_ADC3)	||
												(currentState == S16_WORD2_BIT_ADC2)	||
												(currentState == S17_WORD2_BIT_ADC1)	||
												(currentState == S18_ACK2_ADC)				||
												(currentState == S19_WORD3_BIT_ADC8)	||
												(currentState == S20_WORD3_BIT_ADC7)	||
												(currentState == S21_WORD3_BIT_ADC6)	||
												(currentState == S22_WORD3_BIT_ADC5)	||
												(currentState == S23_WORD3_BIT_ADC4)	||
												(currentState == S24_WORD3_BIT_ADC3)	||
												(currentState == S25_WORD3_BIT_ADC2)	||
												(currentState == S26_WORD3_BIT_ADC1)	||
												(currentState == S27_ACK3_WRITE_ADC)	||
												(currentState == S28_ACK3_READ_ADC);

	always_ff @(negedge SCL or posedge I2C_Idle_ADC_State)
	if (I2C_Idle_ADC_State == ONE_ADC)
		begin
			writeOp		<=	ZERO_ADC;
			readOp		<=	ZERO_ADC;
		end
	else if (setOpsNow == ONE_ADC)
		begin
			writeOp		<=	!SDA_w2c;
			readOp		<=	SDA_w2c;
		end
	else if (holdOpsNow == ONE_ADC)
		begin
			writeOp		<=	writeOp;
			readOp		<=	readOp;
		end
	else
		begin
			writeOp		<=	ZERO_ADC;
			readOp		<=	ZERO_ADC;
		end

	//Load regAddr on negedge of SCL during the right periods
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO_ADC)
		regAddr		<=	8'b0;
	else if (currentState == S10_WORD2_BIT_ADC8)
		regAddr[7]	<=	SDA_w2c;
	else if (currentState == S11_WORD2_BIT_ADC7)
		regAddr[6]	<=	SDA_w2c;
	else if (currentState == S12_WORD2_BIT_ADC6)
		regAddr[5]	<=	SDA_w2c;
	else if (currentState == S13_WORD2_BIT_ADC5)
		regAddr[4]	<=	SDA_w2c;
	else if (currentState == S14_WORD2_BIT_ADC4)
		regAddr[3]	<=	SDA_w2c;
	else if (currentState == S15_WORD2_BIT_ADC3)
		regAddr[2]	<=	SDA_w2c;
	else if (currentState == S16_WORD2_BIT_ADC2)
		regAddr[1]	<=	SDA_w2c;
	else if (currentState == S17_WORD2_BIT_ADC1)
		regAddr[0]	<=	SDA_w2c;

	//Load Data_w2c on negedge of SCL during the right periods
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO_ADC)
		Data_w2c	<=	8'b0;
	else if (currentState == S19_WORD3_BIT_ADC8)
		Data_w2c[7]	<=	SDA_w2c;
	else if (currentState == S20_WORD3_BIT_ADC7)
		Data_w2c[6]	<=	SDA_w2c;
	else if (currentState == S21_WORD3_BIT_ADC6)
		Data_w2c[5]	<=	SDA_w2c;
	else if (currentState == S22_WORD3_BIT_ADC5)
		Data_w2c[4]	<=	SDA_w2c;
	else if (currentState == S23_WORD3_BIT_ADC4)
		Data_w2c[3]	<=	SDA_w2c;
	else if (currentState == S24_WORD3_BIT_ADC3)
		Data_w2c[2]	<=	SDA_w2c;
	else if (currentState == S25_WORD3_BIT_ADC2)
		Data_w2c[1]	<=	SDA_w2c;
	else if (currentState == S26_WORD3_BIT_ADC1)
		Data_w2c[0]	<=	SDA_w2c;

	//Activate writeReq only during the 3rd Ack
	always_ff @(negedge SCL or posedge I2C_Idle_ADC_State )
	if( I2C_Idle_ADC_State == ONE_ADC )
		writeReq	<=	ZERO_ADC;
	else
		if ((currentState == S27_ACK3_WRITE_ADC) && (chipOK == ONE_ADC))
			writeReq	<=	ONE_ADC;
		else
			writeReq	<=	ZERO_ADC;

	//Create a signal that means the 4 MSBs of the page address match the chip address
	assign	chipOK		=	(pageAddr[6:3] ==	chipID)		?	ONE_ADC	:	ZERO_ADC;

	//Activate softReset if the page is the right page and reg is the right reg during the appropriate 10 bit periods
	assign	page00		=	(pageAddr	==	7'b0000000)	?	ONE_ADC	:	ZERO_ADC;
	assign	reg06		=	(regAddr	==	8'b00000110)	?	ONE_ADC	:	ZERO_ADC;
	assign	softResetActive	=	(	(currentState	==	S18_ACK2_ADC)	||
						(currentState	==	S19_WORD3_BIT_ADC8) ||
						(currentState	==	S20_WORD3_BIT_ADC7) ||
						(currentState	==	S21_WORD3_BIT_ADC6) ||
						(currentState	==	S22_WORD3_BIT_ADC5) ||
						(currentState	==	S23_WORD3_BIT_ADC4) ||
						(currentState	==	S24_WORD3_BIT_ADC3) ||
						(currentState	==	S25_WORD3_BIT_ADC2) ||
						(currentState	==	S26_WORD3_BIT_ADC1) ||
						(currentState	==	S27_ACK3_WRITE_ADC) ||
						(currentState	==	S28_ACK3_READ_ADC)	)	?	ONE_ADC	:	ZERO_ADC;

//***************************
//***
//***	Response to soft reset
//***
//***************************
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO_ADC)
		softReset	<=	ZERO_ADC;
	else if ((softResetActive == ONE_ADC) && (page00 == ONE_ADC) && (reg06 == ONE_ADC))
		softReset	<=	ONE_ADC;
	else
		softReset	<=	ZERO_ADC;

//***************************
//***
//***	Combinatorial Logic to create SDA_c2w
//***
//***************************
	always_comb
	unique case	(currentState)

	S0_I2C_IDLE_ADC	:	SDA_c2w		=	ONE_ADC;

	S1_WORD1_BIT_ADC7	:	SDA_c2w		=	ZERO_ADC;

	S2_WORD1_BIT_ADC6	:	SDA_c2w		=	ZERO_ADC;

	S3_WORD1_BIT_ADC5	:	SDA_c2w		=	ZERO_ADC;

	S4_WORD1_BIT_ADC4	:	SDA_c2w		=	ZERO_ADC;

	S5_WORD1_BIT_ADC3	:	SDA_c2w		=	ZERO_ADC;

	S6_WORD1_BIT_ADC2	:	SDA_c2w		=	ZERO_ADC;

	S7_WORD1_BIT_ADC1	:	SDA_c2w		=	ZERO_ADC;

	S8_WORD1_RW_ADC	:	SDA_c2w		=	ZERO_ADC;

	S9_ACK1_ADC		:	SDA_c2w		=	ONE_ADC;

	S10_WORD2_BIT_ADC8	:	SDA_c2w		=	ZERO_ADC;

	S11_WORD2_BIT_ADC7	:	SDA_c2w		=	ZERO_ADC;

	S12_WORD2_BIT_ADC6	:	SDA_c2w		=	ZERO_ADC;

	S13_WORD2_BIT_ADC5	:	SDA_c2w		=	ZERO_ADC;

	S14_WORD2_BIT_ADC4	:	SDA_c2w		=	ZERO_ADC;

	S15_WORD2_BIT_ADC3	:	SDA_c2w		=	ZERO_ADC;

	S16_WORD2_BIT_ADC2	:	SDA_c2w		=	ZERO_ADC;

	S17_WORD2_BIT_ADC1	:	SDA_c2w		=	ZERO_ADC;

	S18_ACK2_ADC	:	SDA_c2w		=	ONE_ADC;

	S19_WORD3_BIT_ADC8	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[7]	:	ZERO_ADC);

	S20_WORD3_BIT_ADC7	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[6]	:	ONE_ADC);

	S21_WORD3_BIT_ADC6	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[5]	:	ZERO_ADC);

	S22_WORD3_BIT_ADC5	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[4]	:	ONE_ADC);

	S23_WORD3_BIT_ADC4	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[3]	:	ONE_ADC);

	S24_WORD3_BIT_ADC3	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[2]	:	ZERO_ADC);

	S25_WORD3_BIT_ADC2	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[1]	:	ONE_ADC);

	S26_WORD3_BIT_ADC1	:	SDA_c2w		=	((chipOK == ONE_ADC)	?	Data_c2w[0]	:	ZERO_ADC);

	S27_ACK3_WRITE_ADC	:	SDA_c2w		=	ONE_ADC;

	S28_ACK3_READ_ADC	:	SDA_c2w		=	ONE_ADC;

	S29_UNUSED_ADC	:	SDA_c2w		=	ZERO_ADC;

	S30_UNUSED_ADC	:	SDA_c2w		=	ZERO_ADC;

	S31_UNUSED_ADC	:	SDA_c2w		=	ZERO_ADC;

	endcase


//***************************
//***
//***	Combinatorial Logic to create Ack1, Ack2, Ack3
//***
//***************************
	assign	Ack1	=	(currentState == S9_ACK1_ADC)	?	ONE_ADC	:	ZERO_ADC;

	assign	Ack2	=	(currentState == S18_ACK2_ADC)	?	ONE_ADC	:	ZERO_ADC;

	assign	Ack3	=	((currentState == S27_ACK3_WRITE_ADC) || (currentState == S28_ACK3_READ_ADC))	?	ONE_ADC	:	ZERO_ADC;

endmodule
