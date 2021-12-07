module frame_builder
(
    input [13:0] deframed [15:0][31:0], // [link][sample]
    input [ 7:0] time8 [15:0], //[link]
    input [15:0] valid14,
    input [15:0] valid12,
    input [1:0]  crc_err [15:0],
    input rxclk2x, // deframed data clock

    input  [15:0] link_mask, // this input allows to disable some links in case the are broken
    output [31:0] daq_stream [1:0], // data to felix
    output [3:0]  daq_stream_k [1:0], // K symbol flags to felix
    output [1:0]  daq_data_type [1:0], // data_type flags for felix
    input         daq_clk,
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
    input [5:0]  version,
    input [7:0]  femb_pulser_in_frame,
    input [7:0]  context_fld, 
    input        ready, 
    input [3:0]  psr_cal, 
    input        ws, 
    input [15:0] flex

);

    // passing deframed [7:0] into frame_builder_single does not work in simulation for some reason
    // even though it should, and does work in synthesis.
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

    wire [63:0] tstamp_deframed;

    // modules below generate daq streams for each of the FELIX links
    frame_builder_single #(.NUM(0)) fbs0
    (
        .deframed     (deframed0),
        .time8        (time8    [7:0]),
        .valid14      (valid14  [7:0]),
        .valid12      (valid12  [7:0]),
        .crc_err      (crc_err  [7:0]),
        .rxclk2x      (rxclk2x       ), 
        .link_mask    (link_mask[7:0]),
        .daq_stream   (daq_stream   [0]),
        .daq_stream_k (daq_stream_k [0]),
        .daq_data_type(daq_data_type[0]),
        .daq_clk      (daq_clk),
        .ts_tstamp    (tstamp_deframed),
        .reset        (reset),
        .fake_daq_stream (fake_daq_stream),
        .bp_crate_addr (bp_crate_addr),
        .bp_slot_addr  (bp_slot_addr ),
        .si5344_lol    (si5344_lol),
        .link          (link [0]),
        .crate_id      (crate_id),
        .det_id        (det_id  ),
        .version       (version ),
        .femb_pulser_in_frame (femb_pulser_in_frame),
        .context_fld   (context_fld), 
        .ready         (ready      ), 
        .psr_cal       (psr_cal    ), 
        .ws            (ws         ), 
        .flex          (flex       )
    );

    frame_builder_single #(.NUM(1)) fbs1
    (
        .deframed     (deframed1),
        .time8        (time8    [15:8]),
        .valid14      (valid14  [15:8]),
        .valid12      (valid12  [15:8]),
        .crc_err      (crc_err  [15:8]),
        .rxclk2x      (rxclk2x        ), 
        .link_mask    (link_mask[15:8]),
        .daq_stream   (daq_stream   [1]),
        .daq_stream_k (daq_stream_k [1]),
        .daq_data_type(daq_data_type[1]),
        .daq_clk      (daq_clk),
        .ts_tstamp    (tstamp_deframed),
        .reset        (reset),
        .fake_daq_stream (fake_daq_stream),
        .bp_crate_addr (bp_crate_addr),
        .bp_slot_addr  (bp_slot_addr ),
        .si5344_lol    (si5344_lol),
        .link          (link [1]),
        .crate_id      (crate_id),
        .det_id        (det_id  ),
        .version       (version ),
        .femb_pulser_in_frame (femb_pulser_in_frame),
        .context_fld   (context_fld), 
        .ready         (ready      ), 
        .psr_cal       (psr_cal    ), 
        .ws            (ws         ), 
        .flex          (flex       )
    );

    // async fifo for time stamp reclocking into deframed data domain
    time_stamp_fifo ts_fifo 
    (
        .srst        (1'b0),  
        .wr_clk      (ts_clk),
        .rd_clk      (rxclk2x),
        .din         (ts_tstamp),   
        .wr_en       (1'b1), 
        .rd_en       (1'b1), 
        .dout        (tstamp_deframed),  
        .full        (),  
        .empty       (), 
        .valid       (), 
        .wr_rst_busy (),
        .rd_rst_busy () 
    );
    

endmodule

