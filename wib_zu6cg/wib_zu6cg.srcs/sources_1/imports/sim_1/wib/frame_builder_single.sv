module frame_builder_single #(parameter NUM = 0)
(
    input [13:0] deframed [7:0][31:0], // [link][sample]
    input [7:0]  valid14,
    input [7:0]  valid12,
    input [7:0]  link_mask, // this input allows to disable some links in case the are broken
    input [1:0]  crc_err [7:0],
    input        rxclk2x, // deframed data clock
    output reg [31:0] daq_stream, // data to felix
    output reg [3:0]  daq_stream_k, // K symbol flags to felix
    output reg [1:0]  daq_data_type, // data type flags needed by felix
    input             daq_clk,
    input [63:0] ts_tstamp,
    input reset,
    input fake_daq_stream,
    input [3:0] bp_crate_addr,
    input [3:0] bp_slot_addr 
);

    reg [13:0] deframed_aligned [7:0][31:0]; // [link][sample]
    reg [7:0] valid_aligned;
    
    reg [13:0] fake_data [7:0][31:0]; // [link][sample]
    integer i, j, k, l;
    always @(*)
    begin
        for (i = 0; i < 8; i++) // link loop
        begin
            for (j = 0; j < 32; j++) // sample loop
            begin
                fake_data[i][j] = {i[3:0], j[7:0]}; // link and sample indexes
            end
        end
    end

