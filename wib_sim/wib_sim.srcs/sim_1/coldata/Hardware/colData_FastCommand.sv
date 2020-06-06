`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
////////////////////////////////////////////////////
//	Purpose:	COLDATA New Fast Command
//	Authors:	Sandeep Miryala & Jim Hoff
//	Institute:	Fermilab
//	Date:	Dec 18th 2017
//	Modified: Nov 27th, 2018
/////////////////////////////////////////////////////
module 	colData_FastCommand	(	input 	logic	Clk_64MHz_Sys,		//System Clock
															input 	logic	FastCommand_In,		//Serial Input: the fast commands
															output 	logic cmd_Sync,					//Positive-active signal indicating
																															//	a Sync Command.  Active from
																															//	one negative edge of the system Clock
																															//	to the next.
															output 	logic cmd_Edge,					//Positive-active signal indicating
																															//	an Edge Command.  Active from
																															//	one negative edge of the system Clock
																															//	to the next.
															output 	logic cmd_colData_Rst,	//Positive-active signal indicating
																															//	a colData Reset Command.  Active from
																															//	one negative edge of the system Clock
																															//	to the next.
															output 	logic cmd_Act,					//Positive-active signal indicating
																															//	an Act Command.  Active from
																															//	one negative edge of the system Clock
																															//	to the next.
															output 	logic status_Heartbeat	//If = 1, good heartbeat for this last 8 bits
																															//	of FastCommand.  If =0, bad heartbeat.
														);

	logic	[7:0]		cmdVector;
	logic					fastCmdBit;
	logic 				fastCommandReset;
	logic 				fcrLogic;
	logic 				logicEDGE;
	logic 				logicSYNC;
	logic 				logicACT;
	logic 				logicRst;

	FastCommand_BitStates_t		nextState;
	FastCommand_BitStates_t		state;

//***
//***	First Align the state machine to the incoming cmdVector
//***

//From outside world serial data is launched on pos edge of 64MHz clock, we are capturing this data on neg edge
//The captured data is delayed which is required for the command capture state machine
	always_ff @(negedge Clk_64MHz_Sys)
	begin
		fastCmdBit 				<=	FastCommand_In;
	end

//Captured data on neg edge is put into shift register, to generate fastCommandReset signal.
//	fastCommandReset will be a reset signal for the statmachines to follow
	always_ff @(posedge Clk_64MHz_Sys)
	begin
		cmdVector <=	{cmdVector[6:0], fastCmdBit};
	end

//A sequence 8'b1111_0000 will be fastCommandReset
	assign fcrLogic =	(cmdVector == 8'b1111_0000) ? 1'b1 : 1'b0;

	always @(negedge Clk_64MHz_Sys)
		fastCommandReset	=	fcrLogic;

//***
//***	Now that we are aligned, follow the state machine
//***

//last8 and fastCommandReset will bring the state machine to known state i.e Bit0
	always_ff @(posedge Clk_64MHz_Sys)
	begin
		if (fastCommandReset)
			state <= FastCommand_BitState_0;
		else
			state <= nextState;
	end

//Combinational block dictating the nextSate
	always_comb
		unique case (state)
			FastCommand_BitState_0	:	nextState = FastCommand_BitState_1;
			FastCommand_BitState_1	: nextState = FastCommand_BitState_2;
			FastCommand_BitState_2	: nextState = FastCommand_BitState_3;
			FastCommand_BitState_3	: nextState = FastCommand_BitState_4;
			FastCommand_BitState_4	: nextState = FastCommand_BitState_5;
			FastCommand_BitState_5	: nextState = FastCommand_BitState_6;
			FastCommand_BitState_6	: nextState = FastCommand_BitState_7;
			FastCommand_BitState_7	: nextState = FastCommand_BitState_0;
			//default			:	nextState = FastCommand_BitState_0;
		endcase

	always_comb
	if( state == FastCommand_BitState_7)
		case (cmdVector)
			FASTCMD_EDGE : begin
											logicEDGE =	ONE;
											logicSYNC	=	ZERO;
											logicACT	=	ZERO;
											logicRst	=	ZERO;
										 end
		 	FASTCMD_SYNC : begin
											logicEDGE =	ZERO;
											logicSYNC	=	ONE;
											logicACT	=	ZERO;
											logicRst	=	ZERO;
										 end
		 FASTCMD_ACT 	: begin
											logicEDGE =	ZERO;
											logicSYNC	=	ZERO;
											logicACT	=	ONE;
											logicRst	=	ZERO;
										 end
		 FASTCMD_RST 	: begin
											logicEDGE =	ZERO;
											logicSYNC	=	ZERO;
											logicACT	=	ZERO;
											logicRst	=	ONE;
										 end
		 default		 	: begin
											logicEDGE =	ZERO;
											logicSYNC	=	ZERO;
											logicACT	=	ZERO;
											logicRst	=	ZERO;
										 end
		endcase
	else
		begin
			logicEDGE =	ZERO;
			logicSYNC	=	ZERO;
			logicACT	=	ZERO;
			logicRst	=	ZERO;
		end

	always @(negedge Clk_64MHz_Sys)
		begin
			cmd_Sync				<=	logicSYNC;
			cmd_Edge				<=	logicEDGE;
			cmd_colData_Rst	<=	logicRst;
			cmd_Act					<=	logicACT;
		end

//Once the preamble (8'b1111_0000) has been given we expect Idle
// (8'b1010_1010) words to be given in the absence of commands.  Therefore,
// during the FastCommand_BitState_0 period, we should always have a 1 in the LSB of the
// cmdVector.  This is the heartbeat, and we need to monitor it.
	always @( negedge Clk_64MHz_Sys )
		if( state == FastCommand_BitState_0 )
			status_Heartbeat	<=	cmdVector[0];

endmodule
