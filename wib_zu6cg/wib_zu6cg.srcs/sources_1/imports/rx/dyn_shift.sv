`timescale 1ns / 1ps 

// this module infers cascaded SRLC32E primitives
// copied from XST manual, reworked a bit
module dyn_shift (CLK, CE, SEL, SI, DO);
	parameter SELWIDTH = 5;
	parameter BW = 1;
	
	input CLK, CE;
	input [BW-1:0] SI;
	input [SELWIDTH-1:0] SEL;
	output [BW-1:0] DO;
	
	localparam DATAWIDTH = (1 << SELWIDTH); //2**SELWIDTH;
	
	reg [DATAWIDTH-1:0] data [BW-1:0];
	
	genvar gi;
	generate
		for (gi = 0; gi < BW; gi = gi+1)
		begin: assign_blk
			assign DO[gi] = data[gi][SEL];
		end
	endgenerate

	integer i;
	always @(posedge CLK)
	begin
		if (CE == 1'b1)
			for (i = 0; i < BW; i = i+1)
				data[i] = {data[i][DATAWIDTH-2:0], SI[i]};
	end
endmodule
