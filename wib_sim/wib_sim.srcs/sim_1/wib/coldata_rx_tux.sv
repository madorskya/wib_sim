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

    output [0 : 0] rx_usrclk_out       ,
    output [0 : 0] rx_usrclk2_out      , // rx data clock
    output [0 : 0] rx_active_out       , // rx active indicator
    output [15 :0] rx_data [15:0]      ,
    output [15 :0] rxbyteisaligned_out ,
    output [15 :0] rxbyterealign_out   ,
    output [15 :0] rxcommadet_out      ,
    output [1:0]   rx_k [15:0],
    output [1:0]   rx_comma [15:0],
    output [1:0]   rx_notvalid [15:0],
    output [1:0]   rx_disp [15:0],
                 

    output [0 : 0] rx_cdr_stable_out   , 
    output [15 :0] gtpowergood_out     
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



    wire [255:0] data_rx_out; // RX data combined into one word
    wire  [3 : 0] gtrefclk00_in;
    genvar gi;
    generate
        // split the giant data word into array for convenience
        for (gi = 0; gi < 16; gi++)
        begin
            assign rx_data     [gi] = data_rx_out[gi*16 +: 16];
            assign rx_k        [gi] = rxctrl0_out[gi*16 +: 2];
            assign rx_disp     [gi] = rxctrl1_out[gi*16 +: 2];
            assign rx_comma    [gi] = rxctrl2_out[gi*8 +: 2];
            assign rx_notvalid [gi] = rxctrl3_out[gi*8 +: 2];
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

coldata_rx crx 
(
  .gtwiz_userclk_tx_reset_in          (~(&txpmaresetdone_out)),                    
  .gtwiz_userclk_tx_srcclk_out        (),                
  .gtwiz_userclk_tx_usrclk_out        (),                
  .gtwiz_userclk_tx_usrclk2_out       (), // used to clock tx stimuli         
  .gtwiz_userclk_tx_active_out        (), // used to enable tx stimuli                
  .gtwiz_userclk_rx_reset_in          (~(&rxpmaresetdone_out)),                    
  .gtwiz_userclk_rx_srcclk_out        (),                
  .gtwiz_userclk_rx_usrclk_out        (rx_usrclk_out),                
  .gtwiz_userclk_rx_usrclk2_out       (rx_usrclk2_out), // rx clock              
  .gtwiz_userclk_rx_active_out        (rx_active_out), // rx active indicator                
  .gtwiz_reset_clk_freerun_in         (reset_clk_64M_in), // 64 MHz clock                  
  .gtwiz_reset_all_in                 (reset_all_in), // common reset for all circuits
  // resets below are manipulated from reset manager in example design, but should not be needed                                  
  .gtwiz_reset_tx_pll_and_datapath_in (1'b0),  
  .gtwiz_reset_tx_datapath_in         (1'b0),                   
  .gtwiz_reset_rx_pll_and_datapath_in (1'b0),   
  .gtwiz_reset_rx_datapath_in         (1'b0),                    
  .gtwiz_reset_rx_cdr_stable_out      (rx_cdr_stable_out),            
  .gtwiz_reset_tx_done_out            (),                        
  .gtwiz_reset_rx_done_out            (reset_rx_done_out),                        
  .gtwiz_userdata_tx_in               (256'h0),                              
  .gtwiz_userdata_rx_out              (data_rx_out),                            
  .gtrefclk00_in                      (gtrefclk00_in),                                            
  .qpll0outclk_out                    (),                                        
  .qpll0outrefclk_out                 (),                                  
  .gthrxn_in                          (gthrxn_in),                                                    
  .gthrxp_in                          (gthrxp_in),                                                    
  .rx8b10ben_in                       (16'hffff),                                              
  .rxcommadeten_in                    (16'hffff),                                        
  .rxmcommaalignen_in                 (16'hffff),                                  
  .rxpcommaalignen_in                 (16'hffff),                                  
  .tx8b10ben_in                       (16'hffff),                                              
  .txctrl0_in                         (256'h0),                                                  
  .txctrl1_in                         (256'h0),                                                  
  .txctrl2_in                         (128'h0),                                                  
  .txpd_in                            (32'hffffffff), // TX power down                                                        
  .gthtxn_out                         (gthtxn_out),                                                  
  .gthtxp_out                         (gthtxp_out),                                                  
  .gtpowergood_out                    (gtpowergood_out),                                        
  .rxbyteisaligned_out                (rxbyteisaligned_out),                                
  .rxbyterealign_out                  (rxbyterealign_out),                                    
  .rxcommadet_out                     (rxcommadet_out),                                          
  .rxctrl0_out                        (rxctrl0_out),                                                
  .rxctrl1_out                        (rxctrl1_out),                                                
  .rxctrl2_out                        (rxctrl2_out),                                                
  .rxctrl3_out                        (rxctrl3_out),                                                
  .rxpmaresetdone_out(rxpmaresetdone_out),                                  
  .txpmaresetdone_out(txpmaresetdone_out)                                   
);


endmodule
