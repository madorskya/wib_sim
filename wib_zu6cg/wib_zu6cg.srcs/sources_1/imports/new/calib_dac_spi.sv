`timescale 1ns / 1ps
module calib_dac_spi
(
    output reg cal_dac_sync,
    output reg cal_dac_sclk,
    output cal_dac_din,
    
    input axi_clk, // system clock
    input start, // start pulse. FSM starts writing at the rising edge
    input [15:0] data, // data to write
    output reg busy
);

    
    localparam IDLE  = 2'b00;
    localparam SHIFT = 2'b01;
    
    reg [1:0] state = IDLE;
    
    reg start_r = 1'b0;
    reg [4:0] bit_cnt = 5'b0;
    reg [23:0] shifter;
    reg clk_div = 1'b0;
    reg clk_div_r;
    wire [1:0] pd = 2'b00; // normal operation
    
    assign cal_dac_din = shifter[23];
    integer i;
    
    always @(posedge axi_clk)
    begin
        if (clk_div == 1'b1) // every other clock
        begin
            case (state)
                IDLE:
                begin
                    cal_dac_sync = 1'b1;
                    busy = 1'b0;
                    if ({start_r, start} == 2'b01) // start rising edge
                    begin
                        busy = 1'b1;
                        bit_cnt = 4'b0;
                        cal_dac_sync = 1'b0;
                        shifter = {pd, data, 6'h0};
                        state = SHIFT;
                    end
                end
                
                SHIFT:
                begin
                    cal_dac_sync = 1'b0;
                    // shift bits out
                    shifter = {shifter[22:0], 1'b0};
                
                    if (bit_cnt == 5'd23) state = IDLE; // done shifting, go to IDLE state
                    bit_cnt++;
                end
                
                default:
                begin 
                    cal_dac_sync = 1'b1;
                    state = IDLE;
                end
            endcase
            
            start_r = start;
        end
        cal_dac_sclk = ~clk_div_r; // feed 50Mhz clock to DAC
        clk_div_r    = clk_div;
        clk_div      = ~clk_div;
    end

endmodule
