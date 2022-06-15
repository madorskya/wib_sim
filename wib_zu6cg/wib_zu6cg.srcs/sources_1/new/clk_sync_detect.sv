`timescale 1ns / 1ps
module clk_sync_detect
(
    input reset,
    input [1:0] c,
    output [15:0] diff
);

    reg [15:0] cnt [1:0];
    
    assign diff = cnt[1] - cnt[0];
    
    genvar gi;
    generate
        for (gi = 0; gi < 2; gi++)
        begin
            always @(posedge c[gi])
            begin
                if (reset) cnt [gi] = 0;
                else cnt [gi]++;
            end
        end
    endgenerate 

endmodule
