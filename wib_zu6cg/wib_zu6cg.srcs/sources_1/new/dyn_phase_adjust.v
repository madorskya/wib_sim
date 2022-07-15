`timescale 1ns / 1ps

module dyn_phase_adjust
(
    input clk,
    input psen_in,
    output reg psen,
    output psincdec
);

    assign psincdec = 1'b0;
    reg psen_r, psen_rr;
	always @(posedge clk)
    begin
        psen = 1'b0;
        if (psen_r && !psen_rr)
        begin
            psen = 1'b1;
        end
    
        psen_rr = psen_r;
        psen_r = psen_in;
        
    end
endmodule
