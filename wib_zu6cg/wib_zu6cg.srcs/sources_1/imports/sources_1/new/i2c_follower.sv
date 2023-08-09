`timescale 1ns / 1ps

module i2c_follower
(
    input scl,
    input sda,
    output reg sda_inh,
    output reg busy,
    input clk
);

    reg [3:0] bit_cnt;
    enum bit [2:0] 
    {
        IDLE, 
        SDA_F,
        SCL_R,
        START,
        STOP
    } start_stop_st;

    enum bit [2:0]
    {
        I2C_IDLE,
        CHIP_ADDR,
        RDWR_BYTE
    } i2c_state;
    
    wire scld, sdad, sclr, sclf, sdar, sdaf;
    i2c_debouncer scl_deb (.I(scl), .O(scld), .R(sclr), .F(sclf), .C(clk));
    i2c_debouncer sda_deb (.I(sda), .O(sdad), .R(sdar), .F(sdaf), .C(clk));

    reg start, stop, read;

    always @(posedge clk)
    begin
    
        // state follower
        if (stop) 
        begin
            i2c_state = I2C_IDLE; // if stop detected at any time, abort everything
            busy = 1'b0;
        end
        if (start) 
        begin
            bit_cnt = 0;
            i2c_state = CHIP_ADDR; // if start detected at any time, start from CHIP ADDR
            read = 1'b0;
            busy = 1'b1;
        end

        // enable slave to transmit ACK bit
        if (bit_cnt == 4'h8 && sclf) sda_inh = 1'b1;
        if (bit_cnt == 4'h9 && sclf) sda_inh = 1'b0;
        
        sda_inh |= read; // host is reading, disable TX 
            
        case (i2c_state)
            I2C_IDLE:
            begin
                // start/stop logic above will move SM to CHIP_ADDR state
                sda_inh = 1'b0;
                read = 1'b0; 
            end
            
            CHIP_ADDR:
            begin
                if (sclr) 
                begin
                    if (bit_cnt == 4'h7) read = sdad; // lock RD bit
                    if (bit_cnt == 4'h9)
                    begin
                        bit_cnt = 0;
                        i2c_state = RDWR_BYTE;
                    end
                    bit_cnt++; // increment bit count on rising scl
                end
            end
            
            RDWR_BYTE:
            begin
                if (sclr)
                begin
                    if (bit_cnt == 4'h9) bit_cnt = 4'b0; // continue processing more bytes until start/stop comes
                    bit_cnt++; // increment bit count on rising scl
                end
            end
        endcase
    
    
        // start/stop detector
        case (start_stop_st)
            IDLE: 
            begin
                if (sdaf) start_stop_st = SDA_F; 
                if (sclr) start_stop_st = SCL_R;
                start = 0;
                stop = 0; 
            end
            
            SDA_F:
            begin
                if (sclf)         start_stop_st = START;
                else if (scld == sdad) start_stop_st = IDLE;
            end
            
            SCL_R:
            begin
                if (sdar)         start_stop_st = STOP;
                else if (scld == sdad) start_stop_st = IDLE;
            end
            
            START:
            begin
                start = 1'b1;
                start_stop_st = IDLE;
            end

            STOP:
            begin
                stop = 1'b1;
                start_stop_st = IDLE;
            end
        endcase
    end

endmodule

module i2c_debouncer 
(
    input I,      // input 
    output reg O, // debounced output 
    output R, // rising edge 
    output F, // falling edge 
    input C
);
    localparam DEBOUNCE = 10; // length of debouncer line
    localparam VOTE = 5; // last bit for debounce voting 
    reg [DEBOUNCE-1:0] d;
    reg r;

    assign R = O && !r;
    assign F = !O && r;
        
    always @(posedge C)
    begin
        r = O;
        if (|d[DEBOUNCE-1:VOTE] == 1'b0) O = 1'b0;
        if (&d[DEBOUNCE-1:VOTE] == 1'b1) O = 1'b1;
        d = {d[DEBOUNCE-2:0], I};        
    end

endmodule