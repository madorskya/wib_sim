`timescale 1ns / 1ps
module daq_spy_control
(
    input [31:0] daq_stream, // data to felix
    input [3:0]  daq_stream_k, // K symbol flags to felix
    input [1:0]  daq_data_type, // data type
    input        daq_clk,
    
    output reg [19:0] bram_addr, // current BRAM address
    output            bram_clk,
    output reg [31:0] bram_din,
    output reg        bram_en,
    output            bram_rst,
    output reg [3:0]  bram_we,
    
    input [63:0] time_stamp,
    input clk65p5,
    input reset, // this starts continuous recording
    output reg full,
    output reg [2:0] state,
    
    input trigger, // this stops recording after rec_time
    input [17:0] rec_time // recording time, in 32-bit words
);

    parameter IDLE       = 3'h0;
    parameter IDLE_CHECK = 3'h1;
    parameter RECORD     = 3'h2;
    parameter LAST       = 3'h3;
    parameter FULL       = 3'h4;
    parameter FRAME_LNG = 20'd480; // length of one DAQ frame, in bytes
    
    parameter DT_INTERMEDIATE = 2'b00;
    parameter DT_FIRST        = 2'b01;
    parameter DT_LAST         = 2'b10;
    parameter DT_IGNORE       = 2'b11;
    
    
    reg [31:0] daq_stream_r;
    (* async_reg *) reg [2:0] reset_r;
    (* async_reg *) reg [2:0] trigger_r;
    
    assign bram_rst = 1'b0;
    assign bram_clk = daq_clk;
    
    wire [19:0] next_frame_addr = bram_addr + FRAME_LNG;
    reg  [17:0] rec_cnt; // recording counter
    
    always @(posedge daq_clk)
    begin
        bram_en = 1'b0;
        bram_we = 4'b0;
        full = 1'b0;
        if (reset_r[2] == 1'b1) 
        begin
            state = IDLE;
            bram_addr = 19'h0 - 19'h4; // so next increment will make it 0
        end
        else
        begin
            case (state)
                IDLE:
                begin

                    if (daq_data_type == DT_FIRST)
                    begin
                        state = RECORD;                        
                    end
                    // this state is reached from reset.
                    // just wait for start of frame and start recording 
                end
                
                RECORD:
                begin
                    if (trigger_r[2] == 1'b1)
                    begin
                        state = LAST;
                        rec_cnt = 18'b0;
                    end
                    // keep recording until trigger comes
                    bram_addr = bram_addr + 19'h4; // increment BRAM address
                    bram_we = 4'b1111; // enable BRAM writing
                    bram_en = 1'b1;
                end
                
                LAST: // leftover state name, actually here we record for rec_time time 
                begin
                    // keep recording until rec_cnt expires
                    if (rec_cnt == rec_time)
                    begin
                        state = FULL;
                    end
                    rec_cnt = rec_cnt + 18'h1;
                    bram_addr = bram_addr + 19'h4; // increment BRAM address
                    bram_we = 4'b1111; // enable BRAM writing
                    bram_en = 1'b1;
                end

                FULL: // leftover name, actually means done recording
                begin
                    full = 1'b1; 
                    // exit only on reset
                end
            endcase
        end
        bram_din = daq_stream_r;
        daq_stream_r = daq_stream; // compensate for IDLE to RECORD transition
        
        // demetastab reset and trigger
        reset_r   = {reset_r   [1:0], reset  };
        trigger_r = {trigger_r [1:0], trigger};
    end
endmodule
