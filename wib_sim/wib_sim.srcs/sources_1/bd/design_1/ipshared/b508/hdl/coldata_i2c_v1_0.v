
`timescale 1 ns / 1 ps

	module coldata_i2c_v1_0 #
	(
		// Users to add parameters here
        parameter [8:0] bit_duration = 9'd90, // duration of one bit in clocks 
        parameter [8:0] ack_timeout  = 9'd500, // timeout for ack from coldata 
        parameter [8:0] scl_up   = 9'd20, // start of scl pulse 
        parameter [8:0] scl_down = 9'd65, // end of scl pulse 
    
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		output scl_p, scl_n,
		output sda_out_p, sda_out_n,
		input sda_in_p, sda_in_n,

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
    reg scl, sda_out, sda_in;

    OBUFDS obuf_scl (.I(scl), .O(scl_p), .OB(scl_n));
    OBUFDS obuf_sda (.I(sda_out), .O(sda_out_p), .OB(sda_out_n));
    IBUFDS ibuf_sda (.I(sda_in_p), .IB(sda_in_n), .O(sda_in));

    wire tx_start = wr_reg[0][0];
    reg tx_start_r;
    reg [8:0] bit_phase; // bit phase time counter
    reg [4:0] bit_count; // bit number counter
    reg [1:0] state; // FSM state

    // FSM state definitions
    localparam ST_IDLE = 2'h0;
    localparam ST_TX   = 2'h1;
    localparam ST_ACK  = 2'h2;
    

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
                        bit_phase = 9'd100; // so first bit starts immediately
                        bit_count = 5'b0;
                        state = ST_TX;    
                    end
                end
            
                ST_TX:
                begin
                    
                    if (bit_phase >= bit_duration)
                    begin
                        sda_out = wr_reg[1][bit_count];
                        bit_count = bit_count + 1;
                        if (bit_count == 5'd8 || bit_count == 5'd17 || bit_count == 5'd26)
                            state = ST_ACK; // go wait for ACK bit at the end of each byte
                        bit_phase = 5'b0;
                    end
                    
                    if (bit_phase == scl_up  ) scl = 1'b1;
                    if (bit_phase == scl_down)
                    begin 
                        scl = 1'b0;
                        rd_reg[1][bit_count] = sda_in; // also lock rd bit here
                    end
                    
                    bit_phase = bit_phase + 1;
                end
                
                ST_ACK:
                begin
                    if (sda_in == 1'b1)
                    begin 
                        if (bit_count == 5'd26) state = ST_IDLE; // last byte
                        else state = ST_TX; // not the last bype, back to TX
                    end

                    if (bit_phase == scl_up  ) scl = 1'b1;
                    if (bit_phase == scl_down) scl = 1'b0;

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

	// User logic ends

	endmodule
