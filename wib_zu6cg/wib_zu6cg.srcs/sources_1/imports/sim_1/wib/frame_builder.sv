module frame_builder
(
    input [13:0] deframed [15:0][31:0], // [link][sample]
    input [ 7:0] time8 [15:0], //[link]
    input [15:0] time16 [15:0], //[link]
    input [15:0] valid14,
    input [15:0] valid12,
    input [1:0]  crc_err [15:0], // instant CRC errors for each frame [link][adc]
    input rxclk2x, // deframed data clock

    input  [15:0] link_mask, // this input allows to disable some links in case the are broken
    
    output [63:0] ddi_d [7:0],
    output [7:0]  ddi_d_last,
    output [7:0]  ddi_d_valid,

    input  [63:0] ts_tstamp, // time stamp from timing endpoint
    input         ts_clk, // time stamp clock
    input         reset,
    input         fake_daq_stream,

    input [3:0] bp_crate_addr,
    input [3:0] bp_slot_addr,
    input si5344_lol, 

    // new header parameters, see Josh's message from 2021-12-06
    input [5:0]  link [1:0],
    input [9:0]  crate_id,
    input [5:0]  det_id,
    input [7:0]  femb_pulser_in_frame,
    input [7:0]  context_fld, 
    input        ready, 
    input [3:0]  psr_cal, 
    input        ws, 
    input [15:0] flex,
    input raw_channel_map
);

    reg [63:0] tstamp_deframed;
    genvar gi;
    generate
        for (gi = 0; gi < 8; gi++)
        begin
            // one FB for every 64 channels
            frame_builder_single #(.NUM(gi)) fbs
            (
                .deframed             (deframed [gi*2+1 : gi*2]),
                .time8                (time8    [gi*2+1 : gi*2]),
                .time16               (time16   [gi*2+1 : gi*2]),
                .valid14              (valid14  [gi*2+1 : gi*2]),
                .valid12              (valid12  [gi*2+1 : gi*2]),
                .crc_err              (crc_err  [gi*2+1 : gi*2]),
                .rxclk2x              (rxclk2x       ), 
                .link_mask            (link_mask[gi*2+1 : gi*2]),
                
                .ddi_d                (ddi_d       [gi]),
                .ddi_d_last           (ddi_d_last  [gi]),
                .ddi_d_valid          (ddi_d_valid [gi]),
                
                .ts_tstamp            (tstamp_deframed),
                .ts_clk               (ts_clk),
                .reset                (reset),
                .fake_daq_stream      (fake_daq_stream),
                .bp_crate_addr        (bp_crate_addr),
                .bp_slot_addr         (bp_slot_addr ),
                .si5344_lol           (si5344_lol),
                .link                 (link [gi/4]),
                .crate_id             (crate_id),
                .det_id               (det_id  ),
                .femb_pulser_in_frame (femb_pulser_in_frame),
                .context_fld          (context_fld), 
                .ready                (ready      ), 
                .psr_cal              (psr_cal [gi/2] ), 
                .ws                   (ws         ), 
                .flex                 (flex       ),
                .raw_channel_map      (raw_channel_map)
            );
        end
    endgenerate

    // FIFO not needed anymore, everything is synchronous    
    always @(posedge rxclk2x) tstamp_deframed = ts_tstamp;

endmodule

