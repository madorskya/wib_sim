`timescale 1ns / 1ps

module FELIX_controller(
    input          clk,
    input          rst,
    input          gtrefclkp_in, // reference clocks, 125M
    input          gtrefclkn_in,
    output         gth_txp_out,
    output         gth_txn_out,
    input [31 : 0] felix_data_in,
    input  [1 : 0] felix_data_type_in   
);

    wire clk240;
    wire gtrefclk00_in;
    wire [31 : 0] felix_data_to_gth;

    FMchannelTXctrl FM_controller
    (
        .clk240(clk240),
        .rst(rst),
        
        .busy(),
        .fifo_rclk(),
        .fifo_re(),
        .fifo_dout(felix_data_in),
        .fifo_dtype(felix_data_type_in),
        .fifo_empty(),
        
        .dout(felix_data_to_gth),
        .kout()
    );

    IBUFDS_GTE4 
    #(
        .REFCLK_EN_TX_PATH  (1'b0),
        .REFCLK_HROW_CK_SEL (2'b00),
        .REFCLK_ICNTL_RX    (2'b00)
    ) 
    IBUFDS_GTE4_MGTREFCLK0_X0Y3_INST 
    (
        .I     (gtrefclkp_in),
        .IB    (gtrefclkn_in),
        .CEB   (1'b0),
        .O     (gtrefclk00_in),
        .ODIV2 ()
    );

    
    FELIX_GTH gth_controller
    (
        .gtwiz_userclk_tx_reset_in          (rst),                    
        .gtwiz_userclk_tx_srcclk_out        (),                
        .gtwiz_userclk_tx_usrclk_out        (clk240),                
        .gtwiz_userclk_tx_usrclk2_out       (),        
        .gtwiz_userclk_tx_active_out        (),                            
        .gtwiz_reset_clk_freerun_in         (clk),            
        .gtwiz_reset_all_in                 (rst),
        .gtwiz_reset_tx_pll_and_datapath_in (rst),  
        .gtwiz_reset_tx_datapath_in         (rst),                               
        .gtwiz_reset_tx_done_out            (),                                             
        .gtwiz_userdata_tx_in               ({32'h00000000, felix_data_to_gth}),                                                        
        .gtrefclk01_in                      (gtrefclk00_in),                                            
        .qpll1outclk_out                    (),                                        
        .qpll1outrefclk_out                 (),                                                                  
        .tx8b10ben_in                       (16'hffff),                                              
        .txctrl0_in                         (32'h00000003),                                                  
        .txctrl1_in                         (32'h00000000),                                                                                                    
        .gthtxn_out                         (gth_txn_out),                                                  
        .gthtxp_out                         (gth_txp_out),                                                  
        .gtpowergood_out                    ()
    );
    
endmodule
