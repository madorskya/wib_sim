`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//10 bits as output from prbs15 with sequence length 2^15-1
//Project: COLDATAP2
//Designers: Sandeep Miryala and Jim Hoff
//Institution: Fermilab
//Data: 01/06/2017
//PRBS15: 3FF, 3E0, 001, 000, 060, 005, 000, 1E0, 011, 001 .....
`timescale 1ns/1ps

//Prediction Algorithm (purely combinational) using the present state of the registers
module prbs15FlowControl (
    // Inputs:
	input wire [14:0] state,

    // Outputs:
	output reg [9:0] nextState
	);
	always @(state)
	begin

		nextState[9] = state[14] ^ state[13];
		nextState[8] = state[13] ^ state[12];
		nextState[7] = state[12] ^ state[11];
		nextState[6] = state[11] ^ state[10];
		nextState[5] = state[10] ^ state[9];
		nextState[4] = state[9] ^ state[8];
		nextState[3] = state[8] ^ state[7];
		nextState[2] = state[7] ^ state[6];
		nextState[1] = state[6] ^ state[5];
		nextState[0] = state[5] ^ state[4];

	end
endmodule


// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// State Machine (Sequential registers assignment)

module prbs15InitializationRegisters (
    input wire clock,
    input wire reset,
    input wire enablePattern,
    input wire [9:0] nextState,
    output reg [14:0]state,
    output reg [9:0]prbsReg
    );

// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //

always @(posedge clock or negedge reset)
begin
	if (reset == 1'b0)
	begin
		state <= 15'b010101010101010;
		prbsReg <= 10'b1010101010;
	end
	else if(enablePattern == 1'b1)
	begin
		state[14:10] <= state[4:0];
		state[9:0] <= nextState[9:0];
		prbsReg <= nextState;
	end
	else
	begin
		state <= 15'b010101010101010;
		prbsReg <= 10'b1010101010;
	end
end
endmodule

//Top module that instantiates the combinational and sequential modules

module colData_PRBS15 (
    input wire clock,
    input wire reset,
    input wire enablePattern,
   // Outputs:
    output wire [9:0] prbsReg
);

wire [14:0] state;
wire [9:0] nextState;

prbs15FlowControl FC(
    .state(state),
    // Outputs:
    .nextState(nextState)
    );

prbs15InitializationRegisters IR(
    .clock(clock),
    .reset(reset),
    .enablePattern(enablePattern),
    .nextState(nextState),
    .state(state),
    .prbsReg(prbsReg)
    );

endmodule
