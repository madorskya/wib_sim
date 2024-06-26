`timescale 1ns / 1ps

module ts_reclock
(
    input [3:0] stat_in,
    input rst_in,
    input rdy_in,
    input [3:0] sync_in,
    input sync_stb_in,
    input sync_first_in,
    input [63:0] tstamp_in,
    input clk50,
    
    output [3:0] stat_out,
    output rst_out,
    output rdy_out,
    output [3:0] sync_out,
    output sync_stb_out,
    output sync_first_out,
    output reg [63:0] tstamp_out,
    output reg ts_valid,
    input clk62p5,
    
    input fifo_rst,
    output fifo_valid,

    input [7:0] cmd_code_idle     ,
    input [7:0] cmd_code_edge     ,
    input [7:0] cmd_code_sync     ,
    input [7:0] cmd_code_act      ,
    input [7:0] cmd_code_reset    ,
    input [7:0] cmd_code_adc_reset,

    output reg cmd_bit_idle     ,
    output reg cmd_bit_edge     ,
    output reg cmd_bit_sync     ,
    output reg cmd_bit_act      ,
    output reg cmd_bit_reset    ,
    output reg cmd_bit_adc_reset
);

    wire [75:0] din = 
    {
        stat_in,
        rst_in,
        rdy_in,
        sync_in,
        sync_stb_in,
        sync_first_in,
        tstamp_in
    };

    wire [75:0] dout;
    wire [63:0] tstamp_int;
    assign 
    {
        stat_out,
        rst_out,
        rdy_out,
        sync_out,
        sync_stb_out,
        sync_first_out,
        tstamp_int
    } = dout;

    wire ts_valid_int;
    ts_reclock_fifo tsrf 
    ( 
        .rst         (fifo_rst),                  // input wire rst
        .wr_clk      (clk50),            // input wire wr_clk
        .rd_clk      (clk62p5),            // input wire rd_clk
        .din         (din),                  // input wire [75 : 0] din
        .wr_en       (1'b1),              // input wire wr_en
        .rd_en       (1'b1),              // input wire rd_en
        .dout        (dout),                // output wire [75 : 0] dout
        .full        (),                // output wire full
        .empty       (),              // output wire empty
        .valid       (ts_valid_int),
        .wr_rst_busy (),  // output wire wr_rst_busy
        .rd_rst_busy ()  // output wire rd_rst_busy
    );
    
    assign fifo_valid = ts_valid_int;
    
`define CMD_DECODE(c,b) if (c != 8'h0 && c[3:0] == sync_out) b = 1'b1
    
    always @(posedge clk62p5)
    begin
    
        // decode commands
        cmd_bit_idle      = 1'b0;
        cmd_bit_edge      = 1'b0;
        cmd_bit_sync      = 1'b0;
        cmd_bit_act       = 1'b0;
        cmd_bit_reset     = 1'b0;
        cmd_bit_adc_reset = 1'b0;
        if (sync_stb_out == 1'b1 && ts_valid_int == 1'b1) // fifo valid and command strobe
        begin
            `CMD_DECODE(cmd_code_idle     , cmd_bit_idle     );
            `CMD_DECODE(cmd_code_edge     , cmd_bit_edge     );
            `CMD_DECODE(cmd_code_sync     , cmd_bit_sync     );
            `CMD_DECODE(cmd_code_act      , cmd_bit_act      );
            `CMD_DECODE(cmd_code_reset    , cmd_bit_reset    );
            `CMD_DECODE(cmd_code_adc_reset, cmd_bit_adc_reset);
        end   
        
        //decode time stamp valid
        ts_valid = ts_valid_int && sync_stb_out && sync_first_out && (sync_out == 4'b0);
        tstamp_out = tstamp_int; // to match valid signal latency
    end

endmodule
