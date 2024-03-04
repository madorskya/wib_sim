`timescale 1ns / 1ps

module coldata_rx_tux
(
    input  [3 : 0] gtrefclk00p_in       , // reference clocks, 128M
    input  [3 : 0] gtrefclk00n_in       , // reference clocks, 128M
    input [15 : 0] gthrxn_in           , // RX diff lines
    input [15 : 0] gthrxp_in           ,

    input  [0 : 0] clk62p5             , // system clock
    input  [0 : 0] reset_all_in        , // common reset for all circiuts
    input  [0 : 0] rxbufreset, // RX buffer reset in MGTs to remove random latency
    output [0 : 0] reset_rx_done_out   , 

    output [15 :0] rx_data [15:0]      ,
    output [15 :0] rxbyteisaligned_out ,
    output [15 :0] rxbyterealign_out   ,
    output [15 :0] rxcommadet_out      ,
    output [1:0]   rx_k [15:0],
    output [1:0]   rx_comma [15:0],
    output [1:0]   rx_notvalid [15:0],
    output [1:0]   rx_disp [15:0],
                 

    output [0 : 0] rx_cdr_stable_out   , 
    output [15 :0] gtpowergood_out,     
    input  [3:0]   rx_prbs_sel,
    output [15:0]  rxprbserr_out

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
    wire [15:0] rxbufreset_in = {16{rxbufreset}};

    wire [255:0] data_rx_out; // RX data combined into one word
    wire  [3 : 0] gtrefclk00_in;
    wire [15:0] rxoutclk_out; // recovered clocks
    wire [15:0] rxoutclk_mapped; // recovered clocks mapped to proper channels
    wire [7:0] rxclk; // buffered recovered clocks
    wire [15:0]  rxclk_unroll;
    
    // mapping of the rx channels to FEMB channels
    integer rx_map[0:15] = '{4,5,6,7,8,9,10,11,12,13,14,15,0,1,2,3};
    
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

    // use one common RX clock for all COLDATA chips
    assign rxclk_unroll = {16{clk62p5}};
    
    // IBERT connections
    wire [159 : 0] drpaddr_in;
    wire [15 :  0] drpclk_in;
    wire [255 : 0] drpdi_in;
    wire [15 :  0] drpen_in;
    wire [15 :  0] drpwe_in;
    wire [255 : 0] drpdo_out;
    wire [15 :  0] drprdy_out;
        
    wire [15 : 0] drpclk_o;
    wire [15 : 0] drpen_o;
    wire [15 : 0] drpwe_o;
    wire [9 : 0]  drpaddr_o [15:0];
    wire [15 : 0] drpdi_o   [15:0];
    wire [15 : 0] drprdy_i;
    wire [15 : 0] drpdo_i   [15:0];
    
    assign drpclk_in = drpclk_o;
    assign drpen_in = drpen_o;
    assign drpwe_in = drpwe_o;
    assign drprdy_i = drprdy_out;
    generate
        for (gi = 0; gi < 16; gi++)
        begin
            assign drpaddr_in [gi*10 +: 10] = drpaddr_o [gi];
            assign drpdi_in   [gi*16 +: 16] = drpdi_o   [gi];
            assign drpdo_i    [gi] = drpdo_out [gi*16 +: 16];            
        end
    endgenerate

    wire [15 : 0] eyescanreset_o;
    wire [15 : 0] eyescanreset_in = eyescanreset_o;
    wire [15 : 0] rxoutclk_i;
    assign rxoutclk_i = rxclk_unroll;
    
    coldata_rx_single crxs
    (
      .gtwiz_userclk_tx_reset_in          (~(&txpmaresetdone_out)), // input wire [0 : 0] gtwiz_userclk_tx_reset_in
      .gtwiz_userclk_tx_srcclk_out        (), // output wire [0 : 0] gtwiz_userclk_tx_srcclk_out
      .gtwiz_userclk_tx_usrclk_out        (), // output wire [0 : 0] gtwiz_userclk_tx_usrclk_out
      .gtwiz_userclk_tx_usrclk2_out       (), // output wire [0 : 0] gtwiz_userclk_tx_usrclk2_out
      .gtwiz_userclk_tx_active_out        (), // output wire [0 : 0] gtwiz_userclk_tx_active_out
      .gtwiz_userclk_rx_active_in         (!reset_all_in), // input wire [0 : 0] gtwiz_userclk_rx_active_in
      .gtwiz_reset_clk_freerun_in         (clk62p5), // input wire [0 : 0] gtwiz_reset_clk_freerun_in
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
      .drpaddr_in                         (drpaddr_in), // input wire [159 : 0] drpaddr_in
      .drpclk_in                          (drpclk_in),  // input wire [15 : 0] drpclk_in
      .drpdi_in                           (drpdi_in),   // input wire [255 : 0] drpdi_in
      .drpen_in                           (drpen_in),   // input wire [15 : 0] drpen_in
      .drpwe_in                           (drpwe_in),   // input wire [15 : 0] drpwe_in
      .eyescanreset_in                    (eyescanreset_in), // input wire [15 : 0] eyescanreset_in
      .gthrxn_in                          (gthrxn_in), // input wire [15 : 0] gthrxn_in
      .gthrxp_in                          (gthrxp_in), // input wire [15 : 0] gthrxp_in
      .rx8b10ben_in                       (16'hffff), // input wire [15 : 0] rx8b10ben_in
      .rxbufreset_in                      (rxbufreset_in), // input wire [15 : 0] rxbufreset_in
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
      .drpdo_out                          (drpdo_out), // output wire [255 : 0] drpdo_out
      .drprdy_out                         (drprdy_out),// output wire [15 : 0] drprdy_out
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

    
    ibert_coldata ibert_coldata_i 
    (
        .drpclk_o       (drpclk_o),       // output wire [15 : 0] drpclk_o
        .gt0_drpen_o    (drpen_o[0]),    // output wire gt0_drpen_o
        .gt0_drpwe_o    (drpwe_o[0]),    // output wire gt0_drpwe_o
        .gt0_drpaddr_o  (drpaddr_o[0]),  // output wire [9 : 0] gt0_drpaddr_o
        .gt0_drpdi_o    (drpdi_o[0]),    // output wire [15 : 0] gt0_drpdi_o
        .gt0_drprdy_i   (drprdy_i[0]),   // input wire gt0_drprdy_i
        .gt0_drpdo_i    (drpdo_i[0]),    // input wire [15 : 0] gt0_drpdo_i
        .gt1_drpen_o    (drpen_o[1]),    // output wire gt1_drpen_o
        .gt1_drpwe_o    (drpwe_o[1]),    // output wire gt1_drpwe_o
        .gt1_drpaddr_o  (drpaddr_o[1]),  // output wire [9 : 0] gt1_drpaddr_o
        .gt1_drpdi_o    (drpdi_o[1]),    // output wire [15 : 0] gt1_drpdi_o
        .gt1_drprdy_i   (drprdy_i[1]),   // input wire gt1_drprdy_i
        .gt1_drpdo_i    (drpdo_i[1]),    // input wire [15 : 0] gt1_drpdo_i
        .gt2_drpen_o    (drpen_o[2]),    // output wire gt2_drpen_o
        .gt2_drpwe_o    (drpwe_o[2]),    // output wire gt2_drpwe_o
        .gt2_drpaddr_o  (drpaddr_o[2]),  // output wire [9 : 0] gt2_drpaddr_o
        .gt2_drpdi_o    (drpdi_o[2]),    // output wire [15 : 0] gt2_drpdi_o
        .gt2_drprdy_i   (drprdy_i[2]),   // input wire gt2_drprdy_i
        .gt2_drpdo_i    (drpdo_i[2]),    // input wire [15 : 0] gt2_drpdo_i
        .gt3_drpen_o    (drpen_o[3]),    // output wire gt3_drpen_o
        .gt3_drpwe_o    (drpwe_o[3]),    // output wire gt3_drpwe_o
        .gt3_drpaddr_o  (drpaddr_o[3]),  // output wire [9 : 0] gt3_drpaddr_o
        .gt3_drpdi_o    (drpdi_o[3]),    // output wire [15 : 0] gt3_drpdi_o
        .gt3_drprdy_i   (drprdy_i[3]),   // input wire gt3_drprdy_i
        .gt3_drpdo_i    (drpdo_i[3]),    // input wire [15 : 0] gt3_drpdo_i
        .gt4_drpen_o    (drpen_o[4]),    // output wire gt4_drpen_o
        .gt4_drpwe_o    (drpwe_o[4]),    // output wire gt4_drpwe_o
        .gt4_drpaddr_o  (drpaddr_o[4]),  // output wire [9 : 0] gt4_drpaddr_o
        .gt4_drpdi_o    (drpdi_o[4]),    // output wire [15 : 0] gt4_drpdi_o
        .gt4_drprdy_i   (drprdy_i[4]),   // input wire gt4_drprdy_i
        .gt4_drpdo_i    (drpdo_i[4]),    // input wire [15 : 0] gt4_drpdo_i
        .gt5_drpen_o    (drpen_o[5]),    // output wire gt5_drpen_o
        .gt5_drpwe_o    (drpwe_o[5]),    // output wire gt5_drpwe_o
        .gt5_drpaddr_o  (drpaddr_o[5]),  // output wire [9 : 0] gt5_drpaddr_o
        .gt5_drpdi_o    (drpdi_o[5]),    // output wire [15 : 0] gt5_drpdi_o
        .gt5_drprdy_i   (drprdy_i[5]),   // input wire gt5_drprdy_i
        .gt5_drpdo_i    (drpdo_i[5]),    // input wire [15 : 0] gt5_drpdo_i
        .gt6_drpen_o    (drpen_o[6]),    // output wire gt6_drpen_o
        .gt6_drpwe_o    (drpwe_o[6]),    // output wire gt6_drpwe_o
        .gt6_drpaddr_o  (drpaddr_o[6]),  // output wire [9 : 0] gt6_drpaddr_o
        .gt6_drpdi_o    (drpdi_o[6]),    // output wire [15 : 0] gt6_drpdi_o
        .gt6_drprdy_i   (drprdy_i[6]),   // input wire gt6_drprdy_i
        .gt6_drpdo_i    (drpdo_i[6]),    // input wire [15 : 0] gt6_drpdo_i
        .gt7_drpen_o    (drpen_o[7]),    // output wire gt7_drpen_o
        .gt7_drpwe_o    (drpwe_o[7]),    // output wire gt7_drpwe_o
        .gt7_drpaddr_o  (drpaddr_o[7]),  // output wire [9 : 0] gt7_drpaddr_o
        .gt7_drpdi_o    (drpdi_o[7]),    // output wire [15 : 0] gt7_drpdi_o
        .gt7_drprdy_i   (drprdy_i[7]),   // input wire gt7_drprdy_i
        .gt7_drpdo_i    (drpdo_i[7]),    // input wire [15 : 0] gt7_drpdo_i
        .gt8_drpen_o    (drpen_o[8]),    // output wire gt8_drpen_o
        .gt8_drpwe_o    (drpwe_o[8]),    // output wire gt8_drpwe_o
        .gt8_drpaddr_o  (drpaddr_o[8]),  // output wire [9 : 0] gt8_drpaddr_o
        .gt8_drpdi_o    (drpdi_o[8]),    // output wire [15 : 0] gt8_drpdi_o
        .gt8_drprdy_i   (drprdy_i[8]),   // input wire gt8_drprdy_i
        .gt8_drpdo_i    (drpdo_i[8]),    // input wire [15 : 0] gt8_drpdo_i
        .gt9_drpen_o    (drpen_o[9]),    // output wire gt9_drpen_o
        .gt9_drpwe_o    (drpwe_o[9]),    // output wire gt9_drpwe_o
        .gt9_drpaddr_o  (drpaddr_o[9]),  // output wire [9 : 0] gt9_drpaddr_o
        .gt9_drpdi_o    (drpdi_o[9]),    // output wire [15 : 0] gt9_drpdi_o
        .gt9_drprdy_i   (drprdy_i[9]),   // input wire gt9_drprdy_i
        .gt9_drpdo_i    (drpdo_i[9]),    // input wire [15 : 0] gt9_drpdo_i
        .gt10_drpen_o   (drpen_o[10]),   // output wire gt10_drpen_o
        .gt10_drpwe_o   (drpwe_o[10]),   // output wire gt10_drpwe_o
        .gt10_drpaddr_o (drpaddr_o[10]), // output wire [9 : 0] gt10_drpaddr_o
        .gt10_drpdi_o   (drpdi_o[10]),   // output wire [15 : 0] gt10_drpdi_o
        .gt10_drprdy_i  (drprdy_i[10]),  // input wire gt10_drprdy_i
        .gt10_drpdo_i   (drpdo_i[10]),   // input wire [15 : 0] gt10_drpdo_i
        .gt11_drpen_o   (drpen_o[11]),   // output wire gt11_drpen_o
        .gt11_drpwe_o   (drpwe_o[11]),   // output wire gt11_drpwe_o
        .gt11_drpaddr_o (drpaddr_o[11]), // output wire [9 : 0] gt11_drpaddr_o
        .gt11_drpdi_o   (drpdi_o[11]),   // output wire [15 : 0] gt11_drpdi_o
        .gt11_drprdy_i  (drprdy_i[11]),  // input wire gt11_drprdy_i
        .gt11_drpdo_i   (drpdo_i[11]),   // input wire [15 : 0] gt11_drpdo_i
        .gt12_drpen_o   (drpen_o[12]),   // output wire gt12_drpen_o
        .gt12_drpwe_o   (drpwe_o[12]),   // output wire gt12_drpwe_o
        .gt12_drpaddr_o (drpaddr_o[12]), // output wire [9 : 0] gt12_drpaddr_o
        .gt12_drpdi_o   (drpdi_o[12]),   // output wire [15 : 0] gt12_drpdi_o
        .gt12_drprdy_i  (drprdy_i[12]),  // input wire gt12_drprdy_i
        .gt12_drpdo_i   (drpdo_i[12]),   // input wire [15 : 0] gt12_drpdo_i
        .gt13_drpen_o   (drpen_o[13]),   // output wire gt13_drpen_o
        .gt13_drpwe_o   (drpwe_o[13]),   // output wire gt13_drpwe_o
        .gt13_drpaddr_o (drpaddr_o[13]), // output wire [9 : 0] gt13_drpaddr_o
        .gt13_drpdi_o   (drpdi_o[13]),   // output wire [15 : 0] gt13_drpdi_o
        .gt13_drprdy_i  (drprdy_i[13]),  // input wire gt13_drprdy_i
        .gt13_drpdo_i   (drpdo_i[13]),   // input wire [15 : 0] gt13_drpdo_i
        .gt14_drpen_o   (drpen_o[14]),   // output wire gt14_drpen_o
        .gt14_drpwe_o   (drpwe_o[14]),   // output wire gt14_drpwe_o
        .gt14_drpaddr_o (drpaddr_o[14]), // output wire [9 : 0] gt14_drpaddr_o
        .gt14_drpdi_o   (drpdi_o[14]),   // output wire [15 : 0] gt14_drpdi_o
        .gt14_drprdy_i  (drprdy_i[14]),  // input wire gt14_drprdy_i
        .gt14_drpdo_i   (drpdo_i[14]),   // input wire [15 : 0] gt14_drpdo_i
        .gt15_drpen_o   (drpen_o[15]),   // output wire gt15_drpen_o
        .gt15_drpwe_o   (drpwe_o[15]),   // output wire gt15_drpwe_o
        .gt15_drpaddr_o (drpaddr_o[15]), // output wire [9 : 0] gt15_drpaddr_o
        .gt15_drpdi_o   (drpdi_o[15]),   // output wire [15 : 0] gt15_drpdi_o
        .gt15_drprdy_i  (drprdy_i[15]),  // input wire gt15_drprdy_i
        .gt15_drpdo_i   (drpdo_i[15]),   // input wire [15 : 0] gt15_drpdo_i
        .eyescanreset_o (eyescanreset_o), // output wire [15 : 0] eyescanreset_o
        .rxrate_o       (rxrate_o),       // output wire [47 : 0] rxrate_o
        .txdiffctrl_o   (txdiffctrl_o),   // output wire [79 : 0] txdiffctrl_o
        .txprecursor_o  (txprecursor_o),  // output wire [79 : 0] txprecursor_o
        .txpostcursor_o (txpostcursor_o), // output wire [79 : 0] txpostcursor_o
        .rxlpmen_o      (rxlpmen_o),      // output wire [15 : 0] rxlpmen_o
        .rxoutclk_i     (rxoutclk_i),     // input wire [15 : 0] rxoutclk_i
        .clk            (clk62p5)             // input wire clk
    );
 
    
endmodule
