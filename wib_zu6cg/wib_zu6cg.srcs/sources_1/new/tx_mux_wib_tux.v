`timescale 1ns / 1ps
module tx_mux_wib_tux
(
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *)    input wire S_AXI_ACLK,
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input wire S_AXI_ARESETN,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)   input wire [15 : 0] S_AXI_AWADDR,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)   input wire [2 : 0] S_AXI_AWPROT,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)  input wire S_AXI_AWVALID,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)  output wire S_AXI_AWREADY,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)    input wire [31 : 0] S_AXI_WDATA,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)    input wire [3 : 0] S_AXI_WSTRB,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)   input wire S_AXI_WVALID,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)   output wire S_AXI_WREADY,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)    output wire [1 : 0] S_AXI_BRESP,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)   output wire S_AXI_BVALID,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)   input wire S_AXI_BREADY,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)   input wire [15 : 0] S_AXI_ARADDR,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)   input wire [2 : 0] S_AXI_ARPROT,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)  input wire S_AXI_ARVALID,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)  output wire S_AXI_ARREADY,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)    output wire [31 : 0] S_AXI_RDATA,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)    output wire [1 : 0] S_AXI_RRESP,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)   output wire S_AXI_RVALID,
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
    BITS_PER_BYTE 0, INSERT_VIP 0" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)   input wire S_AXI_RREADY,
        
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth0 TXP" *) output eth0_tx_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth0 TXN" *) output eth0_tx_n,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth0 RXP" *) input  eth0_rx_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth0 RXN" *) input  eth0_rx_n,
        
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth1 TXP" *) output eth1_tx_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth1 TXN" *) output eth1_tx_n,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth1 RXP" *) input  eth1_rx_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth1 RXN" *) input  eth1_rx_n,
        
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 eth_clk CLK_P" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125" *)                                  input eth_clk_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 eth_clk CLK_N" *) input eth_clk_n,
      
    input        clk, // DUNE base clock
    input        rst, // DUNE base clock sync reset
    
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi0 d"       *) input [63:0] d0,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi0 d_valid" *) input        d0_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi0 d_last"  *) input        d0_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi1 d"       *) input [63:0] d1,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi1 d_valid" *) input        d1_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi1 d_last"  *) input        d1_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi2 d"       *) input [63:0] d2,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi2 d_valid" *) input        d2_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi2 d_last"  *) input        d2_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi3 d"       *) input [63:0] d3,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi3 d_valid" *) input        d3_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi3 d_last"  *) input        d3_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi4 d"       *) input [63:0] d4,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi4 d_valid" *) input        d4_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi4 d_last"  *) input        d4_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi5 d"       *) input [63:0] d5,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi5 d_valid" *) input        d5_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi5 d_last"  *) input        d5_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi6 d"       *) input [63:0] d6,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi6 d_valid" *) input        d6_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi6 d_last"  *) input        d6_last,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi7 d"       *) input [63:0] d7,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi7 d_valid" *) input        d7_valid,
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi7 d_last"  *) input        d7_last,
    
    input [63:0] ts
    
);

    hermes_wib_1_2 tmw 
    (
        .S_AXI_ACLK(S_AXI_ACLK),        // input wire S_AXI_ACLK
        .S_AXI_ARESETN(S_AXI_ARESETN),  // input wire S_AXI_ARESETN
        .S_AXI_AWADDR(S_AXI_AWADDR),    // input wire [15 : 0] S_AXI_AWADDR
        .S_AXI_AWPROT(S_AXI_AWPROT),    // input wire [2 : 0] S_AXI_AWPROT
        .S_AXI_AWVALID(S_AXI_AWVALID),  // input wire S_AXI_AWVALID
        .S_AXI_AWREADY(S_AXI_AWREADY),  // output wire S_AXI_AWREADY
        .S_AXI_WDATA(S_AXI_WDATA),      // input wire [31 : 0] S_AXI_WDATA
        .S_AXI_WSTRB(S_AXI_WSTRB),      // input wire [3 : 0] S_AXI_WSTRB
        .S_AXI_WVALID(S_AXI_WVALID),    // input wire S_AXI_WVALID
        .S_AXI_WREADY(S_AXI_WREADY),    // output wire S_AXI_WREADY
        .S_AXI_BRESP(S_AXI_BRESP),      // output wire [1 : 0] S_AXI_BRESP
        .S_AXI_BVALID(S_AXI_BVALID),    // output wire S_AXI_BVALID
        .S_AXI_BREADY(S_AXI_BREADY),    // input wire S_AXI_BREADY
        .S_AXI_ARADDR(S_AXI_ARADDR),    // input wire [15 : 0] S_AXI_ARADDR
        .S_AXI_ARPROT(S_AXI_ARPROT),    // input wire [2 : 0] S_AXI_ARPROT
        .S_AXI_ARVALID(S_AXI_ARVALID),  // input wire S_AXI_ARVALID
        .S_AXI_ARREADY(S_AXI_ARREADY),  // output wire S_AXI_ARREADY
        .S_AXI_RDATA(S_AXI_RDATA),      // output wire [31 : 0] S_AXI_RDATA
        .S_AXI_RRESP(S_AXI_RRESP),      // output wire [1 : 0] S_AXI_RRESP
        .S_AXI_RVALID(S_AXI_RVALID),    // output wire S_AXI_RVALID
        .S_AXI_RREADY(S_AXI_RREADY),    // input wire S_AXI_RREADY
        
        .eth0_rx_p(eth0_rx_p),          // input wire eth0_rx_p
        .eth0_rx_n(eth0_rx_n),          // input wire eth0_rx_n
        .eth0_tx_p(eth0_tx_p),          // output wire eth0_tx_p
        .eth0_tx_n(eth0_tx_n),          // output wire eth0_tx_n
        .eth0_tx_dis(eth0_tx_dis),      // output wire eth0_tx_dis
        .eth1_rx_p(eth1_rx_p),          // input wire eth1_rx_p
        .eth1_rx_n(eth1_rx_n),          // input wire eth1_rx_n
        .eth1_tx_p(eth1_tx_p),          // output wire eth1_tx_p
        .eth1_tx_n(eth1_tx_n),          // output wire eth1_tx_n
        .eth1_tx_dis(eth1_tx_dis),      // output wire eth1_tx_dis
        .eth_clk_p(eth_clk_p),          // input wire eth_clk_p
        .eth_clk_n(eth_clk_n),          // input wire eth_clk_n
        
        .clk(clk),                      // input wire clk
        .rst(rst),                      // input wire rst
        
        .d0(d0),                        // input wire [63 : 0] d0
        .d0_valid(d0_valid),            // input wire d0_valid
        .d0_last(d0_last),              // input wire d0_last
        .d1(d1),                        // input wire [63 : 0] d1
        .d1_valid(d1_valid),            // input wire d1_valid
        .d1_last(d1_last),              // input wire d1_last
        .d2(d2),                        // input wire [63 : 0] d2
        .d2_valid(d2_valid),            // input wire d2_valid
        .d2_last(d2_last),              // input wire d2_last
        .d3(d3),                        // input wire [63 : 0] d3
        .d3_valid(d3_valid),            // input wire d3_valid
        .d3_last(d3_last),              // input wire d3_last
        .d4(d4),                        // input wire [63 : 0] d4
        .d4_valid(d4_valid),            // input wire d4_valid
        .d4_last(d4_last),              // input wire d4_last
        .d5(d5),                        // input wire [63 : 0] d5
        .d5_valid(d5_valid),            // input wire d5_valid
        .d5_last(d5_last),              // input wire d5_last
        .d6(d6),                        // input wire [63 : 0] d6
        .d6_valid(d6_valid),            // input wire d6_valid
        .d6_last(d6_last),              // input wire d6_last
        .d7(d7),                        // input wire [63 : 0] d7
        .d7_valid(d7_valid),            // input wire d7_valid
        .d7_last(d7_last),              // input wire d7_last
        
        .ts (ts)
    );
    
endmodule
