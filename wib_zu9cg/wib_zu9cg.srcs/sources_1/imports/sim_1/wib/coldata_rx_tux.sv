`timescale 1ns / 1ps

module coldata_rx_tux
(
    input  [3 : 0] gtrefclk00p_in       , // reference clocks, 128M
    input  [3 : 0] gtrefclk00n_in       , // reference clocks, 128M
    input [15 : 0] gthrxn_in           , // RX diff lines
    input [15 : 0] gthrxp_in           ,

    input  [0 : 0] reset_clk_64M_in    , // 64 M clock for reset circuits
    input  [0 : 0] reset_all_in        , // common reset for all circiuts
    output [0 : 0] reset_rx_done_out   , 

    output [7 : 0] rx_usrclk2_out      , // rx data clocks, one per COLDATA chip
    output [15 :0] rx_data [15:0]      ,
    output [15 :0] rxbyteisaligned_out ,
    output [15 :0] rxbyterealign_out   ,
    output [15 :0] rxcommadet_out      ,
    output [1:0]   rx_k [15:0],
    output [1:0]   rx_comma [15:0],
    output [1:0]   rx_notvalid [15:0],
    output [1:0]   rx_disp [15:0],
                 

    output [7 : 0] rx_cdr_stable_out   , 
    output [15 :0] gtpowergood_out,     
    input    [3:0] rx_prbs_sel,
    output  [15:0] rxprbserr_out,
    output [15:0] rxclk_unroll 

);

    // these don't have to be connected to top level
    wire [15 : 0] gthtxn_out;
    wire [15 : 0] gthtxp_out;

    wire [15 : 0] txpmaresetdone_out;              
    wire [15 : 0] rxpmaresetdone_out;

    wire [255 : 0] rxctrl0_out;
    wire [255 : 0] rxctrl1_out;
    wire [127 : 0] rxctrl2_out;
    wire [127 : 0] rxctrl3_out;

    wire [15:0] rxpolarity_in = 16'hffff; // all coldata serial inputs are inverted
    wire [63:0] rxprbssel_in = {16{rx_prbs_sel}};

    wire [255:0] data_rx_out; // RX data combined into one word
    wire  [3 : 0] gtrefclk00_in;
    wire [15:0] rxoutclk_out; // recovered clocks
    wire [15:0] rxoutclk_mapped; // recovered clocks mapped to proper channels
    wire [7:0] rxclk; // buffered recovered clocks
    
    // mapping of the rx channels to FEMB channels
    integer rx_map[0:15] = '{4,5,6,7,8,9,10,11,12,13,14,15,0,1,2,3};
    integer clk_map[0:7] = '{2,  3,  4,   5,    6,    7,   0,  1};
    
    genvar gi;
    generate
        // split the giant data word into array for convenience and map to proper outputs
        for (gi = 0; gi < 16; gi++)
        begin
            assign rx_data     [gi] = data_rx_out[rx_map[gi]*16 +: 16];
            assign rx_k        [gi] = rxctrl0_out[rx_map[gi]*16 +: 2];
            assign rx_disp     [gi] = rxctrl1_out[rx_map[gi]*16 +: 2];
            assign rx_comma    [gi] = rxctrl2_out[rx_map[gi]*8 +: 2];
            assign rx_notvalid [gi] = rxctrl3_out[rx_map[gi]*8 +: 2];
        end
        // mapping clocks same way as data
        for (gi = 0; gi < 8; gi++)
        begin
            assign rx_usrclk2_out[gi] = rxclk [clk_map[gi]];
        end
        
        // refclk buffers
        for (gi = 0; gi < 4; gi++)
        begin
            IBUFDS_GTE4 
            #(
                .REFCLK_EN_TX_PATH  (1'b0),
                .REFCLK_HROW_CK_SEL (2'b00),
                .REFCLK_ICNTL_RX    (2'b00)
            ) 
            IBUFDS_GTE4_MGTREFCLK0_X0Y3_INST 
            (
                .I     (gtrefclk00p_in [gi]),
                .IB    (gtrefclk00n_in [gi]),
                .CEB   (1'b0),
                .O     (gtrefclk00_in [gi]),
                .ODIV2 ()
            );
        end            
            
    endgenerate

    
    // take recovered clock from each COLDATA chip separately, 
    // since each COLDATA runs on its own oscillator
    generate
        for (gi = 0; gi < 8; gi++) // COLDATA loop
        begin: bufg_gt_loop
          BUFG_GT bufg_gt_coldata 
          (
            .CE      (1'b1),
            .CEMASK  (1'b0),
            .CLR     (1'b0),
            .CLRMASK (1'b0),
            .DIV     (3'b0),
            .I       (rxoutclk_out[gi*2]),
            .O       (rxclk[gi])
          );
            
        end
    endgenerate 
    
    // use one common RX clock for each COLDATA chip
    assign rxclk_unroll = 
    {
        {2{rxclk[7]}},
        {2{rxclk[6]}},
        {2{rxclk[5]}},
        {2{rxclk[4]}},
        {2{rxclk[3]}},
        {2{rxclk[2]}},
        {2{rxclk[1]}},
        {2{rxclk[0]}}
    };
    
    coldata_rx_single crxs
    (
      .gtwiz_userclk_tx_reset_in          (~(&txpmaresetdone_out)), // input wire [0 : 0] gtwiz_userclk_tx_reset_in
      .gtwiz_userclk_tx_srcclk_out        (), // output wire [0 : 0] gtwiz_userclk_tx_srcclk_out
      .gtwiz_userclk_tx_usrclk_out        (), // output wire [0 : 0] gtwiz_userclk_tx_usrclk_out
      .gtwiz_userclk_tx_usrclk2_out       (), // output wire [0 : 0] gtwiz_userclk_tx_usrclk2_out
      .gtwiz_userclk_tx_active_out        (), // output wire [0 : 0] gtwiz_userclk_tx_active_out
      .gtwiz_userclk_rx_active_in         (!reset_all_in), // input wire [0 : 0] gtwiz_userclk_rx_active_in
      .gtwiz_reset_clk_freerun_in         (reset_clk_64M_in), // input wire [0 : 0] gtwiz_reset_clk_freerun_in
      .gtwiz_reset_all_in                 (reset_all_in), // input wire [0 : 0] gtwiz_reset_all_in
      .gtwiz_reset_tx_pll_and_datapath_in (1'b0), // input wire [0 : 0] gtwiz_reset_tx_pll_and_datapath_in
      .gtwiz_reset_tx_datapath_in         (1'b0), // input wire [0 : 0] gtwiz_reset_tx_datapath_in
      .gtwiz_reset_rx_pll_and_datapath_in (1'b0), // input wire [0 : 0] gtwiz_reset_rx_pll_and_datapath_in
      .gtwiz_reset_rx_datapath_in         (1'b0), // input wire [0 : 0] gtwiz_reset_rx_datapath_in
      .gtwiz_reset_rx_cdr_stable_out      (rx_cdr_stable_out), // output wire [0 : 0] gtwiz_reset_rx_cdr_stable_out
      .gtwiz_reset_tx_done_out            (), // output wire [0 : 0] gtwiz_reset_tx_done_out
      .gtwiz_reset_rx_done_out            (reset_rx_done_out), // output wire [0 : 0] gtwiz_reset_rx_done_out
      .gtwiz_userdata_tx_in               (256'h0), // input wire [255 : 0] gtwiz_userdata_tx_in
      .gtwiz_userdata_rx_out              (data_rx_out), // output wire [255 : 0] gtwiz_userdata_rx_out
      .gtrefclk00_in                      (gtrefclk00_in), // input wire [3 : 0] gtrefclk00_in
      .qpll0outclk_out                    (), // output wire [3 : 0] qpll0outclk_out
      .qpll0outrefclk_out                 (), // output wire [3 : 0] qpll0outrefclk_out
      .gthrxn_in                          (gthrxn_in), // input wire [15 : 0] gthrxn_in
      .gthrxp_in                          (gthrxp_in), // input wire [15 : 0] gthrxp_in
      .rx8b10ben_in                       (16'hffff), // input wire [15 : 0] rx8b10ben_in
      .rxcommadeten_in                    (16'hffff), // input wire [15 : 0] rxcommadeten_in
      .rxmcommaalignen_in                 (16'hffff), // input wire [15 : 0] rxmcommaalignen_in
      .rxpcommaalignen_in                 (16'hffff), // input wire [15 : 0] rxpcommaalignen_in
      .rxpolarity_in                      (rxpolarity_in), // input wire [15 : 0] rxpolarity_in
      .rxprbssel_in                       (rxprbssel_in), // input wire [63 : 0] rxprbssel_in
      .rxusrclk_in                        (rxclk_unroll), // input wire [15 : 0] rxusrclk_in
      .rxusrclk2_in                       (rxclk_unroll), // input wire [15 : 0] rxusrclk2_in
      .tx8b10ben_in                       (16'hffff), // input wire [15 : 0] tx8b10ben_in
      .txctrl0_in                         (256'h0), // input wire [255 : 0] txctrl0_in
      .txctrl1_in                         (256'h0), // input wire [255 : 0] txctrl1_in
      .txctrl2_in                         (256'h0), // input wire [127 : 0] txctrl2_in
      .txpd_in                            (32'hffffffff), // input wire [31 : 0] txpd_in
      .gthtxn_out                         (gthtxn_out), // output wire [15 : 0] gthtxn_out
      .gthtxp_out                         (gthtxp_out), // output wire [15 : 0] gthtxp_out
      .gtpowergood_out                    (gtpowergood_out), // output wire [15 : 0] gtpowergood_out
      .rxbyteisaligned_out                (rxbyteisaligned_out), // output wire [15 : 0] rxbyteisaligned_out
      .rxbyterealign_out                  (rxbyterealign_out), // output wire [15 : 0] rxbyterealign_out
      .rxcommadet_out                     (rxcommadet_out), // output wire [15 : 0] rxcommadet_out
      .rxctrl0_out                        (rxctrl0_out), // output wire [255 : 0] rxctrl0_out
      .rxctrl1_out                        (rxctrl1_out), // output wire [255 : 0] rxctrl1_out
      .rxctrl2_out                        (rxctrl2_out), // output wire [127 : 0] rxctrl2_out
      .rxctrl3_out                        (rxctrl3_out), // output wire [127 : 0] rxctrl3_out
      .rxoutclk_out                       (rxoutclk_out), // output wire [15 : 0] rxoutclk_out
      .rxpmaresetdone_out                 (rxpmaresetdone_out), // output wire [15 : 0] rxpmaresetdone_out
      .rxprbserr_out                      (rxprbserr_out), // output wire [15 : 0] rxprbserr_out
      .txpmaresetdone_out                 (txpmaresetdone_out)  // output wire [15 : 0] txpmaresetdone_out
    );
    
endmodule
