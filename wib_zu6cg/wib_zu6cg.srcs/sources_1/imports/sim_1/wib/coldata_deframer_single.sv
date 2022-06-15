module coldata_deframer_single #(parameter NUM = 0)
(
    input rxclk2x,
    input clk62p5, // system clock = rx data clock
    input [15 :0] rx_data,
    input [1:0]   rx_k,

    (* ASYNC_REG = "TRUE" *) output reg [7:0] rx_byte0,
    (* ASYNC_REG = "TRUE" *) output reg rx_k0,
    
    output [13:0] deframed [31:0], // aligned deframed data
    output reg [7:0] time8,
    output [15:0] time16_a, // aligned time stamp
    output valid14_a, // aligned valid flags
    output valid12_a,

    input [14:0] dts_time_delayed, // delayed DTS time stamp for alignment, in 125M clock domain
    input ts_valid_del, // time stamp valid
    output reg [7:0] align8, // automatic calculated alignment delay
    input align_en, // enable alignment

    output reg [1:0] crc_err
);

    typedef enum bit[3:0]
    {
        IDLE = 4'h0,
        HEAD = 4'h1,
        TI14 = 4'h2,
        TI12 = 4'h3,
        FR14 = 4'h4,
        FR12 = 4'h5,
        CRC0_14 = 4'h6,
        CRC1_14 = 4'h7,
        CRC0_12 = 4'h8,
        CRC1_12 = 4'h9,
        TI14_2 = 4'ha,
        TI12_2 = 4'hb
    } df_state_t;
    
    df_state_t df_state = IDLE;
    reg [7:0] byte_cnt;
    wire dfifo_valid = 1;
    reg [15:0] time16_prelim, time16;

    localparam FR14_BYTE_COUNT = 8'd56; // 32 samples x 14 bits
    localparam FR12_BYTE_COUNT = 8'd48; // 32 samples x 12 bits
    localparam FR14_BITS = 32*14; // max number of bits in one entire frame
    localparam FR12_BITS = 32*12; // max number of bits in one entire frame
    
    // various K symbols used in format
`ifdef COLDATA_P3    
    localparam SYM_IDLE = 8'h3c; // leader byte for P3 format
`else
    localparam SYM_IDLE = 8'hbc;
`endif
    localparam SYM_FR12 = 8'h5c;
    localparam SYM_FR14 = 8'h7c;
    localparam SYM_FRDD = 8'h1c;
    
    // how many bytes per ADC in each frame format
    localparam ADC_BYTES_12 = 8'd24;
    localparam ADC_BYTES_14 = 8'd28;

    reg  [FR14_BITS-1:0] parallel_frame; // storage for the complete data from one entire frame
    wire [FR14_BITS-1:0] parallel_frame_a; // aligned parallel frame
    reg [7:0] crc [1:0];
    
    wire [13:0] deframed14 [31:0];
    wire [13:0] deframed12 [31:0];
    
    reg valid14;
    reg valid12;
    
    genvar gi;
    // deframe from parallel storage
    generate
        for (gi = 0; gi < 32; gi++)
        begin
            assign deframed14 [31-gi] =  parallel_frame_a [gi*14 +: 14]; 
            assign deframed12 [31-gi] = {parallel_frame_a [gi*12 +: 12], 2'b0}; // pad 12-bit data with zeros
        end
    endgenerate
    // common output bus carrying deframed data
    assign deframed = (valid12_a) ? deframed12 : deframed14;

    always @(posedge rxclk2x)
    begin
      valid14 = 1'b0;
      valid12 = 1'b0;
      if (dfifo_valid) // do anything only when valid data from fifo
      begin        
        case (df_state)

            IDLE: 
            begin
                parallel_frame = 0;
                time8 = 8'h0;
                // wait for header
                if (rx_k0 == 1'b1 && rx_byte0 == SYM_IDLE) // header starts
                    df_state = HEAD;        
            end
            
            HEAD: 
            begin
                if (rx_k0 == 1'b1 && rx_byte0 == SYM_FR14) // FRAME 14 marker
                    df_state = TI14;

                if (rx_k0 == 1'b1 && rx_byte0 == SYM_FR12) // FRAME 12 marker
                    df_state = TI12;

                if (rx_k0 == 1'b1 && rx_byte0 == SYM_FRDD) // FRAME DD marker
                    df_state = TI12; // same decoder as Frame 12
            end
            
            TI14:
            begin
                time8 = rx_byte0; // store time marker
`ifdef COLDATA_P3
                df_state = TI14_2; // need to collect low timestamp bits in P3 format
`else    
                df_state = FR14;
`endif                
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            TI12: 
            begin
                time8 = rx_byte0; // store time marker
`ifdef COLDATA_P3
                df_state = TI12_2; // need to collect low timestamp bits in P3 format
`else    
                df_state = FR12;