// deframed input mapping:
// links [3:0] from FEMB0, links [7:4] from FEMB1
// within each FEMB:
// links [1:0] from COLDATA0, links [3:2] from COLDATA1
// within each link: 
// samples [15:0] = ADC0, samples [31:16] = ADC1

    reg [13:0] deframed_mapped [1:0][1:0][3:0][15:0]; // [femb][coldata][adc][sample]
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

    reg crc_reset, crc_calc;
    wire [19:0] crc_out;
    // daq_stream delay line to compensate for CRC module latency, 2 clks
    reg [31:0] daq_stream_d [1:0]; 
    reg [3:0]  daq_stream_k_d [1:0];
    reg [1:0]  daq_data_type_d [1:0];
    reg [2:0]  crc_inject;


    CRC crc20
    (
        .CRC   (crc_out   ),
        .Calc  (crc_calc  ),
        .Clk   (daq_clk   ),
        .DIn   (daq_stream_d[0]),
        .Reset (crc_reset )  
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

    // daq stream data type flags for FELIX
    typedef enum bit[1:0]
    {
        DT_INTERMEDIATE = 2'b00,
        DT_FIRST,
        DT_LAST,
        DT_IGNORE
    } daq_data_type_t;
    
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
    wire [13:0] wib_code = {6'h0, link_mask}; // link mask transmitted at the top of each frame 
    wire  [3:0] fr_ver = 4'h1; 
    wire  [1:0] femb_val = 0; 
    wire        fnum = 0; 
    wire  [2:0] wib_slot = bp_slot_addr[2:0]; 
    wire  [7:0] wiec_crate = {bp_crate_addr, bp_slot_addr};
    wire [31:0] wib_coldata_code = 32'hbabeface;
    wire [63:0] timestamp = ts_tstamp;
    wire [11:0] flex_12 = 12'hF12;
    wire [23:0] flex_24 = 24'hF24F24;
    reg  [19:0] crc_20 = 0; // this is just a place holder, actual CRC is in crc_out

    assign header  [0] = {24'h0, 8'h3c};
    assign header_k[0] = 4'b0001;

    assign header  [1] = {wib_code, femb_val, fnum, wib_slot, fr_ver, wiec_crate};
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
    always @(posedge rxclk2x)
    begin
        if (reset)
        begin
            rq_state = DAQ_WAIT;
            valid_aligned = 8'h0;
            data_ready[0] = 1'b0;
        end
    
        case (rq_state)
            DAQ_WAIT:
            begin
                // here we wait until data arrive from all links so we can start frame forming
                data_ready[0] = 1'b0;
                if (valid_aligned == 8'hff) // all valid bits arrived
                begin
                    rq_state = DAQ_RQ;
                    data_ready[0] = 1'b1; // set the request bit
                end
                
                // update aligned valid flags    
                // masked links always considered aligned
                valid_aligned |= (valid12 | valid14 | link_mask);
                if (link_mask == 8'hff) valid_aligned = 8'h0; // if all links are masked, disable the requests, nothing is working
                //if (fake_daq_stream == 1'b1) valid_aligned = 8'hff; // set all valid flags to fake the DAQ stream
                for (i = 0; i < 8; i++) // link loop
                begin
                    if (valid12[i] || valid14[i]) // valid bit came from that link 
                        deframed_aligned[i] = deframed[i]; // store data
//                    else if (fake_daq_stream == 1'b1)
//                        deframed_aligned[i] = fake_data[i];
                end
            end
            
            DAQ_RQ:
            begin
                if (rq_served[2] == 1'b1) // response came
                begin
                    valid_aligned = 8'h0; // reset valid bits
                    data_ready[0] = 1'b0; // remove request
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
        if (reset)
        begin
            fb_state = IDLE;
        end
    
        // daq stream delay line to compensate for CRC module latency, 2 clks
        daq_stream      = daq_stream_d[1];
        daq_stream_d[1] = daq_stream_d[0];
        daq_stream_k      = daq_stream_k_d[1];
        daq_stream_k_d[1] = daq_stream_k_d[0];
        daq_data_type      = daq_data_type_d[1];
        daq_data_type_d[1] = daq_data_type_d[0];
        
    
        rq_served[0] = 1'b0; 
        crc_reset = 1'b0;
        crc_calc = 1'b1;
        case (fb_state)
            IDLE:
            begin
                crc_reset = 1'b1;
                crc_calc = 1'b0;
                if (data_ready[2] == 1'b1) // request on
                    fb_state = SOF; // start frame
                daq_stream_d[0] = 32'h0;
                daq_stream_k_d[0] = 4'b0;
                daq_data_type_d[0] = DT_IGNORE; // ignore word
            end
            
            SOF: // start of frame
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                // store prepared tx words in register for shifting out
                tx_words [55:0] = tx_words_0;
                tx_words [111:56] = tx_words_1;
                daq_stream_d[0] = header[0];
                daq_stream_k_d[0] = header_k[0];
                daq_data_type_d[0] = DT_FIRST; 
                fb_state = HEAD;
            end
            
            HEAD:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream_d[0] = header[1];
                daq_stream_k_d[0] = header_k[1];
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                fb_state = CODE;
            end
            
            CODE:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream_d[0] = header[2];
                daq_stream_k_d[0] = header_k[2];
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                fb_state = TIME0;
            end
            
            TIME0:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream_d[0] = header[3];
                daq_stream_k_d[0] = header_k[3];
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                fb_state = TIME1;
            end
            
            TIME1:
            begin
                rq_served[0] = 1'b1; // tell request FSM that it's been served 
                daq_stream_d[0] = header[4];
                daq_stream_k_d[0] = header_k[4];
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                data_cnt = 7'd0;
                fb_state = DATA;
            end
            
            DATA:
            begin
                if (data_cnt == 7'd111)
                    fb_state = CRC;
                daq_stream_d[0] = tx_words[0];
                // shift tx_words to prepare next word
                for (i = 0; i <= 110; i++)
                begin
                    tx_words[i] = tx_words[i+1];
                end
                daq_stream_k_d[0] = 4'b0;
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                data_cnt++;    
            end
            
            CRC:
            begin
                daq_stream_d[0] = trailer[0];
                daq_stream_k_d[0] = trailer_k[0];
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                crc_inject[0] = 1'b1; 
                fb_state = FLEX;
            end
            
            FLEX:
            begin
                daq_stream_d[0] = trailer[1];
                daq_stream_k_d[0] = trailer_k[1];
                daq_data_type_d[0] = DT_INTERMEDIATE; 
                fb_state = TAIL;
            end
            
            TAIL:
            begin
                daq_stream_d[0] = trailer[2];
                daq_stream_k_d[0] = trailer_k[2];
                daq_data_type_d[0] = DT_LAST; 
                fb_state = IDLE;
            end
            
        endcase

        if (crc_inject[2]) // time to inject CRC into daq stream
            daq_stream[19:0] = crc_out;
        crc_inject = {crc_inject[1:0], 1'b0};

        // demetastab the request
        data_ready[3:1] = data_ready[2:0]; 
    end

    generate
        if (NUM == 0)
        begin
            ila_3 ila_daq_rq 
            (
                .clk    (rxclk2x), // input wire clk
                .probe0 (rq_state), // input wire [2:0]  probe0
                .probe1 (data_ready[0]), // input wire [0:0]  probe1
                .probe2 (rq_served[3:1]), // input wire [3:0]  probe2
                .probe3 (valid_aligned), // input wire [7:0]  probe3
                .probe4 (link_mask), // input wire [7:0]  probe4
                .probe5 (valid12) // input wire [7:0]  probe5
            );
            
            ila_4 ila_daq_fsm 
            (
                .clk    (daq_clk), // input wire clk
                .probe0 (fb_state), // input wire [3:0]  probe0
                .probe1 (data_cnt), // input wire [6:0]  probe1
                .probe2 (data_ready[3:1]), // input wire [2:0]  probe2
                .probe3 (rq_served[0]) // input wire [0:0]  probe3
            );
        end
    endgenerate    


endmodule

