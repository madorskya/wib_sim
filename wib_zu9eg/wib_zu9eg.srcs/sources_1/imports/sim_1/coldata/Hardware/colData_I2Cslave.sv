`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"

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
		if(clearFind == ONE)
			foundStart	<=	ZERO;
		else if(SCL == ONE)
			foundStart	<=	ONE;

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
		if(clearFind == ONE)
			foundStop	<=	ZERO;
		else if(SCL == ONE)
			foundStop	<=	ONE;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: I2C_state
//***		An auxiliary reset for the I2C state machine in the event that communication
//***		is broken down and COLDATA and its FPGA handler do not agree on the present state
//***		of the I2C slave on COLDATA.  Holding the SDA=SCL=1 for more than 64 cycles of the
//***		64 MHz clock will ensure that the I2C slave is in its Idle State.
//***
//*******************************************************************************************
//*******************************************************************************************
module	I2C_auxIdleRst	(	output	logic		ResetI2C,
				input	logic		Clk64MHz,
				input	logic		SDA,
				input	logic		SCL,
				input	I2C_States_t	I2C_State,
				input	logic		Rst_ACTIVE_LOW
			);

//***************************
//***
//***	Variables
//***
//***************************
	var logic	[5:0]	badIdleCount;
	I2C_Rst_States_t	auxIdleState;
	I2C_Rst_States_t	nextAuxIdleState;
	I2C_Rst_States_t	temp1_AIS;
	I2C_Rst_States_t	temp2_AIS;
	I2C_Rst_States_t	temp3_AIS;

	var logic		idleSignal;
	var logic		badIdling;
	var logic		idleState;
	var logic		countDone;

//***************************
//***
//***	Assignments
//***
//***************************
	assign	idleState	=	(I2C_State	==	S0_I2C_IDLE)	?	ONE	:	ZERO;
	assign	idleSignal	=	SDA	&&	SCL;
	assign	badIdling	=	idleSignal	&&	!idleState;

	assign	ResetI2C	=	(auxIdleState	==	S2_RESET)	?	ONE	:	ZERO;
	assign	rstBadIdleCount	=	(auxIdleState	==	S0_STANDBY)	?	ONE	:	ZERO;
	assign	incBadIdleCount	=	(auxIdleState	==	S1_COUNT)	?	ONE	:	ZERO;
	assign	countDone	=	(badIdleCount	==	6'b111111)	?	ONE	:	ZERO;

//***************************
//***
//***	State Machine
//***
//***************************
	//State Registers
	always_ff @(posedge Clk64MHz or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		auxIdleState	<=	S0_STANDBY;
	else
		auxIdleState	<=	nextAuxIdleState;

	//State Logic
	assign	temp1_AIS	=	(badIdling == ONE)	?	S1_COUNT	:	S0_STANDBY;
	assign	temp2_AIS	=	(countDone == ZERO)	?	S1_COUNT	:	S2_RESET;
	assign	temp3_AIS	=	(badIdling == ZERO)	?	S0_STANDBY	:	temp2_AIS;

	always_comb
		unique case	(auxIdleState)

			S0_STANDBY	:	nextAuxIdleState	=	temp1_AIS;

			S1_COUNT	:	nextAuxIdleState	=	temp3_AIS;

			S2_RESET	:	nextAuxIdleState	=	S0_STANDBY;

			S3_UNUSED	:	nextAuxIdleState	=	S0_STANDBY;

		endcase

//***************************
//***
//***	Follow-on Logic
//***
//***************************
	always_ff @(negedge Clk64MHz or posedge rstBadIdleCount)
	if (rstBadIdleCount == ONE)
		badIdleCount 	<= 	6'b0;
	else if (incBadIdleCount == ONE)
		badIdleCount	<=	badIdleCount + 6'b000001;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: I2C_state
//***
//*******************************************************************************************
//*******************************************************************************************
module	I2C_state	(	output	I2C_States_t	currentState,
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

	I2C_States_t	nextState;

//***************************
//***
//***	Assignments
//***
//***************************
	//Instantiate I2C_foundStart and I2C_foundStop to find Start and Stop bits
	assign	rstForced	=	(!Rst_ACTIVE_LOW)	||	auxiliaryReset;
	assign	ssLogic		=	(currentState == S7_WORD1_BIT1)	?	ONE	:	ZERO;

	always_ff @(negedge SCL or posedge rstForced )
		if (rstForced	==	ONE)
			stopTheStart	<=	ZERO;
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
	I2C_auxIdleRst	aux1	(	.ResetI2C(		auxiliaryReset	),
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
	assign	stateRst	=	(!Rst_ACTIVE_LOW)	||	auxiliaryReset	|| (foundStop && (currentState != S0_I2C_IDLE));

	always_ff @(posedge SCL or posedge stateRst)
	if (stateRst == ONE)
		currentState	<=	S0_I2C_IDLE;
	else
		currentState	<=	nextState;

	//State Logic
	always_comb
	begin
	case	(currentState)
	S0_I2C_IDLE		:	if(foundStart == ONE)
					nextState	=	S1_WORD1_BIT7;
				else
					nextState	=	S0_I2C_IDLE;

	S1_WORD1_BIT7	:	nextState	=	S2_WORD1_BIT6;

	S2_WORD1_BIT6	:	nextState	=	S3_WORD1_BIT5;

	S3_WORD1_BIT5	:	nextState	=	S4_WORD1_BIT4;

	S4_WORD1_BIT4	:	nextState	=	S5_WORD1_BIT3;

	S5_WORD1_BIT3	:	nextState	=	S6_WORD1_BIT2;

	S6_WORD1_BIT2	:	nextState	=	S7_WORD1_BIT1;

	S7_WORD1_BIT1	:	nextState	=	S8_WORD1_RW;

	S8_WORD1_RW	:	nextState	=	S9_ACK1;

	S9_ACK1		:	nextState	=	S10_WORD2_BIT8;

	S10_WORD2_BIT8	:	nextState	=	S11_WORD2_BIT7;

	S11_WORD2_BIT7	:	nextState	=	S12_WORD2_BIT6;

	S12_WORD2_BIT6	:	nextState	=	S13_WORD2_BIT5;

	S13_WORD2_BIT5	:	nextState	=	S14_WORD2_BIT4;

	S14_WORD2_BIT4	:	nextState	=	S15_WORD2_BIT3;

	S15_WORD2_BIT3	:	nextState	=	S16_WORD2_BIT2;

	S16_WORD2_BIT2	:	nextState	=	S17_WORD2_BIT1;

	S17_WORD2_BIT1	:	nextState	=	S18_ACK2;

	S18_ACK2	:	nextState	=	S19_WORD3_BIT8;

	S19_WORD3_BIT8	:	nextState	=	S20_WORD3_BIT7;

	S20_WORD3_BIT7	:	nextState	=	S21_WORD3_BIT6;

	S21_WORD3_BIT6	:	nextState	=	S22_WORD3_BIT5;

	S22_WORD3_BIT5	:	nextState	=	S23_WORD3_BIT4;

	S23_WORD3_BIT4	:	nextState	=	S24_WORD3_BIT3;

	S24_WORD3_BIT3	:	nextState	=	S25_WORD3_BIT2;

	S25_WORD3_BIT2	:	nextState	=	S26_WORD3_BIT1;

	S26_WORD3_BIT1	:	if(writeReq == ONE)
					nextState	=	S27_ACK3_WRITE;
				else
					nextState	=	S28_ACK3_READ;

	S27_ACK3_WRITE	:	nextState	=	S0_I2C_IDLE;

	S28_ACK3_READ	:	nextState	=	S0_I2C_IDLE;

	S29_UNUSED	:	nextState	=	S0_I2C_IDLE;

	S30_UNUSED	:	nextState	=	S0_I2C_IDLE;

	S31_UNUSED	:	nextState	=	S0_I2C_IDLE;

	//default		:	nextState	=	S0_I2C_IDLE;

	endcase
	end

	//Establish the writeReq signal
	always_ff @(negedge SCL)
	if(currentState == S8_WORD1_RW)
		writeReq	<=	~SDA;

endmodule

//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_I2Cslave
//***
//*******************************************************************************************
//*******************************************************************************************
module	colData_I2Cslave	(	output	logic				SDA_c2w,		//Data line from COLD to WARM
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
	I2C_States_t	currentState;

	logic		page00;
	logic		reg06;

	logic		softResetActive;

	wire		chipOK;

	logic 		I2C_Idle_State;

	//***************************
	//***
	//***	Combinatorial Logic
	//***
	//***************************

	always_comb begin
		I2C_Idle_State =	(currentState == S0_I2C_IDLE)	?	ONE	:	ZERO;
	end

//***************************
//***
//***	Logic to capture pageAddress for module I2C Relay Cell and notify of the validity
//***
//***************************
	assign	validCapPageAddr	=	(	(currentState	==	S10_WORD2_BIT8)	||
							(currentState	==	S11_WORD2_BIT7) ||
							(currentState	==	S12_WORD2_BIT6) ||
							(currentState	==	S13_WORD2_BIT5) ||
							(currentState	==	S14_WORD2_BIT4) ||
							(currentState	==	S15_WORD2_BIT3) ||
							(currentState	==	S16_WORD2_BIT2) ||
							(currentState	==	S17_WORD2_BIT1) ||
							(currentState	==	S18_ACK2) 	||
							(currentState	==	S19_WORD3_BIT8) ||
							(currentState	==	S20_WORD3_BIT7) ||
							(currentState	==	S21_WORD3_BIT6) ||
							(currentState	==	S22_WORD3_BIT5) ||
							(currentState	==	S23_WORD3_BIT4) ||
							(currentState	==	S24_WORD3_BIT3) ||
							(currentState	==	S25_WORD3_BIT2) ||
							(currentState	==	S26_WORD3_BIT1) ||
							(currentState	==	S27_ACK3_WRITE) ||
							(currentState	==	S28_ACK3_READ)	)	?	ONE	:	ZERO;

	always @(posedge validCapPageAddr)
		capturedPageAddr	<=	pageAddr;

//******************************************
//***
//***	*** CIRCUIT BLOCK INSTANTIATION ***
//***
//***	I2C_state
//***
//******************************************
	//Instantiate the State Machine
	I2C_state	I2Cstate0	(	.currentState(		currentState	),
						.SDA(			SDA_w2c		),
						.SCL(			SCL		),
						.Clk64MHz(		Clk64MHz	),
						.Rst_ACTIVE_LOW(	Rst_ACTIVE_LOW	)
					);

	//Load pageAddr on negedge of SCL during the right periods
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		pageAddr	<=	7'b0;
	else if (currentState == S1_WORD1_BIT7)
		pageAddr[6]	<=	SDA_w2c;
	else if (currentState == S2_WORD1_BIT6)
		pageAddr[5]	<=	SDA_w2c;
	else if (currentState == S3_WORD1_BIT5)
		pageAddr[4]	<=	SDA_w2c;
	else if (currentState == S4_WORD1_BIT4)
		pageAddr[3]	<=	SDA_w2c;
	else if (currentState == S5_WORD1_BIT3)
		pageAddr[2]	<=	SDA_w2c;
	else if (currentState == S6_WORD1_BIT2)
		pageAddr[1]	<=	SDA_w2c;
	else if (currentState == S7_WORD1_BIT1)
		pageAddr[0]	<=	SDA_w2c;

	//Capture the Read/Write Operation
	//always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	//if (Rst_ACTIVE_LOW == ZERO)
	//begin
	//	writeOp		<=	ZERO;
	//	readOp		<=	ZERO;
	//end
	//else if (currentState == S0_I2C_IDLE)
	//begin
	//	writeOp		<=	ZERO;
	//	readOp		<=	ZERO;
	//end
	//else if (currentState == S8_WORD1_RW)
	//begin
	//	writeOp		<=	!SDA_w2c;
	//	readOp		<=	SDA_w2c;
	//end

	//always_ff @(negedge SCL or posedge I2C_Idle_State)
	//if (I2C_Idle_State == ONE)
	//begin
	//	writeOp		<=	ZERO;
	//	readOp		<=	ZERO;
	//end
	//else if (currentState == S8_WORD1_RW)
	//begin
	//	writeOp		<=	!SDA_w2c;
	//	readOp		<=	SDA_w2c;
	//end

	logic 	setOpsNow;
	logic 	holdOpsNow;

	assign 	setOpsNow 	= (currentState == S8_WORD1_RW);

	assign 	holdOpsNow	=	(currentState == S9_ACK1)					||
												(currentState == S10_WORD2_BIT8)	||
												(currentState == S11_WORD2_BIT7)	||
												(currentState == S12_WORD2_BIT6)	||
												(currentState == S13_WORD2_BIT5)	||
												(currentState == S14_WORD2_BIT4)	||
												(currentState == S15_WORD2_BIT3)	||
												(currentState == S16_WORD2_BIT2)	||
												(currentState == S17_WORD2_BIT1)	||
												(currentState == S18_ACK2)				||
												(currentState == S19_WORD3_BIT8)	||
												(currentState == S20_WORD3_BIT7)	||
												(currentState == S21_WORD3_BIT6)	||
												(currentState == S22_WORD3_BIT5)	||
												(currentState == S23_WORD3_BIT4)	||
												(currentState == S24_WORD3_BIT3)	||
												(currentState == S25_WORD3_BIT2)	||
												(currentState == S26_WORD3_BIT1)	||
												(currentState == S27_ACK3_WRITE)	||
												(currentState == S28_ACK3_READ);

	always_ff @(negedge SCL or posedge I2C_Idle_State)
	if (I2C_Idle_State == ONE)
		begin
			writeOp		<=	ZERO;
			readOp		<=	ZERO;
		end
	else if (setOpsNow == ONE)
		begin
			writeOp		<=	!SDA_w2c;
			readOp		<=	SDA_w2c;
		end
	else if (holdOpsNow == ONE)
		begin
			writeOp		<=	writeOp;
			readOp		<=	readOp;
		end
	else
		begin
			writeOp		<=	ZERO;
			readOp		<=	ZERO;
		end

	//Load regAddr on negedge of SCL during the right periods
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		regAddr		<=	8'b0;
	else if (currentState == S10_WORD2_BIT8)
		regAddr[7]	<=	SDA_w2c;
	else if (currentState == S11_WORD2_BIT7)
		regAddr[6]	<=	SDA_w2c;
	else if (currentState == S12_WORD2_BIT6)
		regAddr[5]	<=	SDA_w2c;
	else if (currentState == S13_WORD2_BIT5)
		regAddr[4]	<=	SDA_w2c;
	else if (currentState == S14_WORD2_BIT4)
		regAddr[3]	<=	SDA_w2c;
	else if (currentState == S15_WORD2_BIT3)
		regAddr[2]	<=	SDA_w2c;
	else if (currentState == S16_WORD2_BIT2)
		regAddr[1]	<=	SDA_w2c;
	else if (currentState == S17_WORD2_BIT1)
		regAddr[0]	<=	SDA_w2c;

	//Load Data_w2c on negedge of SCL during the right periods
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		Data_w2c	<=	8'b0;
	else if (currentState == S19_WORD3_BIT8)
		Data_w2c[7]	<=	SDA_w2c;
	else if (currentState == S20_WORD3_BIT7)
		Data_w2c[6]	<=	SDA_w2c;
	else if (currentState == S21_WORD3_BIT6)
		Data_w2c[5]	<=	SDA_w2c;
	else if (currentState == S22_WORD3_BIT5)
		Data_w2c[4]	<=	SDA_w2c;
	else if (currentState == S23_WORD3_BIT4)
		Data_w2c[3]	<=	SDA_w2c;
	else if (currentState == S24_WORD3_BIT3)
		Data_w2c[2]	<=	SDA_w2c;
	else if (currentState == S25_WORD3_BIT2)
		Data_w2c[1]	<=	SDA_w2c;
	else if (currentState == S26_WORD3_BIT1)
		Data_w2c[0]	<=	SDA_w2c;

	//Activate writeReq only during the 3rd Ack
	always_ff @(negedge SCL or posedge I2C_Idle_State )
	if( I2C_Idle_State == ONE )
		writeReq	<=	ZERO;
	else
		if ((currentState == S27_ACK3_WRITE) && (chipOK == ONE))
			writeReq	<=	ONE;
		else
			writeReq	<=	ZERO;

	//Create a signal that means the 4 MSBs of the page address match the chip address
	assign	chipOK		=	(pageAddr[6:3] ==	chipID)		?	ONE	:	ZERO;

	//Activate softReset if the page is the right page and reg is the right reg during the appropriate 10 bit periods
	assign	page00		=	(pageAddr	==	7'b0000000)	?	ONE	:	ZERO;
	assign	reg06		=	(regAddr	==	8'b00000110)	?	ONE	:	ZERO;
	assign	softResetActive	=	(	(currentState	==	S18_ACK2)	||
						(currentState	==	S19_WORD3_BIT8) ||
						(currentState	==	S20_WORD3_BIT7) ||
						(currentState	==	S21_WORD3_BIT6) ||
						(currentState	==	S22_WORD3_BIT5) ||
						(currentState	==	S23_WORD3_BIT4) ||
						(currentState	==	S24_WORD3_BIT3) ||
						(currentState	==	S25_WORD3_BIT2) ||
						(currentState	==	S26_WORD3_BIT1) ||
						(currentState	==	S27_ACK3_WRITE) ||
						(currentState	==	S28_ACK3_READ)	)	?	ONE	:	ZERO;

//***************************
//***
//***	Response to soft reset
//***
//***************************
	always_ff @(negedge SCL or negedge Rst_ACTIVE_LOW)
	if (Rst_ACTIVE_LOW == ZERO)
		softReset	<=	ZERO;
	else if ((softResetActive == ONE) && (page00 == ONE) && (reg06 == ONE))
		softReset	<=	ONE;
	else
		softReset	<=	ZERO;

//***************************
//***
//***	Combinatorial Logic to create SDA_c2w
//***
//***************************
	always_comb
	unique case	(currentState)

	S0_I2C_IDLE	:	SDA_c2w		=	ONE;

	S1_WORD1_BIT7	:	SDA_c2w		=	ZERO;

	S2_WORD1_BIT6	:	SDA_c2w		=	ZERO;

	S3_WORD1_BIT5	:	SDA_c2w		=	ZERO;

	S4_WORD1_BIT4	:	SDA_c2w		=	ZERO;

	S5_WORD1_BIT3	:	SDA_c2w		=	ZERO;

	S6_WORD1_BIT2	:	SDA_c2w		=	ZERO;

	S7_WORD1_BIT1	:	SDA_c2w		=	ZERO;

	S8_WORD1_RW	:	SDA_c2w		=	ZERO;

	S9_ACK1		:	SDA_c2w		=	ONE;

	S10_WORD2_BIT8	:	SDA_c2w		=	ZERO;

	S11_WORD2_BIT7	:	SDA_c2w		=	ZERO;

	S12_WORD2_BIT6	:	SDA_c2w		=	ZERO;

	S13_WORD2_BIT5	:	SDA_c2w		=	ZERO;

	S14_WORD2_BIT4	:	SDA_c2w		=	ZERO;

	S15_WORD2_BIT3	:	SDA_c2w		=	ZERO;

	S16_WORD2_BIT2	:	SDA_c2w		=	ZERO;

	S17_WORD2_BIT1	:	SDA_c2w		=	ZERO;

	S18_ACK2	:	SDA_c2w		=	ONE;

	S19_WORD3_BIT8	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[7]	:	ZERO);

	S20_WORD3_BIT7	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[6]	:	ONE);

	S21_WORD3_BIT6	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[5]	:	ZERO);

	S22_WORD3_BIT5	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[4]	:	ONE);

	S23_WORD3_BIT4	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[3]	:	ONE);

	S24_WORD3_BIT3	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[2]	:	ZERO);

	S25_WORD3_BIT2	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[1]	:	ONE);

	S26_WORD3_BIT1	:	SDA_c2w		=	((chipOK == ONE)	?	Data_c2w[0]	:	ZERO);

	S27_ACK3_WRITE	:	SDA_c2w		=	ONE;

	S28_ACK3_READ	:	SDA_c2w		=	ONE;

	S29_UNUSED	:	SDA_c2w		=	ZERO;

	S30_UNUSED	:	SDA_c2w		=	ZERO;

	S31_UNUSED	:	SDA_c2w		=	ZERO;

	endcase


//***************************
//***
//***	Combinatorial Logic to create Ack1, Ack2, Ack3
//***
//***************************
	assign	Ack1	=	(currentState == S9_ACK1)	?	ONE	:	ZERO;

	assign	Ack2	=	(currentState == S18_ACK2)	?	ONE	:	ZERO;

	assign	Ack3	=	((currentState == S27_ACK3_WRITE) || (currentState == S28_ACK3_READ))	?	ONE	:	ZERO;

endmodule
