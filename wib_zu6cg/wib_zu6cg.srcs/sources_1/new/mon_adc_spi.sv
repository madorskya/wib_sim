`timescale 1ns / 1ps
module mon_adc_spi
(
    output reg adc_sck,
    input [3:0] adc_sdo,
    output reg adc_cs,
    
    input axi_clk, // system clock
    input start, // start pulse. Conversion starts at rising edge
    output reg [15:0] mon_adc_val [3:0], // measured values
    output reg busy

);

    
    localparam IDLE  = 2'b00;
    localparam SHIFT = 2'b01;
    localparam LOCK  = 2'b10;
    
    reg [1:0] state = IDLE;
    
    reg start_r = 1'b0;
    reg [4:0] bit_cnt = 5'b0;
    reg [15:0] shifter [3:0];
    reg clk_div = 1'b0;
    reg clk_div_r;
    integer i;
    
    always @(posedge axi_clk)
    begin
        if (clk_div == 1'b0) // every other clock
        begin
            case (state)
                IDLE:
                begin
                    adc_cs = 1'b1;
                    busy = 1'b0;
                    if ({start_r, start} == 2'b01) // start rising edge
                    begin
                        adc_cs = 1'b0;
                        busy = 1'b1;
                        bit_cnt = 4'b0;
                        shifter = '{4{16'b0}};
                        state = SHIFT;
                    end
                end
                
                SHIFT:
                begin
                    adc_cs = 1'b0;
                    // shift bits into registers
                    for (i = 0; i < 4; i++)
                    begin
                        shifter[i] = {shifter[i][14:0], adc_sdo[i]};
                    end  
                
                    if (bit_cnt == 5'd15) state = LOCK; // done shifting, go to LOCK state
                    bit_cnt++;
                end
                
                LOCK:
                begin 
                    adc_cs = 1'b0;
                    mon_adc_val = shifter; // lock shifters into output registers
                    state = IDLE;
                end
                
                default:
                begin 
                    adc_cs = 1'b1;
                    state = IDLE;
                end
            endcase
            
            start_r = start;
        end
        adc_sck   = clk_div_r; // feed 50Mhz clock to ADCs
        clk_div_r = clk_div;
        clk_div   = ~clk_div;
    end

endmodule
