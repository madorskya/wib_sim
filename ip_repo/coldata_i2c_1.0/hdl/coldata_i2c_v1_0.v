
`timescale 1 ns / 1 ps

	module coldata_i2c_v1_0 #
	(
		// Users to add parameters here
        parameter integer bit_duration = 64, // duration of one bit in clocks 
        parameter integer scl_up   = 15, // start of scl pulse 
        parameter integer scl_down = 47, // end of scl pulse 
        parameter integer start_duration = 32, // start condition duration
        parameter integer scl_down_start = 15, // scl down during start condition
        parameter integer ack_duration   = 190,
        parameter integer prestop_duration = 15,
        parameter integer stop_duration = 17,
    
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		output reg scl,
		output scl_out,
		output sda_out_p, sda_out_n,
		input sda_in_p, sda_in_n,
		output reg sda_in_out, 
		output sda_out_out,
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
    reg sda_out, sda_out_i; 
    wire sda_in;
    wire lb_stim_sda_out;

    // SDA output is controlled by I2C or by loopback logic
    OBUFDS obuf_sda (.I(sda_out_i), .O(sda_out_p), .OB(sda_out_n));
    IBUFDS ibuf_sda (.I(sda_in_p), .IB(sda_in_n), .O(sda_in));

    wire tx_start = wr_reg[0][0];
    reg [3:0] tx_start_r = 0;
    reg [8:0] bit_phase = 0; // bit phase time counter
    reg [4:0] bit_count = 0; // bit number counter

    // FSM state definitions
    localparam ST_IDLE = 3'h0;
    localparam ST_STRT = 3'h1;
    localparam ST_TX   = 3'h2;
    localparam ST_ACK  = 3'h3;
    localparam ST_PRESTOP = 3'h4;
    localparam ST_STOP = 3'h5;
    
    reg [2:0] state = ST_IDLE; // FSM state
    reg [26:0] sda_out_sh, sda_in_sh; // shift regs
    reg scl_i;
    reg busy;
    assign sda_out_out = sda_out & lb_stim_sda_out;
    assign scl_out = scl_i;

    always @(posedge clk62p5)
    begin
        scl = scl_i;
        sda_out_i = sda_out_out;
        
        if (s00_axi_aresetn == 1'b0)
        begin
            scl_i = 1'b1;
            sda_out = 1'b1;
            tx_start_r = 4'b0;
            state = ST_IDLE;
            busy = 1'b0;
        end
        else
        begin
        
            case (state)
                ST_IDLE:
                begin
                    if (tx_start_r[3:2] == 2'b01) // command to start just came
                    begin
                        state = ST_STRT;
                        bit_phase = 9'd0;    
                    end
                    scl_i = 1'b1;
                    sda_out = 1'b1;
                    busy = 1'b0;
                end
                
                ST_STRT: // this state drops sda, then scl, and waits a bit to create a start condition
                begin
                    if (bit_phase > start_duration)
                    begin
                        bit_phase = bit_duration; // so first bit starts immediately 
                        bit_count = 5'b0;
                        sda_out_sh = wr_reg[1][26:0]; // load out shifter
                        state = ST_TX;
                    end
                    sda_out = 1'b0;
                    if (bit_phase == scl_down_start)
                    begin 
                        scl_i = 1'b0;
                    end
                    bit_phase = bit_phase + 1;
                    busy = 1'b1;                        
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
                        bit_phase = 9'b0;
                    end
                    
                    if (bit_phase == scl_up  ) scl_i = 1'b1;
                    if (bit_phase == scl_down)
                    begin 
                        scl_i = 1'b0;
                        sda_in_sh = {sda_in_sh[25:0], sda_in_out};  // also lock rd bit here
                    end
                    
                    bit_phase = bit_phase + 1;
                end
                
                ST_ACK:
                begin
                    if (bit_phase >= ack_duration)
                    begin
                        if (bit_count >= 5'd26)
                        begin
                            rd_reg[1] = {5'b0, sda_in_sh}; // store rd data in register
                            bit_phase = 9'b0; 
                            state = ST_PRESTOP; // last byte
                        end
                        else state = ST_TX; // not the last byte, back to TX
                    end

                    if (bit_phase == scl_up  ) scl_i = 1'b1;
                    if (bit_phase == scl_down) 
                    begin 
                        scl_i = 1'b0;
                        sda_in_sh = {sda_in_sh[25:0], sda_in_out};  // also lock rd bit here
                    end
                    bit_phase = bit_phase + 1;
                end
                
                ST_PRESTOP:
                begin
                    // just keep fixed outputs
                    scl_i = 1'b0;
                    sda_out = 1'b0;
                    if (bit_phase >= prestop_duration)
                    begin
                        state = ST_STOP;
                        bit_phase = 9'b0; 
                    end                    
                    bit_phase = bit_phase + 1;
                end
                ST_STOP:
                begin
                    // stop condition
                    scl_i = 1'b1;
                    sda_out = 1'b0;
                    if (bit_phase >= stop_duration)
                    begin
                        state = ST_IDLE;
                        bit_phase = 9'b0; 
                    end                    
                    bit_phase = bit_phase + 1;
                end
                
            endcase
            
            tx_start_r = {tx_start_r[2:0], tx_start};
            rd_reg[0][0] = busy;
        end
        sda_in_out = sda_in;
        
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
            lat_cnt = -4'h6; // reset latency counter. -6 is compensation for residual latency from internal logic
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
        
        lb_resp = {lb_resp[2:0], sda_in_out};
    end


	// User logic ends

endmodule
