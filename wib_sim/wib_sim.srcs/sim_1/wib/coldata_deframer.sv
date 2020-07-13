module coldata_deframer
(
    input [0 : 0] rx_usrclk2, // rx data clock
    input [15 :0] rx_data [15:0],
    input [1:0]   rx_k [15:0],
    input mmcm_reset
);

    wire rxclk2x;

    genvar gi;
    generate
        for (gi = 0; gi < 16; gi++)
        begin
            coldata_deframer_single df_s
            (
                .rxclk2x    (rxclk2x),
                .rx_usrclk2 (rx_usrclk2),
                .rx_data    (rx_data [gi]),
                .rx_k       (rx_k [gi])
            );
            
        end
    endgenerate

    coldata_deframer_mmcm df_mmcm
    (
        .clk_out1 (rxclk2x),
        .reset    (mmcm_reset),
        .locked   (),
        .clk_in1  (rx_usrclk2)
    );
    

endmodule

