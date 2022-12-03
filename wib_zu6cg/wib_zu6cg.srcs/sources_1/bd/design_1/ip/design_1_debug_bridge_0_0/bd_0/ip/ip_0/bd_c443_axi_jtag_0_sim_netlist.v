// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec  2 20:12:49 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_0/bd_c443_axi_jtag_0_sim_netlist.v
// Design      : bd_c443_axi_jtag_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_c443_axi_jtag_0,axi_jtag_v1_0_0_axi_jtag,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_jtag_v1_0_0_axi_jtag,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module bd_c443_axi_jtag_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    tck,
    tms,
    tdi,
    tdo);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_signal_clock, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_signal_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [4:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [4:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  output tck;
  output tms;
  output tdi;
  input tdo;

  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tck;
  wire tdi;
  wire tdo;
  wire tms;

  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TCK_CLOCK_RATIO = "8" *) 
  (* C_USE_MUX_STATUS = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag inst
       (.mux_status(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tck(tck),
        .tdi(tdi),
        .tdo(tdo),
        .tms(tms));
endmodule

(* ORIG_REF_NAME = "axi_jtag_v1_0_0_axi4liteif" *) 
module bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif
   (axi_wready_reg_0,
    reset,
    axi_awready_reg_0,
    axi_arready_reg_0,
    s_axi_bvalid,
    s_axi_rvalid,
    Q,
    D,
    \slv_reg2_reg[30]_0 ,
    \slv_reg1_reg[31]_0 ,
    \slv_reg1_reg[30]_0 ,
    SR,
    \slv_reg0_reg[31]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    out,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    done,
    s_axi_arvalid,
    enable_d,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi_awaddr,
    \slv_reg4_reg[31]_0 ,
    s_axi_wdata,
    \slv_reg3_reg[31]_0 ,
    s_axi_araddr);
  output axi_wready_reg_0;
  output reset;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [1:0]Q;
  output [0:0]D;
  output [30:0]\slv_reg2_reg[30]_0 ;
  output [0:0]\slv_reg1_reg[31]_0 ;
  output [30:0]\slv_reg1_reg[30]_0 ;
  output [0:0]SR;
  output [31:0]\slv_reg0_reg[31]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input out;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input done;
  input s_axi_arvalid;
  input enable_d;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_awaddr;
  input [0:0]\slv_reg4_reg[31]_0 ;
  input [31:0]s_axi_wdata;
  input [31:0]\slv_reg3_reg[31]_0 ;
  input [2:0]s_axi_araddr;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [4:2]axi_awaddr;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire done;
  wire enable_d;
  wire out;
  wire [31:0]p_1_in;
  wire p_2_in;
  wire [31:0]reg_data_out;
  wire reset;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [2:0]sel0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]\slv_reg0_reg[31]_0 ;
  wire [31:31]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [30:0]\slv_reg1_reg[30]_0 ;
  wire [0:0]\slv_reg1_reg[31]_0 ;
  wire [31:31]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [30:0]\slv_reg2_reg[30]_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]\slv_reg3_reg[31]_0 ;
  wire \slv_reg4[31]_i_3_n_0 ;
  wire [0:0]\slv_reg4_reg[31]_0 ;
  wire \slv_reg4_reg_n_0_[10] ;
  wire \slv_reg4_reg_n_0_[11] ;
  wire \slv_reg4_reg_n_0_[12] ;
  wire \slv_reg4_reg_n_0_[13] ;
  wire \slv_reg4_reg_n_0_[14] ;
  wire \slv_reg4_reg_n_0_[15] ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[20] ;
  wire \slv_reg4_reg_n_0_[21] ;
  wire \slv_reg4_reg_n_0_[22] ;
  wire \slv_reg4_reg_n_0_[23] ;
  wire \slv_reg4_reg_n_0_[24] ;
  wire \slv_reg4_reg_n_0_[25] ;
  wire \slv_reg4_reg_n_0_[26] ;
  wire \slv_reg4_reg_n_0_[27] ;
  wire \slv_reg4_reg_n_0_[28] ;
  wire \slv_reg4_reg_n_0_[29] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire \slv_reg4_reg_n_0_[8] ;
  wire \slv_reg4_reg_n_0_[9] ;
  wire [0:0]slv_reg5;
  wire slv_reg_rden;

  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(sel0[0]),
        .R(reset));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(sel0[1]),
        .R(reset));
  FDRE \axi_araddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[2]),
        .Q(sel0[2]),
        .R(reset));
  LUT3 #(
    .INIT(8'h04)) 
    axi_arready_i_1
       (.I0(Q[0]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(reset));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_awaddr[4]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .O(p_2_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_2_in),
        .D(s_axi_awaddr[0]),
        .Q(axi_awaddr[2]),
        .R(reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_2_in),
        .D(s_axi_awaddr[1]),
        .Q(axi_awaddr[3]),
        .R(reset));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_2_in),
        .D(s_axi_awaddr[2]),
        .Q(axi_awaddr[4]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(Q[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(reset));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(reset));
  LUT6 #(
    .INIT(64'hAFAAEFAAAFAAEAAA)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(slv_reg3[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(\slv_reg2_reg[30]_0 [0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000B0008)) 
    \axi_rdata[0]_i_2 
       (.I0(\slv_reg1_reg[30]_0 [0]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\slv_reg0_reg[31]_0 [0]),
        .I5(\axi_rdata[0]_i_3_n_0 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg5),
        .I1(sel0[1]),
        .I2(Q[0]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[10] ),
        .I5(\slv_reg1_reg[30]_0 [10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[10]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [10]),
        .I1(\slv_reg0_reg[31]_0 [10]),
        .I2(slv_reg3[10]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[11] ),
        .I5(\slv_reg1_reg[30]_0 [11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[11]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [11]),
        .I1(\slv_reg0_reg[31]_0 [11]),
        .I2(slv_reg3[11]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[12] ),
        .I5(\slv_reg1_reg[30]_0 [12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[12]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [12]),
        .I1(\slv_reg0_reg[31]_0 [12]),
        .I2(slv_reg3[12]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[13] ),
        .I5(\slv_reg1_reg[30]_0 [13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[13]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [13]),
        .I1(\slv_reg0_reg[31]_0 [13]),
        .I2(slv_reg3[13]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[14] ),
        .I5(\slv_reg1_reg[30]_0 [14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[14]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [14]),
        .I1(\slv_reg0_reg[31]_0 [14]),
        .I2(slv_reg3[14]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[15] ),
        .I5(\slv_reg1_reg[30]_0 [15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[15]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [15]),
        .I1(\slv_reg0_reg[31]_0 [15]),
        .I2(slv_reg3[15]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEEFEEEEEE)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(\slv_reg4_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h32000200)) 
    \axi_rdata[16]_i_2 
       (.I0(\slv_reg1_reg[30]_0 [16]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg3[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AA0C)) 
    \axi_rdata[16]_i_3 
       (.I0(\slv_reg2_reg[30]_0 [16]),
        .I1(\slv_reg0_reg[31]_0 [16]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[17] ),
        .I5(\slv_reg1_reg[30]_0 [17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[17]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [17]),
        .I1(\slv_reg0_reg[31]_0 [17]),
        .I2(slv_reg3[17]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[18] ),
        .I5(\slv_reg1_reg[30]_0 [18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[18]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [18]),
        .I1(\slv_reg0_reg[31]_0 [18]),
        .I2(slv_reg3[18]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[19] ),
        .I5(\slv_reg1_reg[30]_0 [19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[19]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [19]),
        .I1(\slv_reg0_reg[31]_0 [19]),
        .I2(slv_reg3[19]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(Q[1]),
        .I5(\slv_reg1_reg[30]_0 [1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[1]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [1]),
        .I1(\slv_reg0_reg[31]_0 [1]),
        .I2(slv_reg3[1]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[20] ),
        .I5(\slv_reg1_reg[30]_0 [20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[20]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [20]),
        .I1(\slv_reg0_reg[31]_0 [20]),
        .I2(slv_reg3[20]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[21] ),
        .I5(\slv_reg1_reg[30]_0 [21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[21]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [21]),
        .I1(\slv_reg0_reg[31]_0 [21]),
        .I2(slv_reg3[21]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[22] ),
        .I5(\slv_reg1_reg[30]_0 [22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[22]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [22]),
        .I1(\slv_reg0_reg[31]_0 [22]),
        .I2(slv_reg3[22]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[23] ),
        .I5(\slv_reg1_reg[30]_0 [23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[23]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [23]),
        .I1(\slv_reg0_reg[31]_0 [23]),
        .I2(slv_reg3[23]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[24] ),
        .I5(\slv_reg1_reg[30]_0 [24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[24]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [24]),
        .I1(\slv_reg0_reg[31]_0 [24]),
        .I2(slv_reg3[24]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[25] ),
        .I5(\slv_reg1_reg[30]_0 [25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[25]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [25]),
        .I1(\slv_reg0_reg[31]_0 [25]),
        .I2(slv_reg3[25]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[26] ),
        .I5(\slv_reg1_reg[30]_0 [26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[26]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [26]),
        .I1(\slv_reg0_reg[31]_0 [26]),
        .I2(slv_reg3[26]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[27] ),
        .I5(\slv_reg1_reg[30]_0 [27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[27]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [27]),
        .I1(\slv_reg0_reg[31]_0 [27]),
        .I2(slv_reg3[27]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[28] ),
        .I5(\slv_reg1_reg[30]_0 [28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[28]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [28]),
        .I1(\slv_reg0_reg[31]_0 [28]),
        .I2(slv_reg3[28]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[29] ),
        .I5(\slv_reg1_reg[30]_0 [29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[29]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [29]),
        .I1(\slv_reg0_reg[31]_0 [29]),
        .I2(slv_reg3[29]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[2] ),
        .I5(\slv_reg1_reg[30]_0 [2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[2]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [2]),
        .I1(\slv_reg0_reg[31]_0 [2]),
        .I2(slv_reg3[2]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[30] ),
        .I5(\slv_reg1_reg[30]_0 [30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[30]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [30]),
        .I1(\slv_reg0_reg[31]_0 [30]),
        .I2(slv_reg3[30]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[31] ),
        .I5(slv_reg1),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg2),
        .I1(\slv_reg0_reg[31]_0 [31]),
        .I2(slv_reg3[31]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[3] ),
        .I5(\slv_reg1_reg[30]_0 [3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[3]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [3]),
        .I1(\slv_reg0_reg[31]_0 [3]),
        .I2(slv_reg3[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[4] ),
        .I5(\slv_reg1_reg[30]_0 [4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[4]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [4]),
        .I1(\slv_reg0_reg[31]_0 [4]),
        .I2(slv_reg3[4]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[5] ),
        .I5(\slv_reg1_reg[30]_0 [5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[5]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [5]),
        .I1(\slv_reg0_reg[31]_0 [5]),
        .I2(slv_reg3[5]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[6] ),
        .I5(\slv_reg1_reg[30]_0 [6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[6]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [6]),
        .I1(\slv_reg0_reg[31]_0 [6]),
        .I2(slv_reg3[6]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[7] ),
        .I5(\slv_reg1_reg[30]_0 [7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[7]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [7]),
        .I1(\slv_reg0_reg[31]_0 [7]),
        .I2(slv_reg3[7]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[8] ),
        .I5(\slv_reg1_reg[30]_0 [8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[8]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [8]),
        .I1(\slv_reg0_reg[31]_0 [8]),
        .I2(slv_reg3[8]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[9] ),
        .I5(\slv_reg1_reg[30]_0 [9]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \axi_rdata[9]_i_2 
       (.I0(\slv_reg2_reg[30]_0 [9]),
        .I1(\slv_reg0_reg[31]_0 [9]),
        .I2(slv_reg3[9]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(reset));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(reset));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(reset));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(reset));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(reset));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(reset));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(reset));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(reset));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(reset));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(reset));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(reset));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(reset));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(reset));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(reset));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(reset));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(reset));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(reset));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(reset));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(reset));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(reset));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(reset));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(reset));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(reset));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(reset));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(reset));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(reset));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(reset));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(reset));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(reset));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(reset));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(reset));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(axi_arready_reg_0),
        .I3(s_axi_arvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(reset));
  LUT4 #(
    .INIT(16'h1000)) 
    axi_wready_i_1
       (.I0(Q[0]),
        .I1(axi_wready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(reset));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(s_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg0_reg[31]_0 [0]),
        .R(reset));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg0_reg[31]_0 [10]),
        .R(reset));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg0_reg[31]_0 [11]),
        .R(reset));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg0_reg[31]_0 [12]),
        .R(reset));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg0_reg[31]_0 [13]),
        .R(reset));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg0_reg[31]_0 [14]),
        .R(reset));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg0_reg[31]_0 [15]),
        .R(reset));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg0_reg[31]_0 [16]),
        .R(reset));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg0_reg[31]_0 [17]),
        .R(reset));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg0_reg[31]_0 [18]),
        .R(reset));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg0_reg[31]_0 [19]),
        .R(reset));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg0_reg[31]_0 [1]),
        .R(reset));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg0_reg[31]_0 [20]),
        .R(reset));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg0_reg[31]_0 [21]),
        .R(reset));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg0_reg[31]_0 [22]),
        .R(reset));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg0_reg[31]_0 [23]),
        .R(reset));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg0_reg[31]_0 [24]),
        .R(reset));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg0_reg[31]_0 [25]),
        .R(reset));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg0_reg[31]_0 [26]),
        .R(reset));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg0_reg[31]_0 [27]),
        .R(reset));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg0_reg[31]_0 [28]),
        .R(reset));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg0_reg[31]_0 [29]),
        .R(reset));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg0_reg[31]_0 [2]),
        .R(reset));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg0_reg[31]_0 [30]),
        .R(reset));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\slv_reg0_reg[31]_0 [31]),
        .R(reset));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg0_reg[31]_0 [3]),
        .R(reset));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg0_reg[31]_0 [4]),
        .R(reset));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg0_reg[31]_0 [5]),
        .R(reset));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg0_reg[31]_0 [6]),
        .R(reset));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg0_reg[31]_0 [7]),
        .R(reset));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg0_reg[31]_0 [8]),
        .R(reset));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg0_reg[31]_0 [9]),
        .R(reset));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[4]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg1_reg[30]_0 [0]),
        .R(reset));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg1_reg[30]_0 [10]),
        .R(reset));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg1_reg[30]_0 [11]),
        .R(reset));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg1_reg[30]_0 [12]),
        .R(reset));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg1_reg[30]_0 [13]),
        .R(reset));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg1_reg[30]_0 [14]),
        .R(reset));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg1_reg[30]_0 [15]),
        .R(reset));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg1_reg[30]_0 [16]),
        .R(reset));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg1_reg[30]_0 [17]),
        .R(reset));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg1_reg[30]_0 [18]),
        .R(reset));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg1_reg[30]_0 [19]),
        .R(reset));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg1_reg[30]_0 [1]),
        .R(reset));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg1_reg[30]_0 [20]),
        .R(reset));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg1_reg[30]_0 [21]),
        .R(reset));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg1_reg[30]_0 [22]),
        .R(reset));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg1_reg[30]_0 [23]),
        .R(reset));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg1_reg[30]_0 [24]),
        .R(reset));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg1_reg[30]_0 [25]),
        .R(reset));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg1_reg[30]_0 [26]),
        .R(reset));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg1_reg[30]_0 [27]),
        .R(reset));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg1_reg[30]_0 [28]),
        .R(reset));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg1_reg[30]_0 [29]),
        .R(reset));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg1_reg[30]_0 [2]),
        .R(reset));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg1_reg[30]_0 [30]),
        .R(reset));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1),
        .R(reset));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg1_reg[30]_0 [3]),
        .R(reset));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg1_reg[30]_0 [4]),
        .R(reset));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg1_reg[30]_0 [5]),
        .R(reset));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg1_reg[30]_0 [6]),
        .R(reset));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg1_reg[30]_0 [7]),
        .R(reset));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg1_reg[30]_0 [8]),
        .R(reset));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg1_reg[30]_0 [9]),
        .R(reset));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg2_reg[30]_0 [0]),
        .R(reset));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg2_reg[30]_0 [10]),
        .R(reset));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg2_reg[30]_0 [11]),
        .R(reset));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg2_reg[30]_0 [12]),
        .R(reset));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg2_reg[30]_0 [13]),
        .R(reset));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg2_reg[30]_0 [14]),
        .R(reset));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg2_reg[30]_0 [15]),
        .R(reset));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg2_reg[30]_0 [16]),
        .R(reset));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg2_reg[30]_0 [17]),
        .R(reset));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg2_reg[30]_0 [18]),
        .R(reset));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg2_reg[30]_0 [19]),
        .R(reset));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg2_reg[30]_0 [1]),
        .R(reset));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg2_reg[30]_0 [20]),
        .R(reset));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg2_reg[30]_0 [21]),
        .R(reset));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg2_reg[30]_0 [22]),
        .R(reset));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg2_reg[30]_0 [23]),
        .R(reset));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg2_reg[30]_0 [24]),
        .R(reset));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg2_reg[30]_0 [25]),
        .R(reset));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg2_reg[30]_0 [26]),
        .R(reset));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg2_reg[30]_0 [27]),
        .R(reset));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg2_reg[30]_0 [28]),
        .R(reset));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg2_reg[30]_0 [29]),
        .R(reset));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg2_reg[30]_0 [2]),
        .R(reset));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg2_reg[30]_0 [30]),
        .R(reset));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2),
        .R(reset));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg2_reg[30]_0 [3]),
        .R(reset));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg2_reg[30]_0 [4]),
        .R(reset));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg2_reg[30]_0 [5]),
        .R(reset));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg2_reg[30]_0 [6]),
        .R(reset));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg2_reg[30]_0 [7]),
        .R(reset));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg2_reg[30]_0 [8]),
        .R(reset));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg2_reg[30]_0 [9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \slv_reg3[15]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .I5(done),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \slv_reg3[23]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .I5(done),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \slv_reg3[31]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .I5(done),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \slv_reg3[7]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg4[31]_i_3_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(axi_awaddr[3]),
        .I5(done),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [0]),
        .Q(slv_reg3[0]),
        .R(reset));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [10]),
        .Q(slv_reg3[10]),
        .R(reset));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [11]),
        .Q(slv_reg3[11]),
        .R(reset));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [12]),
        .Q(slv_reg3[12]),
        .R(reset));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [13]),
        .Q(slv_reg3[13]),
        .R(reset));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [14]),
        .Q(slv_reg3[14]),
        .R(reset));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [15]),
        .Q(slv_reg3[15]),
        .R(reset));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [16]),
        .Q(slv_reg3[16]),
        .R(reset));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [17]),
        .Q(slv_reg3[17]),
        .R(reset));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [18]),
        .Q(slv_reg3[18]),
        .R(reset));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [19]),
        .Q(slv_reg3[19]),
        .R(reset));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [1]),
        .Q(slv_reg3[1]),
        .R(reset));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [20]),
        .Q(slv_reg3[20]),
        .R(reset));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [21]),
        .Q(slv_reg3[21]),
        .R(reset));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [22]),
        .Q(slv_reg3[22]),
        .R(reset));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [23]),
        .Q(slv_reg3[23]),
        .R(reset));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [24]),
        .Q(slv_reg3[24]),
        .R(reset));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [25]),
        .Q(slv_reg3[25]),
        .R(reset));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [26]),
        .Q(slv_reg3[26]),
        .R(reset));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [27]),
        .Q(slv_reg3[27]),
        .R(reset));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [28]),
        .Q(slv_reg3[28]),
        .R(reset));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [29]),
        .Q(slv_reg3[29]),
        .R(reset));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [2]),
        .Q(slv_reg3[2]),
        .R(reset));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [30]),
        .Q(slv_reg3[30]),
        .R(reset));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [31]),
        .Q(slv_reg3[31]),
        .R(reset));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [3]),
        .Q(slv_reg3[3]),
        .R(reset));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [4]),
        .Q(slv_reg3[4]),
        .R(reset));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [5]),
        .Q(slv_reg3[5]),
        .R(reset));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [6]),
        .Q(slv_reg3[6]),
        .R(reset));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [7]),
        .Q(slv_reg3[7]),
        .R(reset));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [8]),
        .Q(slv_reg3[8]),
        .R(reset));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3_reg[31]_0 [9]),
        .Q(slv_reg3[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg4[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(\slv_reg4[31]_i_3_n_0 ),
        .I4(s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg4[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(\slv_reg4[31]_i_3_n_0 ),
        .I4(s_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg4[31]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(\slv_reg4[31]_i_3_n_0 ),
        .I4(s_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg4[31]_i_3 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(\slv_reg4[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg4[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[4]),
        .I3(\slv_reg4[31]_i_3_n_0 ),
        .I4(s_axi_wstrb[0]),
        .O(p_1_in[0]));
  FDRE \slv_reg4_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg4_reg_n_0_[10] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg4_reg_n_0_[11] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg4_reg_n_0_[12] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg4_reg_n_0_[13] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg4_reg_n_0_[14] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg4_reg_n_0_[15] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg4_reg_n_0_[16] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg4_reg_n_0_[17] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg4_reg_n_0_[18] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg4_reg_n_0_[19] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg4_reg_n_0_[20] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg4_reg_n_0_[21] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg4_reg_n_0_[22] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg4_reg_n_0_[23] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg4_reg_n_0_[24] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg4_reg_n_0_[25] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg4_reg_n_0_[26] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg4_reg_n_0_[27] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg4_reg_n_0_[28] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg4_reg_n_0_[29] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg4_reg_n_0_[30] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(\slv_reg4_reg_n_0_[31] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg4_reg_n_0_[8] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg4_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg4_reg_n_0_[9] ),
        .R(\slv_reg4_reg[31]_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(slv_reg5),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \tck_count[7]_i_1 
       (.I0(Q[0]),
        .I1(enable_d),
        .I2(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tdi_output[31]_i_1 
       (.I0(slv_reg2),
        .I1(Q[0]),
        .I2(enable_d),
        .O(D));
  LUT3 #(
    .INIT(8'h08)) 
    \tms_output[31]_i_1 
       (.I0(slv_reg1),
        .I1(Q[0]),
        .I2(enable_d),
        .O(\slv_reg1_reg[31]_0 ));
endmodule

(* C_S_AXI_ADDR_WIDTH = "5" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_TCK_CLOCK_RATIO = "8" *) 
(* C_USE_MUX_STATUS = "0" *) (* ORIG_REF_NAME = "axi_jtag_v1_0_0_axi_jtag" *) 
module bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    mux_status,
    tck,
    tms,
    tdi,
    tdo);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [4:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [4:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input mux_status;
  output tck;
  output tms;
  output tdi;
  input tdo;

  wire \<const0> ;
  wire control_bit;
  wire done;
  wire enable;
  wire enable_d;
  wire index;
  wire mux_status;
  wire [31:0]p_2_in;
  wire reset;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]slv_reg0;
  wire [30:0]slv_reg1;
  wire [30:0]slv_reg2;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire sync_reg1;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire sync_reg2;
  (* DONT_TOUCH *) (* RTL_KEEP = "yes" *) (* async_reg = "true" *) wire sync_reg3;
  wire tck;
  wire tdi;
  wire tdo;
  wire tms;
  wire u_axi4_lite_if_n_40;
  wire u_axi4_lite_if_n_8;
  wire u_jtag_proc_n_4;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sync_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mux_status),
        .Q(sync_reg1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sync_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync_reg1),
        .Q(sync_reg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sync_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync_reg2),
        .Q(sync_reg3),
        .R(1'b0));
  bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif u_axi4_lite_if
       (.D(u_axi4_lite_if_n_8),
        .Q({control_bit,enable}),
        .SR(index),
        .axi_arready_reg_0(s_axi_arready),
        .axi_awready_reg_0(s_axi_awready),
        .axi_wready_reg_0(s_axi_wready),
        .done(done),
        .enable_d(enable_d),
        .out(sync_reg3),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\slv_reg0_reg[31]_0 (slv_reg0),
        .\slv_reg1_reg[30]_0 (slv_reg1),
        .\slv_reg1_reg[31]_0 (u_axi4_lite_if_n_40),
        .\slv_reg2_reg[30]_0 (slv_reg2),
        .\slv_reg3_reg[31]_0 (p_2_in),
        .\slv_reg4_reg[31]_0 (u_jtag_proc_n_4));
  bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc u_jtag_proc
       (.D(u_axi4_lite_if_n_40),
        .Q({control_bit,enable}),
        .SR(index),
        .\bit_count_reg[31]_0 (slv_reg0),
        .done(done),
        .done_reg_0(u_jtag_proc_n_4),
        .enable_d(enable_d),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .tck(tck),
        .tdi(tdi),
        .\tdi_output_reg[30]_0 (slv_reg2),
        .\tdi_output_reg[31]_0 (u_axi4_lite_if_n_8),
        .tdo(tdo),
        .\tdo_buffer_reg[31][0]_0 (p_2_in),
        .tms(tms),
        .\tms_output_reg[30]_0 (slv_reg1));
endmodule

(* ORIG_REF_NAME = "axi_jtag_v1_0_0_jtagproc" *) 
module bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc
   (done,
    enable_d,
    tck,
    tdi,
    done_reg_0,
    \tdo_buffer_reg[31][0]_0 ,
    tms,
    reset,
    s_axi_aclk,
    Q,
    s_axi_aresetn,
    \tdi_output_reg[30]_0 ,
    \tms_output_reg[30]_0 ,
    \bit_count_reg[31]_0 ,
    tdo,
    s_axi_wdata,
    SR,
    D,
    \tdi_output_reg[31]_0 );
  output done;
  output enable_d;
  output tck;
  output tdi;
  output [0:0]done_reg_0;
  output [31:0]\tdo_buffer_reg[31][0]_0 ;
  output tms;
  input reset;
  input s_axi_aclk;
  input [1:0]Q;
  input s_axi_aresetn;
  input [30:0]\tdi_output_reg[30]_0 ;
  input [30:0]\tms_output_reg[30]_0 ;
  input [31:0]\bit_count_reg[31]_0 ;
  input tdo;
  input [31:0]s_axi_wdata;
  input [0:0]SR;
  input [0:0]D;
  input [0:0]\tdi_output_reg[31]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \bit_count[0]_i_10_n_0 ;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[0]_i_3_n_0 ;
  wire \bit_count[0]_i_4_n_0 ;
  wire \bit_count[0]_i_5_n_0 ;
  wire \bit_count[0]_i_6_n_0 ;
  wire \bit_count[0]_i_7_n_0 ;
  wire \bit_count[0]_i_8_n_0 ;
  wire \bit_count[0]_i_9_n_0 ;
  wire \bit_count[16]_i_2_n_0 ;
  wire \bit_count[16]_i_3_n_0 ;
  wire \bit_count[16]_i_4_n_0 ;
  wire \bit_count[16]_i_5_n_0 ;
  wire \bit_count[16]_i_6_n_0 ;
  wire \bit_count[16]_i_7_n_0 ;
  wire \bit_count[16]_i_8_n_0 ;
  wire \bit_count[16]_i_9_n_0 ;
  wire \bit_count[24]_i_2_n_0 ;
  wire \bit_count[24]_i_3_n_0 ;
  wire \bit_count[24]_i_4_n_0 ;
  wire \bit_count[24]_i_5_n_0 ;
  wire \bit_count[24]_i_6_n_0 ;
  wire \bit_count[24]_i_7_n_0 ;
  wire \bit_count[24]_i_8_n_0 ;
  wire \bit_count[24]_i_9_n_0 ;
  wire \bit_count[8]_i_2_n_0 ;
  wire \bit_count[8]_i_3_n_0 ;
  wire \bit_count[8]_i_4_n_0 ;
  wire \bit_count[8]_i_5_n_0 ;
  wire \bit_count[8]_i_6_n_0 ;
  wire \bit_count[8]_i_7_n_0 ;
  wire \bit_count[8]_i_8_n_0 ;
  wire \bit_count[8]_i_9_n_0 ;
  wire [31:0]bit_count_reg;
  wire \bit_count_reg[0]_i_2_n_0 ;
  wire \bit_count_reg[0]_i_2_n_1 ;
  wire \bit_count_reg[0]_i_2_n_10 ;
  wire \bit_count_reg[0]_i_2_n_11 ;
  wire \bit_count_reg[0]_i_2_n_12 ;
  wire \bit_count_reg[0]_i_2_n_13 ;
  wire \bit_count_reg[0]_i_2_n_14 ;
  wire \bit_count_reg[0]_i_2_n_15 ;
  wire \bit_count_reg[0]_i_2_n_2 ;
  wire \bit_count_reg[0]_i_2_n_3 ;
  wire \bit_count_reg[0]_i_2_n_4 ;
  wire \bit_count_reg[0]_i_2_n_5 ;
  wire \bit_count_reg[0]_i_2_n_6 ;
  wire \bit_count_reg[0]_i_2_n_7 ;
  wire \bit_count_reg[0]_i_2_n_8 ;
  wire \bit_count_reg[0]_i_2_n_9 ;
  wire \bit_count_reg[16]_i_1_n_0 ;
  wire \bit_count_reg[16]_i_1_n_1 ;
  wire \bit_count_reg[16]_i_1_n_10 ;
  wire \bit_count_reg[16]_i_1_n_11 ;
  wire \bit_count_reg[16]_i_1_n_12 ;
  wire \bit_count_reg[16]_i_1_n_13 ;
  wire \bit_count_reg[16]_i_1_n_14 ;
  wire \bit_count_reg[16]_i_1_n_15 ;
  wire \bit_count_reg[16]_i_1_n_2 ;
  wire \bit_count_reg[16]_i_1_n_3 ;
  wire \bit_count_reg[16]_i_1_n_4 ;
  wire \bit_count_reg[16]_i_1_n_5 ;
  wire \bit_count_reg[16]_i_1_n_6 ;
  wire \bit_count_reg[16]_i_1_n_7 ;
  wire \bit_count_reg[16]_i_1_n_8 ;
  wire \bit_count_reg[16]_i_1_n_9 ;
  wire \bit_count_reg[24]_i_1_n_1 ;
  wire \bit_count_reg[24]_i_1_n_10 ;
  wire \bit_count_reg[24]_i_1_n_11 ;
  wire \bit_count_reg[24]_i_1_n_12 ;
  wire \bit_count_reg[24]_i_1_n_13 ;
  wire \bit_count_reg[24]_i_1_n_14 ;
  wire \bit_count_reg[24]_i_1_n_15 ;
  wire \bit_count_reg[24]_i_1_n_2 ;
  wire \bit_count_reg[24]_i_1_n_3 ;
  wire \bit_count_reg[24]_i_1_n_4 ;
  wire \bit_count_reg[24]_i_1_n_5 ;
  wire \bit_count_reg[24]_i_1_n_6 ;
  wire \bit_count_reg[24]_i_1_n_7 ;
  wire \bit_count_reg[24]_i_1_n_8 ;
  wire \bit_count_reg[24]_i_1_n_9 ;
  wire [31:0]\bit_count_reg[31]_0 ;
  wire \bit_count_reg[8]_i_1_n_0 ;
  wire \bit_count_reg[8]_i_1_n_1 ;
  wire \bit_count_reg[8]_i_1_n_10 ;
  wire \bit_count_reg[8]_i_1_n_11 ;
  wire \bit_count_reg[8]_i_1_n_12 ;
  wire \bit_count_reg[8]_i_1_n_13 ;
  wire \bit_count_reg[8]_i_1_n_14 ;
  wire \bit_count_reg[8]_i_1_n_15 ;
  wire \bit_count_reg[8]_i_1_n_2 ;
  wire \bit_count_reg[8]_i_1_n_3 ;
  wire \bit_count_reg[8]_i_1_n_4 ;
  wire \bit_count_reg[8]_i_1_n_5 ;
  wire \bit_count_reg[8]_i_1_n_6 ;
  wire \bit_count_reg[8]_i_1_n_7 ;
  wire \bit_count_reg[8]_i_1_n_8 ;
  wire \bit_count_reg[8]_i_1_n_9 ;
  wire done;
  wire done_i;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire [0:0]done_reg_0;
  wire enable_d;
  wire \index[0]_i_1_n_0 ;
  wire \index[4]_i_1_n_0 ;
  wire [4:0]index_reg;
  wire [2:0]next_state;
  wire [4:1]p_0_in;
  wire reset;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire [2:0]state;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[1]_i_9_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire tck;
  wire [7:0]tck_count;
  wire \tck_count[5]_i_2_n_0 ;
  wire \tck_count[7]_i_4_n_0 ;
  wire [7:0]tck_count_0;
  wire tck_en;
  wire tck_i_i_1_n_0;
  wire tck_i_i_2_n_0;
  wire tck_i_i_3_n_0;
  wire tdi;
  wire tdi_output;
  wire \tdi_output[0]_i_1_n_0 ;
  wire \tdi_output[10]_i_1_n_0 ;
  wire \tdi_output[11]_i_1_n_0 ;
  wire \tdi_output[12]_i_1_n_0 ;
  wire \tdi_output[13]_i_1_n_0 ;
  wire \tdi_output[14]_i_1_n_0 ;
  wire \tdi_output[15]_i_1_n_0 ;
  wire \tdi_output[16]_i_1_n_0 ;
  wire \tdi_output[17]_i_1_n_0 ;
  wire \tdi_output[18]_i_1_n_0 ;
  wire \tdi_output[19]_i_1_n_0 ;
  wire \tdi_output[1]_i_1_n_0 ;
  wire \tdi_output[20]_i_1_n_0 ;
  wire \tdi_output[21]_i_1_n_0 ;
  wire \tdi_output[22]_i_1_n_0 ;
  wire \tdi_output[23]_i_1_n_0 ;
  wire \tdi_output[24]_i_1_n_0 ;
  wire \tdi_output[25]_i_1_n_0 ;
  wire \tdi_output[26]_i_1_n_0 ;
  wire \tdi_output[27]_i_1_n_0 ;
  wire \tdi_output[28]_i_1_n_0 ;
  wire \tdi_output[29]_i_1_n_0 ;
  wire \tdi_output[2]_i_1_n_0 ;
  wire \tdi_output[30]_i_1_n_0 ;
  wire \tdi_output[3]_i_1_n_0 ;
  wire \tdi_output[4]_i_1_n_0 ;
  wire \tdi_output[5]_i_1_n_0 ;
  wire \tdi_output[6]_i_1_n_0 ;
  wire \tdi_output[7]_i_1_n_0 ;
  wire \tdi_output[8]_i_1_n_0 ;
  wire \tdi_output[9]_i_1_n_0 ;
  wire [30:0]\tdi_output_reg[30]_0 ;
  wire [0:0]\tdi_output_reg[31]_0 ;
  wire \tdi_output_reg_n_0_[10] ;
  wire \tdi_output_reg_n_0_[11] ;
  wire \tdi_output_reg_n_0_[12] ;
  wire \tdi_output_reg_n_0_[13] ;
  wire \tdi_output_reg_n_0_[14] ;
  wire \tdi_output_reg_n_0_[15] ;
  wire \tdi_output_reg_n_0_[16] ;
  wire \tdi_output_reg_n_0_[17] ;
  wire \tdi_output_reg_n_0_[18] ;
  wire \tdi_output_reg_n_0_[19] ;
  wire \tdi_output_reg_n_0_[1] ;
  wire \tdi_output_reg_n_0_[20] ;
  wire \tdi_output_reg_n_0_[21] ;
  wire \tdi_output_reg_n_0_[22] ;
  wire \tdi_output_reg_n_0_[23] ;
  wire \tdi_output_reg_n_0_[24] ;
  wire \tdi_output_reg_n_0_[25] ;
  wire \tdi_output_reg_n_0_[26] ;
  wire \tdi_output_reg_n_0_[27] ;
  wire \tdi_output_reg_n_0_[28] ;
  wire \tdi_output_reg_n_0_[29] ;
  wire \tdi_output_reg_n_0_[2] ;
  wire \tdi_output_reg_n_0_[30] ;
  wire \tdi_output_reg_n_0_[31] ;
  wire \tdi_output_reg_n_0_[3] ;
  wire \tdi_output_reg_n_0_[4] ;
  wire \tdi_output_reg_n_0_[5] ;
  wire \tdi_output_reg_n_0_[6] ;
  wire \tdi_output_reg_n_0_[7] ;
  wire \tdi_output_reg_n_0_[8] ;
  wire \tdi_output_reg_n_0_[9] ;
  wire tdo;
  wire \tdo_buffer[0][0]_i_1_n_0 ;
  wire \tdo_buffer[0][0]_i_3_n_0 ;
  wire \tdo_buffer[0][0]_i_4_n_0 ;
  wire \tdo_buffer[0][0]_i_5_n_0 ;
  wire \tdo_buffer[0][0]_i_6_n_0 ;
  wire \tdo_buffer[10][0]_i_1_n_0 ;
  wire \tdo_buffer[11][0]_i_1_n_0 ;
  wire \tdo_buffer[12][0]_i_1_n_0 ;
  wire \tdo_buffer[13][0]_i_1_n_0 ;
  wire \tdo_buffer[14][0]_i_1_n_0 ;
  wire \tdo_buffer[15][0]_i_1_n_0 ;
  wire \tdo_buffer[16][0]_i_1_n_0 ;
  wire \tdo_buffer[16][0]_i_2_n_0 ;
  wire \tdo_buffer[17][0]_i_1_n_0 ;
  wire \tdo_buffer[18][0]_i_1_n_0 ;
  wire \tdo_buffer[19][0]_i_1_n_0 ;
  wire \tdo_buffer[1][0]_i_1_n_0 ;
  wire \tdo_buffer[1][0]_i_2_n_0 ;
  wire \tdo_buffer[1][0]_i_3_n_0 ;
  wire \tdo_buffer[20][0]_i_1_n_0 ;
  wire \tdo_buffer[21][0]_i_1_n_0 ;
  wire \tdo_buffer[22][0]_i_1_n_0 ;
  wire \tdo_buffer[23][0]_i_1_n_0 ;
  wire \tdo_buffer[24][0]_i_1_n_0 ;
  wire \tdo_buffer[24][0]_i_2_n_0 ;
  wire \tdo_buffer[25][0]_i_1_n_0 ;
  wire \tdo_buffer[26][0]_i_1_n_0 ;
  wire \tdo_buffer[27][0]_i_1_n_0 ;
  wire \tdo_buffer[28][0]_i_1_n_0 ;
  wire \tdo_buffer[29][0]_i_1_n_0 ;
  wire \tdo_buffer[2][0]_i_1_n_0 ;
  wire \tdo_buffer[30][0]_i_1_n_0 ;
  wire \tdo_buffer[31][0]_i_1_n_0 ;
  wire \tdo_buffer[3][0]_i_1_n_0 ;
  wire \tdo_buffer[4][0]_i_1_n_0 ;
  wire \tdo_buffer[5][0]_i_1_n_0 ;
  wire \tdo_buffer[6][0]_i_1_n_0 ;
  wire \tdo_buffer[7][0]_i_1_n_0 ;
  wire \tdo_buffer[8][0]_i_1_n_0 ;
  wire \tdo_buffer[8][0]_i_2_n_0 ;
  wire \tdo_buffer[9][0]_i_1_n_0 ;
  wire \tdo_buffer_reg[0] ;
  wire \tdo_buffer_reg[10] ;
  wire \tdo_buffer_reg[11] ;
  wire \tdo_buffer_reg[12] ;
  wire \tdo_buffer_reg[13] ;
  wire \tdo_buffer_reg[14] ;
  wire \tdo_buffer_reg[15] ;
  wire \tdo_buffer_reg[16] ;
  wire \tdo_buffer_reg[17] ;
  wire \tdo_buffer_reg[18] ;
  wire \tdo_buffer_reg[19] ;
  wire \tdo_buffer_reg[1] ;
  wire \tdo_buffer_reg[20] ;
  wire \tdo_buffer_reg[21] ;
  wire \tdo_buffer_reg[22] ;
  wire \tdo_buffer_reg[23] ;
  wire \tdo_buffer_reg[24] ;
  wire \tdo_buffer_reg[25] ;
  wire \tdo_buffer_reg[26] ;
  wire \tdo_buffer_reg[27] ;
  wire \tdo_buffer_reg[28] ;
  wire \tdo_buffer_reg[29] ;
  wire \tdo_buffer_reg[2] ;
  wire \tdo_buffer_reg[30] ;
  wire \tdo_buffer_reg[31] ;
  wire [31:0]\tdo_buffer_reg[31][0]_0 ;
  wire \tdo_buffer_reg[3] ;
  wire \tdo_buffer_reg[4] ;
  wire \tdo_buffer_reg[5] ;
  wire \tdo_buffer_reg[6] ;
  wire \tdo_buffer_reg[7] ;
  wire \tdo_buffer_reg[8] ;
  wire \tdo_buffer_reg[9] ;
  wire tdo_switched;
  wire tms;
  wire \tms_output[0]_i_2_n_0 ;
  wire \tms_output[0]_i_3_n_0 ;
  wire \tms_output[10]_i_1_n_0 ;
  wire \tms_output[11]_i_1_n_0 ;
  wire \tms_output[12]_i_1_n_0 ;
  wire \tms_output[13]_i_1_n_0 ;
  wire \tms_output[14]_i_1_n_0 ;
  wire \tms_output[15]_i_1_n_0 ;
  wire \tms_output[16]_i_1_n_0 ;
  wire \tms_output[17]_i_1_n_0 ;
  wire \tms_output[18]_i_1_n_0 ;
  wire \tms_output[19]_i_1_n_0 ;
  wire \tms_output[1]_i_1_n_0 ;
  wire \tms_output[20]_i_1_n_0 ;
  wire \tms_output[21]_i_1_n_0 ;
  wire \tms_output[22]_i_1_n_0 ;
  wire \tms_output[23]_i_1_n_0 ;
  wire \tms_output[24]_i_1_n_0 ;
  wire \tms_output[25]_i_1_n_0 ;
  wire \tms_output[26]_i_1_n_0 ;
  wire \tms_output[27]_i_1_n_0 ;
  wire \tms_output[28]_i_1_n_0 ;
  wire \tms_output[29]_i_1_n_0 ;
  wire \tms_output[2]_i_1_n_0 ;
  wire \tms_output[30]_i_1_n_0 ;
  wire \tms_output[3]_i_1_n_0 ;
  wire \tms_output[4]_i_1_n_0 ;
  wire \tms_output[5]_i_1_n_0 ;
  wire \tms_output[6]_i_1_n_0 ;
  wire \tms_output[7]_i_1_n_0 ;
  wire \tms_output[8]_i_1_n_0 ;
  wire \tms_output[9]_i_1_n_0 ;
  wire [30:0]\tms_output_reg[30]_0 ;
  wire \tms_output_reg_n_0_[10] ;
  wire \tms_output_reg_n_0_[11] ;
  wire \tms_output_reg_n_0_[12] ;
  wire \tms_output_reg_n_0_[13] ;
  wire \tms_output_reg_n_0_[14] ;
  wire \tms_output_reg_n_0_[15] ;
  wire \tms_output_reg_n_0_[16] ;
  wire \tms_output_reg_n_0_[17] ;
  wire \tms_output_reg_n_0_[18] ;
  wire \tms_output_reg_n_0_[19] ;
  wire \tms_output_reg_n_0_[1] ;
  wire \tms_output_reg_n_0_[20] ;
  wire \tms_output_reg_n_0_[21] ;
  wire \tms_output_reg_n_0_[22] ;
  wire \tms_output_reg_n_0_[23] ;
  wire \tms_output_reg_n_0_[24] ;
  wire \tms_output_reg_n_0_[25] ;
  wire \tms_output_reg_n_0_[26] ;
  wire \tms_output_reg_n_0_[27] ;
  wire \tms_output_reg_n_0_[28] ;
  wire \tms_output_reg_n_0_[29] ;
  wire \tms_output_reg_n_0_[2] ;
  wire \tms_output_reg_n_0_[30] ;
  wire \tms_output_reg_n_0_[31] ;
  wire \tms_output_reg_n_0_[3] ;
  wire \tms_output_reg_n_0_[4] ;
  wire \tms_output_reg_n_0_[5] ;
  wire \tms_output_reg_n_0_[6] ;
  wire \tms_output_reg_n_0_[7] ;
  wire \tms_output_reg_n_0_[8] ;
  wire \tms_output_reg_n_0_[9] ;
  wire [7:7]\NLW_bit_count_reg[24]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00040004FFFF0004)) 
    \bit_count[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(tck_i_i_2_n_0),
        .I4(Q[0]),
        .I5(enable_d),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_10 
       (.I0(bit_count_reg[0]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [0]),
        .O(\bit_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_3 
       (.I0(bit_count_reg[7]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [7]),
        .O(\bit_count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_4 
       (.I0(bit_count_reg[6]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [6]),
        .O(\bit_count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_5 
       (.I0(bit_count_reg[5]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [5]),
        .O(\bit_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_6 
       (.I0(bit_count_reg[4]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [4]),
        .O(\bit_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_7 
       (.I0(bit_count_reg[3]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [3]),
        .O(\bit_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_8 
       (.I0(bit_count_reg[2]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [2]),
        .O(\bit_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[0]_i_9 
       (.I0(bit_count_reg[1]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [1]),
        .O(\bit_count[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_2 
       (.I0(bit_count_reg[23]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [23]),
        .O(\bit_count[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_3 
       (.I0(bit_count_reg[22]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [22]),
        .O(\bit_count[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_4 
       (.I0(bit_count_reg[21]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [21]),
        .O(\bit_count[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_5 
       (.I0(bit_count_reg[20]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [20]),
        .O(\bit_count[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_6 
       (.I0(bit_count_reg[19]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [19]),
        .O(\bit_count[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_7 
       (.I0(bit_count_reg[18]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [18]),
        .O(\bit_count[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_8 
       (.I0(bit_count_reg[17]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [17]),
        .O(\bit_count[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[16]_i_9 
       (.I0(bit_count_reg[16]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [16]),
        .O(\bit_count[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_2 
       (.I0(bit_count_reg[31]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [31]),
        .O(\bit_count[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_3 
       (.I0(bit_count_reg[30]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [30]),
        .O(\bit_count[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_4 
       (.I0(bit_count_reg[29]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [29]),
        .O(\bit_count[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_5 
       (.I0(bit_count_reg[28]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [28]),
        .O(\bit_count[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_6 
       (.I0(bit_count_reg[27]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [27]),
        .O(\bit_count[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_7 
       (.I0(bit_count_reg[26]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [26]),
        .O(\bit_count[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_8 
       (.I0(bit_count_reg[25]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [25]),
        .O(\bit_count[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[24]_i_9 
       (.I0(bit_count_reg[24]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [24]),
        .O(\bit_count[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_2 
       (.I0(bit_count_reg[15]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [15]),
        .O(\bit_count[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_3 
       (.I0(bit_count_reg[14]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [14]),
        .O(\bit_count[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_4 
       (.I0(bit_count_reg[13]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [13]),
        .O(\bit_count[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_5 
       (.I0(bit_count_reg[12]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [12]),
        .O(\bit_count[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_6 
       (.I0(bit_count_reg[11]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [11]),
        .O(\bit_count[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_7 
       (.I0(bit_count_reg[10]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [10]),
        .O(\bit_count[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_8 
       (.I0(bit_count_reg[9]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [9]),
        .O(\bit_count[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bit_count[8]_i_9 
       (.I0(bit_count_reg[8]),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(\bit_count_reg[31]_0 [8]),
        .O(\bit_count[8]_i_9_n_0 ));
  FDRE \bit_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_15 ),
        .Q(bit_count_reg[0]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bit_count_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bit_count_reg[0]_i_2_n_0 ,\bit_count_reg[0]_i_2_n_1 ,\bit_count_reg[0]_i_2_n_2 ,\bit_count_reg[0]_i_2_n_3 ,\bit_count_reg[0]_i_2_n_4 ,\bit_count_reg[0]_i_2_n_5 ,\bit_count_reg[0]_i_2_n_6 ,\bit_count_reg[0]_i_2_n_7 }),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\bit_count_reg[0]_i_2_n_8 ,\bit_count_reg[0]_i_2_n_9 ,\bit_count_reg[0]_i_2_n_10 ,\bit_count_reg[0]_i_2_n_11 ,\bit_count_reg[0]_i_2_n_12 ,\bit_count_reg[0]_i_2_n_13 ,\bit_count_reg[0]_i_2_n_14 ,\bit_count_reg[0]_i_2_n_15 }),
        .S({\bit_count[0]_i_3_n_0 ,\bit_count[0]_i_4_n_0 ,\bit_count[0]_i_5_n_0 ,\bit_count[0]_i_6_n_0 ,\bit_count[0]_i_7_n_0 ,\bit_count[0]_i_8_n_0 ,\bit_count[0]_i_9_n_0 ,\bit_count[0]_i_10_n_0 }));
  FDRE \bit_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_13 ),
        .Q(bit_count_reg[10]),
        .R(reset));
  FDRE \bit_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_12 ),
        .Q(bit_count_reg[11]),
        .R(reset));
  FDRE \bit_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_11 ),
        .Q(bit_count_reg[12]),
        .R(reset));
  FDRE \bit_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_10 ),
        .Q(bit_count_reg[13]),
        .R(reset));
  FDRE \bit_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_9 ),
        .Q(bit_count_reg[14]),
        .R(reset));
  FDRE \bit_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_8 ),
        .Q(bit_count_reg[15]),
        .R(reset));
  FDRE \bit_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_15 ),
        .Q(bit_count_reg[16]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bit_count_reg[16]_i_1 
       (.CI(\bit_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bit_count_reg[16]_i_1_n_0 ,\bit_count_reg[16]_i_1_n_1 ,\bit_count_reg[16]_i_1_n_2 ,\bit_count_reg[16]_i_1_n_3 ,\bit_count_reg[16]_i_1_n_4 ,\bit_count_reg[16]_i_1_n_5 ,\bit_count_reg[16]_i_1_n_6 ,\bit_count_reg[16]_i_1_n_7 }),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\bit_count_reg[16]_i_1_n_8 ,\bit_count_reg[16]_i_1_n_9 ,\bit_count_reg[16]_i_1_n_10 ,\bit_count_reg[16]_i_1_n_11 ,\bit_count_reg[16]_i_1_n_12 ,\bit_count_reg[16]_i_1_n_13 ,\bit_count_reg[16]_i_1_n_14 ,\bit_count_reg[16]_i_1_n_15 }),
        .S({\bit_count[16]_i_2_n_0 ,\bit_count[16]_i_3_n_0 ,\bit_count[16]_i_4_n_0 ,\bit_count[16]_i_5_n_0 ,\bit_count[16]_i_6_n_0 ,\bit_count[16]_i_7_n_0 ,\bit_count[16]_i_8_n_0 ,\bit_count[16]_i_9_n_0 }));
  FDRE \bit_count_reg[17] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_14 ),
        .Q(bit_count_reg[17]),
        .R(reset));
  FDRE \bit_count_reg[18] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_13 ),
        .Q(bit_count_reg[18]),
        .R(reset));
  FDRE \bit_count_reg[19] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_12 ),
        .Q(bit_count_reg[19]),
        .R(reset));
  FDRE \bit_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_14 ),
        .Q(bit_count_reg[1]),
        .R(reset));
  FDRE \bit_count_reg[20] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_11 ),
        .Q(bit_count_reg[20]),
        .R(reset));
  FDRE \bit_count_reg[21] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_10 ),
        .Q(bit_count_reg[21]),
        .R(reset));
  FDRE \bit_count_reg[22] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_9 ),
        .Q(bit_count_reg[22]),
        .R(reset));
  FDRE \bit_count_reg[23] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[16]_i_1_n_8 ),
        .Q(bit_count_reg[23]),
        .R(reset));
  FDRE \bit_count_reg[24] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_15 ),
        .Q(bit_count_reg[24]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bit_count_reg[24]_i_1 
       (.CI(\bit_count_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bit_count_reg[24]_i_1_CO_UNCONNECTED [7],\bit_count_reg[24]_i_1_n_1 ,\bit_count_reg[24]_i_1_n_2 ,\bit_count_reg[24]_i_1_n_3 ,\bit_count_reg[24]_i_1_n_4 ,\bit_count_reg[24]_i_1_n_5 ,\bit_count_reg[24]_i_1_n_6 ,\bit_count_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\bit_count_reg[24]_i_1_n_8 ,\bit_count_reg[24]_i_1_n_9 ,\bit_count_reg[24]_i_1_n_10 ,\bit_count_reg[24]_i_1_n_11 ,\bit_count_reg[24]_i_1_n_12 ,\bit_count_reg[24]_i_1_n_13 ,\bit_count_reg[24]_i_1_n_14 ,\bit_count_reg[24]_i_1_n_15 }),
        .S({\bit_count[24]_i_2_n_0 ,\bit_count[24]_i_3_n_0 ,\bit_count[24]_i_4_n_0 ,\bit_count[24]_i_5_n_0 ,\bit_count[24]_i_6_n_0 ,\bit_count[24]_i_7_n_0 ,\bit_count[24]_i_8_n_0 ,\bit_count[24]_i_9_n_0 }));
  FDRE \bit_count_reg[25] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_14 ),
        .Q(bit_count_reg[25]),
        .R(reset));
  FDRE \bit_count_reg[26] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_13 ),
        .Q(bit_count_reg[26]),
        .R(reset));
  FDRE \bit_count_reg[27] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_12 ),
        .Q(bit_count_reg[27]),
        .R(reset));
  FDRE \bit_count_reg[28] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_11 ),
        .Q(bit_count_reg[28]),
        .R(reset));
  FDRE \bit_count_reg[29] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_10 ),
        .Q(bit_count_reg[29]),
        .R(reset));
  FDRE \bit_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_13 ),
        .Q(bit_count_reg[2]),
        .R(reset));
  FDRE \bit_count_reg[30] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_9 ),
        .Q(bit_count_reg[30]),
        .R(reset));
  FDRE \bit_count_reg[31] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[24]_i_1_n_8 ),
        .Q(bit_count_reg[31]),
        .R(reset));
  FDRE \bit_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_12 ),
        .Q(bit_count_reg[3]),
        .R(reset));
  FDRE \bit_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_11 ),
        .Q(bit_count_reg[4]),
        .R(reset));
  FDRE \bit_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_10 ),
        .Q(bit_count_reg[5]),
        .R(reset));
  FDRE \bit_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_9 ),
        .Q(bit_count_reg[6]),
        .R(reset));
  FDRE \bit_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[0]_i_2_n_8 ),
        .Q(bit_count_reg[7]),
        .R(reset));
  FDRE \bit_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_15 ),
        .Q(bit_count_reg[8]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bit_count_reg[8]_i_1 
       (.CI(\bit_count_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bit_count_reg[8]_i_1_n_0 ,\bit_count_reg[8]_i_1_n_1 ,\bit_count_reg[8]_i_1_n_2 ,\bit_count_reg[8]_i_1_n_3 ,\bit_count_reg[8]_i_1_n_4 ,\bit_count_reg[8]_i_1_n_5 ,\bit_count_reg[8]_i_1_n_6 ,\bit_count_reg[8]_i_1_n_7 }),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({\bit_count_reg[8]_i_1_n_8 ,\bit_count_reg[8]_i_1_n_9 ,\bit_count_reg[8]_i_1_n_10 ,\bit_count_reg[8]_i_1_n_11 ,\bit_count_reg[8]_i_1_n_12 ,\bit_count_reg[8]_i_1_n_13 ,\bit_count_reg[8]_i_1_n_14 ,\bit_count_reg[8]_i_1_n_15 }),
        .S({\bit_count[8]_i_2_n_0 ,\bit_count[8]_i_3_n_0 ,\bit_count[8]_i_4_n_0 ,\bit_count[8]_i_5_n_0 ,\bit_count[8]_i_6_n_0 ,\bit_count[8]_i_7_n_0 ,\bit_count[8]_i_8_n_0 ,\bit_count[8]_i_9_n_0 }));
  FDRE \bit_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(\bit_count[0]_i_1_n_0 ),
        .D(\bit_count_reg[8]_i_1_n_14 ),
        .Q(bit_count_reg[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_i_1
       (.I0(state[0]),
        .I1(done_i_2_n_0),
        .I2(tck_i_i_2_n_0),
        .I3(done_i_3_n_0),
        .I4(done_i_4_n_0),
        .I5(\state[1]_i_3_n_0 ),
        .O(done_i));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    done_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .O(done_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_3
       (.I0(bit_count_reg[25]),
        .I1(bit_count_reg[24]),
        .I2(bit_count_reg[23]),
        .I3(bit_count_reg[22]),
        .O(done_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_i_4
       (.I0(bit_count_reg[17]),
        .I1(bit_count_reg[16]),
        .I2(\state[1]_i_7_n_0 ),
        .I3(\state[1]_i_6_n_0 ),
        .I4(\state[1]_i_5_n_0 ),
        .I5(\state[1]_i_4_n_0 ),
        .O(done_i_4_n_0));
  FDRE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_i),
        .Q(done),
        .R(reset));
  FDRE enable_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(enable_d),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg[0]),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(index_reg[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h0010)) 
    \index[4]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \index[4]_i_2 
       (.I0(index_reg[3]),
        .I1(index_reg[4]),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(index_reg[0]),
        .O(p_0_in[4]));
  FDRE \index_reg[0] 
       (.C(s_axi_aclk),
        .CE(\index[4]_i_1_n_0 ),
        .D(\index[0]_i_1_n_0 ),
        .Q(index_reg[0]),
        .R(SR));
  FDRE \index_reg[1] 
       (.C(s_axi_aclk),
        .CE(\index[4]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(index_reg[1]),
        .R(SR));
  FDRE \index_reg[2] 
       (.C(s_axi_aclk),
        .CE(\index[4]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(index_reg[2]),
        .R(SR));
  FDRE \index_reg[3] 
       (.C(s_axi_aclk),
        .CE(\index[4]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(index_reg[3]),
        .R(SR));
  FDRE \index_reg[4] 
       (.C(s_axi_aclk),
        .CE(\index[4]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(index_reg[4]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[0]_i_1 
       (.I0(\tdo_buffer_reg[0] ),
        .I1(done),
        .I2(s_axi_wdata[0]),
        .O(\tdo_buffer_reg[31][0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[10]_i_1 
       (.I0(\tdo_buffer_reg[10] ),
        .I1(done),
        .I2(s_axi_wdata[10]),
        .O(\tdo_buffer_reg[31][0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[11]_i_1 
       (.I0(\tdo_buffer_reg[11] ),
        .I1(done),
        .I2(s_axi_wdata[11]),
        .O(\tdo_buffer_reg[31][0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[12]_i_1 
       (.I0(\tdo_buffer_reg[12] ),
        .I1(done),
        .I2(s_axi_wdata[12]),
        .O(\tdo_buffer_reg[31][0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[13]_i_1 
       (.I0(\tdo_buffer_reg[13] ),
        .I1(done),
        .I2(s_axi_wdata[13]),
        .O(\tdo_buffer_reg[31][0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[14]_i_1 
       (.I0(\tdo_buffer_reg[14] ),
        .I1(done),
        .I2(s_axi_wdata[14]),
        .O(\tdo_buffer_reg[31][0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[15]_i_2 
       (.I0(\tdo_buffer_reg[15] ),
        .I1(done),
        .I2(s_axi_wdata[15]),
        .O(\tdo_buffer_reg[31][0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[16]_i_1 
       (.I0(\tdo_buffer_reg[16] ),
        .I1(done),
        .I2(s_axi_wdata[16]),
        .O(\tdo_buffer_reg[31][0]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[17]_i_1 
       (.I0(\tdo_buffer_reg[17] ),
        .I1(done),
        .I2(s_axi_wdata[17]),
        .O(\tdo_buffer_reg[31][0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[18]_i_1 
       (.I0(\tdo_buffer_reg[18] ),
        .I1(done),
        .I2(s_axi_wdata[18]),
        .O(\tdo_buffer_reg[31][0]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[19]_i_1 
       (.I0(\tdo_buffer_reg[19] ),
        .I1(done),
        .I2(s_axi_wdata[19]),
        .O(\tdo_buffer_reg[31][0]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[1]_i_1 
       (.I0(\tdo_buffer_reg[1] ),
        .I1(done),
        .I2(s_axi_wdata[1]),
        .O(\tdo_buffer_reg[31][0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[20]_i_1 
       (.I0(\tdo_buffer_reg[20] ),
        .I1(done),
        .I2(s_axi_wdata[20]),
        .O(\tdo_buffer_reg[31][0]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[21]_i_1 
       (.I0(\tdo_buffer_reg[21] ),
        .I1(done),
        .I2(s_axi_wdata[21]),
        .O(\tdo_buffer_reg[31][0]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[22]_i_1 
       (.I0(\tdo_buffer_reg[22] ),
        .I1(done),
        .I2(s_axi_wdata[22]),
        .O(\tdo_buffer_reg[31][0]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[23]_i_2 
       (.I0(\tdo_buffer_reg[23] ),
        .I1(done),
        .I2(s_axi_wdata[23]),
        .O(\tdo_buffer_reg[31][0]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[24]_i_1 
       (.I0(\tdo_buffer_reg[24] ),
        .I1(done),
        .I2(s_axi_wdata[24]),
        .O(\tdo_buffer_reg[31][0]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[25]_i_1 
       (.I0(\tdo_buffer_reg[25] ),
        .I1(done),
        .I2(s_axi_wdata[25]),
        .O(\tdo_buffer_reg[31][0]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[26]_i_1 
       (.I0(\tdo_buffer_reg[26] ),
        .I1(done),
        .I2(s_axi_wdata[26]),
        .O(\tdo_buffer_reg[31][0]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[27]_i_1 
       (.I0(\tdo_buffer_reg[27] ),
        .I1(done),
        .I2(s_axi_wdata[27]),
        .O(\tdo_buffer_reg[31][0]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[28]_i_1 
       (.I0(\tdo_buffer_reg[28] ),
        .I1(done),
        .I2(s_axi_wdata[28]),
        .O(\tdo_buffer_reg[31][0]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[29]_i_1 
       (.I0(\tdo_buffer_reg[29] ),
        .I1(done),
        .I2(s_axi_wdata[29]),
        .O(\tdo_buffer_reg[31][0]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[2]_i_1 
       (.I0(\tdo_buffer_reg[2] ),
        .I1(done),
        .I2(s_axi_wdata[2]),
        .O(\tdo_buffer_reg[31][0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[30]_i_1 
       (.I0(\tdo_buffer_reg[30] ),
        .I1(done),
        .I2(s_axi_wdata[30]),
        .O(\tdo_buffer_reg[31][0]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_2 
       (.I0(\tdo_buffer_reg[31] ),
        .I1(done),
        .I2(s_axi_wdata[31]),
        .O(\tdo_buffer_reg[31][0]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[3]_i_1 
       (.I0(\tdo_buffer_reg[3] ),
        .I1(done),
        .I2(s_axi_wdata[3]),
        .O(\tdo_buffer_reg[31][0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[4]_i_1 
       (.I0(\tdo_buffer_reg[4] ),
        .I1(done),
        .I2(s_axi_wdata[4]),
        .O(\tdo_buffer_reg[31][0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[5]_i_1 
       (.I0(\tdo_buffer_reg[5] ),
        .I1(done),
        .I2(s_axi_wdata[5]),
        .O(\tdo_buffer_reg[31][0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[6]_i_1 
       (.I0(\tdo_buffer_reg[6] ),
        .I1(done),
        .I2(s_axi_wdata[6]),
        .O(\tdo_buffer_reg[31][0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[7]_i_2 
       (.I0(\tdo_buffer_reg[7] ),
        .I1(done),
        .I2(s_axi_wdata[7]),
        .O(\tdo_buffer_reg[31][0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[8]_i_1 
       (.I0(\tdo_buffer_reg[8] ),
        .I1(done),
        .I2(s_axi_wdata[8]),
        .O(\tdo_buffer_reg[31][0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[9]_i_1 
       (.I0(\tdo_buffer_reg[9] ),
        .I1(done),
        .I2(s_axi_wdata[9]),
        .O(\tdo_buffer_reg[31][0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg4[31]_i_1 
       (.I0(done),
        .I1(s_axi_aresetn),
        .O(done_reg_0));
  LUT6 #(
    .INIT(64'hEEEE9999EEEF9999)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state[1]_i_2_n_0 ),
        .I4(state[2]),
        .I5(tck_i_i_2_n_0),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h000000FF0054AA00)) 
    \state[1]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[1]_i_2 
       (.I0(done_i_3_n_0),
        .I1(\state[1]_i_4_n_0 ),
        .I2(\state[1]_i_5_n_0 ),
        .I3(\state[1]_i_6_n_0 ),
        .I4(\state[1]_i_7_n_0 ),
        .I5(\state[1]_i_8_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_9_n_0 ),
        .I1(bit_count_reg[26]),
        .I2(bit_count_reg[27]),
        .I3(bit_count_reg[28]),
        .I4(bit_count_reg[29]),
        .O(\state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_4 
       (.I0(bit_count_reg[11]),
        .I1(bit_count_reg[10]),
        .I2(bit_count_reg[9]),
        .I3(bit_count_reg[8]),
        .O(\state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_5 
       (.I0(bit_count_reg[15]),
        .I1(bit_count_reg[14]),
        .I2(bit_count_reg[13]),
        .I3(bit_count_reg[12]),
        .O(\state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_6 
       (.I0(bit_count_reg[3]),
        .I1(bit_count_reg[2]),
        .I2(bit_count_reg[1]),
        .I3(bit_count_reg[0]),
        .O(\state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_7 
       (.I0(bit_count_reg[7]),
        .I1(bit_count_reg[6]),
        .I2(bit_count_reg[5]),
        .I3(bit_count_reg[4]),
        .O(\state[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_8 
       (.I0(bit_count_reg[16]),
        .I1(bit_count_reg[17]),
        .O(\state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[1]_i_9 
       (.I0(bit_count_reg[18]),
        .I1(bit_count_reg[19]),
        .I2(bit_count_reg[20]),
        .I3(bit_count_reg[21]),
        .I4(bit_count_reg[31]),
        .I5(bit_count_reg[30]),
        .O(\state[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFFF)) 
    \state[2]_i_1 
       (.I0(enable_d),
        .I1(Q[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0018)) 
    \state[2]_i_2 
       (.I0(tck_i_i_2_n_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "TCKH:100,TCKL:010,IDLE:001" *) 
  FDSE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\state[2]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(state[0]),
        .S(reset));
  (* FSM_ENCODED_STATES = "TCKH:100,TCKL:010,IDLE:001" *) 
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\state[2]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(state[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "TCKH:100,TCKL:010,IDLE:001" *) 
  FDRE \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\state[2]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(state[2]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tck_count[0]_i_1 
       (.I0(tck_count[0]),
        .O(tck_count_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tck_count[1]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(tck_count[0]),
        .I2(tck_count[1]),
        .O(tck_count_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \tck_count[2]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(tck_count[1]),
        .I2(tck_count[0]),
        .I3(tck_count[2]),
        .O(tck_count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \tck_count[3]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(tck_count[2]),
        .I2(tck_count[0]),
        .I3(tck_count[1]),
        .I4(tck_count[3]),
        .O(tck_count_0[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \tck_count[4]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(tck_count[4]),
        .I2(tck_count[1]),
        .I3(tck_count[0]),
        .I4(tck_count[2]),
        .I5(tck_count[3]),
        .O(tck_count_0[4]));
  LUT6 #(
    .INIT(64'hBFFF000040000000)) 
    \tck_count[5]_i_1 
       (.I0(\tck_count[5]_i_2_n_0 ),
        .I1(tck_count[2]),
        .I2(tck_count[3]),
        .I3(tck_count[4]),
        .I4(tck_i_i_2_n_0),
        .I5(tck_count[5]),
        .O(tck_count_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tck_count[5]_i_2 
       (.I0(tck_count[0]),
        .I1(tck_count[1]),
        .O(\tck_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \tck_count[6]_i_1 
       (.I0(\tck_count[7]_i_4_n_0 ),
        .I1(tck_i_i_2_n_0),
        .I2(tck_count[6]),
        .O(tck_count_0[6]));
  LUT5 #(
    .INIT(32'h00040FF0)) 
    \tck_count[7]_i_2 
       (.I0(enable_d),
        .I1(Q[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(tck_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \tck_count[7]_i_3 
       (.I0(\tck_count[7]_i_4_n_0 ),
        .I1(tck_count[6]),
        .I2(tck_i_i_2_n_0),
        .I3(tck_count[7]),
        .O(tck_count_0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tck_count[7]_i_4 
       (.I0(tck_count[4]),
        .I1(tck_count[3]),
        .I2(tck_count[2]),
        .I3(tck_count[0]),
        .I4(tck_count[1]),
        .I5(tck_count[5]),
        .O(\tck_count[7]_i_4_n_0 ));
  FDRE \tck_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[0]),
        .Q(tck_count[0]),
        .R(SR));
  FDRE \tck_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[1]),
        .Q(tck_count[1]),
        .R(SR));
  FDRE \tck_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[2]),
        .Q(tck_count[2]),
        .R(SR));
  FDRE \tck_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[3]),
        .Q(tck_count[3]),
        .R(SR));
  FDRE \tck_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[4]),
        .Q(tck_count[4]),
        .R(SR));
  FDRE \tck_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[5]),
        .Q(tck_count[5]),
        .R(SR));
  FDRE \tck_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[6]),
        .Q(tck_count[6]),
        .R(SR));
  FDRE \tck_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(tck_en),
        .D(tck_count_0[7]),
        .Q(tck_count[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8A208A2000008A20)) 
    tck_i_i_1
       (.I0(s_axi_aresetn),
        .I1(tck_i_i_2_n_0),
        .I2(tck_en),
        .I3(tck),
        .I4(Q[0]),
        .I5(enable_d),
        .O(tck_i_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tck_i_i_2
       (.I0(tck_i_i_3_n_0),
        .I1(tck_count[6]),
        .I2(tck_count[5]),
        .I3(tck_count[2]),
        .O(tck_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    tck_i_i_3
       (.I0(tck_count[4]),
        .I1(tck_count[7]),
        .I2(tck_count[0]),
        .I3(tck_count[1]),
        .I4(tck_count[3]),
        .O(tck_i_i_3_n_0));
  FDRE tck_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tck_i_i_1_n_0),
        .Q(tck),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[0]_i_1 
       (.I0(\tdi_output_reg[30]_0 [0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[1] ),
        .O(\tdi_output[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[10]_i_1 
       (.I0(\tdi_output_reg[30]_0 [10]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[11] ),
        .O(\tdi_output[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[11]_i_1 
       (.I0(\tdi_output_reg[30]_0 [11]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[12] ),
        .O(\tdi_output[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[12]_i_1 
       (.I0(\tdi_output_reg[30]_0 [12]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[13] ),
        .O(\tdi_output[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[13]_i_1 
       (.I0(\tdi_output_reg[30]_0 [13]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[14] ),
        .O(\tdi_output[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[14]_i_1 
       (.I0(\tdi_output_reg[30]_0 [14]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[15] ),
        .O(\tdi_output[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[15]_i_1 
       (.I0(\tdi_output_reg[30]_0 [15]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[16] ),
        .O(\tdi_output[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[16]_i_1 
       (.I0(\tdi_output_reg[30]_0 [16]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[17] ),
        .O(\tdi_output[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[17]_i_1 
       (.I0(\tdi_output_reg[30]_0 [17]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[18] ),
        .O(\tdi_output[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[18]_i_1 
       (.I0(\tdi_output_reg[30]_0 [18]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[19] ),
        .O(\tdi_output[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[19]_i_1 
       (.I0(\tdi_output_reg[30]_0 [19]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[20] ),
        .O(\tdi_output[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[1]_i_1 
       (.I0(\tdi_output_reg[30]_0 [1]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[2] ),
        .O(\tdi_output[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[20]_i_1 
       (.I0(\tdi_output_reg[30]_0 [20]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[21] ),
        .O(\tdi_output[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[21]_i_1 
       (.I0(\tdi_output_reg[30]_0 [21]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[22] ),
        .O(\tdi_output[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[22]_i_1 
       (.I0(\tdi_output_reg[30]_0 [22]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[23] ),
        .O(\tdi_output[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[23]_i_1 
       (.I0(\tdi_output_reg[30]_0 [23]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[24] ),
        .O(\tdi_output[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[24]_i_1 
       (.I0(\tdi_output_reg[30]_0 [24]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[25] ),
        .O(\tdi_output[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[25]_i_1 
       (.I0(\tdi_output_reg[30]_0 [25]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[26] ),
        .O(\tdi_output[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[26]_i_1 
       (.I0(\tdi_output_reg[30]_0 [26]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[27] ),
        .O(\tdi_output[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[27]_i_1 
       (.I0(\tdi_output_reg[30]_0 [27]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[28] ),
        .O(\tdi_output[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[28]_i_1 
       (.I0(\tdi_output_reg[30]_0 [28]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[29] ),
        .O(\tdi_output[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[29]_i_1 
       (.I0(\tdi_output_reg[30]_0 [29]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[30] ),
        .O(\tdi_output[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[2]_i_1 
       (.I0(\tdi_output_reg[30]_0 [2]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[3] ),
        .O(\tdi_output[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[30]_i_1 
       (.I0(\tdi_output_reg[30]_0 [30]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[31] ),
        .O(\tdi_output[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[3]_i_1 
       (.I0(\tdi_output_reg[30]_0 [3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[4] ),
        .O(\tdi_output[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[4]_i_1 
       (.I0(\tdi_output_reg[30]_0 [4]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[5] ),
        .O(\tdi_output[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[5]_i_1 
       (.I0(\tdi_output_reg[30]_0 [5]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[6] ),
        .O(\tdi_output[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[6]_i_1 
       (.I0(\tdi_output_reg[30]_0 [6]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[7] ),
        .O(\tdi_output[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[7]_i_1 
       (.I0(\tdi_output_reg[30]_0 [7]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[8] ),
        .O(\tdi_output[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[8]_i_1 
       (.I0(\tdi_output_reg[30]_0 [8]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[9] ),
        .O(\tdi_output[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tdi_output[9]_i_1 
       (.I0(\tdi_output_reg[30]_0 [9]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tdi_output_reg_n_0_[10] ),
        .O(\tdi_output[9]_i_1_n_0 ));
  FDRE \tdi_output_reg[0] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[0]_i_1_n_0 ),
        .Q(tdi),
        .R(reset));
  FDRE \tdi_output_reg[10] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[10]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[10] ),
        .R(reset));
  FDRE \tdi_output_reg[11] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[11]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[11] ),
        .R(reset));
  FDRE \tdi_output_reg[12] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[12]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[12] ),
        .R(reset));
  FDRE \tdi_output_reg[13] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[13]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[13] ),
        .R(reset));
  FDRE \tdi_output_reg[14] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[14]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[14] ),
        .R(reset));
  FDRE \tdi_output_reg[15] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[15]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[15] ),
        .R(reset));
  FDRE \tdi_output_reg[16] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[16]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[16] ),
        .R(reset));
  FDRE \tdi_output_reg[17] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[17]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[17] ),
        .R(reset));
  FDRE \tdi_output_reg[18] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[18]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[18] ),
        .R(reset));
  FDRE \tdi_output_reg[19] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[19]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[19] ),
        .R(reset));
  FDRE \tdi_output_reg[1] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[1]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[1] ),
        .R(reset));
  FDRE \tdi_output_reg[20] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[20]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[20] ),
        .R(reset));
  FDRE \tdi_output_reg[21] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[21]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[21] ),
        .R(reset));
  FDRE \tdi_output_reg[22] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[22]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[22] ),
        .R(reset));
  FDRE \tdi_output_reg[23] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[23]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[23] ),
        .R(reset));
  FDRE \tdi_output_reg[24] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[24]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[24] ),
        .R(reset));
  FDRE \tdi_output_reg[25] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[25]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[25] ),
        .R(reset));
  FDRE \tdi_output_reg[26] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[26]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[26] ),
        .R(reset));
  FDRE \tdi_output_reg[27] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[27]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[27] ),
        .R(reset));
  FDRE \tdi_output_reg[28] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[28]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[28] ),
        .R(reset));
  FDRE \tdi_output_reg[29] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[29]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[29] ),
        .R(reset));
  FDRE \tdi_output_reg[2] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[2]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[2] ),
        .R(reset));
  FDRE \tdi_output_reg[30] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[30]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[30] ),
        .R(reset));
  FDRE \tdi_output_reg[31] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output_reg[31]_0 ),
        .Q(\tdi_output_reg_n_0_[31] ),
        .R(reset));
  FDRE \tdi_output_reg[3] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[3]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[3] ),
        .R(reset));
  FDRE \tdi_output_reg[4] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[4]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[4] ),
        .R(reset));
  FDRE \tdi_output_reg[5] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[5]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[5] ),
        .R(reset));
  FDRE \tdi_output_reg[6] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[6]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[6] ),
        .R(reset));
  FDRE \tdi_output_reg[7] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[7]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[7] ),
        .R(reset));
  FDRE \tdi_output_reg[8] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[8]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[8] ),
        .R(reset));
  FDRE \tdi_output_reg[9] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tdi_output[9]_i_1_n_0 ),
        .Q(\tdi_output_reg_n_0_[9] ),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[0][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[0] ),
        .O(\tdo_buffer[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tdo_buffer[0][0]_i_2 
       (.I0(tdi),
        .I1(Q[1]),
        .I2(tdo),
        .O(tdo_switched));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \tdo_buffer[0][0]_i_3 
       (.I0(\tdo_buffer[0][0]_i_5_n_0 ),
        .I1(\tdo_buffer[0][0]_i_6_n_0 ),
        .I2(tck_count[2]),
        .I3(tck_count[5]),
        .I4(tck_count[6]),
        .I5(tck_i_i_3_n_0),
        .O(\tdo_buffer[0][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tdo_buffer[0][0]_i_4 
       (.I0(index_reg[4]),
        .I1(index_reg[3]),
        .O(\tdo_buffer[0][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF9F9FFF9)) 
    \tdo_buffer[0][0]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(Q[0]),
        .I4(enable_d),
        .O(\tdo_buffer[0][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \tdo_buffer[0][0]_i_6 
       (.I0(index_reg[0]),
        .I1(s_axi_aresetn),
        .I2(state[2]),
        .I3(state[1]),
        .O(\tdo_buffer[0][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[10][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[10] ),
        .O(\tdo_buffer[10][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[11][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[11] ),
        .O(\tdo_buffer[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[12][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[12] ),
        .O(\tdo_buffer[12][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[13][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[13] ),
        .O(\tdo_buffer[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[14][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[0][0]_i_3_n_0 ),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[14] ),
        .O(\tdo_buffer[14][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[15][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[1][0]_i_2_n_0 ),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[15] ),
        .O(\tdo_buffer[15][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[16][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[16] ),
        .O(\tdo_buffer[16][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdo_buffer[16][0]_i_2 
       (.I0(index_reg[4]),
        .I1(index_reg[3]),
        .O(\tdo_buffer[16][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[17][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[17] ),
        .O(\tdo_buffer[17][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[18][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[18] ),
        .O(\tdo_buffer[18][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[19][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[19] ),
        .O(\tdo_buffer[19][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[1][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[1] ),
        .O(\tdo_buffer[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \tdo_buffer[1][0]_i_2 
       (.I0(\tdo_buffer[0][0]_i_5_n_0 ),
        .I1(\tdo_buffer[1][0]_i_3_n_0 ),
        .I2(tck_count[2]),
        .I3(tck_count[5]),
        .I4(tck_count[6]),
        .I5(tck_i_i_3_n_0),
        .O(\tdo_buffer[1][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \tdo_buffer[1][0]_i_3 
       (.I0(s_axi_aresetn),
        .I1(index_reg[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\tdo_buffer[1][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[20][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[20] ),
        .O(\tdo_buffer[20][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[21][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[21] ),
        .O(\tdo_buffer[21][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[22][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[0][0]_i_3_n_0 ),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[22] ),
        .O(\tdo_buffer[22][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[23][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[1][0]_i_2_n_0 ),
        .I4(\tdo_buffer[16][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[23] ),
        .O(\tdo_buffer[23][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[24][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[24] ),
        .O(\tdo_buffer[24][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdo_buffer[24][0]_i_2 
       (.I0(index_reg[4]),
        .I1(index_reg[3]),
        .O(\tdo_buffer[24][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[25][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[25] ),
        .O(\tdo_buffer[25][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[26][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[26] ),
        .O(\tdo_buffer[26][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[27][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[27] ),
        .O(\tdo_buffer[27][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[28][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[28] ),
        .O(\tdo_buffer[28][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[29][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[29] ),
        .O(\tdo_buffer[29][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[2][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[2] ),
        .O(\tdo_buffer[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[30][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[0][0]_i_3_n_0 ),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[30] ),
        .O(\tdo_buffer[30][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[31][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[1][0]_i_2_n_0 ),
        .I4(\tdo_buffer[24][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[31] ),
        .O(\tdo_buffer[31][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[3][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[3] ),
        .O(\tdo_buffer[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[4][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[4] ),
        .O(\tdo_buffer[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \tdo_buffer[5][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[2]),
        .I3(index_reg[1]),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[5] ),
        .O(\tdo_buffer[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[6][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[0][0]_i_3_n_0 ),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[6] ),
        .O(\tdo_buffer[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \tdo_buffer[7][0]_i_1 
       (.I0(tdo_switched),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(\tdo_buffer[1][0]_i_2_n_0 ),
        .I4(\tdo_buffer[0][0]_i_4_n_0 ),
        .I5(\tdo_buffer_reg[7] ),
        .O(\tdo_buffer[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[8][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[0][0]_i_3_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[8] ),
        .O(\tdo_buffer[8][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tdo_buffer[8][0]_i_2 
       (.I0(index_reg[3]),
        .I1(index_reg[4]),
        .O(\tdo_buffer[8][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \tdo_buffer[9][0]_i_1 
       (.I0(tdo_switched),
        .I1(\tdo_buffer[1][0]_i_2_n_0 ),
        .I2(index_reg[1]),
        .I3(index_reg[2]),
        .I4(\tdo_buffer[8][0]_i_2_n_0 ),
        .I5(\tdo_buffer_reg[9] ),
        .O(\tdo_buffer[9][0]_i_1_n_0 ));
  FDRE \tdo_buffer_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[0][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[0] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[10][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[10][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[10] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[11][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[11][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[11] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[12][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[12][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[12] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[13][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[13][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[13] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[14][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[14][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[14] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[15][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[15][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[15] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[16][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[16][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[16] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[17][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[17][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[17] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[18][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[18][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[18] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[19][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[19][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[19] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[1][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[1] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[20][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[20][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[20] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[21][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[21][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[21] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[22][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[22][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[22] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[23][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[23][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[23] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[24][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[24][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[24] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[25][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[25][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[25] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[26][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[26][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[26] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[27][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[27][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[27] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[28][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[28][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[28] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[29][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[29][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[29] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[2][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[2][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[2] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[30][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[30][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[30] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[31][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[31][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[31] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[3][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[3][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[3] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[4][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[4][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[4] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[5][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[5][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[5] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[6][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[6][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[6] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[7][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[7][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[7] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[8][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[8][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[8] ),
        .R(1'b0));
  FDRE \tdo_buffer_reg[9][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tdo_buffer[9][0]_i_1_n_0 ),
        .Q(\tdo_buffer_reg[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF30FF75FFFF)) 
    \tms_output[0]_i_1 
       (.I0(tck_i_i_2_n_0),
        .I1(enable_d),
        .I2(Q[0]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(tdi_output));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[0]_i_2 
       (.I0(\tms_output_reg[30]_0 [0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[1] ),
        .O(\tms_output[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tms_output[0]_i_3 
       (.I0(enable_d),
        .I1(Q[0]),
        .O(\tms_output[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[10]_i_1 
       (.I0(\tms_output_reg[30]_0 [10]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[11] ),
        .O(\tms_output[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[11]_i_1 
       (.I0(\tms_output_reg[30]_0 [11]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[12] ),
        .O(\tms_output[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[12]_i_1 
       (.I0(\tms_output_reg[30]_0 [12]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[13] ),
        .O(\tms_output[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[13]_i_1 
       (.I0(\tms_output_reg[30]_0 [13]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[14] ),
        .O(\tms_output[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[14]_i_1 
       (.I0(\tms_output_reg[30]_0 [14]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[15] ),
        .O(\tms_output[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[15]_i_1 
       (.I0(\tms_output_reg[30]_0 [15]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[16] ),
        .O(\tms_output[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[16]_i_1 
       (.I0(\tms_output_reg[30]_0 [16]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[17] ),
        .O(\tms_output[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[17]_i_1 
       (.I0(\tms_output_reg[30]_0 [17]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[18] ),
        .O(\tms_output[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[18]_i_1 
       (.I0(\tms_output_reg[30]_0 [18]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[19] ),
        .O(\tms_output[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[19]_i_1 
       (.I0(\tms_output_reg[30]_0 [19]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[20] ),
        .O(\tms_output[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[1]_i_1 
       (.I0(\tms_output_reg[30]_0 [1]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[2] ),
        .O(\tms_output[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[20]_i_1 
       (.I0(\tms_output_reg[30]_0 [20]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[21] ),
        .O(\tms_output[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[21]_i_1 
       (.I0(\tms_output_reg[30]_0 [21]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[22] ),
        .O(\tms_output[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[22]_i_1 
       (.I0(\tms_output_reg[30]_0 [22]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[23] ),
        .O(\tms_output[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[23]_i_1 
       (.I0(\tms_output_reg[30]_0 [23]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[24] ),
        .O(\tms_output[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[24]_i_1 
       (.I0(\tms_output_reg[30]_0 [24]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[25] ),
        .O(\tms_output[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[25]_i_1 
       (.I0(\tms_output_reg[30]_0 [25]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[26] ),
        .O(\tms_output[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[26]_i_1 
       (.I0(\tms_output_reg[30]_0 [26]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[27] ),
        .O(\tms_output[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[27]_i_1 
       (.I0(\tms_output_reg[30]_0 [27]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[28] ),
        .O(\tms_output[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[28]_i_1 
       (.I0(\tms_output_reg[30]_0 [28]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[29] ),
        .O(\tms_output[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[29]_i_1 
       (.I0(\tms_output_reg[30]_0 [29]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[30] ),
        .O(\tms_output[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[2]_i_1 
       (.I0(\tms_output_reg[30]_0 [2]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[3] ),
        .O(\tms_output[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[30]_i_1 
       (.I0(\tms_output_reg[30]_0 [30]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[31] ),
        .O(\tms_output[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[3]_i_1 
       (.I0(\tms_output_reg[30]_0 [3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[4] ),
        .O(\tms_output[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[4]_i_1 
       (.I0(\tms_output_reg[30]_0 [4]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[5] ),
        .O(\tms_output[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[5]_i_1 
       (.I0(\tms_output_reg[30]_0 [5]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[6] ),
        .O(\tms_output[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[6]_i_1 
       (.I0(\tms_output_reg[30]_0 [6]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[7] ),
        .O(\tms_output[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[7]_i_1 
       (.I0(\tms_output_reg[30]_0 [7]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[8] ),
        .O(\tms_output[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[8]_i_1 
       (.I0(\tms_output_reg[30]_0 [8]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[9] ),
        .O(\tms_output[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003CAAAA0000AAAA)) 
    \tms_output[9]_i_1 
       (.I0(\tms_output_reg[30]_0 [9]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\tms_output[0]_i_3_n_0 ),
        .I5(\tms_output_reg_n_0_[10] ),
        .O(\tms_output[9]_i_1_n_0 ));
  FDRE \tms_output_reg[0] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[0]_i_2_n_0 ),
        .Q(tms),
        .R(reset));
  FDRE \tms_output_reg[10] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[10]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[10] ),
        .R(reset));
  FDRE \tms_output_reg[11] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[11]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[11] ),
        .R(reset));
  FDRE \tms_output_reg[12] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[12]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[12] ),
        .R(reset));
  FDRE \tms_output_reg[13] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[13]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[13] ),
        .R(reset));
  FDRE \tms_output_reg[14] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[14]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[14] ),
        .R(reset));
  FDRE \tms_output_reg[15] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[15]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[15] ),
        .R(reset));
  FDRE \tms_output_reg[16] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[16]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[16] ),
        .R(reset));
  FDRE \tms_output_reg[17] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[17]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[17] ),
        .R(reset));
  FDRE \tms_output_reg[18] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[18]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[18] ),
        .R(reset));
  FDRE \tms_output_reg[19] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[19]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[19] ),
        .R(reset));
  FDRE \tms_output_reg[1] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[1]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[1] ),
        .R(reset));
  FDRE \tms_output_reg[20] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[20]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[20] ),
        .R(reset));
  FDRE \tms_output_reg[21] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[21]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[21] ),
        .R(reset));
  FDRE \tms_output_reg[22] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[22]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[22] ),
        .R(reset));
  FDRE \tms_output_reg[23] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[23]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[23] ),
        .R(reset));
  FDRE \tms_output_reg[24] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[24]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[24] ),
        .R(reset));
  FDRE \tms_output_reg[25] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[25]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[25] ),
        .R(reset));
  FDRE \tms_output_reg[26] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[26]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[26] ),
        .R(reset));
  FDRE \tms_output_reg[27] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[27]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[27] ),
        .R(reset));
  FDRE \tms_output_reg[28] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[28]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[28] ),
        .R(reset));
  FDRE \tms_output_reg[29] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[29]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[29] ),
        .R(reset));
  FDRE \tms_output_reg[2] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[2]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[2] ),
        .R(reset));
  FDRE \tms_output_reg[30] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[30]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[30] ),
        .R(reset));
  FDRE \tms_output_reg[31] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(D),
        .Q(\tms_output_reg_n_0_[31] ),
        .R(reset));
  FDRE \tms_output_reg[3] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[3]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[3] ),
        .R(reset));
  FDRE \tms_output_reg[4] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[4]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[4] ),
        .R(reset));
  FDRE \tms_output_reg[5] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[5]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[5] ),
        .R(reset));
  FDRE \tms_output_reg[6] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[6]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[6] ),
        .R(reset));
  FDRE \tms_output_reg[7] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[7]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[7] ),
        .R(reset));
  FDRE \tms_output_reg[8] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[8]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[8] ),
        .R(reset));
  FDRE \tms_output_reg[9] 
       (.C(s_axi_aclk),
        .CE(tdi_output),
        .D(\tms_output[9]_i_1_n_0 ),
        .Q(\tms_output_reg_n_0_[9] ),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
