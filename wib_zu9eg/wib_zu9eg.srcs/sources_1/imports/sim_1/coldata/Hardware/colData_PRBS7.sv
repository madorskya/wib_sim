`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//10 bits as output in each clock cycle. The prbs7 sequence length is 2^7-1.
//Project: COLDATAP2
//Designers: Sandeep Miryala and Jim Hoff
//Institution: Fermilab
//Data: 01/16/2019
// Polynomial X^7 + X^6 + 1 based on Agilent Jbert scope
//Expected code sequence when enabled:  3F8, 041, 214, 1E4, 167, 14F, 287, 049, 2D6, 3D8 .....
`timescale 1ns/1ps

//Prediction Algorithm (purely combinational) using the present state of the registers
module prbs7FlowControl (state, nextState);
    // Inputs:
	input logic [6:0] state;
    // Outputs:
	output logic [9:0] nextState;

	always_comb
		begin

			nextState[9] = state[6] ^ state[5];
			nextState[8] = state[5] ^ state[4];
			nextState[7] = state[4] ^ state[3];
			nextState[6] = state[3] ^ state[2];
			nextState[5] = state[2] ^ state[1];
			nextState[4] = state[1] ^ state[0];
			nextState[3] = nextState[9] ^ state[0];
			nextState[2] = nextState[9] ^ nextState[8];
			nextState[1] = nextState[8] ^ nextState[7];
			nextState[0] = nextState[7] ^ nextState[6];

		end
endmodule


// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// State Machine (Sequential registers assignment)

module prbs7InitializationRegisters (clock, reset, enablePattern, nextState, state, prbsReg);

    input logic clock;
    input logic reset;
    input logic enablePattern;
    input logic [9:0] nextState;
    output logic [6:0]state;
    output logic [9:0]prbsReg;

// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //
// -------------------------------------------------------------------------------------------------------------------------------------------------- //

always @(posedge clock or negedge reset)
begin
	if (reset == 1'b0)
	begin
		state <= 7'b0101010;
		prbsReg <= 10'b1010101010;
	end
	else if(enablePattern == 1'b1)
	begin

		state[6:0] <= nextState[6:0];
		prbsReg <= nextState;
	end
	else
	begin
		state <= 7'b0101010;
		prbsReg <= 10'b1010101010;
	end
end
endmodule

//Top module that instantiates the combinational and sequential modules
module colData_PRBS7 (clock, reset, enablePattern, prbsReg);
    input logic clock;
    input logic reset;
    input logic enablePattern;
   // Outputs:
    output logic [9:0] prbsReg;

	logic [6:0] state;
	logic [9:0] nextState;

	prbs7FlowControl FC(
    	.state(state),
    	// Outputs:
    	.nextState(nextState)
    	);

	prbs7InitializationRegisters IR(
    	.clock(clock),
    	.reset(reset),
    	.enablePattern(enablePattern),
    	.nextState(nextState),
    	.state(state),
    	.prbsReg(prbsReg)
    	);

endmodule
