`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
//10 bits as output from prbs7 with sequence length 2^7-1
//Project: COLDATAP2
//Designers: Sandeep Miryala and Jim Hoff
//Institution: Fermilab
//Data: 09/13/2018
// Polynomial X^7 + X^6 + 1 based on Agilent Jbert scope
`timescale 1ns/1ps

//Top module that instantiates the combinational and sequential modules
module prbs7TopModule (clock, reset, enPattern, prbsReg);
    input logic clock;
    input logic reset;
    input logic enPattern;
   // Outputs:
    output logic prbsReg;

	logic [6:0] state;
	logic nextState;

	always_comb
		begin
			nextState = state[6] ^ state[5];
		end

	always @(posedge clock or negedge reset)
		if (reset == 1'b0)
			begin
				state <= 7'b0101010;
				prbsReg <= 1'b0;
			end
		else if (enPattern == 1'b1)
			begin
				state[6:0] <= {state[5:0],nextState};
				prbsReg <= nextState;
			end
		else
			begin
				state <= 7'b0101010;
				prbsReg <= 1'b0;
			end

endmodule
