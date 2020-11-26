`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2020 03:47:42 PM
// Design Name: 
// Module Name: pdts_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pdts_tb();
    
    reg clk50_tb;
    reg sclk50_tb;
    reg srst_tb;
    reg rec_d_clk_tb;
    
    pdts_endpoint dut (
        .sclk(sclk50_tb),
        .srst(srst_tb),
        .addr(8'h00),
        .tgrp(2'b00),
        .stat(),

        .rec_clk(clk50_tb),
        .rec_d_clk(rec_d_clk_tb),
        .rec_d(1'b0),
        .rec_clk_locked(1'b1),
        .rec_clk_reset(),
 
        .sfp_los(1'b0),
        .cdr_los(1'b0),
        .cdr_lol(1'b0),
        
        .clk(),
        .rst(),
        .rdy(),
        .sync(),
        .sync_v(),
        .tstamp(),
        .evtctr()
        );
        
    initial begin
        clk50_tb = 1'b0;
        sclk50_tb = 1'b0;
        srst_tb = 1'b0;
        rec_d_clk_tb = 1'b0;
        
        #2010 srst_tb = 1'b1;
        #2130 srst_tb = 1'b0;
    end


    always #20 clk50_tb = ~clk50_tb;
    always #20 sclk50_tb = ~sclk50_tb;
    always #4 rec_d_clk_tb = ~ rec_d_clk_tb;
    
endmodule
