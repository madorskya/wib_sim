module frame_builder
(
    input [13:0] deframed [15:0][31:0], // [link][sample]
    input [15:0] valid14,
    input [15:0] valid12,
    input [1:0]  crc_err [15:0],
    input rx_usrclk2 // rx data clock

);

    genvar gi;
    generate
        for (gi = 0; gi < 2; gi++) // one builder per output link
        begin: frm_bld_loop
            frame_builder_single fbs
            (
                .deframed   (deframed [gi*8 +: 8]),
                .valid14    (valid14  [gi*8 +: 8]),
                .valid12    (valid12  [gi*8 +: 8]),
                .crc_err    (crc_err  [gi*8 +: 8]),
                .rx_usrclk2 (rx_usrclk2 ) 
            );
        end
    endgenerate

endmodule

