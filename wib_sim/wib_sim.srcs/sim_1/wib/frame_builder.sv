module frame_builder
(
    input [13:0] deframed [15:0][31:0], // [link][sample]
    input [15:0] valid14,
    input [15:0] valid12,
    input [1:0]  crc_err [15:0],
    input rx_usrclk2, // rx data clock

    input  [15:0] link_mask, // this input allows to disable some links in case the are broken
    output [31:0] daq_stream [1:0], // data to felix
    output [3:0]  daq_stream_k [1:0], // K symbol flags to felix
    input         daq_clk
);
/*
    genvar gi;
    generate
        for (gi = 0; gi < 2; gi++) // one builder per output link
        begin: frm_bld_loop
            frame_builder_single fbs
            (
                .deframed     (deframed [gi*8+7:gi*8]),
                .valid14      (valid14  [gi*8+7:gi*8]),
                .valid12      (valid12  [gi*8+7:gi*8]),
                .crc_err      (crc_err  [gi*8+7:gi*8]),
                .rx_usrclk2   (rx_usrclk2          ), 
                .link_mask    (link_mask[gi*8+7:gi*8]),
                .daq_stream   (daq_stream   [gi]),
                .daq_stream_k (daq_stream_k [gi])
            );
        end
    endgenerate
*/

    // passing deframed [7:0] into frame_builder_single does not work for some reason
    // even though it should and does in synthesis.
    // have to assign each sub-bus separately
    wire [13:0] deframed0 [7:0][31:0];
    wire [13:0] deframed1 [7:0][31:0];

    assign deframed0[0] = deframed[0];
    assign deframed0[1] = deframed[1];
    assign deframed0[2] = deframed[2];
    assign deframed0[3] = deframed[3];
    assign deframed0[4] = deframed[4];
    assign deframed0[5] = deframed[5];
    assign deframed0[6] = deframed[6];
    assign deframed0[7] = deframed[7];
    
    assign deframed1[0] = deframed[8];
    assign deframed1[1] = deframed[9];
    assign deframed1[2] = deframed[10];
    assign deframed1[3] = deframed[11];
    assign deframed1[4] = deframed[12];
    assign deframed1[5] = deframed[13];
    assign deframed1[6] = deframed[14];
    assign deframed1[7] = deframed[15];

    // modules below generate daq streams for each of the FELIX links
    frame_builder_single fbs0
    (
        .deframed     (deframed0),
        .valid14      (valid14  [7:0]),
        .valid12      (valid12  [7:0]),
        .crc_err      (crc_err  [7:0]),
        .rx_usrclk2   (rx_usrclk2          ), 
        .link_mask    (link_mask[7:0]),
        .daq_stream   (daq_stream   [0]),
        .daq_stream_k (daq_stream_k [0]),
        .daq_clk      (daq_clk)
    );

    frame_builder_single fbs1
    (
        .deframed     (deframed1),
        .valid14      (valid14  [15:8]),
        .valid12      (valid12  [15:8]),
        .crc_err      (crc_err  [15:8]),
        .rx_usrclk2   (rx_usrclk2          ), 
        .link_mask    (link_mask[15:8]),
        .daq_stream   (daq_stream   [1]),
        .daq_stream_k (daq_stream_k [1]),
        .daq_clk      (daq_clk)
    );

endmodule

