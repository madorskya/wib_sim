`timescale 1ns / 1ps
module tx_mux_wib_tux
(
    input         S_AXI_ACLK,
    input         S_AXI_ARESETN,
    input [7:0]   S_AXI_AWADDR,
    input [2:0]   S_AXI_AWPROT,
    input         S_AXI_AWVALID,
    output        S_AXI_AWREADY,
    input [31:0]  S_AXI_WDATA,
    input         S_AXI_WSTRB,
    input         S_AXI_WVALID,
    output        S_AXI_WREADY,
    output [1:0]  S_AXI_BRESP,
    output        S_AXI_BVALID,
    input         S_AXI_BREADY,
    input [7:0]   S_AXI_ARADDR,
    input [2:0]   S_AXI_ARPROT,
    input         S_AXI_ARVALID,
    output        S_AXI_ARREADY,
    output [31:0] S_AXI_RDATA,
    output [1:0]  S_AXI_RRESP,
    output        S_AXI_RVALID,
    input         S_AXI_RREADY,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth TXP" *) output eth_tx_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth TXN" *) output eth_tx_n,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth RXP" *) input  eth_rx_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 eth RXN" *) input  eth_rx_n,
        
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 eth_clk CLK_P" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 156.25" *)                               input eth_clk_p,
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
    (* X_INTERFACE_INFO = "UF:user:deimos_data_input:1.0 ddi7 d_last"  *) input        d7_last
);

    tx_mux_wib_i tmw 
    (
        .S_AXI_ACLK    (S_AXI_ACLK),    // input wire S_AXI_ACLK
        .S_AXI_ARESETN (S_AXI_ARESETN), // input wire S_AXI_ARESETN
        .S_AXI_AWADDR  (S_AXI_AWADDR),  // input wire [7 : 0] S_AXI_AWADDR
        .S_AXI_AWPROT  (S_AXI_AWPROT),  // input wire [2 : 0] S_AXI_AWPROT
        .S_AXI_AWVALID (S_AXI_AWVALID), // input wire S_AXI_AWVALID
        .S_AXI_AWREADY (S_AXI_AWREADY), // output wire S_AXI_AWREADY
        .S_AXI_WDATA   (S_AXI_WDATA),   // input wire [31 : 0] S_AXI_WDATA
        .S_AXI_WSTRB   (S_AXI_WSTRB),   // input wire [3 : 0] S_AXI_WSTRB
        .S_AXI_WVALID  (S_AXI_WVALID),  // input wire S_AXI_WVALID
        .S_AXI_WREADY  (S_AXI_WREADY),  // output wire S_AXI_WREADY
        .S_AXI_BRESP   (S_AXI_BRESP),   // output wire [1 : 0] S_AXI_BRESP
        .S_AXI_BVALID  (S_AXI_BVALID),  // output wire S_AXI_BVALID
        .S_AXI_BREADY  (S_AXI_BREADY),  // input wire S_AXI_BREADY
        .S_AXI_ARADDR  (S_AXI_ARADDR),  // input wire [7 : 0] S_AXI_ARADDR
        .S_AXI_ARPROT  (S_AXI_ARPROT),  // input wire [2 : 0] S_AXI_ARPROT
        .S_AXI_ARVALID (S_AXI_ARVALID), // input wire S_AXI_ARVALID
        .S_AXI_ARREADY (S_AXI_ARREADY), // output wire S_AXI_ARREADY
        .S_AXI_RDATA   (S_AXI_RDATA),   // output wire [31 : 0] S_AXI_RDATA
        .S_AXI_RRESP   (S_AXI_RRESP),   // output wire [1 : 0] S_AXI_RRESP
        .S_AXI_RVALID  (S_AXI_RVALID),  // output wire S_AXI_RVALID
        .S_AXI_RREADY  (S_AXI_RREADY),  // input wire S_AXI_RREADY
        .eth_rx_p      (eth_rx_p),      // input wire eth_rx_p
        .eth_rx_n      (eth_rx_n),      // input wire eth_rx_n
        .eth_tx_p      (eth_tx_p),      // output wire eth_tx_p
        .eth_tx_n      (eth_tx_n),      // output wire eth_tx_n
        .eth_tx_dis    (),    // output wire eth_tx_dis
        .eth_los       (1'b0),       // input wire eth_los
        .eth_clk_p     (eth_clk_p),     // input wire eth_clk_p
        .eth_clk_n     (eth_clk_n),     // input wire eth_clk_n
        .clk           (clk),           // input wire clk
        .rst           (rst),           // input wire rst
        .d0            (d0),            
        .d0_valid      (d0_valid),      
        .d0_last       (d0_last),       
        .d1            (d1),            
        .d1_valid      (d1_valid),      
        .d1_last       (d1_last),       
        .d2            (d2),            
        .d2_valid      (d2_valid),      
        .d2_last       (d2_last),       
        .d3            (d3),            
        .d3_valid      (d3_valid),      
        .d3_last       (d3_last),       
        .d4            (d4),            
        .d4_valid      (d4_valid),      
        .d4_last       (d4_last),       
        .d5            (d5),            
        .d5_valid      (d5_valid),      
        .d5_last       (d5_last),       
        .d6            (d6),            
        .d6_valid      (d6_valid),      
        .d6_last       (d6_last),       
        .d7            (d7),            
        .d7_valid      (d7_valid),      
        .d7_last       (d7_last)        
    );


endmodule
