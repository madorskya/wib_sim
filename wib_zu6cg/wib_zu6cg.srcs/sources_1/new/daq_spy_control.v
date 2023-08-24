`timescale 1ns / 1ps
module daq_spy_control
(
    input        clk, // DUNE base clock
    input        rst, // DUNE base clock sync reset
//    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddi0, X_INTERFACE_MODE monitor" *)
    (* X_INTERFACE_MODE = "monitor" *)
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi0 d"       *) input [63:0] d,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi0 d_valid" *) input        d_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi0 d_last"  *) input        d_last,
    
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_ctl, MEM_SIZE 262144, MEM_WIDTH 64, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl EN" *)   input         ena,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl DOUT" *) output [63:0] douta,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl DIN" *)  input  [63:0] dina,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl WE" *)   input  [7:0]  wea,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl ADDR" *) input  [17:0] addra, // current BRAM address
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl CLK" *)  input         clka,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_ctl RST" *)  input         rsta,  
    
    output [14:0] bram_addr_mon, // current BRAM address

    input reset, // this starts continuous recording
    output reg full,
    output reg [2:0] state,
    
    input trigger, // this stops recording after rec_time
    input [14:0] rec_time // recording time, in 64-bit words
);


    reg         bram_en;
    wire [63:0] bram_dout;
    reg  [63:0] bram_din;
    reg  [7:0]  bram_we;
    reg  [14:0] bram_addr; // current BRAM address
    wire        bram_clk;
    wire        bram_rst;  
    assign bram_addr_mon = bram_addr;

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
    assign bram_clk = clk;
    
    reg  [14:0] rec_cnt; // recording counter
    
    always @(posedge clk)
    begin
        bram_en = 1'b0;
        bram_we = 8'b0;
        full = 1'b0;
        if (reset_r[2] == 1'b1) 
        begin
            state = IDLE;
            bram_addr = 15'b111_1111_1111_1111; // so next increment will make it 0
        end
        else
        begin
            case (state)
                IDLE:
                begin

                    if (d_last == 1'b1)
                    begin
                        state = RECORD;                        
                    end
                    // this state is reached from reset.
                    // just wait for end of previous frame and start recording 
                end
                
                RECORD:
                begin
                    if (trigger_r[2] == 1'b1)
                    begin
                        state = LAST;
                        rec_cnt = 15'b0;
                    end
                    // keep recording until trigger comes
                    if (d_valid == 1'b1)
                    begin
                        bram_din = d;
                        bram_addr = bram_addr + 15'h1; // increment BRAM address
                        bram_we = 8'b11111111; // enable BRAM writing
                        bram_en = 1'b1;
                    end
                end
                
                LAST: // leftover state name, actually here we record for rec_time time 
                begin
                    // keep recording until rec_cnt expires
                    if (rec_cnt == rec_time)
                    begin
                        state = FULL;
                    end
                    if (d_valid == 1'b1)
                    begin
                        rec_cnt = rec_cnt + 18'h1;
                        bram_din = d;
                        bram_addr = bram_addr + 15'h1; // increment BRAM address
                        bram_we = 8'b11111111; // enable BRAM writing
                        bram_en = 1'b1;
                    end
                end

                FULL: // leftover name, actually means done recording
                begin
                    full = 1'b1; 
                    // exit only on reset
                end
                default:
                begin
                    state = IDLE;
                end
            endcase
        end
        
        // demetastab reset and trigger
        reset_r   = {reset_r   [1:0], reset  };
        trigger_r = {trigger_r [1:0], trigger};
    end

    blk_mem_spy blk_mem 
    (
        .clka  (clka),    // input wire clka
        .ena   (ena),      // input wire ena
        .wea   (wea),      // input wire [0 : 0] wea
        .addra (addra[17:3]),  // input wire [14 : 0] addra
        .dina  (dina),    // input wire [63 : 0] dina
        .douta (douta),  // output wire [63 : 0] douta
        
        .clkb  (bram_clk),    // input wire clkb
        .enb   (bram_en),      // input wire enb
        .web   (bram_we),      // input wire [0 : 0] web
        .addrb (bram_addr),  // input wire [14 : 0] addrb
        .dinb  (bram_din),    // input wire [63 : 0] dinb
        .doutb (bram_dout)  // output wire [63 : 0] doutb
    );

endmodule
