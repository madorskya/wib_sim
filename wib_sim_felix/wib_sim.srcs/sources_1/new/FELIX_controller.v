`timescale 1ns / 1ps

module FELIX_controller(
    input          clk,          // 62.5 clk from endpoint
    input          rst,
    input          gtrefclkp_in, // reference clocks, 125M, generates 240 thru GTH
    input          gtrefclkn_in,
    output [1 : 0] gth_txp_out,
    output [1 : 0] gth_txn_out,
    output         clk_240_felix,// clk from GTH, out to Frame Builder
    input [31 : 0] felix_data_in,
    input  [1 : 0] felix_data_type_in   
);

    wire clk240;
    wire gtrefclk01_in;
    wire [31 : 0] felix_data_to_gth;
    wire rclk_to_fifo;
    wire read_en;
    wire empty_from_fifo;
    wire [33 : 0] data_from_fifo;
    

    FMchannelTXctrl FM_controller
    (
        .clk240(clk240),
        .rst(rst),
        
        .busy(1'b0),
        .fifo_rclk(rclk_to_fifo),
        .fifo_re(read_en),
        .fifo_dout(data_from_fifo[31:0]),
        .fifo_dtype(data_from_fifo[33:32]),
        .fifo_empty(empty_from_fifo),
        
        .dout(felix_data_to_gth),
        .kout()
    );

    IBUFDS_GTE4 
    #(
        .REFCLK_EN_TX_PATH  (1'b0),
        .REFCLK_HROW_CK_SEL (2'b00),
        .REFCLK_ICNTL_RX    (2'b00)
    ) 
    IBUFDS_GTE4_MGTREFCLK0_X0Y4_INST 
    (
        .I     (gtrefclkp_in),
        .IB    (gtrefclkn_in),
        .CEB   (1'b0),
        .O     (gtrefclk01_in),
        .ODIV2 ()
    );

    
    FELIX_GTH gth_controller
    (
        .gtwiz_userclk_tx_reset_in          (rst),                    
        .gtwiz_userclk_tx_srcclk_out        (),                
        .gtwiz_userclk_tx_usrclk_out        (clk240),                
        .gtwiz_userclk_tx_usrclk2_out       (clk_240_felix),        
        .gtwiz_userclk_tx_active_out        (),      
        .gtwiz_userclk_rx_reset_in          (1'b0),                   
        .gtwiz_reset_clk_freerun_in         (clk),            
        .gtwiz_reset_all_in                 (rst),
        .gtwiz_reset_tx_pll_and_datapath_in (rst),  
        .gtwiz_reset_tx_datapath_in         (rst),                               
        .gtwiz_reset_tx_done_out            (),    
        .gtwiz_reset_rx_datapath_in         (rst),
        .gtwiz_reset_rx_pll_and_datapath_in (rst),                                        
        .gtwiz_userdata_tx_in               ({32'h00000000, felix_data_to_gth}),                                                        
        .gtrefclk01_in                      (gtrefclk01_in),                                            
        .qpll1outclk_out                    (),                                        
        .qpll1outrefclk_out                 (),                                                                  
        .tx8b10ben_in                       (16'hffff),                                              
        .txctrl0_in                         (32'h00000003),                                                  
        .txctrl1_in                         (32'h00000000),                                                                                                    
        .gthtxn_out                         (gth_txn_out),                                                  
        .gthtxp_out                         (gth_txp_out),                                                  
        .gtpowergood_out                    ()
    );
    
     FIFO36E2 #(
      .CLOCK_DOMAINS("INDEPENDENT"),
      .READ_WIDTH(72),
      .WRITE_WIDTH(72)
   )
   fifo (
      .DOUT(data_from_fifo),
      .EMPTY(empty_from_fifo),
      .FULL(),
      .RDCLK(rclk_to_fifo),
      .RDEN(read_en),
      .RST(rst),
      .WRCLK(clk240),
      .WREN(1'b1),
      .DIN({30'h00000000, felix_data_type_in, felix_data_in})
   );
    
endmodule
