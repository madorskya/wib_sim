module coldata_deframer
(
    input clk62p5, // system clock
    input [15 :0] rx_data [15:0],
    input [1:0]   rx_k [15:0],
    input mmcm_reset,

    output [13:0] deframed [15:0][31:0],
    output [ 7:0] time8 [15:0],
    output [15:0] time16 [15:0],
    output [15:0] valid14,
    output [15:0] valid12,
    output [1:0]  crc_err [15:0],
    output [7:0]  align8 [15:0],
    
    input  [63:0] dts_time, // original DTS stamp, in 62.5M domain
    output [63:0] dts_time_delayed, // delayed DTS stamp matching data
    input  [7:0]  dts_time_delay, // DTS stamp delay, must me longer than max cable delay
    
    input         rxclk2x // doubled system clock for deframed data
);


    genvar gi;
    generate
        for (gi = 0; gi < 16; gi++)
        begin
            coldata_deframer_single #(.NUM(gi)) df_s
            (
                .rxclk2x    (rxclk2x      ),
                .clk62p5    (clk62p5      ),
                .rx_data    (rx_data  [gi]),
                .rx_k       (rx_k     [gi]),
                .deframed   (deframed [gi]),
                .time8      (time8    [gi]),
                .time16_a     (time16   [gi]),
                .valid14_a    (valid14  [gi]),
                .valid12_a    (valid12  [gi]),
                
                .dts_time_delayed (dts_time_delayed[14:0]),
                .align8           (align8 [gi]     ),
                
                .crc_err    (crc_err  [gi])
            );
            
        end
    endgenerate
    
    // DTS time stamp delay shifter
    dyn_shift #(.SELWIDTH(8), .BW (64)) ds  
    (
        .CLK (rxclk2x), 
        .CE  ('b1), 
        .SEL (dts_time_delay), // value of 0 gives delay of 1
        .SI  (dts_time), 
        .DO  (dts_time_delayed)
    );
    
    
endmodule

