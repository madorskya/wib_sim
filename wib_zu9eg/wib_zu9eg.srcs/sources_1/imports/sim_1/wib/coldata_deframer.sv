module coldata_deframer
(
    input [7 : 0] rx_usrclk2, // rx data clocks, one per COLDATA chip
    input [15 :0] rx_data [15:0],
    input [1:0]   rx_k [15:0],
    input mmcm_reset,

    output [13:0] deframed [15:0][31:0],
    output [ 7:0] time8 [15:0],
    output [15:0] valid14,
    output [15:0] valid12,
    output [1:0]  crc_err [15:0],
    input         rxclk2x // slightly faster than doubled rx clock for deframed data
);


    genvar gi;
    generate
        for (gi = 0; gi < 16; gi++)
        begin
            coldata_deframer_single #(.NUM(gi)) df_s
            (
                .rxclk2x    (rxclk2x      ),
                .rx_usrclk2 (rx_usrclk2 [gi/2]  ),
                .rx_data    (rx_data  [gi]),
                .rx_k       (rx_k     [gi]),
                .deframed   (deframed [gi]),
                .time8      (time8    [gi]),
                .valid14    (valid14  [gi]),
                .valid12    (valid12  [gi]),
                .crc_err    (crc_err  [gi])
            );
            
        end
    endgenerate

endmodule

