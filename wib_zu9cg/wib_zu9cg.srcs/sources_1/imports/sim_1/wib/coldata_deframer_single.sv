module coldata_deframer_single #(parameter NUM = 0)
(
    input rxclk2x,
    input rx_usrclk2, // rx data clock
    input [15 :0] rx_data,
    input [1:0]   rx_k,

    output [13:0] deframed [31:0],
    output reg valid14,
    output reg valid12,
    
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
        CRC1_12 = 4'h9
    } df_state_t;
    
    df_state_t df_state = IDLE;
    reg [7:0] rx_byte0;
    reg rx_k0;
    reg [7:0] time8;
    reg [7:0] byte_cnt;
    wire dfifo_valid;

    localparam FR14_BYTE_COUNT = 8'd56; // 32 samples x 14 bits
    localparam FR12_BYTE_COUNT = 8'd48; // 32 samples x 12 bits
    localparam FR14_BITS = 32*14; // max number of bits in one entire frame
    localparam FR12_BITS = 32*12; // max number of bits in one entire frame
    
    // various K symbols used in format
    localparam SYM_IDLE = 8'hbc;
    localparam SYM_FR12 = 8'h5c;
    localparam SYM_FR14 = 8'h7c;
    localparam SYM_FRDD = 8'h1c;
    
    // how many bytes per ADC in each frame format
    localparam ADC_BYTES_12 = 8'd24;
    localparam ADC_BYTES_14 = 8'd28;

    reg [FR14_BITS-1:0] parallel_frame; // storage for the complete data from one entire frame
    reg [7:0] crc [1:0];
    
    wire [13:0] deframed14 [31:0];
    wire [13:0] deframed12 [31:0];
    
    genvar gi;
    // deframe from parallel storage
    generate
        for (gi = 0; gi < 32; gi++)
        begin
            assign deframed14 [31-gi] =  parallel_frame [gi*14 +: 14]; 
            assign deframed12 [31-gi] = {parallel_frame [gi*12 +: 12], 2'b0}; // pad 12-bit data with zeros
        end
    endgenerate
    // common output bus carrying deframed data
    assign deframed = (valid12) ? deframed12 : deframed14;

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
                df_state = FR14;
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            TI12: 
            begin
                time8 = rx_byte0; // store time marker
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
                valid12 = 1'b1; // frame 12 data is ready for pick up
                df_state = IDLE;
            end
            
        endcase
      end
    end
    
    wire dfifo_empty;

    deframer_fifo dfifo 
    (
        .rst    (1'b0),                  // input wire rst
        .wr_clk (rx_usrclk2),            // input wire wr_clk
        .rd_clk (rxclk2x),            // input wire rd_clk
        .din    ({rx_k[0], rx_data[7:0], rx_k[1], rx_data[15:8]}),                  // input wire [17 : 0] din
        .wr_en  (1'b1),    // write everything
        .rd_en  (1'b1),    //(!dfifo_empty),  // read whenever there's data
        .dout   ({rx_k0, rx_byte0}),                // output wire [8 : 0] dout
        .full   (),                // output wire full
        .empty  (dfifo_empty),              // output wire empty
        .valid  (dfifo_valid),              // output wire valid
        .wr_rst_busy (),  // output wire wr_rst_busy
        .rd_rst_busy ()  // output wire rd_rst_busy
    );
    

            ila_0 ila_rx 
            (
                .clk     (rx_usrclk2), // input wire clk
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

