
`timescale 1 ns / 1 ps

	module coldata_i2c_v1_0 #
	(
		// Users to add parameters here
        parameter integer bit_duration = 90*2, // duration of one bit in clocks 
        parameter integer ack_timeout  = 500, // timeout for ack from coldata 
        parameter integer scl_up   = 20*2, // start of scl pulse 
        parameter integer scl_down = 65*2, // end of scl pulse 
    
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		output reg scl,
		output sda_out_p, sda_out_n,
		input sda_in_p, sda_in_n,
		output sda_in_out, sda_out_out,
		input clk62p5,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	
	
    reg  [C_S00_AXI_DATA_WIDTH-1:0] rd_reg [3:0];
        
    wire [C_S00_AXI_DATA_WIDTH-1:0] wr_reg [3:0];
	
	
// Instantiation of Axi Bus Interface S00_AXI
	coldata_i2c_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) coldata_i2c_v1_0_S00_AXI_inst (

        .rd_reg0 (rd_reg[0]),
        .rd_reg1 (rd_reg[1]),
        .rd_reg2 (rd_reg[2]),
        .rd_reg3 (rd_reg[3]),
	
        .wr_reg0 (wr_reg[0]),
        .wr_reg1 (wr_reg[1]),
        .wr_reg2 (wr_reg[2]),
        .wr_reg3 (wr_reg[3]),
	
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here
    reg sda_out; 
    wire sda_in;
    wire lb_stim_sda_out;

    // SDA output is controlled by I2C or by loopback logic
    OBUFDS obuf_sda (.I(sda_out_out), .O(sda_out_p), .OB(sda_out_n));
    IBUFDS ibuf_sda (.I(sda_in_p), .IB(sda_in_n), .O(sda_in));
    assign sda_in_out = sda_in;
    assign sda_out_out = sda_out & lb_stim_sda_out;

    wire tx_start = wr_reg[0][0];
    reg tx_start_r = 0;
    reg [8:0] bit_phase = 0; // bit phase time counter
    reg [4:0] bit_count = 0; // bit number counter

    // FSM state definitions
    localparam ST_IDLE = 2'h0;
    localparam ST_STRT = 2'h1;
    localparam ST_TX   = 2'h2;
    localparam ST_ACK  = 2'h3;
    
    localparam integer start_duration = bit_duration * 1.5;
    localparam integer past_first_bit = bit_duration * 1.1;
    localparam integer ack_duration   = bit_duration * 2;
    
    reg [1:0] state = ST_IDLE; // FSM state
    reg [26:0] sda_out_sh, sda_in_sh; // shift regs

    always @(posedge s00_axi_aclk)
    begin
        if (s00_axi_aresetn == 1'b0)
        begin
            scl = 1'b1;
            sda_out = 1'b1;
            tx_start_r = 1'b0;
            state = ST_IDLE;
        end
        else
        begin
        
            case (state)
                ST_IDLE:
                begin
                    if (!tx_start_r && tx_start) // command to start just came
                    begin
                        state = ST_STRT;
                        bit_phase = 9'd0;    
                    end
                    scl = 1'b1;
                    sda_out = 1'b1;
                end
                
                ST_STRT: // this state drops sda, then scl, and waits a bit to create a start condition
                begin
                    if (bit_phase > start_duration)
                    begin
                        bit_phase = past_first_bit; // so first bit starts immediately
                        bit_count = 5'b0;
                        sda_out_sh = wr_reg[1][26:0]; // load out shifter
                        state = ST_TX;
                    end
                    sda_out = 1'b0;
                    if (bit_phase == scl_down)
                    begin 
                        scl = 1'b0;
                    end
                    bit_phase = bit_phase + 1;                        
                end
            
                ST_TX:
                begin
                    
                    if (bit_phase >= bit_duration)
                    begin
                        sda_out = sda_out_sh[26]; // send out high bit
                        sda_out_sh = {sda_out_sh[25:0], 1'b1}; // shift
                        if (bit_count == 5'd8 || bit_count == 5'd17 || bit_count == 5'd26)
                            state = ST_ACK; // go wait for ACK bit at the end of each byte
                        bit_count = bit_count + 1;
                        bit_phase = 5'b0;
                    end
                    
                    if (bit_phase == scl_up  ) scl = 1'b1;
                    if (bit_phase == scl_down)
                    begin 
                        scl = 1'b0;
                        sda_in_sh = {sda_in_sh[25:0], sda_in};  // also lock rd bit here
                    end
                    
                    bit_phase = bit_phase + 1;
                end
                
                ST_ACK:
                begin
                    if (bit_phase >= ack_duration)
                    begin
                         // check ack at bit duration mark
                         // due to a feature in coldata, ack may not come the very first time after reset
                         // so proceed if it's first byte and no ack
                        //if (sda_in == 1'b1 || bit_count == 5'd9)
                        // disabled ack check for now, ack bits are stored with data
                        // so software can check them
                        begin 
                            if (bit_count >= 5'd26)
                            begin
                                rd_reg[1] = {5'b0, sda_in_sh}; // store rd data in register 
                                state = ST_IDLE; // last byte
                            end
                            else state = ST_TX; // not the last bype, back to TX
                        end
                    end

                    if (bit_phase == scl_up  ) scl = 1'b1;
                    if (bit_phase == scl_down) 
                    begin 
                        scl = 1'b0;
                        sda_in_sh = {sda_in_sh[25:0], sda_in};  // also lock rd bit here
                    end

                    if (bit_phase < ack_timeout)
                    begin                    
                        bit_phase = bit_phase + 1;
                    end
                    else
                    begin
                        state = ST_IDLE; // timeout on ACK, back to IDLE
                        rd_reg[0][0] = 1'b1; // timeout error flag 
                    end
                
                end
                
            endcase
            
            tx_start_r = tx_start;
        end
    end

    reg [7:0] lat_cnt = 0;
    reg [4:0] lb_stim; // loopback stimulus 
    reg [3:0] lb_resp; // loopback response
    assign lb_stim_sda_out = lb_stim[4];
    
    // latency measurement logic
    always @(posedge clk62p5)
    begin
    
        if (lb_stim[4:3] == 2'b10) // stimulus just fell
        begin
            lat_cnt = -4'h4; // reset latency counter
        end
        else
        begin
            lat_cnt = lat_cnt + 8'h1;
        end
        
        if (lb_resp[3:2] == 2'b10) // response just fell
        begin
            rd_reg[2] = lat_cnt; // lock latency result
        end
        
            
        // loopback stimulus comes from wr_reg [1] bit 0
        lb_stim = {lb_stim[3:0], ~wr_reg[2][0]};
        
        lb_resp = {lb_resp[2:0], sda_in};
    end


	// User logic ends

endmodule