`endif                
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            TI14_2:
            begin
                time16_prelim = {time8, rx_byte0}; // high byte from P3 timestamp is collected in time8
                df_state = FR14;
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            TI12_2: 
            begin
                time16_prelim = {time8, rx_byte0}; // high byte from P3 timestamp is collected in time8
                df_state = FR12;
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            FR14:
            begin
                parallel_frame = {parallel_frame[FR14_BITS-9:0], rx_byte0}; // shift byte into frame storage
                
                crc [byte_cnt >= ADC_BYTES_14] += rx_byte0; // update CRC for corresponding ADC
                byte_cnt++;

                if (rx_k0 == 1'b1) // K symbol out of place, invalid frame
                    df_state = IDLE;
                if (byte_cnt == FR14_BYTE_COUNT) // done receiving data, go to CRC
                    df_state = CRC0_14;    
            end
            
            FR12: 
            begin
                parallel_frame = {parallel_frame[FR12_BITS-9:0], rx_byte0}; // shift byte into frame storage
                
                crc [byte_cnt >= ADC_BYTES_12] += rx_byte0; // update CRC for corresponding ADC
                byte_cnt++;

                if (rx_k0 == 1'b1) // K symbol out of place, invalid frame
                    df_state = IDLE;
                if (byte_cnt == FR12_BYTE_COUNT) // done receiving data, go to CRC
                    df_state = CRC0_12;    
            end
            
            CRC0_14:
            begin
                crc_err[0] = crc[0] != rx_byte0;
                df_state = CRC1_14;
            end
            
            CRC1_14:
            begin
                crc_err[1] = crc[1] != rx_byte0;
                time16 = time16_prelim; // output time stamp synchronously with valid flag
                valid14 = 1'b1; // frame 14 data is ready for pick up
                df_state = IDLE;
            end
            
            CRC0_12:
            begin
                crc_err[0] = crc[0] != rx_byte0;
                df_state = CRC1_12;
            end
            
            CRC1_12:
            begin
                crc_err[1] = crc[1] != rx_byte0;
                time16 = time16_prelim; // output time stamp synchronously with valid flag
                valid12 = 1'b1; // frame 12 data is ready for pick up
                df_state = IDLE;
            end
            
            default:
            begin
                df_state = IDLE;
            end
            
        endcase
      end
    end
    
    wire dfifo_empty = 0;

//    deframer_fifo dfifo 
//    (
//        .rst    (1'b0),                  // input wire rst
//        .wr_clk (clk62p5),            // input wire wr_clk
//        .rd_clk (rxclk2x),            // input wire rd_clk
//        .din    ({rx_k[0], rx_data[7:0], rx_k[1], rx_data[15:8]}),                  // input wire [17 : 0] din
//        .wr_en  (1'b1),    // write everything
//        .rd_en  (1'b1),    //(!dfifo_empty),  // read whenever there's data
//        .dout   ({rx_k0, rx_byte0}),                // output wire [8 : 0] dout
//        .full   (),                // output wire full
//        .empty  (dfifo_empty),              // output wire empty
//        .valid  (dfifo_valid),              // output wire valid
//        .wr_rst_busy (),  // output wire wr_rst_busy
//        .rd_rst_busy ()  // output wire rd_rst_busy
//    );
    
    (* ASYNC_REG = "TRUE" *) reg [17:0] rsh;
    reg clk62p5_ff;
    reg [3:0] clk62p5_r;
    always @(posedge clk62p5) clk62p5_ff = ~clk62p5_ff; 
    
    always @(posedge rxclk2x)
    begin
        if (clk62p5_r[3] != clk62p5_r[2]) // slow clock front
            rsh = {rx_k[1], rx_data[15:8], rx_k[0], rx_data[7:0]}; // load 16-bit data
        else
            rsh[8:0] = rsh[17:9]; // shift out
            
        clk62p5_r = {clk62p5_r[2:0], clk62p5_ff};
    end

    assign {rx_k0, rx_byte0} = rsh[8:0];


    wire time16_valid = valid14 | valid12;
    reg [14:0] align_calc; 

    // alignment logic
    always @(posedge rxclk2x)
    begin
        if (align_en)
        begin
            if (time16_valid) // frame has just been decoded
            begin
                // delayed dts stamp is assumed to be trailing relative to data frame
                align_calc = time16[14:0] - dts_time_delayed - 15'h1;
                align8 = align_calc[7:0]; // don't divide by 2 b/c time stamp changes every 2 clocks
            end
        end
        else
            align8 = 8'h0;
    end

    // alignment shifter
    // entire parallel frame + valid flags + time stamp
    // not very efficient in terms of resources, but we're OK so far
    dyn_shift #(.SELWIDTH(6), .BW (FR14_BITS+2+16)) ds  
    (
        .CLK (rxclk2x), 
        .CE  ('b1), 
        .SEL ({align8[4:0], 1'b1}), // value of 0 gives delay of 1
        .SI  ({time16,   valid14,   valid12,   parallel_frame  }), 
        .DO  ({time16_a, valid14_a, valid12_a, parallel_frame_a})
    );

            ila_0 ila_rx 
            (
                .clk     (clk62p5), // input wire clk
                .probe0  ({rx_data[7:0], rx_data[15:8]}), // input wire [15:0]  probe0
                .probe1  (rx_k)
            ); 
            
            ila_2 ila_deframer 
            (
                .clk    (rxclk2x), // input wire clk
                .probe0 (rx_byte0), // input wire [7:0]  probe0
                .probe1 (rx_k0), // input wire [0:0]  probe2
                .probe2 (df_state), // input wire [3:0]  probe4
                .probe3 (byte_cnt), // input wire [7:0]  probe5
                .probe4 (valid12),
                .probe5 (valid14),
                .probe6 (dfifo_empty),
                .probe7 (dfifo_valid)
            );

endmodule

