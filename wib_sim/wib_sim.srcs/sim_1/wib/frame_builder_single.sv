module frame_builder_single
(
    input [13:0] deframed [7:0][31:0], // [link][sample]
    input [7:0]  valid14,
    input [7:0]  valid12,
    input [7:0]  link_mask, // this input allows to disable some links in case the are broken
    input [1:0]  crc_err [7:0],
    input        rx_usrclk2, // rx data clock
    output reg [31:0] daq_stream, // data to felix
    output reg [3:0]  daq_stream_k, // K symbol flags to felix
    input             daq_clk
);

    reg [13:0] deframed_aligned [7:0][31:0]; // [link][sample]
    reg [7:0] valid_aligned;
    
    


// deframed input mapping:
// links [3:0] from FEMB0, links [7:4] from FEMB1
// within each FEMB:
// links [1:0] from COLDATA0, links [3:2] from COLDATA1
// within each link: 
// samples [15:0] = ADC0, samples [31:16] = ADC1

    reg [13:0] deframed_mapped [1:0][1:0][3:0][15:0]; // [femb][coldata][adc][sample]
    integer i, j, k, l;
    always @(*)
    begin
        for (i = 0; i < 2; i++) // femb loop
        begin
            for (j = 0; j < 2; j++) // coldata loop
            begin
                for (k = 0; k < 4; k++) // adc loop
                begin
                    for (l = 0; l < 16; l++) // sample loop
                    begin
                        // first index: 4 links per FEMB, 2 links per COLDATA, 1/2 link per ADC
                        // second index: (ADC0 or 1) *16 + sample
                        deframed_mapped[i][j][k][l] = deframed_aligned[i*4 + j*2 + k/2][{k[0], l[3:0]}];
                    end
                end
            end
        end
    end

    wire [31:0] tx_words_0 [55:0];
    wire [31:0] tx_words_1 [55:0];
    (* async_reg *) reg [31:0] tx_words [111:0];

    frame_builder_femb fbf0
    (
        .deframed_mapped (deframed_mapped [0]),
        .tx_words        (tx_words_0)
    );

    frame_builder_femb fbf1
    (
        .deframed_mapped (deframed_mapped [1]),
        .tx_words        (tx_words_1)
    );

    // states of the DAQ streaming FSM
    typedef enum bit[3:0]
    {
        IDLE = 4'h0,
        SOF,
        HEAD,
        CODE,
        TIME0,
        TIME1,
        DATA,
        CRC,
        FLEX,
        TAIL
    } fb_state_t;

    fb_state_t fb_state = IDLE;
    
    // states of the DAQ TX request FSM
    typedef enum bit [1:0]
    {
        DAQ_WAIT = 2'h0,
        DAQ_RQ
    } rq_state_t;
    
    rq_state_t rq_state = DAQ_WAIT;

    wire [31:0] header    [4:0];
    wire [3:0]  header_k  [4:0];
    wire [31:0] trailer   [2:0];
    wire [3:0]  trailer_k [2:0];
    reg [6:0] data_cnt;

    // various fields assigned temporarily
    wire [13:0] wib_code = 0; 
    wire  [3:0] fr_ver = 0; 
    wire  [1:0] femb_val = 0; 
    wire        fnum = 0; 
    wire  [2:0] wib_slot = 0; 
    wire  [7:0] wiec_crate = 8'h23;
    wire [31:0] wib_coldata_code = 32'hbabeface;
    wire [63:0] timestamp = 64'h1234567890abcdef;
    wire [11:0] flex_12 = 0;
    wire [23:0] flex_24 = 0;
    reg  [19:0] crc_20 = 0;

    assign header  [0] = {24'h0, 8'h3c};
    assign header_k[0] = 4'b0001;

    assign header  [1] = {wib_code, fr_ver, femb_val, fnum, wib_slot, wiec_crate};
    assign header_k[1] = 4'b0000;

    assign header  [2] = wib_coldata_code;
    assign header_k[2] = 4'b0000;

    assign header  [3] = timestamp[31:0];
    assign header_k[3] = 4'b0000;

    assign header  [4] = timestamp[63:32];
    assign header_k[4] = 4'b0000;
    
    assign trailer  [0] = {flex_12, crc_20};
    assign trailer_k[0] = 4'b0000;
    
    assign trailer  [1] = {flex_24, 8'hdc};
    assign trailer_k[1] = 4'b0001;
    
    assign trailer  [2] = {24'h0, 8'hbc};
    assign trailer_k[2] = 4'b0001;
    
    (* async_reg *) reg [3:0] data_ready;
    (* async_reg *) reg [3:0] rq_served;
    
    // DAQ request FSM
    always @(negedge rx_usrclk2)
    begin
        data_ready[0] = 1'b0;
        case (rq_state)
            DAQ_WAIT:
            begin
                // here we wait until data arrive from all links so we can start frame forming
                if (valid_aligned == 8'hff) // all valid bits arrived
                begin
                    rq_state = DAQ_RQ;
                    data_ready[0] = 1'b1; // set the request bit
                end
                
                // update aligned valid flags    
                // masked links always considered aligned
                valid_aligned |= (valid12 | valid14 | link_mask);
                if (link_mask == 8'hff) valid_aligned = 8'h0; // if all links are masked, disable the requests, nothing is working
                for (i = 0; i < 8; i++) // link loop
                begin
                    if (valid12[i] || valid14[i]) // valid bit came from that link 
                        deframed_aligned[i] = deframed[i]; // store data
                end
            end
            
            DAQ_RQ:
            begin
                if (rq_served[3:2] == 2'b01) // response just came
                begin
                    valid_aligned = 8'h0; // reset valid bits
                    rq_state = DAQ_WAIT; // go wait for next request
                end
            end
        endcase
        // demetastab the response
        rq_served[3:1] = rq_served[2:0];
    end
    
    // formatting FSM
    always @(posedge daq_clk)
    begin
        rq_served[0] = 1'b0; 
        case (fb_state)
            IDLE:
            begin
                if (data_ready[3:2] == 2'b01) // request just came
                    fb_state = SOF; // start frame
                daq_stream = 32'h0;
                daq_stream_k = 4'b0;
            end
            
            SOF:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                // store prepared tx words in register for shifting out
                tx_words [55:0] = tx_words_0;
                tx_words [111:56] = tx_words_1;
                daq_stream = header[0];
                daq_stream_k = header_k[0];
                fb_state = HEAD;
            end
            
            HEAD:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream = header[1];
                daq_stream_k = header_k[1];
                fb_state = CODE;
            end
            
            CODE:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream = header[2];
                daq_stream_k = header_k[2];
                fb_state = TIME0;
            end
            
            TIME0:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream = header[3];
                daq_stream_k = header_k[3];
                fb_state = TIME1;
            end
            
            TIME1:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream = header[4];
                daq_stream_k = header_k[4];
                data_cnt = 7'd0;
                fb_state = DATA;
            end
            
            DATA:
            begin
                if (data_cnt == 7'd111)
                    fb_state = CRC;
                daq_stream = tx_words[0];
                // shift tx_words to prepare next word
                for (i = 0; i < 110; i++)
                begin
                    tx_words[i] = tx_words[i+1];
                end
                daq_stream_k = 4'b0;
                data_cnt++;    
            end
            
            CRC:
            begin
                daq_stream = trailer[0];
                daq_stream_k = trailer_k[0];
                fb_state = FLEX;
            end
            
            FLEX:
            begin
                daq_stream = trailer[1];
                daq_stream_k = trailer_k[1];
                fb_state = TAIL;
            end
            
            TAIL:
            begin
                daq_stream = trailer[2];
                daq_stream_k = trailer_k[2];
                fb_state = IDLE;
            end
            
        endcase
        // demetastab the request
        data_ready[3:1] = data_ready[2:0]; 
    end


endmodule

