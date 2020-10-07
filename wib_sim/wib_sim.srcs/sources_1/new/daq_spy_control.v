`timescale 1ns / 1ps
module daq_spy_control
(
    input [31:0] daq_stream, // data to felix
    input [3:0]  daq_stream_k, // K symbol flags to felix
    input        daq_clk,
    
    output reg [19:0] bram_addr,
    output            bram_clk,
    output reg [31:0] bram_din,
    output reg        bram_en,
    output            bram_rst,
    output reg [3:0]  bram_we,
    
    input [63:0] time_stamp,
    input clk65p5,
    input reset,
    output reg full
);

    parameter IDLE = 2'h0;
    parameter RECORD = 2'h1;
    parameter FULL = 2'h2;
    parameter FRAME_LNG = 20'd120; // length of one DAQ frame
    
    reg [1:0] state;
    reg [31:0] daq_stream_r;
    (* async_reg *) reg [2:0] reset_r;
    
    assign bram_rst = 1'b0;
    assign bram_clk = daq_clk;
    
    wire [19:0] next_frame_addr = bram_addr + FRAME_LNG;
    
    always @(posedge daq_clk)
    begin
        bram_en = 1'b0;
        bram_we = 4'b0;
        full = 1'b0;
        if (reset_r[2] == 1'b1) 
        begin
            state = IDLE;
            bram_addr = 20'h0;
        end
        else
        begin
            case (state)
                IDLE:
                begin
                    if (daq_stream_k == 4'b0001 && daq_stream == 32'h0000003c) // start of frame
                    begin
                        state = RECORD;                        
                    end
                    if (next_frame_addr < FRAME_LNG) // going to overflow on the next frame
                    begin
                        state = FULL;
                    end
                end
                
                RECORD:
                begin
                    if (daq_stream_k == 4'b0001 && daq_stream == 32'h000000bc) // end of frame
                    begin
                        state = IDLE;                        
                    end
                    bram_addr = bram_addr + 20'h1;
                    if (bram_addr == 20'hfffff) // should not happen, but
                    begin
                        state = FULL;
                    end
                    bram_we = 4'b1111;
                    bram_en = 1'b1;
                end
                
                FULL:
                begin
                    full = 1'b1; 
                    // exit only on reset
                end
            endcase
        end
        bram_din = daq_stream_r;
        daq_stream_r = daq_stream; // compensate for IDLE to RECORD transition
        
        // demetastab reset
        reset_r = {reset_r[1:0], reset};
    end

endmodule
