//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Mar 10 15:43:49 2021
//Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module coldata_i2c_dual0_imp_LTEQQX
   (S00_AXI1_araddr,
    S00_AXI1_arprot,
    S00_AXI1_arready,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awprot,
    S00_AXI1_awready,
    S00_AXI1_awvalid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_n_1,
    sda_in_p_0,
    sda_in_p_1,
    sda_out_n_0,
    sda_out_n_1,
    sda_out_p_0,
    sda_out_p_1);
  input [39:0]S00_AXI1_araddr;
  input [2:0]S00_AXI1_arprot;
  output S00_AXI1_arready;
  input S00_AXI1_arvalid;
  input [39:0]S00_AXI1_awaddr;
  input [2:0]S00_AXI1_awprot;
  output S00_AXI1_awready;
  input S00_AXI1_awvalid;
  input S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  input S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  output S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input S00_AXI1_wvalid;
  input [39:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  output [0:0]scl_n_0;
  output [0:0]scl_p_0;
  input sda_in_n_0;
  input sda_in_n_1;
  input sda_in_p_0;
  input sda_in_p_1;
  output sda_out_n_0;
  output sda_out_n_1;
  output sda_out_p_0;
  output sda_out_p_1;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire coldata_i2c_0_scl;
  wire coldata_i2c_0_sda_out_n;
  wire coldata_i2c_0_sda_out_p;
  wire coldata_i2c_1_scl;
  wire coldata_i2c_1_sda_out_n;
  wire coldata_i2c_1_sda_out_p;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_ARPROT;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_AWPROT;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire rst_ps8_0_99M_peripheral_aresetn;
  wire sda_in_n_0_1;
  wire sda_in_n_1_1;
  wire sda_in_p_0_1;
  wire sda_in_p_1_1;
  wire [0:0]util_ds_buf_0_OBUF_DS_N;
  wire [0:0]util_ds_buf_0_OBUF_DS_P;
  wire [0:0]util_vector_logic_0_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Conn1_ARADDR = S00_AXI1_araddr[39:0];
  assign Conn1_ARPROT = S00_AXI1_arprot[2:0];
  assign Conn1_ARVALID = S00_AXI1_arvalid;
  assign Conn1_AWADDR = S00_AXI1_awaddr[39:0];
  assign Conn1_AWPROT = S00_AXI1_awprot[2:0];
  assign Conn1_AWVALID = S00_AXI1_awvalid;
  assign Conn1_BREADY = S00_AXI1_bready;
  assign Conn1_RREADY = S00_AXI1_rready;
  assign Conn1_WDATA = S00_AXI1_wdata[31:0];
  assign Conn1_WSTRB = S00_AXI1_wstrb[3:0];
  assign Conn1_WVALID = S00_AXI1_wvalid;
  assign S00_AXI1_arready = Conn1_ARREADY;
  assign S00_AXI1_awready = Conn1_AWREADY;
  assign S00_AXI1_bresp[1:0] = Conn1_BRESP;
  assign S00_AXI1_bvalid = Conn1_BVALID;
  assign S00_AXI1_rdata[31:0] = Conn1_RDATA;
  assign S00_AXI1_rresp[1:0] = Conn1_RRESP;
  assign S00_AXI1_rvalid = Conn1_RVALID;
  assign S00_AXI1_wready = Conn1_WREADY;
  assign S00_AXI_arready = ps8_0_axi_periph_M01_AXI_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_M01_AXI_AWREADY;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_M01_AXI_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_M01_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_M01_AXI_RDATA;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_M01_AXI_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_M01_AXI_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_M01_AXI_WREADY;
  assign ps8_0_axi_periph_M01_AXI_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_M01_AXI_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_M01_AXI_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_M01_AXI_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_M01_AXI_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M01_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M01_AXI_WVALID = S00_AXI_wvalid;
  assign rst_ps8_0_99M_peripheral_aresetn = s00_axi_aresetn;
  assign scl_n_0[0] = util_ds_buf_0_OBUF_DS_N;
  assign scl_p_0[0] = util_ds_buf_0_OBUF_DS_P;
  assign sda_in_n_0_1 = sda_in_n_0;
  assign sda_in_n_1_1 = sda_in_n_1;
  assign sda_in_p_0_1 = sda_in_p_0;
  assign sda_in_p_1_1 = sda_in_p_1;
  assign sda_out_n_0 = coldata_i2c_0_sda_out_n;
  assign sda_out_n_1 = coldata_i2c_1_sda_out_n;
  assign sda_out_p_0 = coldata_i2c_0_sda_out_p;
  assign sda_out_p_1 = coldata_i2c_1_sda_out_p;
  assign zynq_ultra_ps_e_0_pl_clk0 = s00_axi_aclk;
  design_1_coldata_i2c_0_0 coldata_i2c_0
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arprot(ps8_0_axi_periph_M01_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M01_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .scl(coldata_i2c_0_scl),
        .sda_in_n(sda_in_n_0_1),
        .sda_in_p(sda_in_p_0_1),
        .sda_out_n(coldata_i2c_0_sda_out_n),
        .sda_out_p(coldata_i2c_0_sda_out_p));
  design_1_coldata_i2c_0_1 coldata_i2c_1
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(Conn1_ARADDR[4:0]),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[4:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID),
        .scl(coldata_i2c_1_scl),
        .sda_in_n(sda_in_n_1_1),
        .sda_in_p(sda_in_p_1_1),
        .sda_out_n(coldata_i2c_1_sda_out_n),
        .sda_out_p(coldata_i2c_1_sda_out_p));
  design_1_util_ds_buf_0_0 util_ds_buf_0
       (.OBUF_DS_N(util_ds_buf_0_OBUF_DS_N),
        .OBUF_DS_P(util_ds_buf_0_OBUF_DS_P),
        .OBUF_IN(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(coldata_i2c_0_scl),
        .Op2(coldata_i2c_1_scl),
        .Res(util_vector_logic_0_Res));
endmodule

module coldata_i2c_dual1_imp_OXIENE
   (S00_AXI1_araddr,
    S00_AXI1_arprot,
    S00_AXI1_arready,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awprot,
    S00_AXI1_awready,
    S00_AXI1_awvalid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_n_1,
    sda_in_p_0,
    sda_in_p_1,
    sda_out_n_0,
    sda_out_n_1,
    sda_out_p_0,
    sda_out_p_1);
  input [39:0]S00_AXI1_araddr;
  input [2:0]S00_AXI1_arprot;
  output S00_AXI1_arready;
  input S00_AXI1_arvalid;
  input [39:0]S00_AXI1_awaddr;
  input [2:0]S00_AXI1_awprot;
  output S00_AXI1_awready;
  input S00_AXI1_awvalid;
  input S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  input S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  output S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input S00_AXI1_wvalid;
  input [39:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  output [0:0]scl_n_0;
  output [0:0]scl_p_0;
  input sda_in_n_0;
  input sda_in_n_1;
  input sda_in_p_0;
  input sda_in_p_1;
  output sda_out_n_0;
  output sda_out_n_1;
  output sda_out_p_0;
  output sda_out_p_1;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire coldata_i2c_0_scl;
  wire coldata_i2c_0_sda_out_n;
  wire coldata_i2c_0_sda_out_p;
  wire coldata_i2c_1_scl;
  wire coldata_i2c_1_sda_out_n;
  wire coldata_i2c_1_sda_out_p;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_ARPROT;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_AWPROT;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire s00_axi_aresetn_1;
  wire sda_in_n_0_1;
  wire sda_in_n_1_1;
  wire sda_in_p_0_1;
  wire sda_in_p_1_1;
  wire [0:0]util_ds_buf_0_OBUF_DS_N;
  wire [0:0]util_ds_buf_0_OBUF_DS_P;
  wire [0:0]util_vector_logic_0_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Conn1_ARADDR = S00_AXI1_araddr[39:0];
  assign Conn1_ARPROT = S00_AXI1_arprot[2:0];
  assign Conn1_ARVALID = S00_AXI1_arvalid;
  assign Conn1_AWADDR = S00_AXI1_awaddr[39:0];
  assign Conn1_AWPROT = S00_AXI1_awprot[2:0];
  assign Conn1_AWVALID = S00_AXI1_awvalid;
  assign Conn1_BREADY = S00_AXI1_bready;
  assign Conn1_RREADY = S00_AXI1_rready;
  assign Conn1_WDATA = S00_AXI1_wdata[31:0];
  assign Conn1_WSTRB = S00_AXI1_wstrb[3:0];
  assign Conn1_WVALID = S00_AXI1_wvalid;
  assign S00_AXI1_arready = Conn1_ARREADY;
  assign S00_AXI1_awready = Conn1_AWREADY;
  assign S00_AXI1_bresp[1:0] = Conn1_BRESP;
  assign S00_AXI1_bvalid = Conn1_BVALID;
  assign S00_AXI1_rdata[31:0] = Conn1_RDATA;
  assign S00_AXI1_rresp[1:0] = Conn1_RRESP;
  assign S00_AXI1_rvalid = Conn1_RVALID;
  assign S00_AXI1_wready = Conn1_WREADY;
  assign S00_AXI_arready = ps8_0_axi_periph_M01_AXI_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_M01_AXI_AWREADY;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_M01_AXI_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_M01_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_M01_AXI_RDATA;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_M01_AXI_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_M01_AXI_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_M01_AXI_WREADY;
  assign ps8_0_axi_periph_M01_AXI_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_M01_AXI_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_M01_AXI_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_M01_AXI_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_M01_AXI_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M01_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M01_AXI_WVALID = S00_AXI_wvalid;
  assign s00_axi_aresetn_1 = s00_axi_aresetn;
  assign scl_n_0[0] = util_ds_buf_0_OBUF_DS_N;
  assign scl_p_0[0] = util_ds_buf_0_OBUF_DS_P;
  assign sda_in_n_0_1 = sda_in_n_0;
  assign sda_in_n_1_1 = sda_in_n_1;
  assign sda_in_p_0_1 = sda_in_p_0;
  assign sda_in_p_1_1 = sda_in_p_1;
  assign sda_out_n_0 = coldata_i2c_0_sda_out_n;
  assign sda_out_n_1 = coldata_i2c_1_sda_out_n;
  assign sda_out_p_0 = coldata_i2c_0_sda_out_p;
  assign sda_out_p_1 = coldata_i2c_1_sda_out_p;
  assign zynq_ultra_ps_e_0_pl_clk0 = s00_axi_aclk;
  design_1_coldata_i2c_0_2 coldata_i2c_0
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(s00_axi_aresetn_1),
        .s00_axi_arprot(ps8_0_axi_periph_M01_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M01_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .scl(coldata_i2c_0_scl),
        .sda_in_n(sda_in_n_0_1),
        .sda_in_p(sda_in_p_0_1),
        .sda_out_n(coldata_i2c_0_sda_out_n),
        .sda_out_p(coldata_i2c_0_sda_out_p));
  design_1_coldata_i2c_1_0 coldata_i2c_1
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(Conn1_ARADDR[4:0]),
        .s00_axi_aresetn(s00_axi_aresetn_1),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[4:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID),
        .scl(coldata_i2c_1_scl),
        .sda_in_n(sda_in_n_1_1),
        .sda_in_p(sda_in_p_1_1),
        .sda_out_n(coldata_i2c_1_sda_out_n),
        .sda_out_p(coldata_i2c_1_sda_out_p));
  design_1_util_ds_buf_0_1 util_ds_buf_0
       (.OBUF_DS_N(util_ds_buf_0_OBUF_DS_N),
        .OBUF_DS_P(util_ds_buf_0_OBUF_DS_P),
        .OBUF_IN(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_2 util_vector_logic_0
       (.Op1(coldata_i2c_0_scl),
        .Op2(coldata_i2c_1_scl),
        .Res(util_vector_logic_0_Res));
endmodule

module coldata_i2c_dual2_imp_QQB9M7
   (S00_AXI1_araddr,
    S00_AXI1_arprot,
    S00_AXI1_arready,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awprot,
    S00_AXI1_awready,
    S00_AXI1_awvalid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_n_1,
    sda_in_p_0,
    sda_in_p_1,
    sda_out_n_0,
    sda_out_n_1,
    sda_out_p_0,
    sda_out_p_1);
  input [39:0]S00_AXI1_araddr;
  input [2:0]S00_AXI1_arprot;
  output S00_AXI1_arready;
  input S00_AXI1_arvalid;
  input [39:0]S00_AXI1_awaddr;
  input [2:0]S00_AXI1_awprot;
  output S00_AXI1_awready;
  input S00_AXI1_awvalid;
  input S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  input S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  output S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input S00_AXI1_wvalid;
  input [39:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  output [0:0]scl_n_0;
  output [0:0]scl_p_0;
  input sda_in_n_0;
  input sda_in_n_1;
  input sda_in_p_0;
  input sda_in_p_1;
  output sda_out_n_0;
  output sda_out_n_1;
  output sda_out_p_0;
  output sda_out_p_1;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire coldata_i2c_0_scl;
  wire coldata_i2c_0_sda_out_n;
  wire coldata_i2c_0_sda_out_p;
  wire coldata_i2c_1_scl;
  wire coldata_i2c_1_sda_out_n;
  wire coldata_i2c_1_sda_out_p;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_ARPROT;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_AWPROT;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire s00_axi_aresetn_1;
  wire sda_in_n_0_1;
  wire sda_in_n_1_1;
  wire sda_in_p_0_1;
  wire sda_in_p_1_1;
  wire [0:0]util_ds_buf_0_OBUF_DS_N;
  wire [0:0]util_ds_buf_0_OBUF_DS_P;
  wire [0:0]util_vector_logic_0_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Conn1_ARADDR = S00_AXI1_araddr[39:0];
  assign Conn1_ARPROT = S00_AXI1_arprot[2:0];
  assign Conn1_ARVALID = S00_AXI1_arvalid;
  assign Conn1_AWADDR = S00_AXI1_awaddr[39:0];
  assign Conn1_AWPROT = S00_AXI1_awprot[2:0];
  assign Conn1_AWVALID = S00_AXI1_awvalid;
  assign Conn1_BREADY = S00_AXI1_bready;
  assign Conn1_RREADY = S00_AXI1_rready;
  assign Conn1_WDATA = S00_AXI1_wdata[31:0];
  assign Conn1_WSTRB = S00_AXI1_wstrb[3:0];
  assign Conn1_WVALID = S00_AXI1_wvalid;
  assign S00_AXI1_arready = Conn1_ARREADY;
  assign S00_AXI1_awready = Conn1_AWREADY;
  assign S00_AXI1_bresp[1:0] = Conn1_BRESP;
  assign S00_AXI1_bvalid = Conn1_BVALID;
  assign S00_AXI1_rdata[31:0] = Conn1_RDATA;
  assign S00_AXI1_rresp[1:0] = Conn1_RRESP;
  assign S00_AXI1_rvalid = Conn1_RVALID;
  assign S00_AXI1_wready = Conn1_WREADY;
  assign S00_AXI_arready = ps8_0_axi_periph_M01_AXI_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_M01_AXI_AWREADY;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_M01_AXI_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_M01_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_M01_AXI_RDATA;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_M01_AXI_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_M01_AXI_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_M01_AXI_WREADY;
  assign ps8_0_axi_periph_M01_AXI_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_M01_AXI_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_M01_AXI_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_M01_AXI_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_M01_AXI_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M01_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M01_AXI_WVALID = S00_AXI_wvalid;
  assign s00_axi_aresetn_1 = s00_axi_aresetn;
  assign scl_n_0[0] = util_ds_buf_0_OBUF_DS_N;
  assign scl_p_0[0] = util_ds_buf_0_OBUF_DS_P;
  assign sda_in_n_0_1 = sda_in_n_0;
  assign sda_in_n_1_1 = sda_in_n_1;
  assign sda_in_p_0_1 = sda_in_p_0;
  assign sda_in_p_1_1 = sda_in_p_1;
  assign sda_out_n_0 = coldata_i2c_0_sda_out_n;
  assign sda_out_n_1 = coldata_i2c_1_sda_out_n;
  assign sda_out_p_0 = coldata_i2c_0_sda_out_p;
  assign sda_out_p_1 = coldata_i2c_1_sda_out_p;
  assign zynq_ultra_ps_e_0_pl_clk0 = s00_axi_aclk;
  design_1_coldata_i2c_0_3 coldata_i2c_0
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(s00_axi_aresetn_1),
        .s00_axi_arprot(ps8_0_axi_periph_M01_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M01_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .scl(coldata_i2c_0_scl),
        .sda_in_n(sda_in_n_0_1),
        .sda_in_p(sda_in_p_0_1),
        .sda_out_n(coldata_i2c_0_sda_out_n),
        .sda_out_p(coldata_i2c_0_sda_out_p));
  design_1_coldata_i2c_1_1 coldata_i2c_1
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(Conn1_ARADDR[4:0]),
        .s00_axi_aresetn(s00_axi_aresetn_1),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[4:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID),
        .scl(coldata_i2c_1_scl),
        .sda_in_n(sda_in_n_1_1),
        .sda_in_p(sda_in_p_1_1),
        .sda_out_n(coldata_i2c_1_sda_out_n),
        .sda_out_p(coldata_i2c_1_sda_out_p));
  design_1_util_ds_buf_0_2 util_ds_buf_0
       (.OBUF_DS_N(util_ds_buf_0_OBUF_DS_N),
        .OBUF_DS_P(util_ds_buf_0_OBUF_DS_P),
        .OBUF_IN(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_3 util_vector_logic_0
       (.Op1(coldata_i2c_0_scl),
        .Op2(coldata_i2c_1_scl),
        .Res(util_vector_logic_0_Res));
endmodule

module coldata_i2c_dual3_imp_X2DLBG
   (S00_AXI1_araddr,
    S00_AXI1_arprot,
    S00_AXI1_arready,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awprot,
    S00_AXI1_awready,
    S00_AXI1_awvalid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    scl_n_0,
    scl_p_0,
    sda_in_n_0,
    sda_in_n_1,
    sda_in_p_0,
    sda_in_p_1,
    sda_out_n_0,
    sda_out_n_1,
    sda_out_p_0,
    sda_out_p_1);
  input [39:0]S00_AXI1_araddr;
  input [2:0]S00_AXI1_arprot;
  output S00_AXI1_arready;
  input S00_AXI1_arvalid;
  input [39:0]S00_AXI1_awaddr;
  input [2:0]S00_AXI1_awprot;
  output S00_AXI1_awready;
  input S00_AXI1_awvalid;
  input S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  input S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  output S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input S00_AXI1_wvalid;
  input [39:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  output [0:0]scl_n_0;
  output [0:0]scl_p_0;
  input sda_in_n_0;
  input sda_in_n_1;
  input sda_in_p_0;
  input sda_in_p_1;
  output sda_out_n_0;
  output sda_out_n_1;
  output sda_out_p_0;
  output sda_out_p_1;

  wire [39:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [39:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire coldata_i2c_0_scl;
  wire coldata_i2c_0_sda_out_n;
  wire coldata_i2c_0_sda_out_p;
  wire coldata_i2c_1_scl;
  wire coldata_i2c_1_sda_out_n;
  wire coldata_i2c_1_sda_out_p;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_ARPROT;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_AWPROT;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire s00_axi_aresetn_1;
  wire sda_in_n_0_1;
  wire sda_in_n_1_1;
  wire sda_in_p_0_1;
  wire sda_in_p_1_1;
  wire [0:0]util_ds_buf_0_OBUF_DS_N;
  wire [0:0]util_ds_buf_0_OBUF_DS_P;
  wire [0:0]util_vector_logic_0_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Conn1_ARADDR = S00_AXI1_araddr[39:0];
  assign Conn1_ARPROT = S00_AXI1_arprot[2:0];
  assign Conn1_ARVALID = S00_AXI1_arvalid;
  assign Conn1_AWADDR = S00_AXI1_awaddr[39:0];
  assign Conn1_AWPROT = S00_AXI1_awprot[2:0];
  assign Conn1_AWVALID = S00_AXI1_awvalid;
  assign Conn1_BREADY = S00_AXI1_bready;
  assign Conn1_RREADY = S00_AXI1_rready;
  assign Conn1_WDATA = S00_AXI1_wdata[31:0];
  assign Conn1_WSTRB = S00_AXI1_wstrb[3:0];
  assign Conn1_WVALID = S00_AXI1_wvalid;
  assign S00_AXI1_arready = Conn1_ARREADY;
  assign S00_AXI1_awready = Conn1_AWREADY;
  assign S00_AXI1_bresp[1:0] = Conn1_BRESP;
  assign S00_AXI1_bvalid = Conn1_BVALID;
  assign S00_AXI1_rdata[31:0] = Conn1_RDATA;
  assign S00_AXI1_rresp[1:0] = Conn1_RRESP;
  assign S00_AXI1_rvalid = Conn1_RVALID;
  assign S00_AXI1_wready = Conn1_WREADY;
  assign S00_AXI_arready = ps8_0_axi_periph_M01_AXI_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_M01_AXI_AWREADY;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_M01_AXI_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_M01_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_M01_AXI_RDATA;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_M01_AXI_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_M01_AXI_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_M01_AXI_WREADY;
  assign ps8_0_axi_periph_M01_AXI_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_M01_AXI_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M01_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M01_AXI_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_M01_AXI_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_M01_AXI_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_M01_AXI_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M01_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M01_AXI_WVALID = S00_AXI_wvalid;
  assign s00_axi_aresetn_1 = s00_axi_aresetn;
  assign scl_n_0[0] = util_ds_buf_0_OBUF_DS_N;
  assign scl_p_0[0] = util_ds_buf_0_OBUF_DS_P;
  assign sda_in_n_0_1 = sda_in_n_0;
  assign sda_in_n_1_1 = sda_in_n_1;
  assign sda_in_p_0_1 = sda_in_p_0;
  assign sda_in_p_1_1 = sda_in_p_1;
  assign sda_out_n_0 = coldata_i2c_0_sda_out_n;
  assign sda_out_n_1 = coldata_i2c_1_sda_out_n;
  assign sda_out_p_0 = coldata_i2c_0_sda_out_p;
  assign sda_out_p_1 = coldata_i2c_1_sda_out_p;
  assign zynq_ultra_ps_e_0_pl_clk0 = s00_axi_aclk;
  design_1_coldata_i2c_0_4 coldata_i2c_0
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(ps8_0_axi_periph_M01_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(s00_axi_aresetn_1),
        .s00_axi_arprot(ps8_0_axi_periph_M01_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M01_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .scl(coldata_i2c_0_scl),
        .sda_in_n(sda_in_n_0_1),
        .sda_in_p(sda_in_p_0_1),
        .sda_out_n(coldata_i2c_0_sda_out_n),
        .sda_out_p(coldata_i2c_0_sda_out_p));
  design_1_coldata_i2c_1_2 coldata_i2c_1
       (.s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(Conn1_ARADDR[4:0]),
        .s00_axi_aresetn(s00_axi_aresetn_1),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr(Conn1_AWADDR[4:0]),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID),
        .scl(coldata_i2c_1_scl),
        .sda_in_n(sda_in_n_1_1),
        .sda_in_p(sda_in_p_1_1),
        .sda_out_n(coldata_i2c_1_sda_out_n),
        .sda_out_p(coldata_i2c_1_sda_out_p));
  design_1_util_ds_buf_0_3 util_ds_buf_0
       (.OBUF_DS_N(util_ds_buf_0_OBUF_DS_N),
        .OBUF_DS_P(util_ds_buf_0_OBUF_DS_P),
        .OBUF_IN(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_4 util_vector_logic_0
       (.Op1(coldata_i2c_0_scl),
        .Op2(coldata_i2c_1_scl),
        .Res(util_vector_logic_0_Res));
endmodule

module daq_spy_0_imp_KA15XV
   (AXI_CLK_OUT,
    AXI_RSTn,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    daq_clk,
    daq_data_type_1,
    daq_spy_full,
    daq_spy_reset,
    daq_stream0,
    daq_stream_k0,
    ts_clk,
    ts_tstamp);
  input AXI_CLK_OUT;
  input AXI_RSTn;
  input [19:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input daq_clk;
  input [1:0]daq_data_type_1;
  output daq_spy_full;
  input daq_spy_reset;
  input [31:0]daq_stream0;
  input [3:0]daq_stream_k0;
  input ts_clk;
  input [63:0]ts_tstamp;

  wire [19:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire daq_clk_0_1;
  wire [1:0]daq_data_type_1_1;
  wire [19:0]daq_spy_control_0_bram_addr;
  wire daq_spy_control_0_bram_clk;
  wire [31:0]daq_spy_control_0_bram_din;
  wire daq_spy_control_0_bram_en;
  wire daq_spy_control_0_bram_rst;
  wire [3:0]daq_spy_control_0_bram_we;
  wire [2:0]daq_spy_control_0_state;
  wire daq_spy_full_0;
  wire [31:0]daq_stream0_0_1;
  wire [3:0]daq_stream_k0_0_1;
  wire pdts_endpoint_0_clk;
  wire [63:0]pdts_endpoint_0_tstamp;
  wire [19:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M00_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARPROT;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARSIZE;
  wire ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [19:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M00_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWPROT;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWSIZE;
  wire ps8_0_axi_periph_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire ps8_0_axi_periph_M00_AXI_RLAST;
  wire ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WLAST;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire reset_0_1;
  wire rst_ps8_0_99M_peripheral_aresetn;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign S_AXI_arready = ps8_0_axi_periph_M00_AXI_ARREADY;
  assign S_AXI_awready = ps8_0_axi_periph_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M00_AXI_BRESP;
  assign S_AXI_bvalid = ps8_0_axi_periph_M00_AXI_BVALID;
  assign S_AXI_rdata[31:0] = ps8_0_axi_periph_M00_AXI_RDATA;
  assign S_AXI_rlast = ps8_0_axi_periph_M00_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M00_AXI_RRESP;
  assign S_AXI_rvalid = ps8_0_axi_periph_M00_AXI_RVALID;
  assign S_AXI_wready = ps8_0_axi_periph_M00_AXI_WREADY;
  assign daq_clk_0_1 = daq_clk;
  assign daq_data_type_1_1 = daq_data_type_1[1:0];
  assign daq_spy_full = daq_spy_full_0;
  assign daq_stream0_0_1 = daq_stream0[31:0];
  assign daq_stream_k0_0_1 = daq_stream_k0[3:0];
  assign pdts_endpoint_0_clk = ts_clk;
  assign pdts_endpoint_0_tstamp = ts_tstamp[63:0];
  assign ps8_0_axi_periph_M00_AXI_ARADDR = S_AXI_araddr[19:0];
  assign ps8_0_axi_periph_M00_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M00_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M00_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M00_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M00_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M00_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M00_AXI_ARVALID = S_AXI_arvalid;
  assign ps8_0_axi_periph_M00_AXI_AWADDR = S_AXI_awaddr[19:0];
  assign ps8_0_axi_periph_M00_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M00_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M00_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M00_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M00_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M00_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M00_AXI_AWVALID = S_AXI_awvalid;
  assign ps8_0_axi_periph_M00_AXI_BREADY = S_AXI_bready;
  assign ps8_0_axi_periph_M00_AXI_RREADY = S_AXI_rready;
  assign ps8_0_axi_periph_M00_AXI_WDATA = S_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M00_AXI_WLAST = S_AXI_wlast;
  assign ps8_0_axi_periph_M00_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M00_AXI_WVALID = S_AXI_wvalid;
  assign reset_0_1 = daq_spy_reset;
  assign rst_ps8_0_99M_peripheral_aresetn = AXI_RSTn;
  assign zynq_ultra_ps_e_0_pl_clk0 = AXI_CLK_OUT;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_arburst(ps8_0_axi_periph_M00_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M00_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awburst(ps8_0_axi_periph_M00_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M00_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M00_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M00_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M00_AXI_WVALID));
  design_1_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,daq_spy_control_0_bram_addr}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(daq_spy_control_0_bram_clk),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(daq_spy_control_0_bram_din),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(daq_spy_control_0_bram_en),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(daq_spy_control_0_bram_rst),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(daq_spy_control_0_bram_we));
  design_1_daq_spy_control_0_0 daq_spy_control_0
       (.bram_addr(daq_spy_control_0_bram_addr),
        .bram_clk(daq_spy_control_0_bram_clk),
        .bram_din(daq_spy_control_0_bram_din),
        .bram_en(daq_spy_control_0_bram_en),
        .bram_rst(daq_spy_control_0_bram_rst),
        .bram_we(daq_spy_control_0_bram_we),
        .clk65p5(pdts_endpoint_0_clk),
        .daq_clk(daq_clk_0_1),
        .daq_data_type(daq_data_type_1_1),
        .daq_stream(daq_stream0_0_1),
        .daq_stream_k(daq_stream_k0_0_1),
        .full(daq_spy_full_0),
        .reset(reset_0_1),
        .state(daq_spy_control_0_state),
        .time_stamp(pdts_endpoint_0_tstamp));
  design_1_ila_0_0 ila_0
       (.clk(daq_clk_0_1),
        .probe0(daq_stream0_0_1),
        .probe1(daq_stream_k0_0_1),
        .probe2(daq_spy_control_0_bram_addr),
        .probe3(daq_spy_control_0_bram_din),
        .probe4(daq_spy_control_0_bram_en),
        .probe5(daq_spy_control_0_bram_we),
        .probe6(daq_spy_full_0),
        .probe7(daq_spy_control_0_state));
endmodule

module daq_spy_1_imp_Q79PU8
   (AXI_CLK_OUT,
    AXI_RSTn,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    daq_clk,
    daq_data_type_0,
    daq_spy_full,
    daq_spy_reset,
    daq_stream0,
    daq_stream_k0,
    ts_clk,
    ts_tstamp);
  input AXI_CLK_OUT;
  input AXI_RSTn;
  input [19:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input daq_clk;
  input [1:0]daq_data_type_0;
  output daq_spy_full;
  input daq_spy_reset;
  input [31:0]daq_stream0;
  input [3:0]daq_stream_k0;
  input ts_clk;
  input [63:0]ts_tstamp;

  wire AXI_RSTn_1;
  wire [19:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire daq_clk_0_1;
  wire [1:0]daq_data_type_0_1;
  wire [19:0]daq_spy_control_0_bram_addr;
  wire daq_spy_control_0_bram_clk;
  wire [31:0]daq_spy_control_0_bram_din;
  wire daq_spy_control_0_bram_en;
  wire daq_spy_control_0_bram_rst;
  wire [3:0]daq_spy_control_0_bram_we;
  wire daq_spy_full_0;
  wire [31:0]daq_stream0_0_1;
  wire [3:0]daq_stream_k0_0_1;
  wire pdts_endpoint_0_clk;
  wire [63:0]pdts_endpoint_0_tstamp;
  wire [19:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M00_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARPROT;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARSIZE;
  wire ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [19:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M00_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWPROT;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWSIZE;
  wire ps8_0_axi_periph_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire ps8_0_axi_periph_M00_AXI_RLAST;
  wire ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WLAST;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire reset_0_1;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign AXI_RSTn_1 = AXI_RSTn;
  assign S_AXI_arready = ps8_0_axi_periph_M00_AXI_ARREADY;
  assign S_AXI_awready = ps8_0_axi_periph_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M00_AXI_BRESP;
  assign S_AXI_bvalid = ps8_0_axi_periph_M00_AXI_BVALID;
  assign S_AXI_rdata[31:0] = ps8_0_axi_periph_M00_AXI_RDATA;
  assign S_AXI_rlast = ps8_0_axi_periph_M00_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M00_AXI_RRESP;
  assign S_AXI_rvalid = ps8_0_axi_periph_M00_AXI_RVALID;
  assign S_AXI_wready = ps8_0_axi_periph_M00_AXI_WREADY;
  assign daq_clk_0_1 = daq_clk;
  assign daq_data_type_0_1 = daq_data_type_0[1:0];
  assign daq_spy_full = daq_spy_full_0;
  assign daq_stream0_0_1 = daq_stream0[31:0];
  assign daq_stream_k0_0_1 = daq_stream_k0[3:0];
  assign pdts_endpoint_0_clk = ts_clk;
  assign pdts_endpoint_0_tstamp = ts_tstamp[63:0];
  assign ps8_0_axi_periph_M00_AXI_ARADDR = S_AXI_araddr[19:0];
  assign ps8_0_axi_periph_M00_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M00_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M00_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M00_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M00_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M00_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M00_AXI_ARVALID = S_AXI_arvalid;
  assign ps8_0_axi_periph_M00_AXI_AWADDR = S_AXI_awaddr[19:0];
  assign ps8_0_axi_periph_M00_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M00_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M00_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M00_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M00_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M00_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M00_AXI_AWVALID = S_AXI_awvalid;
  assign ps8_0_axi_periph_M00_AXI_BREADY = S_AXI_bready;
  assign ps8_0_axi_periph_M00_AXI_RREADY = S_AXI_rready;
  assign ps8_0_axi_periph_M00_AXI_WDATA = S_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M00_AXI_WLAST = S_AXI_wlast;
  assign ps8_0_axi_periph_M00_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M00_AXI_WVALID = S_AXI_wvalid;
  assign reset_0_1 = daq_spy_reset;
  assign zynq_ultra_ps_e_0_pl_clk0 = AXI_CLK_OUT;
  design_1_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_arburst(ps8_0_axi_periph_M00_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .s_axi_aresetn(AXI_RSTn_1),
        .s_axi_arlen(ps8_0_axi_periph_M00_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awburst(ps8_0_axi_periph_M00_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M00_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M00_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M00_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M00_AXI_WVALID));
  design_1_axi_bram_ctrl_0_bram_1 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,daq_spy_control_0_bram_addr}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(daq_spy_control_0_bram_clk),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(daq_spy_control_0_bram_din),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(daq_spy_control_0_bram_en),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(daq_spy_control_0_bram_rst),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(daq_spy_control_0_bram_we));
  design_1_daq_spy_control_0_1 daq_spy_control_0
       (.bram_addr(daq_spy_control_0_bram_addr),
        .bram_clk(daq_spy_control_0_bram_clk),
        .bram_din(daq_spy_control_0_bram_din),
        .bram_en(daq_spy_control_0_bram_en),
        .bram_rst(daq_spy_control_0_bram_rst),
        .bram_we(daq_spy_control_0_bram_we),
        .clk65p5(pdts_endpoint_0_clk),
        .daq_clk(daq_clk_0_1),
        .daq_data_type(daq_data_type_0_1),
        .daq_stream(daq_stream0_0_1),
        .daq_stream_k(daq_stream_k0_0_1),
        .full(daq_spy_full_0),
        .reset(reset_0_1),
        .time_stamp(pdts_endpoint_0_tstamp));
endmodule

module dbg_imp_5R9Y5
   (AXI_CLK_OUT,
    AXI_RSTn,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input AXI_CLK_OUT;
  input AXI_RSTn;
  input [15:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [15:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire debug_bridge_0_m0_bscan_BSCANID_en;
  wire debug_bridge_0_m0_bscan_CAPTURE;
  wire debug_bridge_0_m0_bscan_DRCK;
  wire debug_bridge_0_m0_bscan_RESET;
  wire debug_bridge_0_m0_bscan_RUNTEST;
  wire debug_bridge_0_m0_bscan_SEL;
  wire debug_bridge_0_m0_bscan_SHIFT;
  wire debug_bridge_0_m0_bscan_TCK;
  wire debug_bridge_0_m0_bscan_TDI;
  wire debug_bridge_0_m0_bscan_TDO;
  wire debug_bridge_0_m0_bscan_TMS;
  wire debug_bridge_0_m0_bscan_UPDATE;
  wire [15:0]ps8_0_axi_periph_M14_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M14_AXI_ARPROT;
  wire ps8_0_axi_periph_M14_AXI_ARREADY;
  wire ps8_0_axi_periph_M14_AXI_ARVALID;
  wire [15:0]ps8_0_axi_periph_M14_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M14_AXI_AWPROT;
  wire ps8_0_axi_periph_M14_AXI_AWREADY;
  wire ps8_0_axi_periph_M14_AXI_AWVALID;
  wire ps8_0_axi_periph_M14_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M14_AXI_BRESP;
  wire ps8_0_axi_periph_M14_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M14_AXI_RDATA;
  wire ps8_0_axi_periph_M14_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M14_AXI_RRESP;
  wire ps8_0_axi_periph_M14_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M14_AXI_WDATA;
  wire ps8_0_axi_periph_M14_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M14_AXI_WSTRB;
  wire ps8_0_axi_periph_M14_AXI_WVALID;
  wire rst_ps8_0_99M_peripheral_aresetn;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign S_AXI_arready = ps8_0_axi_periph_M14_AXI_ARREADY;
  assign S_AXI_awready = ps8_0_axi_periph_M14_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M14_AXI_BRESP;
  assign S_AXI_bvalid = ps8_0_axi_periph_M14_AXI_BVALID;
  assign S_AXI_rdata[31:0] = ps8_0_axi_periph_M14_AXI_RDATA;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M14_AXI_RRESP;
  assign S_AXI_rvalid = ps8_0_axi_periph_M14_AXI_RVALID;
  assign S_AXI_wready = ps8_0_axi_periph_M14_AXI_WREADY;
  assign ps8_0_axi_periph_M14_AXI_ARADDR = S_AXI_araddr[15:0];
  assign ps8_0_axi_periph_M14_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M14_AXI_ARVALID = S_AXI_arvalid;
  assign ps8_0_axi_periph_M14_AXI_AWADDR = S_AXI_awaddr[15:0];
  assign ps8_0_axi_periph_M14_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M14_AXI_AWVALID = S_AXI_awvalid;
  assign ps8_0_axi_periph_M14_AXI_BREADY = S_AXI_bready;
  assign ps8_0_axi_periph_M14_AXI_RREADY = S_AXI_rready;
  assign ps8_0_axi_periph_M14_AXI_WDATA = S_AXI_wdata[31:0];
  assign ps8_0_axi_periph_M14_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_M14_AXI_WVALID = S_AXI_wvalid;
  assign rst_ps8_0_99M_peripheral_aresetn = AXI_RSTn;
  assign zynq_ultra_ps_e_0_pl_clk0 = AXI_CLK_OUT;
  design_1_debug_bridge_0_0 debug_bridge_0
       (.S_AXI_araddr(ps8_0_axi_periph_M14_AXI_ARADDR[4:0]),
        .S_AXI_arprot(ps8_0_axi_periph_M14_AXI_ARPROT),
        .S_AXI_arready(ps8_0_axi_periph_M14_AXI_ARREADY),
        .S_AXI_arvalid(ps8_0_axi_periph_M14_AXI_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_M14_AXI_AWADDR[4:0]),
        .S_AXI_awprot(ps8_0_axi_periph_M14_AXI_AWPROT),
        .S_AXI_awready(ps8_0_axi_periph_M14_AXI_AWREADY),
        .S_AXI_awvalid(ps8_0_axi_periph_M14_AXI_AWVALID),
        .S_AXI_bready(ps8_0_axi_periph_M14_AXI_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_M14_AXI_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_M14_AXI_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_M14_AXI_RDATA),
        .S_AXI_rready(ps8_0_axi_periph_M14_AXI_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_M14_AXI_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_M14_AXI_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_M14_AXI_WDATA),
        .S_AXI_wready(ps8_0_axi_periph_M14_AXI_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_M14_AXI_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_M14_AXI_WVALID),
        .m0_bscan_bscanid_en(debug_bridge_0_m0_bscan_BSCANID_en),
        .m0_bscan_capture(debug_bridge_0_m0_bscan_CAPTURE),
        .m0_bscan_drck(debug_bridge_0_m0_bscan_DRCK),
        .m0_bscan_reset(debug_bridge_0_m0_bscan_RESET),
        .m0_bscan_runtest(debug_bridge_0_m0_bscan_RUNTEST),
        .m0_bscan_sel(debug_bridge_0_m0_bscan_SEL),
        .m0_bscan_shift(debug_bridge_0_m0_bscan_SHIFT),
        .m0_bscan_tck(debug_bridge_0_m0_bscan_TCK),
        .m0_bscan_tdi(debug_bridge_0_m0_bscan_TDI),
        .m0_bscan_tdo(debug_bridge_0_m0_bscan_TDO),
        .m0_bscan_tms(debug_bridge_0_m0_bscan_TMS),
        .m0_bscan_update(debug_bridge_0_m0_bscan_UPDATE),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_debug_bridge_0_1 debug_bridge_1
       (.S_BSCAN_bscanid_en(debug_bridge_0_m0_bscan_BSCANID_en),
        .S_BSCAN_capture(debug_bridge_0_m0_bscan_CAPTURE),
        .S_BSCAN_drck(debug_bridge_0_m0_bscan_DRCK),
        .S_BSCAN_reset(debug_bridge_0_m0_bscan_RESET),
        .S_BSCAN_runtest(debug_bridge_0_m0_bscan_RUNTEST),
        .S_BSCAN_sel(debug_bridge_0_m0_bscan_SEL),
        .S_BSCAN_shift(debug_bridge_0_m0_bscan_SHIFT),
        .S_BSCAN_tck(debug_bridge_0_m0_bscan_TCK),
        .S_BSCAN_tdi(debug_bridge_0_m0_bscan_TDI),
        .S_BSCAN_tdo(debug_bridge_0_m0_bscan_TDO),
        .S_BSCAN_tms(debug_bridge_0_m0_bscan_TMS),
        .S_BSCAN_update(debug_bridge_0_m0_bscan_UPDATE),
        .clk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=94,numReposBlks=68,numNonXlnxBlks=10,numHierBlks=26,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=13,da_board_cnt=4,da_bram_cntlr_cnt=2,da_clkrst_cnt=8,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (AXI_CLK_OUT,
    AXI_RSTn,
    WIB_LED_tri_o,
    cmd_code_act,
    cmd_code_adc_reset,
    cmd_code_edge,
    cmd_code_idle,
    cmd_code_reset,
    cmd_code_sync,
    daq_clk,
    daq_data_type0,
    daq_data_type1,
    daq_spy_full_0,
    daq_spy_full_1,
    daq_spy_reset_0,
    daq_spy_reset_1,
    daq_stream0,
    daq_stream1,
    daq_stream_k0,
    daq_stream_k1,
    fake_time_stamp_en,
    fake_time_stamp_init,
    fastcommand_out_n_0,
    fastcommand_out_p_0,
    iic_rtl_0_scl_i,
    iic_rtl_0_scl_o,
    iic_rtl_0_scl_t,
    iic_rtl_0_sda_i,
    iic_rtl_0_sda_o,
    iic_rtl_0_sda_t,
    reg_ro,
    reg_rw,
    scl_n_0,
    scl_n_1,
    scl_n_2,
    scl_n_3,
    scl_p_0,
    scl_p_1,
    scl_p_2,
    scl_p_3,
    sda_in_n_0,
    sda_in_n_1,
    sda_in_n_2,
    sda_in_n_3,
    sda_in_n_4,
    sda_in_n_5,
    sda_in_n_6,
    sda_in_n_7,
    sda_in_p_0,
    sda_in_p_1,
    sda_in_p_2,
    sda_in_p_3,
    sda_in_p_4,
    sda_in_p_5,
    sda_in_p_6,
    sda_in_p_7,
    sda_out_n_0,
    sda_out_n_1,
    sda_out_n_2,
    sda_out_n_3,
    sda_out_n_4,
    sda_out_n_5,
    sda_out_n_6,
    sda_out_n_7,
    sda_out_p_0,
    sda_out_p_1,
    sda_out_p_2,
    sda_out_p_3,
    sda_out_p_4,
    sda_out_p_5,
    sda_out_p_6,
    sda_out_p_7,
    ts_cdr_lol,
    ts_cdr_los,
    ts_clk,
    ts_evtctr,
    ts_rdy,
    ts_rec_clk_locked,
    ts_rec_d,
    ts_rec_d_clk,
    ts_rst,
    ts_sfp_los,
    ts_stat,
    ts_sync,
    ts_sync_v,
    ts_tstamp,
    ts_valid,
    tx_dis,
    txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_CLK_OUT, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output AXI_CLK_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]AXI_RSTn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 WIB_LED TRI_O" *) output [31:0]WIB_LED_tri_o;
  input [7:0]cmd_code_act;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CMD_CODE_ADC_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CMD_CODE_ADC_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [7:0]cmd_code_adc_reset;
  input [7:0]cmd_code_edge;
  input [7:0]cmd_code_idle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CMD_CODE_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CMD_CODE_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [7:0]cmd_code_reset;
  input [7:0]cmd_code_sync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DAQ_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DAQ_CLK, ASSOCIATED_RESET daq_spy_reset_0:daq_spy_reset_1, CLK_DOMAIN design_1_daq_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input daq_clk;
  input [1:0]daq_data_type0;
  input [1:0]daq_data_type1;
  output daq_spy_full_0;
  output daq_spy_full_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DAQ_SPY_RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DAQ_SPY_RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input daq_spy_reset_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DAQ_SPY_RESET_1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DAQ_SPY_RESET_1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input daq_spy_reset_1;
  input [31:0]daq_stream0;
  input [31:0]daq_stream1;
  input [3:0]daq_stream_k0;
  input [3:0]daq_stream_k1;
  input fake_time_stamp_en;
  input [63:0]fake_time_stamp_init;
  output fastcommand_out_n_0;
  output fastcommand_out_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SCL_I" *) input iic_rtl_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SCL_O" *) output iic_rtl_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SCL_T" *) output iic_rtl_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SDA_I" *) input iic_rtl_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SDA_O" *) output iic_rtl_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0 SDA_T" *) output iic_rtl_0_sda_t;
  input [1023:0]reg_ro;
  output [1023:0]reg_rw;
  output [0:0]scl_n_0;
  output [0:0]scl_n_1;
  output [0:0]scl_n_2;
  output [0:0]scl_n_3;
  output [0:0]scl_p_0;
  output [0:0]scl_p_1;
  output [0:0]scl_p_2;
  output [0:0]scl_p_3;
  input sda_in_n_0;
  input sda_in_n_1;
  input sda_in_n_2;
  input sda_in_n_3;
  input sda_in_n_4;
  input sda_in_n_5;
  input sda_in_n_6;
  input sda_in_n_7;
  input sda_in_p_0;
  input sda_in_p_1;
  input sda_in_p_2;
  input sda_in_p_3;
  input sda_in_p_4;
  input sda_in_p_5;
  input sda_in_p_6;
  input sda_in_p_7;
  output sda_out_n_0;
  output sda_out_n_1;
  output sda_out_n_2;
  output sda_out_n_3;
  output sda_out_n_4;
  output sda_out_n_5;
  output sda_out_n_6;
  output sda_out_n_7;
  output sda_out_p_0;
  output sda_out_p_1;
  output sda_out_p_2;
  output sda_out_p_3;
  output sda_out_p_4;
  output sda_out_p_5;
  output sda_out_p_6;
  output sda_out_p_7;
  input ts_cdr_lol;
  input ts_cdr_los;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TS_CLK, CLK_DOMAIN design_1_pdts_endpoint_stdlog_0_0_clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output ts_clk;
  output [31:0]ts_evtctr;
  output ts_rdy;
  input ts_rec_clk_locked;
  input ts_rec_d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TS_REC_D_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TS_REC_D_CLK, ASSOCIATED_RESET daq_spy_reset_0, CLK_DOMAIN design_1_ts_rec_d_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ts_rec_d_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.TS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.TS_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output ts_rst;
  input ts_sfp_los;
  output [3:0]ts_stat;
  output [3:0]ts_sync;
  output [0:0]ts_sync_v;
  output [63:0]ts_tstamp;
  output ts_valid;
  output [0:0]tx_dis;
  output txd;

  wire [39:0]S00_AXI1_1_ARADDR;
  wire [2:0]S00_AXI1_1_ARPROT;
  wire S00_AXI1_1_ARREADY;
  wire S00_AXI1_1_ARVALID;
  wire [39:0]S00_AXI1_1_AWADDR;
  wire [2:0]S00_AXI1_1_AWPROT;
  wire S00_AXI1_1_AWREADY;
  wire S00_AXI1_1_AWVALID;
  wire S00_AXI1_1_BREADY;
  wire [1:0]S00_AXI1_1_BRESP;
  wire S00_AXI1_1_BVALID;
  wire [31:0]S00_AXI1_1_RDATA;
  wire S00_AXI1_1_RREADY;
  wire [1:0]S00_AXI1_1_RRESP;
  wire S00_AXI1_1_RVALID;
  wire [31:0]S00_AXI1_1_WDATA;
  wire S00_AXI1_1_WREADY;
  wire [3:0]S00_AXI1_1_WSTRB;
  wire S00_AXI1_1_WVALID;
  wire [39:0]S00_AXI1_2_ARADDR;
  wire [2:0]S00_AXI1_2_ARPROT;
  wire S00_AXI1_2_ARREADY;
  wire S00_AXI1_2_ARVALID;
  wire [39:0]S00_AXI1_2_AWADDR;
  wire [2:0]S00_AXI1_2_AWPROT;
  wire S00_AXI1_2_AWREADY;
  wire S00_AXI1_2_AWVALID;
  wire S00_AXI1_2_BREADY;
  wire [1:0]S00_AXI1_2_BRESP;
  wire S00_AXI1_2_BVALID;
  wire [31:0]S00_AXI1_2_RDATA;
  wire S00_AXI1_2_RREADY;
  wire [1:0]S00_AXI1_2_RRESP;
  wire S00_AXI1_2_RVALID;
  wire [31:0]S00_AXI1_2_WDATA;
  wire S00_AXI1_2_WREADY;
  wire [3:0]S00_AXI1_2_WSTRB;
  wire S00_AXI1_2_WVALID;
  wire [39:0]S00_AXI1_3_ARADDR;
  wire [2:0]S00_AXI1_3_ARPROT;
  wire S00_AXI1_3_ARREADY;
  wire S00_AXI1_3_ARVALID;
  wire [39:0]S00_AXI1_3_AWADDR;
  wire [2:0]S00_AXI1_3_AWPROT;
  wire S00_AXI1_3_AWREADY;
  wire S00_AXI1_3_AWVALID;
  wire S00_AXI1_3_BREADY;
  wire [1:0]S00_AXI1_3_BRESP;
  wire S00_AXI1_3_BVALID;
  wire [31:0]S00_AXI1_3_RDATA;
  wire S00_AXI1_3_RREADY;
  wire [1:0]S00_AXI1_3_RRESP;
  wire S00_AXI1_3_RVALID;
  wire [31:0]S00_AXI1_3_WDATA;
  wire S00_AXI1_3_WREADY;
  wire [3:0]S00_AXI1_3_WSTRB;
  wire S00_AXI1_3_WVALID;
  wire [39:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [39:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [39:0]S00_AXI_2_ARADDR;
  wire [2:0]S00_AXI_2_ARPROT;
  wire S00_AXI_2_ARREADY;
  wire S00_AXI_2_ARVALID;
  wire [39:0]S00_AXI_2_AWADDR;
  wire [2:0]S00_AXI_2_AWPROT;
  wire S00_AXI_2_AWREADY;
  wire S00_AXI_2_AWVALID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [31:0]S00_AXI_2_RDATA;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [31:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WREADY;
  wire [3:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [39:0]S00_AXI_3_ARADDR;
  wire [2:0]S00_AXI_3_ARPROT;
  wire S00_AXI_3_ARREADY;
  wire S00_AXI_3_ARVALID;
  wire [39:0]S00_AXI_3_AWADDR;
  wire [2:0]S00_AXI_3_AWPROT;
  wire S00_AXI_3_AWREADY;
  wire S00_AXI_3_AWVALID;
  wire S00_AXI_3_BREADY;
  wire [1:0]S00_AXI_3_BRESP;
  wire S00_AXI_3_BVALID;
  wire [31:0]S00_AXI_3_RDATA;
  wire S00_AXI_3_RREADY;
  wire [1:0]S00_AXI_3_RRESP;
  wire S00_AXI_3_RVALID;
  wire [31:0]S00_AXI_3_WDATA;
  wire S00_AXI_3_WREADY;
  wire [3:0]S00_AXI_3_WSTRB;
  wire S00_AXI_3_WVALID;
  wire [31:0]axi_gpio_1_GPIO_TRI_O;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_0_iic2intc_irpt;
  wire cdr_lol_0_1;
  wire cdr_los_0_1;
  wire [7:0]cmd_code_act_0_1;
  wire [7:0]cmd_code_adc_reset_0_1;
  wire [7:0]cmd_code_edge_0_1;
  wire [7:0]cmd_code_idle_0_1;
  wire [7:0]cmd_code_reset_0_1;
  wire [7:0]cmd_code_sync_0_1;
  wire coldata_fast_cmd_0_fastcommand_out;
  wire coldata_fast_cmd_0_fastcommand_out_n;
  wire coldata_fast_cmd_0_fastcommand_out_p;
  wire [0:0]coldata_i2c_0_scl_n;
  wire [0:0]coldata_i2c_0_scl_p;
  wire coldata_i2c_0_sda_out_n;
  wire coldata_i2c_0_sda_out_p;
  wire [0:0]coldata_i2c_dual1_scl_n_0;
  wire [0:0]coldata_i2c_dual1_scl_p_0;
  wire coldata_i2c_dual1_sda_out_n_0;
  wire coldata_i2c_dual1_sda_out_n_1;
  wire coldata_i2c_dual1_sda_out_p_0;
  wire coldata_i2c_dual1_sda_out_p_1;
  wire [0:0]coldata_i2c_dual2_scl_n_0;
  wire [0:0]coldata_i2c_dual2_scl_p_0;
  wire coldata_i2c_dual2_sda_out_n_0;
  wire coldata_i2c_dual2_sda_out_n_1;
  wire coldata_i2c_dual2_sda_out_p_0;
  wire coldata_i2c_dual2_sda_out_p_1;
  wire [0:0]coldata_i2c_dual3_scl_n_0;
  wire [0:0]coldata_i2c_dual3_scl_p_0;
  wire coldata_i2c_dual3_sda_out_n_0;
  wire coldata_i2c_dual3_sda_out_n_1;
  wire coldata_i2c_dual3_sda_out_p_0;
  wire coldata_i2c_dual3_sda_out_p_1;
  wire coldata_i2c_dual_sda_out_n_1;
  wire coldata_i2c_dual_sda_out_p_1;
  wire daq_clk_0_1;
  wire [1:0]daq_data_type_0_1;
  wire [1:0]daq_data_type_1_1;
  wire daq_spy_1_daq_spy_full;
  wire daq_spy_full_0;
  wire daq_spy_reset_0_1;
  wire [31:0]daq_stream0_0_1;
  wire [31:0]daq_stream1_0_1;
  wire [3:0]daq_stream_k0_0_1;
  wire [3:0]daq_stream_k1_0_1;
  wire fake_time_stamp_en_0_1;
  wire [63:0]fake_time_stamp_init_0_1;
  wire pdts_endpoint_0_clk;
  wire [31:0]pdts_endpoint_0_evtctr;
  wire pdts_endpoint_0_rdy;
  wire pdts_endpoint_0_rst;
  wire [3:0]pdts_endpoint_0_sync;
  wire [0:0]pdts_endpoint_0_sync_v;
  wire [63:0]pdts_endpoint_0_tstamp;
  wire [19:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M00_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARPROT;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI_ARSIZE;
  wire ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [19:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M00_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M00_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M00_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M00_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWPROT;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M00_AXI_AWSIZE;
  wire ps8_0_axi_periph_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire ps8_0_axi_periph_M00_AXI_RLAST;
  wire ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WLAST;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_ARPROT;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M01_AXI_AWPROT;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M03_AXI_ARPROT;
  wire ps8_0_axi_periph_M03_AXI_ARREADY;
  wire ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M03_AXI_AWPROT;
  wire ps8_0_axi_periph_M03_AXI_AWREADY;
  wire ps8_0_axi_periph_M03_AXI_AWVALID;
  wire ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M04_AXI_ARPROT;
  wire ps8_0_axi_periph_M04_AXI_ARREADY;
  wire ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M04_AXI_AWPROT;
  wire ps8_0_axi_periph_M04_AXI_AWREADY;
  wire ps8_0_axi_periph_M04_AXI_AWVALID;
  wire ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire ps8_0_axi_periph_M04_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M11_AXI_ARADDR;
  wire ps8_0_axi_periph_M11_AXI_ARREADY;
  wire ps8_0_axi_periph_M11_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M11_AXI_AWADDR;
  wire ps8_0_axi_periph_M11_AXI_AWREADY;
  wire ps8_0_axi_periph_M11_AXI_AWVALID;
  wire ps8_0_axi_periph_M11_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M11_AXI_BRESP;
  wire ps8_0_axi_periph_M11_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M11_AXI_RDATA;
  wire ps8_0_axi_periph_M11_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M11_AXI_RRESP;
  wire ps8_0_axi_periph_M11_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M11_AXI_WDATA;
  wire ps8_0_axi_periph_M11_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M11_AXI_WSTRB;
  wire ps8_0_axi_periph_M11_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M12_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M12_AXI_ARPROT;
  wire ps8_0_axi_periph_M12_AXI_ARREADY;
  wire ps8_0_axi_periph_M12_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M12_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M12_AXI_AWPROT;
  wire ps8_0_axi_periph_M12_AXI_AWREADY;
  wire ps8_0_axi_periph_M12_AXI_AWVALID;
  wire ps8_0_axi_periph_M12_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M12_AXI_BRESP;
  wire ps8_0_axi_periph_M12_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M12_AXI_RDATA;
  wire ps8_0_axi_periph_M12_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M12_AXI_RRESP;
  wire ps8_0_axi_periph_M12_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M12_AXI_WDATA;
  wire ps8_0_axi_periph_M12_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M12_AXI_WSTRB;
  wire ps8_0_axi_periph_M12_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M13_AXI_ARADDR;
  wire ps8_0_axi_periph_M13_AXI_ARREADY;
  wire ps8_0_axi_periph_M13_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M13_AXI_AWADDR;
  wire ps8_0_axi_periph_M13_AXI_AWREADY;
  wire ps8_0_axi_periph_M13_AXI_AWVALID;
  wire ps8_0_axi_periph_M13_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M13_AXI_BRESP;
  wire ps8_0_axi_periph_M13_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M13_AXI_RDATA;
  wire ps8_0_axi_periph_M13_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M13_AXI_RRESP;
  wire ps8_0_axi_periph_M13_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M13_AXI_WDATA;
  wire ps8_0_axi_periph_M13_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M13_AXI_WSTRB;
  wire ps8_0_axi_periph_M13_AXI_WVALID;
  wire [15:0]ps8_0_axi_periph_M14_AXI_ARADDR;
  wire [2:0]ps8_0_axi_periph_M14_AXI_ARPROT;
  wire ps8_0_axi_periph_M14_AXI_ARREADY;
  wire ps8_0_axi_periph_M14_AXI_ARVALID;
  wire [15:0]ps8_0_axi_periph_M14_AXI_AWADDR;
  wire [2:0]ps8_0_axi_periph_M14_AXI_AWPROT;
  wire ps8_0_axi_periph_M14_AXI_AWREADY;
  wire ps8_0_axi_periph_M14_AXI_AWVALID;
  wire ps8_0_axi_periph_M14_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M14_AXI_BRESP;
  wire ps8_0_axi_periph_M14_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M14_AXI_RDATA;
  wire ps8_0_axi_periph_M14_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M14_AXI_RRESP;
  wire ps8_0_axi_periph_M14_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M14_AXI_WDATA;
  wire ps8_0_axi_periph_M14_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M14_AXI_WSTRB;
  wire ps8_0_axi_periph_M14_AXI_WVALID;
  wire [19:0]ps8_0_axi_periph_M15_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M15_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M15_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M15_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M15_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M15_AXI_ARPROT;
  wire ps8_0_axi_periph_M15_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M15_AXI_ARSIZE;
  wire ps8_0_axi_periph_M15_AXI_ARVALID;
  wire [19:0]ps8_0_axi_periph_M15_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M15_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M15_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M15_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M15_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M15_AXI_AWPROT;
  wire ps8_0_axi_periph_M15_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M15_AXI_AWSIZE;
  wire ps8_0_axi_periph_M15_AXI_AWVALID;
  wire ps8_0_axi_periph_M15_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M15_AXI_BRESP;
  wire ps8_0_axi_periph_M15_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M15_AXI_RDATA;
  wire ps8_0_axi_periph_M15_AXI_RLAST;
  wire ps8_0_axi_periph_M15_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M15_AXI_RRESP;
  wire ps8_0_axi_periph_M15_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M15_AXI_WDATA;
  wire ps8_0_axi_periph_M15_AXI_WLAST;
  wire ps8_0_axi_periph_M15_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M15_AXI_WSTRB;
  wire ps8_0_axi_periph_M15_AXI_WVALID;
  wire rec_clk_locked_0_1;
  wire rec_d_0_1;
  wire rec_d_clk_0_1;
  wire [1023:0]reg_bank_64_0_reg_rw;
  wire [1023:0]reg_ro_0_1;
  wire reset_0_1;
  wire [0:0]rst_ps8_0_99M_interconnect_aresetn;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire sda_in_n_0_0_1;
  wire sda_in_n_0_1;
  wire sda_in_n_0_1_1;
  wire sda_in_n_0_2_1;
  wire sda_in_n_1_0_1;
  wire sda_in_n_1_1;
  wire sda_in_n_1_1_1;
  wire sda_in_n_1_2_1;
  wire sda_in_p_0_0_1;
  wire sda_in_p_0_1;
  wire sda_in_p_0_1_1;
  wire sda_in_p_0_2_1;
  wire sda_in_p_1_0_1;
  wire sda_in_p_1_1;
  wire sda_in_p_1_1_1;
  wire sda_in_p_1_2_1;
  wire sfp_los_0_1;
  wire timing_module_cmd_bit_act;
  wire timing_module_cmd_bit_adc_reset;
  wire timing_module_cmd_bit_edge;
  wire timing_module_cmd_bit_idle;
  wire timing_module_cmd_bit_reset;
  wire timing_module_cmd_bit_sync;
  wire [3:0]timing_module_stat_0;
  wire timing_module_ts_valid_0;
  wire [0:0]timing_module_tx_dis_0;
  wire timing_module_txd_0;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign AXI_CLK_OUT = zynq_ultra_ps_e_0_pl_clk0;
  assign AXI_RSTn[0] = rst_ps8_0_99M_peripheral_aresetn;
  assign WIB_LED_tri_o[31:0] = axi_gpio_1_GPIO_TRI_O;
  assign axi_iic_0_IIC_SCL_I = iic_rtl_0_scl_i;
  assign axi_iic_0_IIC_SDA_I = iic_rtl_0_sda_i;
  assign cdr_lol_0_1 = ts_cdr_lol;
  assign cdr_los_0_1 = ts_cdr_los;
  assign cmd_code_act_0_1 = cmd_code_act[7:0];
  assign cmd_code_adc_reset_0_1 = cmd_code_adc_reset[7:0];
  assign cmd_code_edge_0_1 = cmd_code_edge[7:0];
  assign cmd_code_idle_0_1 = cmd_code_idle[7:0];
  assign cmd_code_reset_0_1 = cmd_code_reset[7:0];
  assign cmd_code_sync_0_1 = cmd_code_sync[7:0];
  assign daq_clk_0_1 = daq_clk;
  assign daq_data_type_0_1 = daq_data_type1[1:0];
  assign daq_data_type_1_1 = daq_data_type0[1:0];
  assign daq_spy_full_1 = daq_spy_1_daq_spy_full;
  assign daq_spy_reset_0_1 = daq_spy_reset_1;
  assign daq_stream0_0_1 = daq_stream0[31:0];
  assign daq_stream1_0_1 = daq_stream1[31:0];
  assign daq_stream_k0_0_1 = daq_stream_k0[3:0];
  assign daq_stream_k1_0_1 = daq_stream_k1[3:0];
  assign fake_time_stamp_en_0_1 = fake_time_stamp_en;
  assign fake_time_stamp_init_0_1 = fake_time_stamp_init[63:0];
  assign fastcommand_out_n_0 = coldata_fast_cmd_0_fastcommand_out_n;
  assign fastcommand_out_p_0 = coldata_fast_cmd_0_fastcommand_out_p;
  assign iic_rtl_0_scl_o = axi_iic_0_IIC_SCL_O;
  assign iic_rtl_0_scl_t = axi_iic_0_IIC_SCL_T;
  assign iic_rtl_0_sda_o = axi_iic_0_IIC_SDA_O;
  assign iic_rtl_0_sda_t = axi_iic_0_IIC_SDA_T;
  assign rec_clk_locked_0_1 = ts_rec_clk_locked;
  assign rec_d_0_1 = ts_rec_d;
  assign rec_d_clk_0_1 = ts_rec_d_clk;
  assign reg_ro_0_1 = reg_ro[1023:0];
  assign reg_rw[1023:0] = reg_bank_64_0_reg_rw;
  assign reset_0_1 = daq_spy_reset_0;
  assign scl_n_0[0] = coldata_i2c_0_scl_n;
  assign scl_n_1[0] = coldata_i2c_dual1_scl_n_0;
  assign scl_n_2[0] = coldata_i2c_dual2_scl_n_0;
  assign scl_n_3[0] = coldata_i2c_dual3_scl_n_0;
  assign scl_p_0[0] = coldata_i2c_0_scl_p;
  assign scl_p_1[0] = coldata_i2c_dual1_scl_p_0;
  assign scl_p_2[0] = coldata_i2c_dual2_scl_p_0;
  assign scl_p_3[0] = coldata_i2c_dual3_scl_p_0;
  assign sda_in_n_0_0_1 = sda_in_n_2;
  assign sda_in_n_0_1 = sda_in_n_0;
  assign sda_in_n_0_1_1 = sda_in_n_4;
  assign sda_in_n_0_2_1 = sda_in_n_6;
  assign sda_in_n_1_0_1 = sda_in_n_3;
  assign sda_in_n_1_1 = sda_in_n_1;
  assign sda_in_n_1_1_1 = sda_in_n_5;
  assign sda_in_n_1_2_1 = sda_in_n_7;
  assign sda_in_p_0_0_1 = sda_in_p_2;
  assign sda_in_p_0_1 = sda_in_p_0;
  assign sda_in_p_0_1_1 = sda_in_p_4;
  assign sda_in_p_0_2_1 = sda_in_p_6;
  assign sda_in_p_1_0_1 = sda_in_p_3;
  assign sda_in_p_1_1 = sda_in_p_1;
  assign sda_in_p_1_1_1 = sda_in_p_5;
  assign sda_in_p_1_2_1 = sda_in_p_7;
  assign sda_out_n_0 = coldata_i2c_0_sda_out_n;
  assign sda_out_n_1 = coldata_i2c_dual_sda_out_n_1;
  assign sda_out_n_2 = coldata_i2c_dual1_sda_out_n_0;
  assign sda_out_n_3 = coldata_i2c_dual1_sda_out_n_1;
  assign sda_out_n_4 = coldata_i2c_dual2_sda_out_n_0;
  assign sda_out_n_5 = coldata_i2c_dual2_sda_out_n_1;
  assign sda_out_n_6 = coldata_i2c_dual3_sda_out_n_0;
  assign sda_out_n_7 = coldata_i2c_dual3_sda_out_n_1;
  assign sda_out_p_0 = coldata_i2c_0_sda_out_p;
  assign sda_out_p_1 = coldata_i2c_dual_sda_out_p_1;
  assign sda_out_p_2 = coldata_i2c_dual1_sda_out_p_0;
  assign sda_out_p_3 = coldata_i2c_dual1_sda_out_p_1;
  assign sda_out_p_4 = coldata_i2c_dual2_sda_out_p_0;
  assign sda_out_p_5 = coldata_i2c_dual2_sda_out_p_1;
  assign sda_out_p_6 = coldata_i2c_dual3_sda_out_p_0;
  assign sda_out_p_7 = coldata_i2c_dual3_sda_out_p_1;
  assign sfp_los_0_1 = ts_sfp_los;
  assign ts_clk = pdts_endpoint_0_clk;
  assign ts_evtctr[31:0] = pdts_endpoint_0_evtctr;
  assign ts_rdy = pdts_endpoint_0_rdy;
  assign ts_rst = pdts_endpoint_0_rst;
  assign ts_stat[3:0] = timing_module_stat_0;
  assign ts_sync[3:0] = pdts_endpoint_0_sync;
  assign ts_sync_v[0] = pdts_endpoint_0_sync_v;
  assign ts_tstamp[63:0] = pdts_endpoint_0_tstamp;
  assign ts_valid = timing_module_ts_valid_0;
  assign tx_dis[0] = timing_module_tx_dis_0;
  assign txd = timing_module_txd_0;
  design_1_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_o(axi_gpio_1_GPIO_TRI_O),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M13_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M13_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M13_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M13_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M13_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M13_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M13_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M13_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M13_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M13_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M13_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M13_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M13_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M13_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M13_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M13_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M13_AXI_WVALID));
  design_1_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M11_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M11_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M11_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M11_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M11_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M11_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M11_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M11_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M11_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M11_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M11_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M11_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M11_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M11_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M11_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M11_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M11_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  design_1_coldata_fast_cmd_0_0 coldata_fast_cmd_0
       (.clk62p5(pdts_endpoint_0_clk),
        .cmd_act(timing_module_cmd_bit_act),
        .cmd_adc_reset(timing_module_cmd_bit_adc_reset),
        .cmd_edge(timing_module_cmd_bit_edge),
        .cmd_idle(timing_module_cmd_bit_idle),
        .cmd_reset(timing_module_cmd_bit_reset),
        .cmd_sync(timing_module_cmd_bit_sync),
        .fastcommand_out(coldata_fast_cmd_0_fastcommand_out),
        .fastcommand_out_n(coldata_fast_cmd_0_fastcommand_out_n),
        .fastcommand_out_p(coldata_fast_cmd_0_fastcommand_out_p),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(ps8_0_axi_periph_M03_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arprot(ps8_0_axi_periph_M03_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR[4:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M03_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M03_AXI_WVALID));
  coldata_i2c_dual0_imp_LTEQQX coldata_i2c_dual0
       (.S00_AXI1_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .S00_AXI1_arprot(ps8_0_axi_periph_M04_AXI_ARPROT),
        .S00_AXI1_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .S00_AXI1_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .S00_AXI1_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .S00_AXI1_awprot(ps8_0_axi_periph_M04_AXI_AWPROT),
        .S00_AXI1_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .S00_AXI1_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .S00_AXI1_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .S00_AXI1_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .S00_AXI1_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .S00_AXI1_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .S00_AXI1_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .S00_AXI1_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .S00_AXI1_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .S00_AXI1_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .S00_AXI1_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .S00_AXI1_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .S00_AXI1_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .S00_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .S00_AXI_arprot(ps8_0_axi_periph_M01_AXI_ARPROT),
        .S00_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .S00_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .S00_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .S00_AXI_awprot(ps8_0_axi_periph_M01_AXI_AWPROT),
        .S00_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .S00_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .S00_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .S00_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .S00_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .S00_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .S00_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .S00_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .S00_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .S00_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .S00_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .S00_AXI_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .S00_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .scl_n_0(coldata_i2c_0_scl_n),
        .scl_p_0(coldata_i2c_0_scl_p),
        .sda_in_n_0(sda_in_n_0_1),
        .sda_in_n_1(sda_in_n_1_1),
        .sda_in_p_0(sda_in_p_0_1),
        .sda_in_p_1(sda_in_p_1_1),
        .sda_out_n_0(coldata_i2c_0_sda_out_n),
        .sda_out_n_1(coldata_i2c_dual_sda_out_n_1),
        .sda_out_p_0(coldata_i2c_0_sda_out_p),
        .sda_out_p_1(coldata_i2c_dual_sda_out_p_1));
  coldata_i2c_dual1_imp_OXIENE coldata_i2c_dual1
       (.S00_AXI1_araddr(S00_AXI1_1_ARADDR),
        .S00_AXI1_arprot(S00_AXI1_1_ARPROT),
        .S00_AXI1_arready(S00_AXI1_1_ARREADY),
        .S00_AXI1_arvalid(S00_AXI1_1_ARVALID),
        .S00_AXI1_awaddr(S00_AXI1_1_AWADDR),
        .S00_AXI1_awprot(S00_AXI1_1_AWPROT),
        .S00_AXI1_awready(S00_AXI1_1_AWREADY),
        .S00_AXI1_awvalid(S00_AXI1_1_AWVALID),
        .S00_AXI1_bready(S00_AXI1_1_BREADY),
        .S00_AXI1_bresp(S00_AXI1_1_BRESP),
        .S00_AXI1_bvalid(S00_AXI1_1_BVALID),
        .S00_AXI1_rdata(S00_AXI1_1_RDATA),
        .S00_AXI1_rready(S00_AXI1_1_RREADY),
        .S00_AXI1_rresp(S00_AXI1_1_RRESP),
        .S00_AXI1_rvalid(S00_AXI1_1_RVALID),
        .S00_AXI1_wdata(S00_AXI1_1_WDATA),
        .S00_AXI1_wready(S00_AXI1_1_WREADY),
        .S00_AXI1_wstrb(S00_AXI1_1_WSTRB),
        .S00_AXI1_wvalid(S00_AXI1_1_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .scl_n_0(coldata_i2c_dual1_scl_n_0),
        .scl_p_0(coldata_i2c_dual1_scl_p_0),
        .sda_in_n_0(sda_in_n_0_0_1),
        .sda_in_n_1(sda_in_n_1_0_1),
        .sda_in_p_0(sda_in_p_0_0_1),
        .sda_in_p_1(sda_in_p_1_0_1),
        .sda_out_n_0(coldata_i2c_dual1_sda_out_n_0),
        .sda_out_n_1(coldata_i2c_dual1_sda_out_n_1),
        .sda_out_p_0(coldata_i2c_dual1_sda_out_p_0),
        .sda_out_p_1(coldata_i2c_dual1_sda_out_p_1));
  coldata_i2c_dual2_imp_QQB9M7 coldata_i2c_dual2
       (.S00_AXI1_araddr(S00_AXI1_2_ARADDR),
        .S00_AXI1_arprot(S00_AXI1_2_ARPROT),
        .S00_AXI1_arready(S00_AXI1_2_ARREADY),
        .S00_AXI1_arvalid(S00_AXI1_2_ARVALID),
        .S00_AXI1_awaddr(S00_AXI1_2_AWADDR),
        .S00_AXI1_awprot(S00_AXI1_2_AWPROT),
        .S00_AXI1_awready(S00_AXI1_2_AWREADY),
        .S00_AXI1_awvalid(S00_AXI1_2_AWVALID),
        .S00_AXI1_bready(S00_AXI1_2_BREADY),
        .S00_AXI1_bresp(S00_AXI1_2_BRESP),
        .S00_AXI1_bvalid(S00_AXI1_2_BVALID),
        .S00_AXI1_rdata(S00_AXI1_2_RDATA),
        .S00_AXI1_rready(S00_AXI1_2_RREADY),
        .S00_AXI1_rresp(S00_AXI1_2_RRESP),
        .S00_AXI1_rvalid(S00_AXI1_2_RVALID),
        .S00_AXI1_wdata(S00_AXI1_2_WDATA),
        .S00_AXI1_wready(S00_AXI1_2_WREADY),
        .S00_AXI1_wstrb(S00_AXI1_2_WSTRB),
        .S00_AXI1_wvalid(S00_AXI1_2_WVALID),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .scl_n_0(coldata_i2c_dual2_scl_n_0),
        .scl_p_0(coldata_i2c_dual2_scl_p_0),
        .sda_in_n_0(sda_in_n_0_1_1),
        .sda_in_n_1(sda_in_n_1_1_1),
        .sda_in_p_0(sda_in_p_0_1_1),
        .sda_in_p_1(sda_in_p_1_1_1),
        .sda_out_n_0(coldata_i2c_dual2_sda_out_n_0),
        .sda_out_n_1(coldata_i2c_dual2_sda_out_n_1),
        .sda_out_p_0(coldata_i2c_dual2_sda_out_p_0),
        .sda_out_p_1(coldata_i2c_dual2_sda_out_p_1));
  coldata_i2c_dual3_imp_X2DLBG coldata_i2c_dual3
       (.S00_AXI1_araddr(S00_AXI1_3_ARADDR),
        .S00_AXI1_arprot(S00_AXI1_3_ARPROT),
        .S00_AXI1_arready(S00_AXI1_3_ARREADY),
        .S00_AXI1_arvalid(S00_AXI1_3_ARVALID),
        .S00_AXI1_awaddr(S00_AXI1_3_AWADDR),
        .S00_AXI1_awprot(S00_AXI1_3_AWPROT),
        .S00_AXI1_awready(S00_AXI1_3_AWREADY),
        .S00_AXI1_awvalid(S00_AXI1_3_AWVALID),
        .S00_AXI1_bready(S00_AXI1_3_BREADY),
        .S00_AXI1_bresp(S00_AXI1_3_BRESP),
        .S00_AXI1_bvalid(S00_AXI1_3_BVALID),
        .S00_AXI1_rdata(S00_AXI1_3_RDATA),
        .S00_AXI1_rready(S00_AXI1_3_RREADY),
        .S00_AXI1_rresp(S00_AXI1_3_RRESP),
        .S00_AXI1_rvalid(S00_AXI1_3_RVALID),
        .S00_AXI1_wdata(S00_AXI1_3_WDATA),
        .S00_AXI1_wready(S00_AXI1_3_WREADY),
        .S00_AXI1_wstrb(S00_AXI1_3_WSTRB),
        .S00_AXI1_wvalid(S00_AXI1_3_WVALID),
        .S00_AXI_araddr(S00_AXI_3_ARADDR),
        .S00_AXI_arprot(S00_AXI_3_ARPROT),
        .S00_AXI_arready(S00_AXI_3_ARREADY),
        .S00_AXI_arvalid(S00_AXI_3_ARVALID),
        .S00_AXI_awaddr(S00_AXI_3_AWADDR),
        .S00_AXI_awprot(S00_AXI_3_AWPROT),
        .S00_AXI_awready(S00_AXI_3_AWREADY),
        .S00_AXI_awvalid(S00_AXI_3_AWVALID),
        .S00_AXI_bready(S00_AXI_3_BREADY),
        .S00_AXI_bresp(S00_AXI_3_BRESP),
        .S00_AXI_bvalid(S00_AXI_3_BVALID),
        .S00_AXI_rdata(S00_AXI_3_RDATA),
        .S00_AXI_rready(S00_AXI_3_RREADY),
        .S00_AXI_rresp(S00_AXI_3_RRESP),
        .S00_AXI_rvalid(S00_AXI_3_RVALID),
        .S00_AXI_wdata(S00_AXI_3_WDATA),
        .S00_AXI_wready(S00_AXI_3_WREADY),
        .S00_AXI_wstrb(S00_AXI_3_WSTRB),
        .S00_AXI_wvalid(S00_AXI_3_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .scl_n_0(coldata_i2c_dual3_scl_n_0),
        .scl_p_0(coldata_i2c_dual3_scl_p_0),
        .sda_in_n_0(sda_in_n_0_2_1),
        .sda_in_n_1(sda_in_n_1_2_1),
        .sda_in_p_0(sda_in_p_0_2_1),
        .sda_in_p_1(sda_in_p_1_2_1),
        .sda_out_n_0(coldata_i2c_dual3_sda_out_n_0),
        .sda_out_n_1(coldata_i2c_dual3_sda_out_n_1),
        .sda_out_p_0(coldata_i2c_dual3_sda_out_p_0),
        .sda_out_p_1(coldata_i2c_dual3_sda_out_p_1));
  daq_spy_0_imp_KA15XV daq_spy_0
       (.AXI_CLK_OUT(zynq_ultra_ps_e_0_pl_clk0),
        .AXI_RSTn(rst_ps8_0_99M_peripheral_aresetn),
        .S_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_M00_AXI_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .S_AXI_arlen(ps8_0_axi_periph_M00_AXI_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .S_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_M00_AXI_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .S_AXI_awlen(ps8_0_axi_periph_M00_AXI_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .S_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_rlast(ps8_0_axi_periph_M00_AXI_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_M00_AXI_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .daq_clk(daq_clk_0_1),
        .daq_data_type_1(daq_data_type_1_1),
        .daq_spy_full(daq_spy_full_0),
        .daq_spy_reset(reset_0_1),
        .daq_stream0(daq_stream0_0_1),
        .daq_stream_k0(daq_stream_k0_0_1),
        .ts_clk(pdts_endpoint_0_clk),
        .ts_tstamp(pdts_endpoint_0_tstamp));
  daq_spy_1_imp_Q79PU8 daq_spy_1
       (.AXI_CLK_OUT(zynq_ultra_ps_e_0_pl_clk0),
        .AXI_RSTn(rst_ps8_0_99M_peripheral_aresetn),
        .S_AXI_araddr(ps8_0_axi_periph_M15_AXI_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_M15_AXI_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_M15_AXI_ARCACHE),
        .S_AXI_arlen(ps8_0_axi_periph_M15_AXI_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_M15_AXI_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_M15_AXI_ARPROT),
        .S_AXI_arready(ps8_0_axi_periph_M15_AXI_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_M15_AXI_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_M15_AXI_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_M15_AXI_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_M15_AXI_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_M15_AXI_AWCACHE),
        .S_AXI_awlen(ps8_0_axi_periph_M15_AXI_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_M15_AXI_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_M15_AXI_AWPROT),
        .S_AXI_awready(ps8_0_axi_periph_M15_AXI_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_M15_AXI_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_M15_AXI_AWVALID),
        .S_AXI_bready(ps8_0_axi_periph_M15_AXI_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_M15_AXI_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_M15_AXI_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_M15_AXI_RDATA),
        .S_AXI_rlast(ps8_0_axi_periph_M15_AXI_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_M15_AXI_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_M15_AXI_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_M15_AXI_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_M15_AXI_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_M15_AXI_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_M15_AXI_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_M15_AXI_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_M15_AXI_WVALID),
        .daq_clk(daq_clk_0_1),
        .daq_data_type_0(daq_data_type_0_1),
        .daq_spy_full(daq_spy_1_daq_spy_full),
        .daq_spy_reset(daq_spy_reset_0_1),
        .daq_stream0(daq_stream1_0_1),
        .daq_stream_k0(daq_stream_k1_0_1),
        .ts_clk(pdts_endpoint_0_clk),
        .ts_tstamp(pdts_endpoint_0_tstamp));
  dbg_imp_5R9Y5 dbg
       (.AXI_CLK_OUT(zynq_ultra_ps_e_0_pl_clk0),
        .AXI_RSTn(rst_ps8_0_99M_peripheral_aresetn),
        .S_AXI_araddr(ps8_0_axi_periph_M14_AXI_ARADDR),
        .S_AXI_arprot(ps8_0_axi_periph_M14_AXI_ARPROT),
        .S_AXI_arready(ps8_0_axi_periph_M14_AXI_ARREADY),
        .S_AXI_arvalid(ps8_0_axi_periph_M14_AXI_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_M14_AXI_AWADDR),
        .S_AXI_awprot(ps8_0_axi_periph_M14_AXI_AWPROT),
        .S_AXI_awready(ps8_0_axi_periph_M14_AXI_AWREADY),
        .S_AXI_awvalid(ps8_0_axi_periph_M14_AXI_AWVALID),
        .S_AXI_bready(ps8_0_axi_periph_M14_AXI_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_M14_AXI_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_M14_AXI_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_M14_AXI_RDATA),
        .S_AXI_rready(ps8_0_axi_periph_M14_AXI_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_M14_AXI_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_M14_AXI_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_M14_AXI_WDATA),
        .S_AXI_wready(ps8_0_axi_periph_M14_AXI_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_M14_AXI_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_M14_AXI_WVALID));
  design_1_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_interconnect_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arburst(ps8_0_axi_periph_M00_AXI_ARBURST),
        .M00_AXI_arcache(ps8_0_axi_periph_M00_AXI_ARCACHE),
        .M00_AXI_arlen(ps8_0_axi_periph_M00_AXI_ARLEN),
        .M00_AXI_arlock(ps8_0_axi_periph_M00_AXI_ARLOCK),
        .M00_AXI_arprot(ps8_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arsize(ps8_0_axi_periph_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awburst(ps8_0_axi_periph_M00_AXI_AWBURST),
        .M00_AXI_awcache(ps8_0_axi_periph_M00_AXI_AWCACHE),
        .M00_AXI_awlen(ps8_0_axi_periph_M00_AXI_AWLEN),
        .M00_AXI_awlock(ps8_0_axi_periph_M00_AXI_AWLOCK),
        .M00_AXI_awprot(ps8_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awsize(ps8_0_axi_periph_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rlast(ps8_0_axi_periph_M00_AXI_RLAST),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wlast(ps8_0_axi_periph_M00_AXI_WLAST),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M01_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(ps8_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(ps8_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M02_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M02_AXI_arready(1'b0),
        .M02_AXI_awready(1'b0),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bresp(1'b0),
        .M02_AXI_bvalid(1'b0),
        .M02_AXI_rdata(1'b0),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rresp(1'b0),
        .M02_AXI_rvalid(1'b0),
        .M02_AXI_wready(1'b0),
        .M03_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M03_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arprot(ps8_0_axi_periph_M03_AXI_ARPROT),
        .M03_AXI_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awprot(ps8_0_axi_periph_M03_AXI_AWPROT),
        .M03_AXI_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M04_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arprot(ps8_0_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awprot(ps8_0_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M05_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M05_AXI_araddr(S00_AXI_1_ARADDR),
        .M05_AXI_arprot(S00_AXI_1_ARPROT),
        .M05_AXI_arready(S00_AXI_1_ARREADY),
        .M05_AXI_arvalid(S00_AXI_1_ARVALID),
        .M05_AXI_awaddr(S00_AXI_1_AWADDR),
        .M05_AXI_awprot(S00_AXI_1_AWPROT),
        .M05_AXI_awready(S00_AXI_1_AWREADY),
        .M05_AXI_awvalid(S00_AXI_1_AWVALID),
        .M05_AXI_bready(S00_AXI_1_BREADY),
        .M05_AXI_bresp(S00_AXI_1_BRESP),
        .M05_AXI_bvalid(S00_AXI_1_BVALID),
        .M05_AXI_rdata(S00_AXI_1_RDATA),
        .M05_AXI_rready(S00_AXI_1_RREADY),
        .M05_AXI_rresp(S00_AXI_1_RRESP),
        .M05_AXI_rvalid(S00_AXI_1_RVALID),
        .M05_AXI_wdata(S00_AXI_1_WDATA),
        .M05_AXI_wready(S00_AXI_1_WREADY),
        .M05_AXI_wstrb(S00_AXI_1_WSTRB),
        .M05_AXI_wvalid(S00_AXI_1_WVALID),
        .M06_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M06_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M06_AXI_araddr(S00_AXI1_1_ARADDR),
        .M06_AXI_arprot(S00_AXI1_1_ARPROT),
        .M06_AXI_arready(S00_AXI1_1_ARREADY),
        .M06_AXI_arvalid(S00_AXI1_1_ARVALID),
        .M06_AXI_awaddr(S00_AXI1_1_AWADDR),
        .M06_AXI_awprot(S00_AXI1_1_AWPROT),
        .M06_AXI_awready(S00_AXI1_1_AWREADY),
        .M06_AXI_awvalid(S00_AXI1_1_AWVALID),
        .M06_AXI_bready(S00_AXI1_1_BREADY),
        .M06_AXI_bresp(S00_AXI1_1_BRESP),
        .M06_AXI_bvalid(S00_AXI1_1_BVALID),
        .M06_AXI_rdata(S00_AXI1_1_RDATA),
        .M06_AXI_rready(S00_AXI1_1_RREADY),
        .M06_AXI_rresp(S00_AXI1_1_RRESP),
        .M06_AXI_rvalid(S00_AXI1_1_RVALID),
        .M06_AXI_wdata(S00_AXI1_1_WDATA),
        .M06_AXI_wready(S00_AXI1_1_WREADY),
        .M06_AXI_wstrb(S00_AXI1_1_WSTRB),
        .M06_AXI_wvalid(S00_AXI1_1_WVALID),
        .M07_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M07_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M07_AXI_araddr(S00_AXI_2_ARADDR),
        .M07_AXI_arprot(S00_AXI_2_ARPROT),
        .M07_AXI_arready(S00_AXI_2_ARREADY),
        .M07_AXI_arvalid(S00_AXI_2_ARVALID),
        .M07_AXI_awaddr(S00_AXI_2_AWADDR),
        .M07_AXI_awprot(S00_AXI_2_AWPROT),
        .M07_AXI_awready(S00_AXI_2_AWREADY),
        .M07_AXI_awvalid(S00_AXI_2_AWVALID),
        .M07_AXI_bready(S00_AXI_2_BREADY),
        .M07_AXI_bresp(S00_AXI_2_BRESP),
        .M07_AXI_bvalid(S00_AXI_2_BVALID),
        .M07_AXI_rdata(S00_AXI_2_RDATA),
        .M07_AXI_rready(S00_AXI_2_RREADY),
        .M07_AXI_rresp(S00_AXI_2_RRESP),
        .M07_AXI_rvalid(S00_AXI_2_RVALID),
        .M07_AXI_wdata(S00_AXI_2_WDATA),
        .M07_AXI_wready(S00_AXI_2_WREADY),
        .M07_AXI_wstrb(S00_AXI_2_WSTRB),
        .M07_AXI_wvalid(S00_AXI_2_WVALID),
        .M08_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M08_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M08_AXI_araddr(S00_AXI1_2_ARADDR),
        .M08_AXI_arprot(S00_AXI1_2_ARPROT),
        .M08_AXI_arready(S00_AXI1_2_ARREADY),
        .M08_AXI_arvalid(S00_AXI1_2_ARVALID),
        .M08_AXI_awaddr(S00_AXI1_2_AWADDR),
        .M08_AXI_awprot(S00_AXI1_2_AWPROT),
        .M08_AXI_awready(S00_AXI1_2_AWREADY),
        .M08_AXI_awvalid(S00_AXI1_2_AWVALID),
        .M08_AXI_bready(S00_AXI1_2_BREADY),
        .M08_AXI_bresp(S00_AXI1_2_BRESP),
        .M08_AXI_bvalid(S00_AXI1_2_BVALID),
        .M08_AXI_rdata(S00_AXI1_2_RDATA),
        .M08_AXI_rready(S00_AXI1_2_RREADY),
        .M08_AXI_rresp(S00_AXI1_2_RRESP),
        .M08_AXI_rvalid(S00_AXI1_2_RVALID),
        .M08_AXI_wdata(S00_AXI1_2_WDATA),
        .M08_AXI_wready(S00_AXI1_2_WREADY),
        .M08_AXI_wstrb(S00_AXI1_2_WSTRB),
        .M08_AXI_wvalid(S00_AXI1_2_WVALID),
        .M09_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M09_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M09_AXI_araddr(S00_AXI_3_ARADDR),
        .M09_AXI_arprot(S00_AXI_3_ARPROT),
        .M09_AXI_arready(S00_AXI_3_ARREADY),
        .M09_AXI_arvalid(S00_AXI_3_ARVALID),
        .M09_AXI_awaddr(S00_AXI_3_AWADDR),
        .M09_AXI_awprot(S00_AXI_3_AWPROT),
        .M09_AXI_awready(S00_AXI_3_AWREADY),
        .M09_AXI_awvalid(S00_AXI_3_AWVALID),
        .M09_AXI_bready(S00_AXI_3_BREADY),
        .M09_AXI_bresp(S00_AXI_3_BRESP),
        .M09_AXI_bvalid(S00_AXI_3_BVALID),
        .M09_AXI_rdata(S00_AXI_3_RDATA),
        .M09_AXI_rready(S00_AXI_3_RREADY),
        .M09_AXI_rresp(S00_AXI_3_RRESP),
        .M09_AXI_rvalid(S00_AXI_3_RVALID),
        .M09_AXI_wdata(S00_AXI_3_WDATA),
        .M09_AXI_wready(S00_AXI_3_WREADY),
        .M09_AXI_wstrb(S00_AXI_3_WSTRB),
        .M09_AXI_wvalid(S00_AXI_3_WVALID),
        .M10_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M10_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M10_AXI_araddr(S00_AXI1_3_ARADDR),
        .M10_AXI_arprot(S00_AXI1_3_ARPROT),
        .M10_AXI_arready(S00_AXI1_3_ARREADY),
        .M10_AXI_arvalid(S00_AXI1_3_ARVALID),
        .M10_AXI_awaddr(S00_AXI1_3_AWADDR),
        .M10_AXI_awprot(S00_AXI1_3_AWPROT),
        .M10_AXI_awready(S00_AXI1_3_AWREADY),
        .M10_AXI_awvalid(S00_AXI1_3_AWVALID),
        .M10_AXI_bready(S00_AXI1_3_BREADY),
        .M10_AXI_bresp(S00_AXI1_3_BRESP),
        .M10_AXI_bvalid(S00_AXI1_3_BVALID),
        .M10_AXI_rdata(S00_AXI1_3_RDATA),
        .M10_AXI_rready(S00_AXI1_3_RREADY),
        .M10_AXI_rresp(S00_AXI1_3_RRESP),
        .M10_AXI_rvalid(S00_AXI1_3_RVALID),
        .M10_AXI_wdata(S00_AXI1_3_WDATA),
        .M10_AXI_wready(S00_AXI1_3_WREADY),
        .M10_AXI_wstrb(S00_AXI1_3_WSTRB),
        .M10_AXI_wvalid(S00_AXI1_3_WVALID),
        .M11_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M11_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M11_AXI_araddr(ps8_0_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arready(ps8_0_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(ps8_0_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(ps8_0_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awready(ps8_0_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(ps8_0_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(ps8_0_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(ps8_0_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(ps8_0_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(ps8_0_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(ps8_0_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(ps8_0_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(ps8_0_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(ps8_0_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(ps8_0_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(ps8_0_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(ps8_0_axi_periph_M11_AXI_WVALID),
        .M12_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M12_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M12_AXI_araddr(ps8_0_axi_periph_M12_AXI_ARADDR),
        .M12_AXI_arprot(ps8_0_axi_periph_M12_AXI_ARPROT),
        .M12_AXI_arready(ps8_0_axi_periph_M12_AXI_ARREADY),
        .M12_AXI_arvalid(ps8_0_axi_periph_M12_AXI_ARVALID),
        .M12_AXI_awaddr(ps8_0_axi_periph_M12_AXI_AWADDR),
        .M12_AXI_awprot(ps8_0_axi_periph_M12_AXI_AWPROT),
        .M12_AXI_awready(ps8_0_axi_periph_M12_AXI_AWREADY),
        .M12_AXI_awvalid(ps8_0_axi_periph_M12_AXI_AWVALID),
        .M12_AXI_bready(ps8_0_axi_periph_M12_AXI_BREADY),
        .M12_AXI_bresp(ps8_0_axi_periph_M12_AXI_BRESP),
        .M12_AXI_bvalid(ps8_0_axi_periph_M12_AXI_BVALID),
        .M12_AXI_rdata(ps8_0_axi_periph_M12_AXI_RDATA),
        .M12_AXI_rready(ps8_0_axi_periph_M12_AXI_RREADY),
        .M12_AXI_rresp(ps8_0_axi_periph_M12_AXI_RRESP),
        .M12_AXI_rvalid(ps8_0_axi_periph_M12_AXI_RVALID),
        .M12_AXI_wdata(ps8_0_axi_periph_M12_AXI_WDATA),
        .M12_AXI_wready(ps8_0_axi_periph_M12_AXI_WREADY),
        .M12_AXI_wstrb(ps8_0_axi_periph_M12_AXI_WSTRB),
        .M12_AXI_wvalid(ps8_0_axi_periph_M12_AXI_WVALID),
        .M13_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M13_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M13_AXI_araddr(ps8_0_axi_periph_M13_AXI_ARADDR),
        .M13_AXI_arready(ps8_0_axi_periph_M13_AXI_ARREADY),
        .M13_AXI_arvalid(ps8_0_axi_periph_M13_AXI_ARVALID),
        .M13_AXI_awaddr(ps8_0_axi_periph_M13_AXI_AWADDR),
        .M13_AXI_awready(ps8_0_axi_periph_M13_AXI_AWREADY),
        .M13_AXI_awvalid(ps8_0_axi_periph_M13_AXI_AWVALID),
        .M13_AXI_bready(ps8_0_axi_periph_M13_AXI_BREADY),
        .M13_AXI_bresp(ps8_0_axi_periph_M13_AXI_BRESP),
        .M13_AXI_bvalid(ps8_0_axi_periph_M13_AXI_BVALID),
        .M13_AXI_rdata(ps8_0_axi_periph_M13_AXI_RDATA),
        .M13_AXI_rready(ps8_0_axi_periph_M13_AXI_RREADY),
        .M13_AXI_rresp(ps8_0_axi_periph_M13_AXI_RRESP),
        .M13_AXI_rvalid(ps8_0_axi_periph_M13_AXI_RVALID),
        .M13_AXI_wdata(ps8_0_axi_periph_M13_AXI_WDATA),
        .M13_AXI_wready(ps8_0_axi_periph_M13_AXI_WREADY),
        .M13_AXI_wstrb(ps8_0_axi_periph_M13_AXI_WSTRB),
        .M13_AXI_wvalid(ps8_0_axi_periph_M13_AXI_WVALID),
        .M14_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M14_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M14_AXI_araddr(ps8_0_axi_periph_M14_AXI_ARADDR),
        .M14_AXI_arprot(ps8_0_axi_periph_M14_AXI_ARPROT),
        .M14_AXI_arready(ps8_0_axi_periph_M14_AXI_ARREADY),
        .M14_AXI_arvalid(ps8_0_axi_periph_M14_AXI_ARVALID),
        .M14_AXI_awaddr(ps8_0_axi_periph_M14_AXI_AWADDR),
        .M14_AXI_awprot(ps8_0_axi_periph_M14_AXI_AWPROT),
        .M14_AXI_awready(ps8_0_axi_periph_M14_AXI_AWREADY),
        .M14_AXI_awvalid(ps8_0_axi_periph_M14_AXI_AWVALID),
        .M14_AXI_bready(ps8_0_axi_periph_M14_AXI_BREADY),
        .M14_AXI_bresp(ps8_0_axi_periph_M14_AXI_BRESP),
        .M14_AXI_bvalid(ps8_0_axi_periph_M14_AXI_BVALID),
        .M14_AXI_rdata(ps8_0_axi_periph_M14_AXI_RDATA),
        .M14_AXI_rready(ps8_0_axi_periph_M14_AXI_RREADY),
        .M14_AXI_rresp(ps8_0_axi_periph_M14_AXI_RRESP),
        .M14_AXI_rvalid(ps8_0_axi_periph_M14_AXI_RVALID),
        .M14_AXI_wdata(ps8_0_axi_periph_M14_AXI_WDATA),
        .M14_AXI_wready(ps8_0_axi_periph_M14_AXI_WREADY),
        .M14_AXI_wstrb(ps8_0_axi_periph_M14_AXI_WSTRB),
        .M14_AXI_wvalid(ps8_0_axi_periph_M14_AXI_WVALID),
        .M15_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M15_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M15_AXI_araddr(ps8_0_axi_periph_M15_AXI_ARADDR),
        .M15_AXI_arburst(ps8_0_axi_periph_M15_AXI_ARBURST),
        .M15_AXI_arcache(ps8_0_axi_periph_M15_AXI_ARCACHE),
        .M15_AXI_arlen(ps8_0_axi_periph_M15_AXI_ARLEN),
        .M15_AXI_arlock(ps8_0_axi_periph_M15_AXI_ARLOCK),
        .M15_AXI_arprot(ps8_0_axi_periph_M15_AXI_ARPROT),
        .M15_AXI_arready(ps8_0_axi_periph_M15_AXI_ARREADY),
        .M15_AXI_arsize(ps8_0_axi_periph_M15_AXI_ARSIZE),
        .M15_AXI_arvalid(ps8_0_axi_periph_M15_AXI_ARVALID),
        .M15_AXI_awaddr(ps8_0_axi_periph_M15_AXI_AWADDR),
        .M15_AXI_awburst(ps8_0_axi_periph_M15_AXI_AWBURST),
        .M15_AXI_awcache(ps8_0_axi_periph_M15_AXI_AWCACHE),
        .M15_AXI_awlen(ps8_0_axi_periph_M15_AXI_AWLEN),
        .M15_AXI_awlock(ps8_0_axi_periph_M15_AXI_AWLOCK),
        .M15_AXI_awprot(ps8_0_axi_periph_M15_AXI_AWPROT),
        .M15_AXI_awready(ps8_0_axi_periph_M15_AXI_AWREADY),
        .M15_AXI_awsize(ps8_0_axi_periph_M15_AXI_AWSIZE),
        .M15_AXI_awvalid(ps8_0_axi_periph_M15_AXI_AWVALID),
        .M15_AXI_bready(ps8_0_axi_periph_M15_AXI_BREADY),
        .M15_AXI_bresp(ps8_0_axi_periph_M15_AXI_BRESP),
        .M15_AXI_bvalid(ps8_0_axi_periph_M15_AXI_BVALID),
        .M15_AXI_rdata(ps8_0_axi_periph_M15_AXI_RDATA),
        .M15_AXI_rlast(ps8_0_axi_periph_M15_AXI_RLAST),
        .M15_AXI_rready(ps8_0_axi_periph_M15_AXI_RREADY),
        .M15_AXI_rresp(ps8_0_axi_periph_M15_AXI_RRESP),
        .M15_AXI_rvalid(ps8_0_axi_periph_M15_AXI_RVALID),
        .M15_AXI_wdata(ps8_0_axi_periph_M15_AXI_WDATA),
        .M15_AXI_wlast(ps8_0_axi_periph_M15_AXI_WLAST),
        .M15_AXI_wready(ps8_0_axi_periph_M15_AXI_WREADY),
        .M15_AXI_wstrb(ps8_0_axi_periph_M15_AXI_WSTRB),
        .M15_AXI_wvalid(ps8_0_axi_periph_M15_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_1_reg_bank_64_0_0 reg_bank_64_0
       (.reg_ro(reg_ro_0_1),
        .reg_rw(reg_bank_64_0_reg_rw),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(ps8_0_axi_periph_M12_AXI_ARADDR[7:0]),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arprot(ps8_0_axi_periph_M12_AXI_ARPROT),
        .s00_axi_arready(ps8_0_axi_periph_M12_AXI_ARREADY),
        .s00_axi_arvalid(ps8_0_axi_periph_M12_AXI_ARVALID),
        .s00_axi_awaddr(ps8_0_axi_periph_M12_AXI_AWADDR[7:0]),
        .s00_axi_awprot(ps8_0_axi_periph_M12_AXI_AWPROT),
        .s00_axi_awready(ps8_0_axi_periph_M12_AXI_AWREADY),
        .s00_axi_awvalid(ps8_0_axi_periph_M12_AXI_AWVALID),
        .s00_axi_bready(ps8_0_axi_periph_M12_AXI_BREADY),
        .s00_axi_bresp(ps8_0_axi_periph_M12_AXI_BRESP),
        .s00_axi_bvalid(ps8_0_axi_periph_M12_AXI_BVALID),
        .s00_axi_rdata(ps8_0_axi_periph_M12_AXI_RDATA),
        .s00_axi_rready(ps8_0_axi_periph_M12_AXI_RREADY),
        .s00_axi_rresp(ps8_0_axi_periph_M12_AXI_RRESP),
        .s00_axi_rvalid(ps8_0_axi_periph_M12_AXI_RVALID),
        .s00_axi_wdata(ps8_0_axi_periph_M12_AXI_WDATA),
        .s00_axi_wready(ps8_0_axi_periph_M12_AXI_WREADY),
        .s00_axi_wstrb(ps8_0_axi_periph_M12_AXI_WSTRB),
        .s00_axi_wvalid(ps8_0_axi_periph_M12_AXI_WVALID));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rst_ps8_0_99M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  timing_module_imp_2RES6C timing_module
       (.Din(reg_bank_64_0_reg_rw),
        .cmd_bit_act(timing_module_cmd_bit_act),
        .cmd_bit_adc_reset(timing_module_cmd_bit_adc_reset),
        .cmd_bit_edge(timing_module_cmd_bit_edge),
        .cmd_bit_idle(timing_module_cmd_bit_idle),
        .cmd_bit_reset(timing_module_cmd_bit_reset),
        .cmd_bit_sync(timing_module_cmd_bit_sync),
        .cmd_code_act_0(cmd_code_act_0_1),
        .cmd_code_adc_reset_0(cmd_code_adc_reset_0_1),
        .cmd_code_edge_0(cmd_code_edge_0_1),
        .cmd_code_idle_0(cmd_code_idle_0_1),
        .cmd_code_reset_0(cmd_code_reset_0_1),
        .cmd_code_sync_0(cmd_code_sync_0_1),
        .fake_time_stamp_en_0(fake_time_stamp_en_0_1),
        .fake_time_stamp_init_0(fake_time_stamp_init_0_1),
        .probe15(coldata_fast_cmd_0_fastcommand_out),
        .sclk(zynq_ultra_ps_e_0_pl_clk0),
        .stat_0(timing_module_stat_0),
        .ts_cdr_lol(cdr_lol_0_1),
        .ts_cdr_los(cdr_los_0_1),
        .ts_clk(pdts_endpoint_0_clk),
        .ts_evtctr(pdts_endpoint_0_evtctr),
        .ts_rdy(pdts_endpoint_0_rdy),
        .ts_rec_clk_locked(rec_clk_locked_0_1),
        .ts_rec_d(rec_d_0_1),
        .ts_rec_d_clk(rec_d_clk_0_1),
        .ts_rst(pdts_endpoint_0_rst),
        .ts_sfp_los(sfp_los_0_1),
        .ts_sync(pdts_endpoint_0_sync),
        .ts_sync_v(pdts_endpoint_0_sync_v),
        .ts_tstamp(pdts_endpoint_0_tstamp),
        .ts_valid_0(timing_module_ts_valid_0),
        .tx_dis_0(timing_module_tx_dis_0),
        .txd_0(timing_module_txd_0));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(axi_iic_0_iic2intc_irpt),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

module design_1_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arregion,
    M02_AXI_arsize,
    M02_AXI_aruser,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awregion,
    M02_AXI_awsize,
    M02_AXI_awuser,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arprot,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awprot,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arprot,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awprot,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arburst,
    M15_AXI_arcache,
    M15_AXI_arlen,
    M15_AXI_arlock,
    M15_AXI_arprot,
    M15_AXI_arready,
    M15_AXI_arsize,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awburst,
    M15_AXI_awcache,
    M15_AXI_awlen,
    M15_AXI_awlock,
    M15_AXI_awprot,
    M15_AXI_awready,
    M15_AXI_awsize,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rlast,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wlast,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [19:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [19:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output M02_AXI_araddr;
  output M02_AXI_arburst;
  output M02_AXI_arcache;
  output M02_AXI_arid;
  output M02_AXI_arlen;
  output M02_AXI_arlock;
  output M02_AXI_arprot;
  output M02_AXI_arqos;
  input M02_AXI_arready;
  output M02_AXI_arregion;
  output M02_AXI_arsize;
  output M02_AXI_aruser;
  output M02_AXI_arvalid;
  output M02_AXI_awaddr;
  output M02_AXI_awburst;
  output M02_AXI_awcache;
  output M02_AXI_awid;
  output M02_AXI_awlen;
  output M02_AXI_awlock;
  output M02_AXI_awprot;
  output M02_AXI_awqos;
  input M02_AXI_awready;
  output M02_AXI_awregion;
  output M02_AXI_awsize;
  output M02_AXI_awuser;
  output M02_AXI_awvalid;
  input M02_AXI_bid;
  output M02_AXI_bready;
  input M02_AXI_bresp;
  input M02_AXI_bvalid;
  input M02_AXI_rdata;
  input M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input M02_AXI_rresp;
  input M02_AXI_rvalid;
  output M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [39:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [39:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [39:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [39:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [39:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [39:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [39:0]M09_AXI_araddr;
  output [2:0]M09_AXI_arprot;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [39:0]M09_AXI_awaddr;
  output [2:0]M09_AXI_awprot;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [39:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [39:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [39:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [39:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [39:0]M12_AXI_araddr;
  output [2:0]M12_AXI_arprot;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [39:0]M12_AXI_awaddr;
  output [2:0]M12_AXI_awprot;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [39:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [39:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [15:0]M14_AXI_araddr;
  output [2:0]M14_AXI_arprot;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [15:0]M14_AXI_awaddr;
  output [2:0]M14_AXI_awprot;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output [19:0]M15_AXI_araddr;
  output [1:0]M15_AXI_arburst;
  output [3:0]M15_AXI_arcache;
  output [7:0]M15_AXI_arlen;
  output [0:0]M15_AXI_arlock;
  output [2:0]M15_AXI_arprot;
  input M15_AXI_arready;
  output [2:0]M15_AXI_arsize;
  output M15_AXI_arvalid;
  output [19:0]M15_AXI_awaddr;
  output [1:0]M15_AXI_awburst;
  output [3:0]M15_AXI_awcache;
  output [7:0]M15_AXI_awlen;
  output [0:0]M15_AXI_awlock;
  output [2:0]M15_AXI_awprot;
  input M15_AXI_awready;
  output [2:0]M15_AXI_awsize;
  output M15_AXI_awvalid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  input M15_AXI_rlast;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  output M15_AXI_wlast;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire M10_ACLK_1;
  wire M10_ARESETN_1;
  wire M11_ACLK_1;
  wire M11_ARESETN_1;
  wire M12_ACLK_1;
  wire M12_ARESETN_1;
  wire M13_ACLK_1;
  wire M13_ARESETN_1;
  wire M14_ACLK_1;
  wire M14_ARESETN_1;
  wire M15_ACLK_1;
  wire M15_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [19:0]m00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_ARBURST;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_ARCACHE;
  wire [7:0]m00_couplers_to_ps8_0_axi_periph_ARLEN;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_ARLOCK;
  wire [2:0]m00_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [2:0]m00_couplers_to_ps8_0_axi_periph_ARSIZE;
  wire m00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [19:0]m00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_AWBURST;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_AWCACHE;
  wire [7:0]m00_couplers_to_ps8_0_axi_periph_AWLEN;
  wire [0:0]m00_couplers_to_ps8_0_axi_periph_AWLOCK;
  wire [2:0]m00_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [2:0]m00_couplers_to_ps8_0_axi_periph_AWSIZE;
  wire m00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_BRESP;
  wire m00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_RDATA;
  wire m00_couplers_to_ps8_0_axi_periph_RLAST;
  wire m00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_RRESP;
  wire m00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_WDATA;
  wire m00_couplers_to_ps8_0_axi_periph_WLAST;
  wire m00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m00_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m01_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m01_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_BRESP;
  wire m01_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_RDATA;
  wire m01_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_RRESP;
  wire m01_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_WDATA;
  wire m01_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m01_couplers_to_ps8_0_axi_periph_WVALID;
  wire m02_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m02_couplers_to_ps8_0_axi_periph_ARBURST;
  wire m02_couplers_to_ps8_0_axi_periph_ARCACHE;
  wire m02_couplers_to_ps8_0_axi_periph_ARID;
  wire m02_couplers_to_ps8_0_axi_periph_ARLEN;
  wire m02_couplers_to_ps8_0_axi_periph_ARLOCK;
  wire m02_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m02_couplers_to_ps8_0_axi_periph_ARQOS;
  wire m02_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m02_couplers_to_ps8_0_axi_periph_ARREGION;
  wire m02_couplers_to_ps8_0_axi_periph_ARSIZE;
  wire m02_couplers_to_ps8_0_axi_periph_ARUSER;
  wire m02_couplers_to_ps8_0_axi_periph_ARVALID;
  wire m02_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m02_couplers_to_ps8_0_axi_periph_AWBURST;
  wire m02_couplers_to_ps8_0_axi_periph_AWCACHE;
  wire m02_couplers_to_ps8_0_axi_periph_AWID;
  wire m02_couplers_to_ps8_0_axi_periph_AWLEN;
  wire m02_couplers_to_ps8_0_axi_periph_AWLOCK;
  wire m02_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m02_couplers_to_ps8_0_axi_periph_AWQOS;
  wire m02_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m02_couplers_to_ps8_0_axi_periph_AWREGION;
  wire m02_couplers_to_ps8_0_axi_periph_AWSIZE;
  wire m02_couplers_to_ps8_0_axi_periph_AWUSER;
  wire m02_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m02_couplers_to_ps8_0_axi_periph_BID;
  wire m02_couplers_to_ps8_0_axi_periph_BREADY;
  wire m02_couplers_to_ps8_0_axi_periph_BRESP;
  wire m02_couplers_to_ps8_0_axi_periph_BVALID;
  wire m02_couplers_to_ps8_0_axi_periph_RDATA;
  wire m02_couplers_to_ps8_0_axi_periph_RID;
  wire m02_couplers_to_ps8_0_axi_periph_RLAST;
  wire m02_couplers_to_ps8_0_axi_periph_RREADY;
  wire m02_couplers_to_ps8_0_axi_periph_RRESP;
  wire m02_couplers_to_ps8_0_axi_periph_RVALID;
  wire m02_couplers_to_ps8_0_axi_periph_WDATA;
  wire m02_couplers_to_ps8_0_axi_periph_WLAST;
  wire m02_couplers_to_ps8_0_axi_periph_WREADY;
  wire m02_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m02_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m03_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m03_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m03_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m03_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m03_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_BRESP;
  wire m03_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_RDATA;
  wire m03_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_RRESP;
  wire m03_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_WDATA;
  wire m03_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m03_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m04_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m04_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_BRESP;
  wire m04_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_RDATA;
  wire m04_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_RRESP;
  wire m04_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_WDATA;
  wire m04_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m05_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m05_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m05_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m05_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m05_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m05_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m05_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m05_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_BRESP;
  wire m05_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_RDATA;
  wire m05_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_ps8_0_axi_periph_RRESP;
  wire m05_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_ps8_0_axi_periph_WDATA;
  wire m05_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m05_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m06_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m06_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m06_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m06_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m06_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m06_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m06_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m06_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_BRESP;
  wire m06_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_RDATA;
  wire m06_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_ps8_0_axi_periph_RRESP;
  wire m06_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_ps8_0_axi_periph_WDATA;
  wire m06_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m06_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m07_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m07_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m07_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m07_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m07_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m07_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m07_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m07_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_BRESP;
  wire m07_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_RDATA;
  wire m07_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_ps8_0_axi_periph_RRESP;
  wire m07_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_ps8_0_axi_periph_WDATA;
  wire m07_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m07_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m08_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m08_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m08_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m08_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m08_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m08_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m08_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m08_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_BRESP;
  wire m08_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_RDATA;
  wire m08_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_ps8_0_axi_periph_RRESP;
  wire m08_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_ps8_0_axi_periph_WDATA;
  wire m08_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m08_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m09_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m09_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m09_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m09_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m09_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m09_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m09_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m09_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m09_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_ps8_0_axi_periph_BRESP;
  wire m09_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_ps8_0_axi_periph_RDATA;
  wire m09_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_ps8_0_axi_periph_RRESP;
  wire m09_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_ps8_0_axi_periph_WDATA;
  wire m09_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m09_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m10_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m10_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m10_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m10_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m10_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m10_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m10_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m10_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m10_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m10_couplers_to_ps8_0_axi_periph_BRESP;
  wire m10_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m10_couplers_to_ps8_0_axi_periph_RDATA;
  wire m10_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m10_couplers_to_ps8_0_axi_periph_RRESP;
  wire m10_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m10_couplers_to_ps8_0_axi_periph_WDATA;
  wire m10_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m10_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m10_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m11_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m11_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m11_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m11_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m11_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m11_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m11_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m11_couplers_to_ps8_0_axi_periph_BRESP;
  wire m11_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m11_couplers_to_ps8_0_axi_periph_RDATA;
  wire m11_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m11_couplers_to_ps8_0_axi_periph_RRESP;
  wire m11_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m11_couplers_to_ps8_0_axi_periph_WDATA;
  wire m11_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m11_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m11_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m12_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m12_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m12_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m12_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m12_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m12_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m12_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m12_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m12_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m12_couplers_to_ps8_0_axi_periph_BRESP;
  wire m12_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m12_couplers_to_ps8_0_axi_periph_RDATA;
  wire m12_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m12_couplers_to_ps8_0_axi_periph_RRESP;
  wire m12_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m12_couplers_to_ps8_0_axi_periph_WDATA;
  wire m12_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m12_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m12_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m13_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m13_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m13_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m13_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m13_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m13_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m13_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m13_couplers_to_ps8_0_axi_periph_BRESP;
  wire m13_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m13_couplers_to_ps8_0_axi_periph_RDATA;
  wire m13_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m13_couplers_to_ps8_0_axi_periph_RRESP;
  wire m13_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m13_couplers_to_ps8_0_axi_periph_WDATA;
  wire m13_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m13_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m13_couplers_to_ps8_0_axi_periph_WVALID;
  wire [15:0]m14_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [2:0]m14_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m14_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m14_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [15:0]m14_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [2:0]m14_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m14_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m14_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m14_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m14_couplers_to_ps8_0_axi_periph_BRESP;
  wire m14_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m14_couplers_to_ps8_0_axi_periph_RDATA;
  wire m14_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m14_couplers_to_ps8_0_axi_periph_RRESP;
  wire m14_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m14_couplers_to_ps8_0_axi_periph_WDATA;
  wire m14_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m14_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m14_couplers_to_ps8_0_axi_periph_WVALID;
  wire [19:0]m15_couplers_to_ps8_0_axi_periph_ARADDR;
  wire [1:0]m15_couplers_to_ps8_0_axi_periph_ARBURST;
  wire [3:0]m15_couplers_to_ps8_0_axi_periph_ARCACHE;
  wire [7:0]m15_couplers_to_ps8_0_axi_periph_ARLEN;
  wire [0:0]m15_couplers_to_ps8_0_axi_periph_ARLOCK;
  wire [2:0]m15_couplers_to_ps8_0_axi_periph_ARPROT;
  wire m15_couplers_to_ps8_0_axi_periph_ARREADY;
  wire [2:0]m15_couplers_to_ps8_0_axi_periph_ARSIZE;
  wire m15_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [19:0]m15_couplers_to_ps8_0_axi_periph_AWADDR;
  wire [1:0]m15_couplers_to_ps8_0_axi_periph_AWBURST;
  wire [3:0]m15_couplers_to_ps8_0_axi_periph_AWCACHE;
  wire [7:0]m15_couplers_to_ps8_0_axi_periph_AWLEN;
  wire [0:0]m15_couplers_to_ps8_0_axi_periph_AWLOCK;
  wire [2:0]m15_couplers_to_ps8_0_axi_periph_AWPROT;
  wire m15_couplers_to_ps8_0_axi_periph_AWREADY;
  wire [2:0]m15_couplers_to_ps8_0_axi_periph_AWSIZE;
  wire m15_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m15_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m15_couplers_to_ps8_0_axi_periph_BRESP;
  wire m15_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m15_couplers_to_ps8_0_axi_periph_RDATA;
  wire m15_couplers_to_ps8_0_axi_periph_RLAST;
  wire m15_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m15_couplers_to_ps8_0_axi_periph_RRESP;
  wire m15_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m15_couplers_to_ps8_0_axi_periph_WDATA;
  wire m15_couplers_to_ps8_0_axi_periph_WLAST;
  wire m15_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m15_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m15_couplers_to_ps8_0_axi_periph_WVALID;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARUSER;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWUSER;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [127:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [15:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [15:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [15:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [15:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire [15:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [15:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [127:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [15:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [15:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [15:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [15:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [15:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [31:16]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [31:16]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [15:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [127:0]xbar_to_m01_couplers_RDATA;
  wire [15:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [255:128]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [31:16]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [47:32]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [47:32]xbar_to_m02_couplers_ARUSER;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [47:32]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [47:32]xbar_to_m02_couplers_AWUSER;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire xbar_to_m02_couplers_RDATA;
  wire xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [383:256]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [47:32]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [63:48]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [63:48]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [15:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [127:0]xbar_to_m03_couplers_RDATA;
  wire [15:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [511:384]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [63:48]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [79:64]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [79:64]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [15:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [127:0]xbar_to_m04_couplers_RDATA;
  wire [15:0]xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [639:512]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [79:64]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [95:80]xbar_to_m05_couplers_ARID;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [95:80]xbar_to_m05_couplers_AWID;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [15:0]xbar_to_m05_couplers_BID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [127:0]xbar_to_m05_couplers_RDATA;
  wire [15:0]xbar_to_m05_couplers_RID;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [767:640]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [95:80]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [111:96]xbar_to_m06_couplers_ARID;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [111:96]xbar_to_m06_couplers_AWID;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [15:0]xbar_to_m06_couplers_BID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [127:0]xbar_to_m06_couplers_RDATA;
  wire [15:0]xbar_to_m06_couplers_RID;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [895:768]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [111:96]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [127:112]xbar_to_m07_couplers_ARID;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [127:112]xbar_to_m07_couplers_AWID;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [15:0]xbar_to_m07_couplers_BID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [127:0]xbar_to_m07_couplers_RDATA;
  wire [15:0]xbar_to_m07_couplers_RID;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [1023:896]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [127:112]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [359:320]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [143:128]xbar_to_m08_couplers_ARID;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [35:32]xbar_to_m08_couplers_ARQOS;
  wire xbar_to_m08_couplers_ARREADY;
  wire [35:32]xbar_to_m08_couplers_ARREGION;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [359:320]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [143:128]xbar_to_m08_couplers_AWID;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [35:32]xbar_to_m08_couplers_AWQOS;
  wire xbar_to_m08_couplers_AWREADY;
  wire [35:32]xbar_to_m08_couplers_AWREGION;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [15:0]xbar_to_m08_couplers_BID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [127:0]xbar_to_m08_couplers_RDATA;
  wire [15:0]xbar_to_m08_couplers_RID;
  wire xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [1151:1024]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire xbar_to_m08_couplers_WREADY;
  wire [143:128]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [399:360]xbar_to_m09_couplers_ARADDR;
  wire [19:18]xbar_to_m09_couplers_ARBURST;
  wire [39:36]xbar_to_m09_couplers_ARCACHE;
  wire [159:144]xbar_to_m09_couplers_ARID;
  wire [79:72]xbar_to_m09_couplers_ARLEN;
  wire [9:9]xbar_to_m09_couplers_ARLOCK;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire [39:36]xbar_to_m09_couplers_ARQOS;
  wire xbar_to_m09_couplers_ARREADY;
  wire [39:36]xbar_to_m09_couplers_ARREGION;
  wire [29:27]xbar_to_m09_couplers_ARSIZE;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [399:360]xbar_to_m09_couplers_AWADDR;
  wire [19:18]xbar_to_m09_couplers_AWBURST;
  wire [39:36]xbar_to_m09_couplers_AWCACHE;
  wire [159:144]xbar_to_m09_couplers_AWID;
  wire [79:72]xbar_to_m09_couplers_AWLEN;
  wire [9:9]xbar_to_m09_couplers_AWLOCK;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire [39:36]xbar_to_m09_couplers_AWQOS;
  wire xbar_to_m09_couplers_AWREADY;
  wire [39:36]xbar_to_m09_couplers_AWREGION;
  wire [29:27]xbar_to_m09_couplers_AWSIZE;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [15:0]xbar_to_m09_couplers_BID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [127:0]xbar_to_m09_couplers_RDATA;
  wire [15:0]xbar_to_m09_couplers_RID;
  wire xbar_to_m09_couplers_RLAST;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [1279:1152]xbar_to_m09_couplers_WDATA;
  wire [9:9]xbar_to_m09_couplers_WLAST;
  wire xbar_to_m09_couplers_WREADY;
  wire [159:144]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [439:400]xbar_to_m10_couplers_ARADDR;
  wire [21:20]xbar_to_m10_couplers_ARBURST;
  wire [43:40]xbar_to_m10_couplers_ARCACHE;
  wire [175:160]xbar_to_m10_couplers_ARID;
  wire [87:80]xbar_to_m10_couplers_ARLEN;
  wire [10:10]xbar_to_m10_couplers_ARLOCK;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire [43:40]xbar_to_m10_couplers_ARQOS;
  wire xbar_to_m10_couplers_ARREADY;
  wire [43:40]xbar_to_m10_couplers_ARREGION;
  wire [32:30]xbar_to_m10_couplers_ARSIZE;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [439:400]xbar_to_m10_couplers_AWADDR;
  wire [21:20]xbar_to_m10_couplers_AWBURST;
  wire [43:40]xbar_to_m10_couplers_AWCACHE;
  wire [175:160]xbar_to_m10_couplers_AWID;
  wire [87:80]xbar_to_m10_couplers_AWLEN;
  wire [10:10]xbar_to_m10_couplers_AWLOCK;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire [43:40]xbar_to_m10_couplers_AWQOS;
  wire xbar_to_m10_couplers_AWREADY;
  wire [43:40]xbar_to_m10_couplers_AWREGION;
  wire [32:30]xbar_to_m10_couplers_AWSIZE;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [15:0]xbar_to_m10_couplers_BID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [127:0]xbar_to_m10_couplers_RDATA;
  wire [15:0]xbar_to_m10_couplers_RID;
  wire xbar_to_m10_couplers_RLAST;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [1407:1280]xbar_to_m10_couplers_WDATA;
  wire [10:10]xbar_to_m10_couplers_WLAST;
  wire xbar_to_m10_couplers_WREADY;
  wire [175:160]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [479:440]xbar_to_m11_couplers_ARADDR;
  wire [23:22]xbar_to_m11_couplers_ARBURST;
  wire [47:44]xbar_to_m11_couplers_ARCACHE;
  wire [191:176]xbar_to_m11_couplers_ARID;
  wire [95:88]xbar_to_m11_couplers_ARLEN;
  wire [11:11]xbar_to_m11_couplers_ARLOCK;
  wire [35:33]xbar_to_m11_couplers_ARPROT;
  wire [47:44]xbar_to_m11_couplers_ARQOS;
  wire xbar_to_m11_couplers_ARREADY;
  wire [47:44]xbar_to_m11_couplers_ARREGION;
  wire [35:33]xbar_to_m11_couplers_ARSIZE;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [479:440]xbar_to_m11_couplers_AWADDR;
  wire [23:22]xbar_to_m11_couplers_AWBURST;
  wire [47:44]xbar_to_m11_couplers_AWCACHE;
  wire [191:176]xbar_to_m11_couplers_AWID;
  wire [95:88]xbar_to_m11_couplers_AWLEN;
  wire [11:11]xbar_to_m11_couplers_AWLOCK;
  wire [35:33]xbar_to_m11_couplers_AWPROT;
  wire [47:44]xbar_to_m11_couplers_AWQOS;
  wire xbar_to_m11_couplers_AWREADY;
  wire [47:44]xbar_to_m11_couplers_AWREGION;
  wire [35:33]xbar_to_m11_couplers_AWSIZE;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [15:0]xbar_to_m11_couplers_BID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [127:0]xbar_to_m11_couplers_RDATA;
  wire [15:0]xbar_to_m11_couplers_RID;
  wire xbar_to_m11_couplers_RLAST;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [1535:1408]xbar_to_m11_couplers_WDATA;
  wire [11:11]xbar_to_m11_couplers_WLAST;
  wire xbar_to_m11_couplers_WREADY;
  wire [191:176]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [519:480]xbar_to_m12_couplers_ARADDR;
  wire [25:24]xbar_to_m12_couplers_ARBURST;
  wire [51:48]xbar_to_m12_couplers_ARCACHE;
  wire [207:192]xbar_to_m12_couplers_ARID;
  wire [103:96]xbar_to_m12_couplers_ARLEN;
  wire [12:12]xbar_to_m12_couplers_ARLOCK;
  wire [38:36]xbar_to_m12_couplers_ARPROT;
  wire [51:48]xbar_to_m12_couplers_ARQOS;
  wire xbar_to_m12_couplers_ARREADY;
  wire [51:48]xbar_to_m12_couplers_ARREGION;
  wire [38:36]xbar_to_m12_couplers_ARSIZE;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [519:480]xbar_to_m12_couplers_AWADDR;
  wire [25:24]xbar_to_m12_couplers_AWBURST;
  wire [51:48]xbar_to_m12_couplers_AWCACHE;
  wire [207:192]xbar_to_m12_couplers_AWID;
  wire [103:96]xbar_to_m12_couplers_AWLEN;
  wire [12:12]xbar_to_m12_couplers_AWLOCK;
  wire [38:36]xbar_to_m12_couplers_AWPROT;
  wire [51:48]xbar_to_m12_couplers_AWQOS;
  wire xbar_to_m12_couplers_AWREADY;
  wire [51:48]xbar_to_m12_couplers_AWREGION;
  wire [38:36]xbar_to_m12_couplers_AWSIZE;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [15:0]xbar_to_m12_couplers_BID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [127:0]xbar_to_m12_couplers_RDATA;
  wire [15:0]xbar_to_m12_couplers_RID;
  wire xbar_to_m12_couplers_RLAST;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [1663:1536]xbar_to_m12_couplers_WDATA;
  wire [12:12]xbar_to_m12_couplers_WLAST;
  wire xbar_to_m12_couplers_WREADY;
  wire [207:192]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [559:520]xbar_to_m13_couplers_ARADDR;
  wire [27:26]xbar_to_m13_couplers_ARBURST;
  wire [55:52]xbar_to_m13_couplers_ARCACHE;
  wire [223:208]xbar_to_m13_couplers_ARID;
  wire [111:104]xbar_to_m13_couplers_ARLEN;
  wire [13:13]xbar_to_m13_couplers_ARLOCK;
  wire [41:39]xbar_to_m13_couplers_ARPROT;
  wire [55:52]xbar_to_m13_couplers_ARQOS;
  wire xbar_to_m13_couplers_ARREADY;
  wire [55:52]xbar_to_m13_couplers_ARREGION;
  wire [41:39]xbar_to_m13_couplers_ARSIZE;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [559:520]xbar_to_m13_couplers_AWADDR;
  wire [27:26]xbar_to_m13_couplers_AWBURST;
  wire [55:52]xbar_to_m13_couplers_AWCACHE;
  wire [223:208]xbar_to_m13_couplers_AWID;
  wire [111:104]xbar_to_m13_couplers_AWLEN;
  wire [13:13]xbar_to_m13_couplers_AWLOCK;
  wire [41:39]xbar_to_m13_couplers_AWPROT;
  wire [55:52]xbar_to_m13_couplers_AWQOS;
  wire xbar_to_m13_couplers_AWREADY;
  wire [55:52]xbar_to_m13_couplers_AWREGION;
  wire [41:39]xbar_to_m13_couplers_AWSIZE;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [15:0]xbar_to_m13_couplers_BID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire [1:0]xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire [127:0]xbar_to_m13_couplers_RDATA;
  wire [15:0]xbar_to_m13_couplers_RID;
  wire xbar_to_m13_couplers_RLAST;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire [1:0]xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [1791:1664]xbar_to_m13_couplers_WDATA;
  wire [13:13]xbar_to_m13_couplers_WLAST;
  wire xbar_to_m13_couplers_WREADY;
  wire [223:208]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [599:560]xbar_to_m14_couplers_ARADDR;
  wire [29:28]xbar_to_m14_couplers_ARBURST;
  wire [59:56]xbar_to_m14_couplers_ARCACHE;
  wire [239:224]xbar_to_m14_couplers_ARID;
  wire [119:112]xbar_to_m14_couplers_ARLEN;
  wire [14:14]xbar_to_m14_couplers_ARLOCK;
  wire [44:42]xbar_to_m14_couplers_ARPROT;
  wire [59:56]xbar_to_m14_couplers_ARQOS;
  wire xbar_to_m14_couplers_ARREADY;
  wire [59:56]xbar_to_m14_couplers_ARREGION;
  wire [44:42]xbar_to_m14_couplers_ARSIZE;
  wire [14:14]xbar_to_m14_couplers_ARVALID;
  wire [599:560]xbar_to_m14_couplers_AWADDR;
  wire [29:28]xbar_to_m14_couplers_AWBURST;
  wire [59:56]xbar_to_m14_couplers_AWCACHE;
  wire [239:224]xbar_to_m14_couplers_AWID;
  wire [119:112]xbar_to_m14_couplers_AWLEN;
  wire [14:14]xbar_to_m14_couplers_AWLOCK;
  wire [44:42]xbar_to_m14_couplers_AWPROT;
  wire [59:56]xbar_to_m14_couplers_AWQOS;
  wire xbar_to_m14_couplers_AWREADY;
  wire [59:56]xbar_to_m14_couplers_AWREGION;
  wire [44:42]xbar_to_m14_couplers_AWSIZE;
  wire [14:14]xbar_to_m14_couplers_AWVALID;
  wire [15:0]xbar_to_m14_couplers_BID;
  wire [14:14]xbar_to_m14_couplers_BREADY;
  wire [1:0]xbar_to_m14_couplers_BRESP;
  wire xbar_to_m14_couplers_BVALID;
  wire [127:0]xbar_to_m14_couplers_RDATA;
  wire [15:0]xbar_to_m14_couplers_RID;
  wire xbar_to_m14_couplers_RLAST;
  wire [14:14]xbar_to_m14_couplers_RREADY;
  wire [1:0]xbar_to_m14_couplers_RRESP;
  wire xbar_to_m14_couplers_RVALID;
  wire [1919:1792]xbar_to_m14_couplers_WDATA;
  wire [14:14]xbar_to_m14_couplers_WLAST;
  wire xbar_to_m14_couplers_WREADY;
  wire [239:224]xbar_to_m14_couplers_WSTRB;
  wire [14:14]xbar_to_m14_couplers_WVALID;
  wire [639:600]xbar_to_m15_couplers_ARADDR;
  wire [31:30]xbar_to_m15_couplers_ARBURST;
  wire [63:60]xbar_to_m15_couplers_ARCACHE;
  wire [255:240]xbar_to_m15_couplers_ARID;
  wire [127:120]xbar_to_m15_couplers_ARLEN;
  wire [15:15]xbar_to_m15_couplers_ARLOCK;
  wire [47:45]xbar_to_m15_couplers_ARPROT;
  wire [63:60]xbar_to_m15_couplers_ARQOS;
  wire xbar_to_m15_couplers_ARREADY;
  wire [63:60]xbar_to_m15_couplers_ARREGION;
  wire [47:45]xbar_to_m15_couplers_ARSIZE;
  wire [15:15]xbar_to_m15_couplers_ARVALID;
  wire [639:600]xbar_to_m15_couplers_AWADDR;
  wire [31:30]xbar_to_m15_couplers_AWBURST;
  wire [63:60]xbar_to_m15_couplers_AWCACHE;
  wire [255:240]xbar_to_m15_couplers_AWID;
  wire [127:120]xbar_to_m15_couplers_AWLEN;
  wire [15:15]xbar_to_m15_couplers_AWLOCK;
  wire [47:45]xbar_to_m15_couplers_AWPROT;
  wire [63:60]xbar_to_m15_couplers_AWQOS;
  wire xbar_to_m15_couplers_AWREADY;
  wire [63:60]xbar_to_m15_couplers_AWREGION;
  wire [47:45]xbar_to_m15_couplers_AWSIZE;
  wire [15:15]xbar_to_m15_couplers_AWVALID;
  wire [15:0]xbar_to_m15_couplers_BID;
  wire [15:15]xbar_to_m15_couplers_BREADY;
  wire [1:0]xbar_to_m15_couplers_BRESP;
  wire xbar_to_m15_couplers_BVALID;
  wire [127:0]xbar_to_m15_couplers_RDATA;
  wire [15:0]xbar_to_m15_couplers_RID;
  wire xbar_to_m15_couplers_RLAST;
  wire [15:15]xbar_to_m15_couplers_RREADY;
  wire [1:0]xbar_to_m15_couplers_RRESP;
  wire xbar_to_m15_couplers_RVALID;
  wire [2047:1920]xbar_to_m15_couplers_WDATA;
  wire [15:15]xbar_to_m15_couplers_WLAST;
  wire xbar_to_m15_couplers_WREADY;
  wire [255:240]xbar_to_m15_couplers_WSTRB;
  wire [15:15]xbar_to_m15_couplers_WVALID;
  wire [255:0]NLW_xbar_m_axi_aruser_UNCONNECTED;
  wire [255:0]NLW_xbar_m_axi_awuser_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[19:0] = m00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_ps8_0_axi_periph_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_ps8_0_axi_periph_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_ps8_0_axi_periph_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_ps8_0_axi_periph_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_ps8_0_axi_periph_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[19:0] = m00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_ps8_0_axi_periph_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_ps8_0_axi_periph_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_ps8_0_axi_periph_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_ps8_0_axi_periph_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_ps8_0_axi_periph_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_ps8_0_axi_periph_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_ps8_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps8_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps8_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps8_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr = m02_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M02_AXI_arburst = m02_couplers_to_ps8_0_axi_periph_ARBURST;
  assign M02_AXI_arcache = m02_couplers_to_ps8_0_axi_periph_ARCACHE;
  assign M02_AXI_arid = m02_couplers_to_ps8_0_axi_periph_ARID;
  assign M02_AXI_arlen = m02_couplers_to_ps8_0_axi_periph_ARLEN;
  assign M02_AXI_arlock = m02_couplers_to_ps8_0_axi_periph_ARLOCK;
  assign M02_AXI_arprot = m02_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M02_AXI_arqos = m02_couplers_to_ps8_0_axi_periph_ARQOS;
  assign M02_AXI_arregion = m02_couplers_to_ps8_0_axi_periph_ARREGION;
  assign M02_AXI_arsize = m02_couplers_to_ps8_0_axi_periph_ARSIZE;
  assign M02_AXI_aruser = m02_couplers_to_ps8_0_axi_periph_ARUSER;
  assign M02_AXI_arvalid = m02_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr = m02_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M02_AXI_awburst = m02_couplers_to_ps8_0_axi_periph_AWBURST;
  assign M02_AXI_awcache = m02_couplers_to_ps8_0_axi_periph_AWCACHE;
  assign M02_AXI_awid = m02_couplers_to_ps8_0_axi_periph_AWID;
  assign M02_AXI_awlen = m02_couplers_to_ps8_0_axi_periph_AWLEN;
  assign M02_AXI_awlock = m02_couplers_to_ps8_0_axi_periph_AWLOCK;
  assign M02_AXI_awprot = m02_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M02_AXI_awqos = m02_couplers_to_ps8_0_axi_periph_AWQOS;
  assign M02_AXI_awregion = m02_couplers_to_ps8_0_axi_periph_AWREGION;
  assign M02_AXI_awsize = m02_couplers_to_ps8_0_axi_periph_AWSIZE;
  assign M02_AXI_awuser = m02_couplers_to_ps8_0_axi_periph_AWUSER;
  assign M02_AXI_awvalid = m02_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps8_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps8_0_axi_periph_RREADY;
  assign M02_AXI_wdata = m02_couplers_to_ps8_0_axi_periph_WDATA;
  assign M02_AXI_wlast = m02_couplers_to_ps8_0_axi_periph_WLAST;
  assign M02_AXI_wstrb = m02_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ps8_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps8_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps8_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps8_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps8_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps8_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps8_0_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_ps8_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_ps8_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_ps8_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_ps8_0_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[39:0] = m06_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[39:0] = m06_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_ps8_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_ps8_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_ps8_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_ps8_0_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[39:0] = m07_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M07_AXI_arvalid = m07_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[39:0] = m07_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M07_AXI_awvalid = m07_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_ps8_0_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_ps8_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_ps8_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_ps8_0_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[39:0] = m08_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M08_AXI_arvalid = m08_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[39:0] = m08_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M08_AXI_awvalid = m08_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_ps8_0_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_ps8_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_ps8_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_ps8_0_axi_periph_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[39:0] = m09_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M09_AXI_arprot[2:0] = m09_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M09_AXI_arvalid = m09_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M09_AXI_awaddr[39:0] = m09_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M09_AXI_awprot[2:0] = m09_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M09_AXI_awvalid = m09_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_ps8_0_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_ps8_0_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_ps8_0_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_ps8_0_axi_periph_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[39:0] = m10_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M10_AXI_arvalid = m10_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M10_AXI_awaddr[39:0] = m10_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M10_AXI_awvalid = m10_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_ps8_0_axi_periph_BREADY;
  assign M10_AXI_rready = m10_couplers_to_ps8_0_axi_periph_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_ps8_0_axi_periph_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_ps8_0_axi_periph_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN;
  assign M11_AXI_araddr[39:0] = m11_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M11_AXI_awaddr[39:0] = m11_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_ps8_0_axi_periph_BREADY;
  assign M11_AXI_rready = m11_couplers_to_ps8_0_axi_periph_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_ps8_0_axi_periph_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_ps8_0_axi_periph_WVALID;
  assign M12_ACLK_1 = M12_ACLK;
  assign M12_ARESETN_1 = M12_ARESETN;
  assign M12_AXI_araddr[39:0] = m12_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M12_AXI_arprot[2:0] = m12_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M12_AXI_arvalid = m12_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M12_AXI_awaddr[39:0] = m12_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M12_AXI_awprot[2:0] = m12_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M12_AXI_awvalid = m12_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_ps8_0_axi_periph_BREADY;
  assign M12_AXI_rready = m12_couplers_to_ps8_0_axi_periph_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_ps8_0_axi_periph_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_ps8_0_axi_periph_WVALID;
  assign M13_ACLK_1 = M13_ACLK;
  assign M13_ARESETN_1 = M13_ARESETN;
  assign M13_AXI_araddr[39:0] = m13_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M13_AXI_awaddr[39:0] = m13_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_ps8_0_axi_periph_BREADY;
  assign M13_AXI_rready = m13_couplers_to_ps8_0_axi_periph_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_ps8_0_axi_periph_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_ps8_0_axi_periph_WVALID;
  assign M14_ACLK_1 = M14_ACLK;
  assign M14_ARESETN_1 = M14_ARESETN;
  assign M14_AXI_araddr[15:0] = m14_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M14_AXI_arprot[2:0] = m14_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M14_AXI_arvalid = m14_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M14_AXI_awaddr[15:0] = m14_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M14_AXI_awprot[2:0] = m14_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M14_AXI_awvalid = m14_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_ps8_0_axi_periph_BREADY;
  assign M14_AXI_rready = m14_couplers_to_ps8_0_axi_periph_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_ps8_0_axi_periph_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_ps8_0_axi_periph_WVALID;
  assign M15_ACLK_1 = M15_ACLK;
  assign M15_ARESETN_1 = M15_ARESETN;
  assign M15_AXI_araddr[19:0] = m15_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M15_AXI_arburst[1:0] = m15_couplers_to_ps8_0_axi_periph_ARBURST;
  assign M15_AXI_arcache[3:0] = m15_couplers_to_ps8_0_axi_periph_ARCACHE;
  assign M15_AXI_arlen[7:0] = m15_couplers_to_ps8_0_axi_periph_ARLEN;
  assign M15_AXI_arlock[0] = m15_couplers_to_ps8_0_axi_periph_ARLOCK;
  assign M15_AXI_arprot[2:0] = m15_couplers_to_ps8_0_axi_periph_ARPROT;
  assign M15_AXI_arsize[2:0] = m15_couplers_to_ps8_0_axi_periph_ARSIZE;
  assign M15_AXI_arvalid = m15_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M15_AXI_awaddr[19:0] = m15_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M15_AXI_awburst[1:0] = m15_couplers_to_ps8_0_axi_periph_AWBURST;
  assign M15_AXI_awcache[3:0] = m15_couplers_to_ps8_0_axi_periph_AWCACHE;
  assign M15_AXI_awlen[7:0] = m15_couplers_to_ps8_0_axi_periph_AWLEN;
  assign M15_AXI_awlock[0] = m15_couplers_to_ps8_0_axi_periph_AWLOCK;
  assign M15_AXI_awprot[2:0] = m15_couplers_to_ps8_0_axi_periph_AWPROT;
  assign M15_AXI_awsize[2:0] = m15_couplers_to_ps8_0_axi_periph_AWSIZE;
  assign M15_AXI_awvalid = m15_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_ps8_0_axi_periph_BREADY;
  assign M15_AXI_rready = m15_couplers_to_ps8_0_axi_periph_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_ps8_0_axi_periph_WDATA;
  assign M15_AXI_wlast = m15_couplers_to_ps8_0_axi_periph_WLAST;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps8_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps8_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps8_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps8_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps8_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps8_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps8_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps8_0_axi_periph_BID = M02_AXI_bid;
  assign m02_couplers_to_ps8_0_axi_periph_BRESP = M02_AXI_bresp;
  assign m02_couplers_to_ps8_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps8_0_axi_periph_RDATA = M02_AXI_rdata;
  assign m02_couplers_to_ps8_0_axi_periph_RID = M02_AXI_rid;
  assign m02_couplers_to_ps8_0_axi_periph_RLAST = M02_AXI_rlast;
  assign m02_couplers_to_ps8_0_axi_periph_RRESP = M02_AXI_rresp;
  assign m02_couplers_to_ps8_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps8_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps8_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps8_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps8_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps8_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps8_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps8_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps8_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps8_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps8_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps8_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_ps8_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_ps8_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_ps8_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_ps8_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_ps8_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_ps8_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_ps8_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_ps8_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_ps8_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_ps8_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_ps8_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_ps8_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_ps8_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_ps8_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_ps8_0_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_ps8_0_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_ps8_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_ps8_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_ps8_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_ps8_0_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_ps8_0_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_ps8_0_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_ps8_0_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_ps8_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_ps8_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_ps8_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_ps8_0_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_ps8_0_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_ps8_0_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_ps8_0_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_ps8_0_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_ps8_0_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_ps8_0_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_ps8_0_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_ps8_0_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_ps8_0_axi_periph_WREADY = M09_AXI_wready;
  assign m10_couplers_to_ps8_0_axi_periph_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_ps8_0_axi_periph_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_ps8_0_axi_periph_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_ps8_0_axi_periph_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_ps8_0_axi_periph_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_ps8_0_axi_periph_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_ps8_0_axi_periph_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_ps8_0_axi_periph_WREADY = M10_AXI_wready;
  assign m11_couplers_to_ps8_0_axi_periph_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_ps8_0_axi_periph_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_ps8_0_axi_periph_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_ps8_0_axi_periph_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_ps8_0_axi_periph_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_ps8_0_axi_periph_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_ps8_0_axi_periph_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_ps8_0_axi_periph_WREADY = M11_AXI_wready;
  assign m12_couplers_to_ps8_0_axi_periph_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_ps8_0_axi_periph_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_ps8_0_axi_periph_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_ps8_0_axi_periph_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_ps8_0_axi_periph_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_ps8_0_axi_periph_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_ps8_0_axi_periph_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_ps8_0_axi_periph_WREADY = M12_AXI_wready;
  assign m13_couplers_to_ps8_0_axi_periph_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_ps8_0_axi_periph_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_ps8_0_axi_periph_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_ps8_0_axi_periph_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_ps8_0_axi_periph_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_ps8_0_axi_periph_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_ps8_0_axi_periph_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_ps8_0_axi_periph_WREADY = M13_AXI_wready;
  assign m14_couplers_to_ps8_0_axi_periph_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_ps8_0_axi_periph_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_ps8_0_axi_periph_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_ps8_0_axi_periph_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_ps8_0_axi_periph_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_ps8_0_axi_periph_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_ps8_0_axi_periph_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_ps8_0_axi_periph_WREADY = M14_AXI_wready;
  assign m15_couplers_to_ps8_0_axi_periph_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_ps8_0_axi_periph_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_ps8_0_axi_periph_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_ps8_0_axi_periph_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_ps8_0_axi_periph_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_ps8_0_axi_periph_RLAST = M15_AXI_rlast;
  assign m15_couplers_to_ps8_0_axi_periph_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_ps8_0_axi_periph_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_ps8_0_axi_periph_WREADY = M15_AXI_wready;
  assign ps8_0_axi_periph_ACLK_net = ACLK;
  assign ps8_0_axi_periph_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_QJIMLI m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arburst(m00_couplers_to_ps8_0_axi_periph_ARBURST),
        .M_AXI_arcache(m00_couplers_to_ps8_0_axi_periph_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_ps8_0_axi_periph_ARLEN),
        .M_AXI_arlock(m00_couplers_to_ps8_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arsize(m00_couplers_to_ps8_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awburst(m00_couplers_to_ps8_0_axi_periph_AWBURST),
        .M_AXI_awcache(m00_couplers_to_ps8_0_axi_periph_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_ps8_0_axi_periph_AWLEN),
        .M_AXI_awlock(m00_couplers_to_ps8_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awsize(m00_couplers_to_ps8_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rlast(m00_couplers_to_ps8_0_axi_periph_RLAST),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wlast(m00_couplers_to_ps8_0_axi_periph_WLAST),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1D3SAH3 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_P3UMW5 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arburst(m02_couplers_to_ps8_0_axi_periph_ARBURST),
        .M_AXI_arcache(m02_couplers_to_ps8_0_axi_periph_ARCACHE),
        .M_AXI_arid(m02_couplers_to_ps8_0_axi_periph_ARID),
        .M_AXI_arlen(m02_couplers_to_ps8_0_axi_periph_ARLEN),
        .M_AXI_arlock(m02_couplers_to_ps8_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arqos(m02_couplers_to_ps8_0_axi_periph_ARQOS),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arregion(m02_couplers_to_ps8_0_axi_periph_ARREGION),
        .M_AXI_arsize(m02_couplers_to_ps8_0_axi_periph_ARSIZE),
        .M_AXI_aruser(m02_couplers_to_ps8_0_axi_periph_ARUSER),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awburst(m02_couplers_to_ps8_0_axi_periph_AWBURST),
        .M_AXI_awcache(m02_couplers_to_ps8_0_axi_periph_AWCACHE),
        .M_AXI_awid(m02_couplers_to_ps8_0_axi_periph_AWID),
        .M_AXI_awlen(m02_couplers_to_ps8_0_axi_periph_AWLEN),
        .M_AXI_awlock(m02_couplers_to_ps8_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awqos(m02_couplers_to_ps8_0_axi_periph_AWQOS),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awregion(m02_couplers_to_ps8_0_axi_periph_AWREGION),
        .M_AXI_awsize(m02_couplers_to_ps8_0_axi_periph_AWSIZE),
        .M_AXI_awuser(m02_couplers_to_ps8_0_axi_periph_AWUSER),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bid(m02_couplers_to_ps8_0_axi_periph_BID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rid(m02_couplers_to_ps8_0_axi_periph_RID),
        .M_AXI_rlast(m02_couplers_to_ps8_0_axi_periph_RLAST),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wlast(m02_couplers_to_ps8_0_axi_periph_WLAST),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[80]),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST[4]),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE[8]),
        .S_AXI_arid(xbar_to_m02_couplers_ARID[32]),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN[16]),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT[6]),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS[8]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION[8]),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE[6]),
        .S_AXI_aruser(xbar_to_m02_couplers_ARUSER[32]),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[80]),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST[4]),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE[8]),
        .S_AXI_awid(xbar_to_m02_couplers_AWID[32]),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN[16]),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT[6]),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS[8]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION[8]),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE[6]),
        .S_AXI_awuser(xbar_to_m02_couplers_AWUSER[32]),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA[256]),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB[32]),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1E9R4HW m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_NB1YAO m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1FZ4A9T m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m05_couplers_ARID),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m05_couplers_AWID),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m05_couplers_BID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rid(xbar_to_m05_couplers_RID),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_MPDFMR m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m06_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m06_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m06_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m06_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m06_couplers_ARID),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m06_couplers_AWID),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m06_couplers_BID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rid(xbar_to_m06_couplers_RID),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_1GV49DU m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m07_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m07_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m07_couplers_ARID),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m07_couplers_AWID),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m07_couplers_BID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rid(xbar_to_m07_couplers_RID),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_K8X5UY m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m08_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m08_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m08_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m08_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m08_couplers_ARID),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m08_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m08_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m08_couplers_AWID),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m08_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m08_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m08_couplers_BID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rid(xbar_to_m08_couplers_RID),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_1AITGY3 m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m09_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m09_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m09_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m09_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m09_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m09_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m09_couplers_ARID),
        .S_AXI_arlen(xbar_to_m09_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m09_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m09_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m09_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m09_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m09_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m09_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m09_couplers_AWID),
        .S_AXI_awlen(xbar_to_m09_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m09_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m09_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m09_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m09_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m09_couplers_BID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rid(xbar_to_m09_couplers_RID),
        .S_AXI_rlast(xbar_to_m09_couplers_RLAST),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m09_couplers_WLAST),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_11TD8LA m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m10_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m10_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m10_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m10_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m10_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m10_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m10_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m10_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m10_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m10_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m10_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m10_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m10_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m10_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m10_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m10_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m10_couplers_ARID),
        .S_AXI_arlen(xbar_to_m10_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m10_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m10_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m10_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m10_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m10_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m10_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m10_couplers_AWID),
        .S_AXI_awlen(xbar_to_m10_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m10_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m10_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m10_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m10_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m10_couplers_BID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rid(xbar_to_m10_couplers_RID),
        .S_AXI_rlast(xbar_to_m10_couplers_RLAST),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m10_couplers_WLAST),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_SLT6JJ m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m11_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m11_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m11_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m11_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m11_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m11_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m11_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m11_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m11_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m11_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m11_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m11_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m11_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m11_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m11_couplers_ARID),
        .S_AXI_arlen(xbar_to_m11_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m11_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m11_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m11_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m11_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m11_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m11_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m11_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m11_couplers_AWID),
        .S_AXI_awlen(xbar_to_m11_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m11_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m11_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m11_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m11_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m11_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m11_couplers_BID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rid(xbar_to_m11_couplers_RID),
        .S_AXI_rlast(xbar_to_m11_couplers_RLAST),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m11_couplers_WLAST),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_13AKZEL m12_couplers
       (.M_ACLK(M12_ACLK_1),
        .M_ARESETN(M12_ARESETN_1),
        .M_AXI_araddr(m12_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m12_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m12_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m12_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m12_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m12_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m12_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m12_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m12_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m12_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m12_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m12_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m12_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m12_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m12_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m12_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m12_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m12_couplers_ARID),
        .S_AXI_arlen(xbar_to_m12_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m12_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m12_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m12_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m12_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m12_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m12_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m12_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m12_couplers_AWID),
        .S_AXI_awlen(xbar_to_m12_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m12_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m12_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m12_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m12_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m12_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m12_couplers_BID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rid(xbar_to_m12_couplers_RID),
        .S_AXI_rlast(xbar_to_m12_couplers_RLAST),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m12_couplers_WLAST),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_REVGT8 m13_couplers
       (.M_ACLK(M13_ACLK_1),
        .M_ARESETN(M13_ARESETN_1),
        .M_AXI_araddr(m13_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m13_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m13_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m13_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m13_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m13_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m13_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m13_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m13_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m13_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m13_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m13_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m13_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m13_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m13_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m13_couplers_ARID),
        .S_AXI_arlen(xbar_to_m13_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m13_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m13_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m13_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m13_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m13_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m13_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m13_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m13_couplers_AWID),
        .S_AXI_awlen(xbar_to_m13_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m13_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m13_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m13_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m13_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m13_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m13_couplers_BID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rid(xbar_to_m13_couplers_RID),
        .S_AXI_rlast(xbar_to_m13_couplers_RLAST),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m13_couplers_WLAST),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  m14_couplers_imp_10LD0VS m14_couplers
       (.M_ACLK(M14_ACLK_1),
        .M_ARESETN(M14_ARESETN_1),
        .M_AXI_araddr(m14_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arprot(m14_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m14_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awprot(m14_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m14_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m14_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m14_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m14_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m14_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m14_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m14_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m14_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m14_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m14_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m14_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m14_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m14_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m14_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m14_couplers_ARID),
        .S_AXI_arlen(xbar_to_m14_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m14_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m14_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m14_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m14_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m14_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m14_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m14_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m14_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m14_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m14_couplers_AWID),
        .S_AXI_awlen(xbar_to_m14_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m14_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m14_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m14_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m14_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m14_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m14_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m14_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m14_couplers_BID),
        .S_AXI_bready(xbar_to_m14_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m14_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m14_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m14_couplers_RDATA),
        .S_AXI_rid(xbar_to_m14_couplers_RID),
        .S_AXI_rlast(xbar_to_m14_couplers_RLAST),
        .S_AXI_rready(xbar_to_m14_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m14_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m14_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m14_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m14_couplers_WLAST),
        .S_AXI_wready(xbar_to_m14_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m14_couplers_WVALID));
  m15_couplers_imp_U5NP7D m15_couplers
       (.M_ACLK(M15_ACLK_1),
        .M_ARESETN(M15_ARESETN_1),
        .M_AXI_araddr(m15_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arburst(m15_couplers_to_ps8_0_axi_periph_ARBURST),
        .M_AXI_arcache(m15_couplers_to_ps8_0_axi_periph_ARCACHE),
        .M_AXI_arlen(m15_couplers_to_ps8_0_axi_periph_ARLEN),
        .M_AXI_arlock(m15_couplers_to_ps8_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m15_couplers_to_ps8_0_axi_periph_ARPROT),
        .M_AXI_arready(m15_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arsize(m15_couplers_to_ps8_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m15_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awburst(m15_couplers_to_ps8_0_axi_periph_AWBURST),
        .M_AXI_awcache(m15_couplers_to_ps8_0_axi_periph_AWCACHE),
        .M_AXI_awlen(m15_couplers_to_ps8_0_axi_periph_AWLEN),
        .M_AXI_awlock(m15_couplers_to_ps8_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m15_couplers_to_ps8_0_axi_periph_AWPROT),
        .M_AXI_awready(m15_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awsize(m15_couplers_to_ps8_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m15_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m15_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m15_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m15_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m15_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rlast(m15_couplers_to_ps8_0_axi_periph_RLAST),
        .M_AXI_rready(m15_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m15_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m15_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m15_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wlast(m15_couplers_to_ps8_0_axi_periph_WLAST),
        .M_AXI_wready(m15_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m15_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m15_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m15_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m15_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m15_couplers_ARID),
        .S_AXI_arlen(xbar_to_m15_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m15_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m15_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m15_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m15_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m15_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m15_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m15_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m15_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m15_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m15_couplers_AWID),
        .S_AXI_awlen(xbar_to_m15_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m15_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m15_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m15_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m15_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m15_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m15_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m15_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m15_couplers_BID),
        .S_AXI_bready(xbar_to_m15_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m15_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m15_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m15_couplers_RDATA),
        .S_AXI_rid(xbar_to_m15_couplers_RID),
        .S_AXI_rlast(xbar_to_m15_couplers_RLAST),
        .S_AXI_rready(xbar_to_m15_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m15_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m15_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m15_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m15_couplers_WLAST),
        .S_AXI_wready(xbar_to_m15_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m15_couplers_WVALID));
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(ps8_0_axi_periph_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(ps8_0_axi_periph_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(ps8_0_axi_periph_ACLK_net),
        .aresetn(ps8_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m15_couplers_ARADDR,xbar_to_m14_couplers_ARADDR,xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m15_couplers_ARBURST,xbar_to_m14_couplers_ARBURST,xbar_to_m13_couplers_ARBURST,xbar_to_m12_couplers_ARBURST,xbar_to_m11_couplers_ARBURST,xbar_to_m10_couplers_ARBURST,xbar_to_m09_couplers_ARBURST,xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m15_couplers_ARCACHE,xbar_to_m14_couplers_ARCACHE,xbar_to_m13_couplers_ARCACHE,xbar_to_m12_couplers_ARCACHE,xbar_to_m11_couplers_ARCACHE,xbar_to_m10_couplers_ARCACHE,xbar_to_m09_couplers_ARCACHE,xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m15_couplers_ARID,xbar_to_m14_couplers_ARID,xbar_to_m13_couplers_ARID,xbar_to_m12_couplers_ARID,xbar_to_m11_couplers_ARID,xbar_to_m10_couplers_ARID,xbar_to_m09_couplers_ARID,xbar_to_m08_couplers_ARID,xbar_to_m07_couplers_ARID,xbar_to_m06_couplers_ARID,xbar_to_m05_couplers_ARID,xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m15_couplers_ARLEN,xbar_to_m14_couplers_ARLEN,xbar_to_m13_couplers_ARLEN,xbar_to_m12_couplers_ARLEN,xbar_to_m11_couplers_ARLEN,xbar_to_m10_couplers_ARLEN,xbar_to_m09_couplers_ARLEN,xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m15_couplers_ARLOCK,xbar_to_m14_couplers_ARLOCK,xbar_to_m13_couplers_ARLOCK,xbar_to_m12_couplers_ARLOCK,xbar_to_m11_couplers_ARLOCK,xbar_to_m10_couplers_ARLOCK,xbar_to_m09_couplers_ARLOCK,xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m15_couplers_ARPROT,xbar_to_m14_couplers_ARPROT,xbar_to_m13_couplers_ARPROT,xbar_to_m12_couplers_ARPROT,xbar_to_m11_couplers_ARPROT,xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m15_couplers_ARQOS,xbar_to_m14_couplers_ARQOS,xbar_to_m13_couplers_ARQOS,xbar_to_m12_couplers_ARQOS,xbar_to_m11_couplers_ARQOS,xbar_to_m10_couplers_ARQOS,xbar_to_m09_couplers_ARQOS,xbar_to_m08_couplers_ARQOS,xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m15_couplers_ARREADY,xbar_to_m14_couplers_ARREADY,xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m15_couplers_ARREGION,xbar_to_m14_couplers_ARREGION,xbar_to_m13_couplers_ARREGION,xbar_to_m12_couplers_ARREGION,xbar_to_m11_couplers_ARREGION,xbar_to_m10_couplers_ARREGION,xbar_to_m09_couplers_ARREGION,xbar_to_m08_couplers_ARREGION,xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m15_couplers_ARSIZE,xbar_to_m14_couplers_ARSIZE,xbar_to_m13_couplers_ARSIZE,xbar_to_m12_couplers_ARSIZE,xbar_to_m11_couplers_ARSIZE,xbar_to_m10_couplers_ARSIZE,xbar_to_m09_couplers_ARSIZE,xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser({xbar_to_m02_couplers_ARUSER,NLW_xbar_m_axi_aruser_UNCONNECTED[31:0]}),
        .m_axi_arvalid({xbar_to_m15_couplers_ARVALID,xbar_to_m14_couplers_ARVALID,xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m15_couplers_AWADDR,xbar_to_m14_couplers_AWADDR,xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m15_couplers_AWBURST,xbar_to_m14_couplers_AWBURST,xbar_to_m13_couplers_AWBURST,xbar_to_m12_couplers_AWBURST,xbar_to_m11_couplers_AWBURST,xbar_to_m10_couplers_AWBURST,xbar_to_m09_couplers_AWBURST,xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m15_couplers_AWCACHE,xbar_to_m14_couplers_AWCACHE,xbar_to_m13_couplers_AWCACHE,xbar_to_m12_couplers_AWCACHE,xbar_to_m11_couplers_AWCACHE,xbar_to_m10_couplers_AWCACHE,xbar_to_m09_couplers_AWCACHE,xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m15_couplers_AWID,xbar_to_m14_couplers_AWID,xbar_to_m13_couplers_AWID,xbar_to_m12_couplers_AWID,xbar_to_m11_couplers_AWID,xbar_to_m10_couplers_AWID,xbar_to_m09_couplers_AWID,xbar_to_m08_couplers_AWID,xbar_to_m07_couplers_AWID,xbar_to_m06_couplers_AWID,xbar_to_m05_couplers_AWID,xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m15_couplers_AWLEN,xbar_to_m14_couplers_AWLEN,xbar_to_m13_couplers_AWLEN,xbar_to_m12_couplers_AWLEN,xbar_to_m11_couplers_AWLEN,xbar_to_m10_couplers_AWLEN,xbar_to_m09_couplers_AWLEN,xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m15_couplers_AWLOCK,xbar_to_m14_couplers_AWLOCK,xbar_to_m13_couplers_AWLOCK,xbar_to_m12_couplers_AWLOCK,xbar_to_m11_couplers_AWLOCK,xbar_to_m10_couplers_AWLOCK,xbar_to_m09_couplers_AWLOCK,xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m15_couplers_AWPROT,xbar_to_m14_couplers_AWPROT,xbar_to_m13_couplers_AWPROT,xbar_to_m12_couplers_AWPROT,xbar_to_m11_couplers_AWPROT,xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m15_couplers_AWQOS,xbar_to_m14_couplers_AWQOS,xbar_to_m13_couplers_AWQOS,xbar_to_m12_couplers_AWQOS,xbar_to_m11_couplers_AWQOS,xbar_to_m10_couplers_AWQOS,xbar_to_m09_couplers_AWQOS,xbar_to_m08_couplers_AWQOS,xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m15_couplers_AWREADY,xbar_to_m14_couplers_AWREADY,xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m15_couplers_AWREGION,xbar_to_m14_couplers_AWREGION,xbar_to_m13_couplers_AWREGION,xbar_to_m12_couplers_AWREGION,xbar_to_m11_couplers_AWREGION,xbar_to_m10_couplers_AWREGION,xbar_to_m09_couplers_AWREGION,xbar_to_m08_couplers_AWREGION,xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m15_couplers_AWSIZE,xbar_to_m14_couplers_AWSIZE,xbar_to_m13_couplers_AWSIZE,xbar_to_m12_couplers_AWSIZE,xbar_to_m11_couplers_AWSIZE,xbar_to_m10_couplers_AWSIZE,xbar_to_m09_couplers_AWSIZE,xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser({xbar_to_m02_couplers_AWUSER,NLW_xbar_m_axi_awuser_UNCONNECTED[31:0]}),
        .m_axi_awvalid({xbar_to_m15_couplers_AWVALID,xbar_to_m14_couplers_AWVALID,xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m15_couplers_BID,xbar_to_m14_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m12_couplers_BID,xbar_to_m11_couplers_BID,xbar_to_m10_couplers_BID,xbar_to_m09_couplers_BID,xbar_to_m08_couplers_BID,xbar_to_m07_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m05_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m15_couplers_BREADY,xbar_to_m14_couplers_BREADY,xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m15_couplers_BRESP,xbar_to_m14_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m15_couplers_BVALID,xbar_to_m14_couplers_BVALID,xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m15_couplers_RDATA,xbar_to_m14_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m15_couplers_RID,xbar_to_m14_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m12_couplers_RID,xbar_to_m11_couplers_RID,xbar_to_m10_couplers_RID,xbar_to_m09_couplers_RID,xbar_to_m08_couplers_RID,xbar_to_m07_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m05_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m15_couplers_RLAST,xbar_to_m14_couplers_RLAST,xbar_to_m13_couplers_RLAST,xbar_to_m12_couplers_RLAST,xbar_to_m11_couplers_RLAST,xbar_to_m10_couplers_RLAST,xbar_to_m09_couplers_RLAST,xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m15_couplers_RREADY,xbar_to_m14_couplers_RREADY,xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m15_couplers_RRESP,xbar_to_m14_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m15_couplers_RVALID,xbar_to_m14_couplers_RVALID,xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m15_couplers_WDATA,xbar_to_m14_couplers_WDATA,xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m15_couplers_WLAST,xbar_to_m14_couplers_WLAST,xbar_to_m13_couplers_WLAST,xbar_to_m12_couplers_WLAST,xbar_to_m11_couplers_WLAST,xbar_to_m10_couplers_WLAST,xbar_to_m09_couplers_WLAST,xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m15_couplers_WREADY,xbar_to_m14_couplers_WREADY,xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m15_couplers_WSTRB,xbar_to_m14_couplers_WSTRB,xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m15_couplers_WVALID,xbar_to_m14_couplers_WVALID,xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_aruser(s00_couplers_to_xbar_ARUSER),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awuser(s00_couplers_to_xbar_AWUSER),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_QJIMLI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [19:0]auto_ds_to_m00_couplers_ARADDR;
  wire [1:0]auto_ds_to_m00_couplers_ARBURST;
  wire [3:0]auto_ds_to_m00_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m00_couplers_ARLEN;
  wire [0:0]auto_ds_to_m00_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m00_couplers_ARPROT;
  wire auto_ds_to_m00_couplers_ARREADY;
  wire [2:0]auto_ds_to_m00_couplers_ARSIZE;
  wire auto_ds_to_m00_couplers_ARVALID;
  wire [19:0]auto_ds_to_m00_couplers_AWADDR;
  wire [1:0]auto_ds_to_m00_couplers_AWBURST;
  wire [3:0]auto_ds_to_m00_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m00_couplers_AWLEN;
  wire [0:0]auto_ds_to_m00_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m00_couplers_AWPROT;
  wire auto_ds_to_m00_couplers_AWREADY;
  wire [2:0]auto_ds_to_m00_couplers_AWSIZE;
  wire auto_ds_to_m00_couplers_AWVALID;
  wire auto_ds_to_m00_couplers_BREADY;
  wire [1:0]auto_ds_to_m00_couplers_BRESP;
  wire auto_ds_to_m00_couplers_BVALID;
  wire [31:0]auto_ds_to_m00_couplers_RDATA;
  wire auto_ds_to_m00_couplers_RLAST;
  wire auto_ds_to_m00_couplers_RREADY;
  wire [1:0]auto_ds_to_m00_couplers_RRESP;
  wire auto_ds_to_m00_couplers_RVALID;
  wire [31:0]auto_ds_to_m00_couplers_WDATA;
  wire auto_ds_to_m00_couplers_WLAST;
  wire auto_ds_to_m00_couplers_WREADY;
  wire [3:0]auto_ds_to_m00_couplers_WSTRB;
  wire auto_ds_to_m00_couplers_WVALID;
  wire [39:0]m00_couplers_to_auto_ds_ARADDR;
  wire [1:0]m00_couplers_to_auto_ds_ARBURST;
  wire [3:0]m00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m00_couplers_to_auto_ds_ARID;
  wire [7:0]m00_couplers_to_auto_ds_ARLEN;
  wire [0:0]m00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m00_couplers_to_auto_ds_ARPROT;
  wire [3:0]m00_couplers_to_auto_ds_ARQOS;
  wire m00_couplers_to_auto_ds_ARREADY;
  wire [3:0]m00_couplers_to_auto_ds_ARREGION;
  wire [2:0]m00_couplers_to_auto_ds_ARSIZE;
  wire m00_couplers_to_auto_ds_ARVALID;
  wire [39:0]m00_couplers_to_auto_ds_AWADDR;
  wire [1:0]m00_couplers_to_auto_ds_AWBURST;
  wire [3:0]m00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m00_couplers_to_auto_ds_AWID;
  wire [7:0]m00_couplers_to_auto_ds_AWLEN;
  wire [0:0]m00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m00_couplers_to_auto_ds_AWPROT;
  wire [3:0]m00_couplers_to_auto_ds_AWQOS;
  wire m00_couplers_to_auto_ds_AWREADY;
  wire [3:0]m00_couplers_to_auto_ds_AWREGION;
  wire [2:0]m00_couplers_to_auto_ds_AWSIZE;
  wire m00_couplers_to_auto_ds_AWVALID;
  wire [15:0]m00_couplers_to_auto_ds_BID;
  wire m00_couplers_to_auto_ds_BREADY;
  wire [1:0]m00_couplers_to_auto_ds_BRESP;
  wire m00_couplers_to_auto_ds_BVALID;
  wire [127:0]m00_couplers_to_auto_ds_RDATA;
  wire [15:0]m00_couplers_to_auto_ds_RID;
  wire m00_couplers_to_auto_ds_RLAST;
  wire m00_couplers_to_auto_ds_RREADY;
  wire [1:0]m00_couplers_to_auto_ds_RRESP;
  wire m00_couplers_to_auto_ds_RVALID;
  wire [127:0]m00_couplers_to_auto_ds_WDATA;
  wire m00_couplers_to_auto_ds_WLAST;
  wire m00_couplers_to_auto_ds_WREADY;
  wire [15:0]m00_couplers_to_auto_ds_WSTRB;
  wire m00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[19:0] = auto_ds_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = auto_ds_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m00_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m00_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_ds_ARADDR[19:0]),
        .s_axi_arburst(m00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_ds_AWADDR[19:0]),
        .s_axi_awburst(m00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_ds_BID),
        .s_axi_bready(m00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m00_couplers_to_auto_ds_RID),
        .s_axi_rlast(m00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_ds_WVALID));
endmodule

module m01_couplers_imp_1D3SAH3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m01_couplers_ARADDR;
  wire [2:0]auto_pc_to_m01_couplers_ARPROT;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [39:0]auto_pc_to_m01_couplers_AWADDR;
  wire [2:0]auto_pc_to_m01_couplers_AWPROT;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_ds_ARADDR;
  wire [1:0]m01_couplers_to_auto_ds_ARBURST;
  wire [3:0]m01_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m01_couplers_to_auto_ds_ARID;
  wire [7:0]m01_couplers_to_auto_ds_ARLEN;
  wire [0:0]m01_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m01_couplers_to_auto_ds_ARPROT;
  wire [3:0]m01_couplers_to_auto_ds_ARQOS;
  wire m01_couplers_to_auto_ds_ARREADY;
  wire [3:0]m01_couplers_to_auto_ds_ARREGION;
  wire [2:0]m01_couplers_to_auto_ds_ARSIZE;
  wire m01_couplers_to_auto_ds_ARVALID;
  wire [39:0]m01_couplers_to_auto_ds_AWADDR;
  wire [1:0]m01_couplers_to_auto_ds_AWBURST;
  wire [3:0]m01_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m01_couplers_to_auto_ds_AWID;
  wire [7:0]m01_couplers_to_auto_ds_AWLEN;
  wire [0:0]m01_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m01_couplers_to_auto_ds_AWPROT;
  wire [3:0]m01_couplers_to_auto_ds_AWQOS;
  wire m01_couplers_to_auto_ds_AWREADY;
  wire [3:0]m01_couplers_to_auto_ds_AWREGION;
  wire [2:0]m01_couplers_to_auto_ds_AWSIZE;
  wire m01_couplers_to_auto_ds_AWVALID;
  wire [15:0]m01_couplers_to_auto_ds_BID;
  wire m01_couplers_to_auto_ds_BREADY;
  wire [1:0]m01_couplers_to_auto_ds_BRESP;
  wire m01_couplers_to_auto_ds_BVALID;
  wire [127:0]m01_couplers_to_auto_ds_RDATA;
  wire [15:0]m01_couplers_to_auto_ds_RID;
  wire m01_couplers_to_auto_ds_RLAST;
  wire m01_couplers_to_auto_ds_RREADY;
  wire [1:0]m01_couplers_to_auto_ds_RRESP;
  wire m01_couplers_to_auto_ds_RVALID;
  wire [127:0]m01_couplers_to_auto_ds_WDATA;
  wire m01_couplers_to_auto_ds_WLAST;
  wire m01_couplers_to_auto_ds_WREADY;
  wire [15:0]m01_couplers_to_auto_ds_WSTRB;
  wire m01_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m01_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m01_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m01_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m01_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m01_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m01_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m01_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m01_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m01_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m01_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_ds_BID),
        .s_axi_bready(m01_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m01_couplers_to_auto_ds_RID),
        .s_axi_rlast(m01_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m01_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m01_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_P3UMW5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_aruser;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awuser;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_aruser;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awuser;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARBURST;
  wire m02_couplers_to_m02_couplers_ARCACHE;
  wire m02_couplers_to_m02_couplers_ARID;
  wire m02_couplers_to_m02_couplers_ARLEN;
  wire m02_couplers_to_m02_couplers_ARLOCK;
  wire m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARQOS;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARREGION;
  wire m02_couplers_to_m02_couplers_ARSIZE;
  wire m02_couplers_to_m02_couplers_ARUSER;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWBURST;
  wire m02_couplers_to_m02_couplers_AWCACHE;
  wire m02_couplers_to_m02_couplers_AWID;
  wire m02_couplers_to_m02_couplers_AWLEN;
  wire m02_couplers_to_m02_couplers_AWLOCK;
  wire m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWQOS;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWREGION;
  wire m02_couplers_to_m02_couplers_AWSIZE;
  wire m02_couplers_to_m02_couplers_AWUSER;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RID;
  wire m02_couplers_to_m02_couplers_RLAST;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WLAST;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arburst = m02_couplers_to_m02_couplers_ARBURST;
  assign M_AXI_arcache = m02_couplers_to_m02_couplers_ARCACHE;
  assign M_AXI_arid = m02_couplers_to_m02_couplers_ARID;
  assign M_AXI_arlen = m02_couplers_to_m02_couplers_ARLEN;
  assign M_AXI_arlock = m02_couplers_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arqos = m02_couplers_to_m02_couplers_ARQOS;
  assign M_AXI_arregion = m02_couplers_to_m02_couplers_ARREGION;
  assign M_AXI_arsize = m02_couplers_to_m02_couplers_ARSIZE;
  assign M_AXI_aruser = m02_couplers_to_m02_couplers_ARUSER;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awburst = m02_couplers_to_m02_couplers_AWBURST;
  assign M_AXI_awcache = m02_couplers_to_m02_couplers_AWCACHE;
  assign M_AXI_awid = m02_couplers_to_m02_couplers_AWID;
  assign M_AXI_awlen = m02_couplers_to_m02_couplers_AWLEN;
  assign M_AXI_awlock = m02_couplers_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awqos = m02_couplers_to_m02_couplers_AWQOS;
  assign M_AXI_awregion = m02_couplers_to_m02_couplers_AWREGION;
  assign M_AXI_awsize = m02_couplers_to_m02_couplers_AWSIZE;
  assign M_AXI_awuser = m02_couplers_to_m02_couplers_AWUSER;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wlast = m02_couplers_to_m02_couplers_WLAST;
  assign M_AXI_wstrb = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bid = m02_couplers_to_m02_couplers_BID;
  assign S_AXI_bresp = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rid = m02_couplers_to_m02_couplers_RID;
  assign S_AXI_rlast = m02_couplers_to_m02_couplers_RLAST;
  assign S_AXI_rresp = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr;
  assign m02_couplers_to_m02_couplers_ARBURST = S_AXI_arburst;
  assign m02_couplers_to_m02_couplers_ARCACHE = S_AXI_arcache;
  assign m02_couplers_to_m02_couplers_ARID = S_AXI_arid;
  assign m02_couplers_to_m02_couplers_ARLEN = S_AXI_arlen;
  assign m02_couplers_to_m02_couplers_ARLOCK = S_AXI_arlock;
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot;
  assign m02_couplers_to_m02_couplers_ARQOS = S_AXI_arqos;
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARREGION = S_AXI_arregion;
  assign m02_couplers_to_m02_couplers_ARSIZE = S_AXI_arsize;
  assign m02_couplers_to_m02_couplers_ARUSER = S_AXI_aruser;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr;
  assign m02_couplers_to_m02_couplers_AWBURST = S_AXI_awburst;
  assign m02_couplers_to_m02_couplers_AWCACHE = S_AXI_awcache;
  assign m02_couplers_to_m02_couplers_AWID = S_AXI_awid;
  assign m02_couplers_to_m02_couplers_AWLEN = S_AXI_awlen;
  assign m02_couplers_to_m02_couplers_AWLOCK = S_AXI_awlock;
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot;
  assign m02_couplers_to_m02_couplers_AWQOS = S_AXI_awqos;
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWREGION = S_AXI_awregion;
  assign m02_couplers_to_m02_couplers_AWSIZE = S_AXI_awsize;
  assign m02_couplers_to_m02_couplers_AWUSER = S_AXI_awuser;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BID = M_AXI_bid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp;
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata;
  assign m02_couplers_to_m02_couplers_RID = M_AXI_rid;
  assign m02_couplers_to_m02_couplers_RLAST = M_AXI_rlast;
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp;
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata;
  assign m02_couplers_to_m02_couplers_WLAST = S_AXI_wlast;
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb;
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1E9R4HW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m03_couplers_ARADDR;
  wire [2:0]auto_pc_to_m03_couplers_ARPROT;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [39:0]auto_pc_to_m03_couplers_AWADDR;
  wire [2:0]auto_pc_to_m03_couplers_AWPROT;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [39:0]m03_couplers_to_auto_ds_ARADDR;
  wire [1:0]m03_couplers_to_auto_ds_ARBURST;
  wire [3:0]m03_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m03_couplers_to_auto_ds_ARID;
  wire [7:0]m03_couplers_to_auto_ds_ARLEN;
  wire [0:0]m03_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m03_couplers_to_auto_ds_ARPROT;
  wire [3:0]m03_couplers_to_auto_ds_ARQOS;
  wire m03_couplers_to_auto_ds_ARREADY;
  wire [3:0]m03_couplers_to_auto_ds_ARREGION;
  wire [2:0]m03_couplers_to_auto_ds_ARSIZE;
  wire m03_couplers_to_auto_ds_ARVALID;
  wire [39:0]m03_couplers_to_auto_ds_AWADDR;
  wire [1:0]m03_couplers_to_auto_ds_AWBURST;
  wire [3:0]m03_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m03_couplers_to_auto_ds_AWID;
  wire [7:0]m03_couplers_to_auto_ds_AWLEN;
  wire [0:0]m03_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m03_couplers_to_auto_ds_AWPROT;
  wire [3:0]m03_couplers_to_auto_ds_AWQOS;
  wire m03_couplers_to_auto_ds_AWREADY;
  wire [3:0]m03_couplers_to_auto_ds_AWREGION;
  wire [2:0]m03_couplers_to_auto_ds_AWSIZE;
  wire m03_couplers_to_auto_ds_AWVALID;
  wire [15:0]m03_couplers_to_auto_ds_BID;
  wire m03_couplers_to_auto_ds_BREADY;
  wire [1:0]m03_couplers_to_auto_ds_BRESP;
  wire m03_couplers_to_auto_ds_BVALID;
  wire [127:0]m03_couplers_to_auto_ds_RDATA;
  wire [15:0]m03_couplers_to_auto_ds_RID;
  wire m03_couplers_to_auto_ds_RLAST;
  wire m03_couplers_to_auto_ds_RREADY;
  wire [1:0]m03_couplers_to_auto_ds_RRESP;
  wire m03_couplers_to_auto_ds_RVALID;
  wire [127:0]m03_couplers_to_auto_ds_WDATA;
  wire m03_couplers_to_auto_ds_WLAST;
  wire m03_couplers_to_auto_ds_WREADY;
  wire [15:0]m03_couplers_to_auto_ds_WSTRB;
  wire m03_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m03_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m03_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m03_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m03_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m03_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m03_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m03_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_2 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m03_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m03_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m03_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_ds_BID),
        .s_axi_bready(m03_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m03_couplers_to_auto_ds_RID),
        .s_axi_rlast(m03_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m03_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m03_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m04_couplers_imp_NB1YAO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m04_couplers_ARADDR;
  wire [2:0]auto_pc_to_m04_couplers_ARPROT;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [39:0]auto_pc_to_m04_couplers_AWADDR;
  wire [2:0]auto_pc_to_m04_couplers_AWPROT;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [39:0]m04_couplers_to_auto_ds_ARADDR;
  wire [1:0]m04_couplers_to_auto_ds_ARBURST;
  wire [3:0]m04_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m04_couplers_to_auto_ds_ARID;
  wire [7:0]m04_couplers_to_auto_ds_ARLEN;
  wire [0:0]m04_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m04_couplers_to_auto_ds_ARPROT;
  wire [3:0]m04_couplers_to_auto_ds_ARQOS;
  wire m04_couplers_to_auto_ds_ARREADY;
  wire [3:0]m04_couplers_to_auto_ds_ARREGION;
  wire [2:0]m04_couplers_to_auto_ds_ARSIZE;
  wire m04_couplers_to_auto_ds_ARVALID;
  wire [39:0]m04_couplers_to_auto_ds_AWADDR;
  wire [1:0]m04_couplers_to_auto_ds_AWBURST;
  wire [3:0]m04_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m04_couplers_to_auto_ds_AWID;
  wire [7:0]m04_couplers_to_auto_ds_AWLEN;
  wire [0:0]m04_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m04_couplers_to_auto_ds_AWPROT;
  wire [3:0]m04_couplers_to_auto_ds_AWQOS;
  wire m04_couplers_to_auto_ds_AWREADY;
  wire [3:0]m04_couplers_to_auto_ds_AWREGION;
  wire [2:0]m04_couplers_to_auto_ds_AWSIZE;
  wire m04_couplers_to_auto_ds_AWVALID;
  wire [15:0]m04_couplers_to_auto_ds_BID;
  wire m04_couplers_to_auto_ds_BREADY;
  wire [1:0]m04_couplers_to_auto_ds_BRESP;
  wire m04_couplers_to_auto_ds_BVALID;
  wire [127:0]m04_couplers_to_auto_ds_RDATA;
  wire [15:0]m04_couplers_to_auto_ds_RID;
  wire m04_couplers_to_auto_ds_RLAST;
  wire m04_couplers_to_auto_ds_RREADY;
  wire [1:0]m04_couplers_to_auto_ds_RRESP;
  wire m04_couplers_to_auto_ds_RVALID;
  wire [127:0]m04_couplers_to_auto_ds_WDATA;
  wire m04_couplers_to_auto_ds_WLAST;
  wire m04_couplers_to_auto_ds_WREADY;
  wire [15:0]m04_couplers_to_auto_ds_WSTRB;
  wire m04_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m04_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m04_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m04_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m04_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m04_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m04_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m04_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m04_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_3 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m04_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m04_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m04_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m04_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m04_couplers_to_auto_ds_BID),
        .s_axi_bready(m04_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m04_couplers_to_auto_ds_RID),
        .s_axi_rlast(m04_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m04_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m04_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m04_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m04_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_1FZ4A9T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m05_couplers_ARADDR;
  wire [2:0]auto_pc_to_m05_couplers_ARPROT;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [39:0]auto_pc_to_m05_couplers_AWADDR;
  wire [2:0]auto_pc_to_m05_couplers_AWPROT;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [39:0]m05_couplers_to_auto_ds_ARADDR;
  wire [1:0]m05_couplers_to_auto_ds_ARBURST;
  wire [3:0]m05_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m05_couplers_to_auto_ds_ARID;
  wire [7:0]m05_couplers_to_auto_ds_ARLEN;
  wire [0:0]m05_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m05_couplers_to_auto_ds_ARPROT;
  wire [3:0]m05_couplers_to_auto_ds_ARQOS;
  wire m05_couplers_to_auto_ds_ARREADY;
  wire [3:0]m05_couplers_to_auto_ds_ARREGION;
  wire [2:0]m05_couplers_to_auto_ds_ARSIZE;
  wire m05_couplers_to_auto_ds_ARVALID;
  wire [39:0]m05_couplers_to_auto_ds_AWADDR;
  wire [1:0]m05_couplers_to_auto_ds_AWBURST;
  wire [3:0]m05_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m05_couplers_to_auto_ds_AWID;
  wire [7:0]m05_couplers_to_auto_ds_AWLEN;
  wire [0:0]m05_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m05_couplers_to_auto_ds_AWPROT;
  wire [3:0]m05_couplers_to_auto_ds_AWQOS;
  wire m05_couplers_to_auto_ds_AWREADY;
  wire [3:0]m05_couplers_to_auto_ds_AWREGION;
  wire [2:0]m05_couplers_to_auto_ds_AWSIZE;
  wire m05_couplers_to_auto_ds_AWVALID;
  wire [15:0]m05_couplers_to_auto_ds_BID;
  wire m05_couplers_to_auto_ds_BREADY;
  wire [1:0]m05_couplers_to_auto_ds_BRESP;
  wire m05_couplers_to_auto_ds_BVALID;
  wire [127:0]m05_couplers_to_auto_ds_RDATA;
  wire [15:0]m05_couplers_to_auto_ds_RID;
  wire m05_couplers_to_auto_ds_RLAST;
  wire m05_couplers_to_auto_ds_RREADY;
  wire [1:0]m05_couplers_to_auto_ds_RRESP;
  wire m05_couplers_to_auto_ds_RVALID;
  wire [127:0]m05_couplers_to_auto_ds_WDATA;
  wire m05_couplers_to_auto_ds_WLAST;
  wire m05_couplers_to_auto_ds_WREADY;
  wire [15:0]m05_couplers_to_auto_ds_WSTRB;
  wire m05_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m05_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m05_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m05_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m05_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m05_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m05_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m05_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m05_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_4 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m05_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m05_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m05_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m05_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m05_couplers_to_auto_ds_BID),
        .s_axi_bready(m05_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m05_couplers_to_auto_ds_RID),
        .s_axi_rlast(m05_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m05_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m05_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m05_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m05_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m06_couplers_imp_MPDFMR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m06_couplers_ARADDR;
  wire [2:0]auto_pc_to_m06_couplers_ARPROT;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [39:0]auto_pc_to_m06_couplers_AWADDR;
  wire [2:0]auto_pc_to_m06_couplers_AWPROT;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [39:0]m06_couplers_to_auto_ds_ARADDR;
  wire [1:0]m06_couplers_to_auto_ds_ARBURST;
  wire [3:0]m06_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m06_couplers_to_auto_ds_ARID;
  wire [7:0]m06_couplers_to_auto_ds_ARLEN;
  wire [0:0]m06_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m06_couplers_to_auto_ds_ARPROT;
  wire [3:0]m06_couplers_to_auto_ds_ARQOS;
  wire m06_couplers_to_auto_ds_ARREADY;
  wire [3:0]m06_couplers_to_auto_ds_ARREGION;
  wire [2:0]m06_couplers_to_auto_ds_ARSIZE;
  wire m06_couplers_to_auto_ds_ARVALID;
  wire [39:0]m06_couplers_to_auto_ds_AWADDR;
  wire [1:0]m06_couplers_to_auto_ds_AWBURST;
  wire [3:0]m06_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m06_couplers_to_auto_ds_AWID;
  wire [7:0]m06_couplers_to_auto_ds_AWLEN;
  wire [0:0]m06_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m06_couplers_to_auto_ds_AWPROT;
  wire [3:0]m06_couplers_to_auto_ds_AWQOS;
  wire m06_couplers_to_auto_ds_AWREADY;
  wire [3:0]m06_couplers_to_auto_ds_AWREGION;
  wire [2:0]m06_couplers_to_auto_ds_AWSIZE;
  wire m06_couplers_to_auto_ds_AWVALID;
  wire [15:0]m06_couplers_to_auto_ds_BID;
  wire m06_couplers_to_auto_ds_BREADY;
  wire [1:0]m06_couplers_to_auto_ds_BRESP;
  wire m06_couplers_to_auto_ds_BVALID;
  wire [127:0]m06_couplers_to_auto_ds_RDATA;
  wire [15:0]m06_couplers_to_auto_ds_RID;
  wire m06_couplers_to_auto_ds_RLAST;
  wire m06_couplers_to_auto_ds_RREADY;
  wire [1:0]m06_couplers_to_auto_ds_RRESP;
  wire m06_couplers_to_auto_ds_RVALID;
  wire [127:0]m06_couplers_to_auto_ds_WDATA;
  wire m06_couplers_to_auto_ds_WLAST;
  wire m06_couplers_to_auto_ds_WREADY;
  wire [15:0]m06_couplers_to_auto_ds_WSTRB;
  wire m06_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m06_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m06_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m06_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m06_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m06_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m06_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m06_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m06_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_5 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m06_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m06_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m06_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m06_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m06_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m06_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m06_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m06_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m06_couplers_to_auto_ds_BID),
        .s_axi_bready(m06_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m06_couplers_to_auto_ds_RID),
        .s_axi_rlast(m06_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m06_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m06_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m06_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m06_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_1GV49DU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m07_couplers_ARADDR;
  wire [2:0]auto_pc_to_m07_couplers_ARPROT;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [39:0]auto_pc_to_m07_couplers_AWADDR;
  wire [2:0]auto_pc_to_m07_couplers_AWPROT;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [39:0]m07_couplers_to_auto_ds_ARADDR;
  wire [1:0]m07_couplers_to_auto_ds_ARBURST;
  wire [3:0]m07_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m07_couplers_to_auto_ds_ARID;
  wire [7:0]m07_couplers_to_auto_ds_ARLEN;
  wire [0:0]m07_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m07_couplers_to_auto_ds_ARPROT;
  wire [3:0]m07_couplers_to_auto_ds_ARQOS;
  wire m07_couplers_to_auto_ds_ARREADY;
  wire [3:0]m07_couplers_to_auto_ds_ARREGION;
  wire [2:0]m07_couplers_to_auto_ds_ARSIZE;
  wire m07_couplers_to_auto_ds_ARVALID;
  wire [39:0]m07_couplers_to_auto_ds_AWADDR;
  wire [1:0]m07_couplers_to_auto_ds_AWBURST;
  wire [3:0]m07_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m07_couplers_to_auto_ds_AWID;
  wire [7:0]m07_couplers_to_auto_ds_AWLEN;
  wire [0:0]m07_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m07_couplers_to_auto_ds_AWPROT;
  wire [3:0]m07_couplers_to_auto_ds_AWQOS;
  wire m07_couplers_to_auto_ds_AWREADY;
  wire [3:0]m07_couplers_to_auto_ds_AWREGION;
  wire [2:0]m07_couplers_to_auto_ds_AWSIZE;
  wire m07_couplers_to_auto_ds_AWVALID;
  wire [15:0]m07_couplers_to_auto_ds_BID;
  wire m07_couplers_to_auto_ds_BREADY;
  wire [1:0]m07_couplers_to_auto_ds_BRESP;
  wire m07_couplers_to_auto_ds_BVALID;
  wire [127:0]m07_couplers_to_auto_ds_RDATA;
  wire [15:0]m07_couplers_to_auto_ds_RID;
  wire m07_couplers_to_auto_ds_RLAST;
  wire m07_couplers_to_auto_ds_RREADY;
  wire [1:0]m07_couplers_to_auto_ds_RRESP;
  wire m07_couplers_to_auto_ds_RVALID;
  wire [127:0]m07_couplers_to_auto_ds_WDATA;
  wire m07_couplers_to_auto_ds_WLAST;
  wire m07_couplers_to_auto_ds_WREADY;
  wire [15:0]m07_couplers_to_auto_ds_WSTRB;
  wire m07_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m07_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m07_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m07_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m07_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m07_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m07_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m07_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m07_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_6 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m07_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m07_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m07_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m07_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m07_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m07_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m07_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m07_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m07_couplers_to_auto_ds_BID),
        .s_axi_bready(m07_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m07_couplers_to_auto_ds_RID),
        .s_axi_rlast(m07_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m07_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m07_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m07_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m07_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m08_couplers_imp_K8X5UY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m08_couplers_ARADDR;
  wire [2:0]auto_pc_to_m08_couplers_ARPROT;
  wire auto_pc_to_m08_couplers_ARREADY;
  wire auto_pc_to_m08_couplers_ARVALID;
  wire [39:0]auto_pc_to_m08_couplers_AWADDR;
  wire [2:0]auto_pc_to_m08_couplers_AWPROT;
  wire auto_pc_to_m08_couplers_AWREADY;
  wire auto_pc_to_m08_couplers_AWVALID;
  wire auto_pc_to_m08_couplers_BREADY;
  wire [1:0]auto_pc_to_m08_couplers_BRESP;
  wire auto_pc_to_m08_couplers_BVALID;
  wire [31:0]auto_pc_to_m08_couplers_RDATA;
  wire auto_pc_to_m08_couplers_RREADY;
  wire [1:0]auto_pc_to_m08_couplers_RRESP;
  wire auto_pc_to_m08_couplers_RVALID;
  wire [31:0]auto_pc_to_m08_couplers_WDATA;
  wire auto_pc_to_m08_couplers_WREADY;
  wire [3:0]auto_pc_to_m08_couplers_WSTRB;
  wire auto_pc_to_m08_couplers_WVALID;
  wire [39:0]m08_couplers_to_auto_ds_ARADDR;
  wire [1:0]m08_couplers_to_auto_ds_ARBURST;
  wire [3:0]m08_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m08_couplers_to_auto_ds_ARID;
  wire [7:0]m08_couplers_to_auto_ds_ARLEN;
  wire [0:0]m08_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m08_couplers_to_auto_ds_ARPROT;
  wire [3:0]m08_couplers_to_auto_ds_ARQOS;
  wire m08_couplers_to_auto_ds_ARREADY;
  wire [3:0]m08_couplers_to_auto_ds_ARREGION;
  wire [2:0]m08_couplers_to_auto_ds_ARSIZE;
  wire m08_couplers_to_auto_ds_ARVALID;
  wire [39:0]m08_couplers_to_auto_ds_AWADDR;
  wire [1:0]m08_couplers_to_auto_ds_AWBURST;
  wire [3:0]m08_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m08_couplers_to_auto_ds_AWID;
  wire [7:0]m08_couplers_to_auto_ds_AWLEN;
  wire [0:0]m08_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m08_couplers_to_auto_ds_AWPROT;
  wire [3:0]m08_couplers_to_auto_ds_AWQOS;
  wire m08_couplers_to_auto_ds_AWREADY;
  wire [3:0]m08_couplers_to_auto_ds_AWREGION;
  wire [2:0]m08_couplers_to_auto_ds_AWSIZE;
  wire m08_couplers_to_auto_ds_AWVALID;
  wire [15:0]m08_couplers_to_auto_ds_BID;
  wire m08_couplers_to_auto_ds_BREADY;
  wire [1:0]m08_couplers_to_auto_ds_BRESP;
  wire m08_couplers_to_auto_ds_BVALID;
  wire [127:0]m08_couplers_to_auto_ds_RDATA;
  wire [15:0]m08_couplers_to_auto_ds_RID;
  wire m08_couplers_to_auto_ds_RLAST;
  wire m08_couplers_to_auto_ds_RREADY;
  wire [1:0]m08_couplers_to_auto_ds_RRESP;
  wire m08_couplers_to_auto_ds_RVALID;
  wire [127:0]m08_couplers_to_auto_ds_WDATA;
  wire m08_couplers_to_auto_ds_WLAST;
  wire m08_couplers_to_auto_ds_WREADY;
  wire [15:0]m08_couplers_to_auto_ds_WSTRB;
  wire m08_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m08_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m08_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m08_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m08_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m08_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m08_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m08_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m08_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m08_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m08_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m08_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m08_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m08_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m08_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m08_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m08_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m08_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m08_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m08_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_7 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m08_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m08_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m08_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m08_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m08_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m08_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m08_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m08_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m08_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m08_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m08_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m08_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m08_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m08_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m08_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m08_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m08_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m08_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m08_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m08_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m08_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m08_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m08_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m08_couplers_to_auto_ds_BID),
        .s_axi_bready(m08_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m08_couplers_to_auto_ds_RID),
        .s_axi_rlast(m08_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m08_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m08_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m08_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_6 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m08_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m08_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m08_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m08_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m08_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m09_couplers_imp_1AITGY3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m09_couplers_ARADDR;
  wire [2:0]auto_pc_to_m09_couplers_ARPROT;
  wire auto_pc_to_m09_couplers_ARREADY;
  wire auto_pc_to_m09_couplers_ARVALID;
  wire [39:0]auto_pc_to_m09_couplers_AWADDR;
  wire [2:0]auto_pc_to_m09_couplers_AWPROT;
  wire auto_pc_to_m09_couplers_AWREADY;
  wire auto_pc_to_m09_couplers_AWVALID;
  wire auto_pc_to_m09_couplers_BREADY;
  wire [1:0]auto_pc_to_m09_couplers_BRESP;
  wire auto_pc_to_m09_couplers_BVALID;
  wire [31:0]auto_pc_to_m09_couplers_RDATA;
  wire auto_pc_to_m09_couplers_RREADY;
  wire [1:0]auto_pc_to_m09_couplers_RRESP;
  wire auto_pc_to_m09_couplers_RVALID;
  wire [31:0]auto_pc_to_m09_couplers_WDATA;
  wire auto_pc_to_m09_couplers_WREADY;
  wire [3:0]auto_pc_to_m09_couplers_WSTRB;
  wire auto_pc_to_m09_couplers_WVALID;
  wire [39:0]m09_couplers_to_auto_ds_ARADDR;
  wire [1:0]m09_couplers_to_auto_ds_ARBURST;
  wire [3:0]m09_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m09_couplers_to_auto_ds_ARID;
  wire [7:0]m09_couplers_to_auto_ds_ARLEN;
  wire [0:0]m09_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m09_couplers_to_auto_ds_ARPROT;
  wire [3:0]m09_couplers_to_auto_ds_ARQOS;
  wire m09_couplers_to_auto_ds_ARREADY;
  wire [3:0]m09_couplers_to_auto_ds_ARREGION;
  wire [2:0]m09_couplers_to_auto_ds_ARSIZE;
  wire m09_couplers_to_auto_ds_ARVALID;
  wire [39:0]m09_couplers_to_auto_ds_AWADDR;
  wire [1:0]m09_couplers_to_auto_ds_AWBURST;
  wire [3:0]m09_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m09_couplers_to_auto_ds_AWID;
  wire [7:0]m09_couplers_to_auto_ds_AWLEN;
  wire [0:0]m09_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m09_couplers_to_auto_ds_AWPROT;
  wire [3:0]m09_couplers_to_auto_ds_AWQOS;
  wire m09_couplers_to_auto_ds_AWREADY;
  wire [3:0]m09_couplers_to_auto_ds_AWREGION;
  wire [2:0]m09_couplers_to_auto_ds_AWSIZE;
  wire m09_couplers_to_auto_ds_AWVALID;
  wire [15:0]m09_couplers_to_auto_ds_BID;
  wire m09_couplers_to_auto_ds_BREADY;
  wire [1:0]m09_couplers_to_auto_ds_BRESP;
  wire m09_couplers_to_auto_ds_BVALID;
  wire [127:0]m09_couplers_to_auto_ds_RDATA;
  wire [15:0]m09_couplers_to_auto_ds_RID;
  wire m09_couplers_to_auto_ds_RLAST;
  wire m09_couplers_to_auto_ds_RREADY;
  wire [1:0]m09_couplers_to_auto_ds_RRESP;
  wire m09_couplers_to_auto_ds_RVALID;
  wire [127:0]m09_couplers_to_auto_ds_WDATA;
  wire m09_couplers_to_auto_ds_WLAST;
  wire m09_couplers_to_auto_ds_WREADY;
  wire [15:0]m09_couplers_to_auto_ds_WSTRB;
  wire m09_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m09_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m09_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m09_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m09_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m09_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m09_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m09_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m09_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m09_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m09_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m09_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m09_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m09_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m09_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m09_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m09_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m09_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m09_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m09_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m09_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m09_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m09_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m09_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m09_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m09_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m09_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m09_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m09_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m09_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_8 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m09_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m09_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m09_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m09_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m09_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m09_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m09_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m09_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m09_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m09_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m09_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m09_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m09_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m09_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m09_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m09_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m09_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m09_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m09_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m09_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m09_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m09_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m09_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m09_couplers_to_auto_ds_BID),
        .s_axi_bready(m09_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m09_couplers_to_auto_ds_RID),
        .s_axi_rlast(m09_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m09_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m09_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m09_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_7 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m09_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m09_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m09_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m09_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m09_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m09_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m09_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m10_couplers_imp_11TD8LA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m10_couplers_ARADDR;
  wire [2:0]auto_pc_to_m10_couplers_ARPROT;
  wire auto_pc_to_m10_couplers_ARREADY;
  wire auto_pc_to_m10_couplers_ARVALID;
  wire [39:0]auto_pc_to_m10_couplers_AWADDR;
  wire [2:0]auto_pc_to_m10_couplers_AWPROT;
  wire auto_pc_to_m10_couplers_AWREADY;
  wire auto_pc_to_m10_couplers_AWVALID;
  wire auto_pc_to_m10_couplers_BREADY;
  wire [1:0]auto_pc_to_m10_couplers_BRESP;
  wire auto_pc_to_m10_couplers_BVALID;
  wire [31:0]auto_pc_to_m10_couplers_RDATA;
  wire auto_pc_to_m10_couplers_RREADY;
  wire [1:0]auto_pc_to_m10_couplers_RRESP;
  wire auto_pc_to_m10_couplers_RVALID;
  wire [31:0]auto_pc_to_m10_couplers_WDATA;
  wire auto_pc_to_m10_couplers_WREADY;
  wire [3:0]auto_pc_to_m10_couplers_WSTRB;
  wire auto_pc_to_m10_couplers_WVALID;
  wire [39:0]m10_couplers_to_auto_ds_ARADDR;
  wire [1:0]m10_couplers_to_auto_ds_ARBURST;
  wire [3:0]m10_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m10_couplers_to_auto_ds_ARID;
  wire [7:0]m10_couplers_to_auto_ds_ARLEN;
  wire [0:0]m10_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m10_couplers_to_auto_ds_ARPROT;
  wire [3:0]m10_couplers_to_auto_ds_ARQOS;
  wire m10_couplers_to_auto_ds_ARREADY;
  wire [3:0]m10_couplers_to_auto_ds_ARREGION;
  wire [2:0]m10_couplers_to_auto_ds_ARSIZE;
  wire m10_couplers_to_auto_ds_ARVALID;
  wire [39:0]m10_couplers_to_auto_ds_AWADDR;
  wire [1:0]m10_couplers_to_auto_ds_AWBURST;
  wire [3:0]m10_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m10_couplers_to_auto_ds_AWID;
  wire [7:0]m10_couplers_to_auto_ds_AWLEN;
  wire [0:0]m10_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m10_couplers_to_auto_ds_AWPROT;
  wire [3:0]m10_couplers_to_auto_ds_AWQOS;
  wire m10_couplers_to_auto_ds_AWREADY;
  wire [3:0]m10_couplers_to_auto_ds_AWREGION;
  wire [2:0]m10_couplers_to_auto_ds_AWSIZE;
  wire m10_couplers_to_auto_ds_AWVALID;
  wire [15:0]m10_couplers_to_auto_ds_BID;
  wire m10_couplers_to_auto_ds_BREADY;
  wire [1:0]m10_couplers_to_auto_ds_BRESP;
  wire m10_couplers_to_auto_ds_BVALID;
  wire [127:0]m10_couplers_to_auto_ds_RDATA;
  wire [15:0]m10_couplers_to_auto_ds_RID;
  wire m10_couplers_to_auto_ds_RLAST;
  wire m10_couplers_to_auto_ds_RREADY;
  wire [1:0]m10_couplers_to_auto_ds_RRESP;
  wire m10_couplers_to_auto_ds_RVALID;
  wire [127:0]m10_couplers_to_auto_ds_WDATA;
  wire m10_couplers_to_auto_ds_WLAST;
  wire m10_couplers_to_auto_ds_WREADY;
  wire [15:0]m10_couplers_to_auto_ds_WSTRB;
  wire m10_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m10_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m10_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m10_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m10_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m10_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m10_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m10_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m10_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m10_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m10_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m10_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m10_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m10_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m10_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m10_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m10_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m10_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m10_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m10_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m10_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m10_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m10_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m10_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m10_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m10_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m10_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m10_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m10_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m10_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m10_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_9 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m10_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m10_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m10_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m10_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m10_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m10_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m10_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m10_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m10_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m10_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m10_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m10_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m10_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m10_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m10_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m10_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m10_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m10_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m10_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m10_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m10_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m10_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m10_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m10_couplers_to_auto_ds_BID),
        .s_axi_bready(m10_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m10_couplers_to_auto_ds_RID),
        .s_axi_rlast(m10_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m10_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m10_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m10_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_8 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m10_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m10_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m10_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m10_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m10_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m11_couplers_imp_SLT6JJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m11_couplers_ARADDR;
  wire auto_pc_to_m11_couplers_ARREADY;
  wire auto_pc_to_m11_couplers_ARVALID;
  wire [39:0]auto_pc_to_m11_couplers_AWADDR;
  wire auto_pc_to_m11_couplers_AWREADY;
  wire auto_pc_to_m11_couplers_AWVALID;
  wire auto_pc_to_m11_couplers_BREADY;
  wire [1:0]auto_pc_to_m11_couplers_BRESP;
  wire auto_pc_to_m11_couplers_BVALID;
  wire [31:0]auto_pc_to_m11_couplers_RDATA;
  wire auto_pc_to_m11_couplers_RREADY;
  wire [1:0]auto_pc_to_m11_couplers_RRESP;
  wire auto_pc_to_m11_couplers_RVALID;
  wire [31:0]auto_pc_to_m11_couplers_WDATA;
  wire auto_pc_to_m11_couplers_WREADY;
  wire [3:0]auto_pc_to_m11_couplers_WSTRB;
  wire auto_pc_to_m11_couplers_WVALID;
  wire [39:0]m11_couplers_to_auto_ds_ARADDR;
  wire [1:0]m11_couplers_to_auto_ds_ARBURST;
  wire [3:0]m11_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m11_couplers_to_auto_ds_ARID;
  wire [7:0]m11_couplers_to_auto_ds_ARLEN;
  wire [0:0]m11_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m11_couplers_to_auto_ds_ARPROT;
  wire [3:0]m11_couplers_to_auto_ds_ARQOS;
  wire m11_couplers_to_auto_ds_ARREADY;
  wire [3:0]m11_couplers_to_auto_ds_ARREGION;
  wire [2:0]m11_couplers_to_auto_ds_ARSIZE;
  wire m11_couplers_to_auto_ds_ARVALID;
  wire [39:0]m11_couplers_to_auto_ds_AWADDR;
  wire [1:0]m11_couplers_to_auto_ds_AWBURST;
  wire [3:0]m11_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m11_couplers_to_auto_ds_AWID;
  wire [7:0]m11_couplers_to_auto_ds_AWLEN;
  wire [0:0]m11_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m11_couplers_to_auto_ds_AWPROT;
  wire [3:0]m11_couplers_to_auto_ds_AWQOS;
  wire m11_couplers_to_auto_ds_AWREADY;
  wire [3:0]m11_couplers_to_auto_ds_AWREGION;
  wire [2:0]m11_couplers_to_auto_ds_AWSIZE;
  wire m11_couplers_to_auto_ds_AWVALID;
  wire [15:0]m11_couplers_to_auto_ds_BID;
  wire m11_couplers_to_auto_ds_BREADY;
  wire [1:0]m11_couplers_to_auto_ds_BRESP;
  wire m11_couplers_to_auto_ds_BVALID;
  wire [127:0]m11_couplers_to_auto_ds_RDATA;
  wire [15:0]m11_couplers_to_auto_ds_RID;
  wire m11_couplers_to_auto_ds_RLAST;
  wire m11_couplers_to_auto_ds_RREADY;
  wire [1:0]m11_couplers_to_auto_ds_RRESP;
  wire m11_couplers_to_auto_ds_RVALID;
  wire [127:0]m11_couplers_to_auto_ds_WDATA;
  wire m11_couplers_to_auto_ds_WLAST;
  wire m11_couplers_to_auto_ds_WREADY;
  wire [15:0]m11_couplers_to_auto_ds_WSTRB;
  wire m11_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m11_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m11_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m11_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m11_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m11_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m11_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m11_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m11_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m11_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m11_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m11_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m11_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m11_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m11_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m11_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m11_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m11_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m11_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m11_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m11_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m11_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m11_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m11_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m11_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m11_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m11_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m11_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m11_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m11_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m11_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m11_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m11_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m11_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m11_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m11_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m11_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m11_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_10 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m11_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m11_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m11_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m11_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m11_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m11_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m11_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m11_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m11_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m11_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m11_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m11_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m11_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m11_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m11_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m11_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m11_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m11_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m11_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m11_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m11_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m11_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m11_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m11_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m11_couplers_to_auto_ds_BID),
        .s_axi_bready(m11_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m11_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m11_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m11_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m11_couplers_to_auto_ds_RID),
        .s_axi_rlast(m11_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m11_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m11_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m11_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m11_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m11_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m11_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m11_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m11_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_9 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m11_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m11_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m11_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m11_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m11_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m11_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m11_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m11_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m11_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m11_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m11_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m11_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m11_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m11_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m11_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m11_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m11_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m12_couplers_imp_13AKZEL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m12_couplers_ARADDR;
  wire [2:0]auto_pc_to_m12_couplers_ARPROT;
  wire auto_pc_to_m12_couplers_ARREADY;
  wire auto_pc_to_m12_couplers_ARVALID;
  wire [39:0]auto_pc_to_m12_couplers_AWADDR;
  wire [2:0]auto_pc_to_m12_couplers_AWPROT;
  wire auto_pc_to_m12_couplers_AWREADY;
  wire auto_pc_to_m12_couplers_AWVALID;
  wire auto_pc_to_m12_couplers_BREADY;
  wire [1:0]auto_pc_to_m12_couplers_BRESP;
  wire auto_pc_to_m12_couplers_BVALID;
  wire [31:0]auto_pc_to_m12_couplers_RDATA;
  wire auto_pc_to_m12_couplers_RREADY;
  wire [1:0]auto_pc_to_m12_couplers_RRESP;
  wire auto_pc_to_m12_couplers_RVALID;
  wire [31:0]auto_pc_to_m12_couplers_WDATA;
  wire auto_pc_to_m12_couplers_WREADY;
  wire [3:0]auto_pc_to_m12_couplers_WSTRB;
  wire auto_pc_to_m12_couplers_WVALID;
  wire [39:0]m12_couplers_to_auto_ds_ARADDR;
  wire [1:0]m12_couplers_to_auto_ds_ARBURST;
  wire [3:0]m12_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m12_couplers_to_auto_ds_ARID;
  wire [7:0]m12_couplers_to_auto_ds_ARLEN;
  wire [0:0]m12_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m12_couplers_to_auto_ds_ARPROT;
  wire [3:0]m12_couplers_to_auto_ds_ARQOS;
  wire m12_couplers_to_auto_ds_ARREADY;
  wire [3:0]m12_couplers_to_auto_ds_ARREGION;
  wire [2:0]m12_couplers_to_auto_ds_ARSIZE;
  wire m12_couplers_to_auto_ds_ARVALID;
  wire [39:0]m12_couplers_to_auto_ds_AWADDR;
  wire [1:0]m12_couplers_to_auto_ds_AWBURST;
  wire [3:0]m12_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m12_couplers_to_auto_ds_AWID;
  wire [7:0]m12_couplers_to_auto_ds_AWLEN;
  wire [0:0]m12_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m12_couplers_to_auto_ds_AWPROT;
  wire [3:0]m12_couplers_to_auto_ds_AWQOS;
  wire m12_couplers_to_auto_ds_AWREADY;
  wire [3:0]m12_couplers_to_auto_ds_AWREGION;
  wire [2:0]m12_couplers_to_auto_ds_AWSIZE;
  wire m12_couplers_to_auto_ds_AWVALID;
  wire [15:0]m12_couplers_to_auto_ds_BID;
  wire m12_couplers_to_auto_ds_BREADY;
  wire [1:0]m12_couplers_to_auto_ds_BRESP;
  wire m12_couplers_to_auto_ds_BVALID;
  wire [127:0]m12_couplers_to_auto_ds_RDATA;
  wire [15:0]m12_couplers_to_auto_ds_RID;
  wire m12_couplers_to_auto_ds_RLAST;
  wire m12_couplers_to_auto_ds_RREADY;
  wire [1:0]m12_couplers_to_auto_ds_RRESP;
  wire m12_couplers_to_auto_ds_RVALID;
  wire [127:0]m12_couplers_to_auto_ds_WDATA;
  wire m12_couplers_to_auto_ds_WLAST;
  wire m12_couplers_to_auto_ds_WREADY;
  wire [15:0]m12_couplers_to_auto_ds_WSTRB;
  wire m12_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m12_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m12_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m12_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m12_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m12_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m12_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m12_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m12_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m12_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m12_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m12_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m12_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m12_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m12_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m12_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m12_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m12_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m12_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m12_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m12_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m12_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m12_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m12_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m12_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m12_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m12_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m12_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m12_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m12_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m12_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m12_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m12_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m12_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m12_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m12_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m12_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m12_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m12_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m12_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m12_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m12_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_11 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m12_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m12_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m12_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m12_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m12_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m12_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m12_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m12_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m12_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m12_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m12_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m12_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m12_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m12_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m12_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m12_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m12_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m12_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m12_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m12_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m12_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m12_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m12_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m12_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m12_couplers_to_auto_ds_BID),
        .s_axi_bready(m12_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m12_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m12_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m12_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m12_couplers_to_auto_ds_RID),
        .s_axi_rlast(m12_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m12_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m12_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m12_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m12_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m12_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m12_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m12_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m12_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_10 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m12_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m12_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m12_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m12_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m12_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m12_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m12_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m12_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m12_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m12_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m12_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m12_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m12_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m12_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m12_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m12_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m12_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m12_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m12_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m13_couplers_imp_REVGT8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m13_couplers_ARADDR;
  wire auto_pc_to_m13_couplers_ARREADY;
  wire auto_pc_to_m13_couplers_ARVALID;
  wire [39:0]auto_pc_to_m13_couplers_AWADDR;
  wire auto_pc_to_m13_couplers_AWREADY;
  wire auto_pc_to_m13_couplers_AWVALID;
  wire auto_pc_to_m13_couplers_BREADY;
  wire [1:0]auto_pc_to_m13_couplers_BRESP;
  wire auto_pc_to_m13_couplers_BVALID;
  wire [31:0]auto_pc_to_m13_couplers_RDATA;
  wire auto_pc_to_m13_couplers_RREADY;
  wire [1:0]auto_pc_to_m13_couplers_RRESP;
  wire auto_pc_to_m13_couplers_RVALID;
  wire [31:0]auto_pc_to_m13_couplers_WDATA;
  wire auto_pc_to_m13_couplers_WREADY;
  wire [3:0]auto_pc_to_m13_couplers_WSTRB;
  wire auto_pc_to_m13_couplers_WVALID;
  wire [39:0]m13_couplers_to_auto_ds_ARADDR;
  wire [1:0]m13_couplers_to_auto_ds_ARBURST;
  wire [3:0]m13_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m13_couplers_to_auto_ds_ARID;
  wire [7:0]m13_couplers_to_auto_ds_ARLEN;
  wire [0:0]m13_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m13_couplers_to_auto_ds_ARPROT;
  wire [3:0]m13_couplers_to_auto_ds_ARQOS;
  wire m13_couplers_to_auto_ds_ARREADY;
  wire [3:0]m13_couplers_to_auto_ds_ARREGION;
  wire [2:0]m13_couplers_to_auto_ds_ARSIZE;
  wire m13_couplers_to_auto_ds_ARVALID;
  wire [39:0]m13_couplers_to_auto_ds_AWADDR;
  wire [1:0]m13_couplers_to_auto_ds_AWBURST;
  wire [3:0]m13_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m13_couplers_to_auto_ds_AWID;
  wire [7:0]m13_couplers_to_auto_ds_AWLEN;
  wire [0:0]m13_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m13_couplers_to_auto_ds_AWPROT;
  wire [3:0]m13_couplers_to_auto_ds_AWQOS;
  wire m13_couplers_to_auto_ds_AWREADY;
  wire [3:0]m13_couplers_to_auto_ds_AWREGION;
  wire [2:0]m13_couplers_to_auto_ds_AWSIZE;
  wire m13_couplers_to_auto_ds_AWVALID;
  wire [15:0]m13_couplers_to_auto_ds_BID;
  wire m13_couplers_to_auto_ds_BREADY;
  wire [1:0]m13_couplers_to_auto_ds_BRESP;
  wire m13_couplers_to_auto_ds_BVALID;
  wire [127:0]m13_couplers_to_auto_ds_RDATA;
  wire [15:0]m13_couplers_to_auto_ds_RID;
  wire m13_couplers_to_auto_ds_RLAST;
  wire m13_couplers_to_auto_ds_RREADY;
  wire [1:0]m13_couplers_to_auto_ds_RRESP;
  wire m13_couplers_to_auto_ds_RVALID;
  wire [127:0]m13_couplers_to_auto_ds_WDATA;
  wire m13_couplers_to_auto_ds_WLAST;
  wire m13_couplers_to_auto_ds_WREADY;
  wire [15:0]m13_couplers_to_auto_ds_WSTRB;
  wire m13_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m13_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m13_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m13_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m13_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m13_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m13_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m13_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m13_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m13_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m13_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m13_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m13_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m13_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m13_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m13_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m13_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m13_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m13_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m13_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m13_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m13_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m13_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m13_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m13_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m13_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m13_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m13_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m13_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m13_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m13_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m13_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m13_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m13_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m13_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m13_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m13_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m13_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m13_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m13_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m13_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_12 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m13_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m13_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m13_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m13_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m13_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m13_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m13_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m13_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m13_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m13_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m13_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m13_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m13_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m13_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m13_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m13_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m13_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m13_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m13_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m13_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m13_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m13_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m13_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m13_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m13_couplers_to_auto_ds_BID),
        .s_axi_bready(m13_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m13_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m13_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m13_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m13_couplers_to_auto_ds_RID),
        .s_axi_rlast(m13_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m13_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m13_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m13_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m13_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m13_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m13_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m13_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m13_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_11 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m13_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m13_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m13_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m13_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m13_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m13_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m13_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m13_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m13_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m13_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m13_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m13_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m13_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m13_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m13_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m13_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m13_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m14_couplers_imp_10LD0VS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [15:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [15:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [15:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [15:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [15:0]auto_pc_to_m14_couplers_ARADDR;
  wire [2:0]auto_pc_to_m14_couplers_ARPROT;
  wire auto_pc_to_m14_couplers_ARREADY;
  wire auto_pc_to_m14_couplers_ARVALID;
  wire [15:0]auto_pc_to_m14_couplers_AWADDR;
  wire [2:0]auto_pc_to_m14_couplers_AWPROT;
  wire auto_pc_to_m14_couplers_AWREADY;
  wire auto_pc_to_m14_couplers_AWVALID;
  wire auto_pc_to_m14_couplers_BREADY;
  wire [1:0]auto_pc_to_m14_couplers_BRESP;
  wire auto_pc_to_m14_couplers_BVALID;
  wire [31:0]auto_pc_to_m14_couplers_RDATA;
  wire auto_pc_to_m14_couplers_RREADY;
  wire [1:0]auto_pc_to_m14_couplers_RRESP;
  wire auto_pc_to_m14_couplers_RVALID;
  wire [31:0]auto_pc_to_m14_couplers_WDATA;
  wire auto_pc_to_m14_couplers_WREADY;
  wire [3:0]auto_pc_to_m14_couplers_WSTRB;
  wire auto_pc_to_m14_couplers_WVALID;
  wire [39:0]m14_couplers_to_auto_ds_ARADDR;
  wire [1:0]m14_couplers_to_auto_ds_ARBURST;
  wire [3:0]m14_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m14_couplers_to_auto_ds_ARID;
  wire [7:0]m14_couplers_to_auto_ds_ARLEN;
  wire [0:0]m14_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m14_couplers_to_auto_ds_ARPROT;
  wire [3:0]m14_couplers_to_auto_ds_ARQOS;
  wire m14_couplers_to_auto_ds_ARREADY;
  wire [3:0]m14_couplers_to_auto_ds_ARREGION;
  wire [2:0]m14_couplers_to_auto_ds_ARSIZE;
  wire m14_couplers_to_auto_ds_ARVALID;
  wire [39:0]m14_couplers_to_auto_ds_AWADDR;
  wire [1:0]m14_couplers_to_auto_ds_AWBURST;
  wire [3:0]m14_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m14_couplers_to_auto_ds_AWID;
  wire [7:0]m14_couplers_to_auto_ds_AWLEN;
  wire [0:0]m14_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m14_couplers_to_auto_ds_AWPROT;
  wire [3:0]m14_couplers_to_auto_ds_AWQOS;
  wire m14_couplers_to_auto_ds_AWREADY;
  wire [3:0]m14_couplers_to_auto_ds_AWREGION;
  wire [2:0]m14_couplers_to_auto_ds_AWSIZE;
  wire m14_couplers_to_auto_ds_AWVALID;
  wire [15:0]m14_couplers_to_auto_ds_BID;
  wire m14_couplers_to_auto_ds_BREADY;
  wire [1:0]m14_couplers_to_auto_ds_BRESP;
  wire m14_couplers_to_auto_ds_BVALID;
  wire [127:0]m14_couplers_to_auto_ds_RDATA;
  wire [15:0]m14_couplers_to_auto_ds_RID;
  wire m14_couplers_to_auto_ds_RLAST;
  wire m14_couplers_to_auto_ds_RREADY;
  wire [1:0]m14_couplers_to_auto_ds_RRESP;
  wire m14_couplers_to_auto_ds_RVALID;
  wire [127:0]m14_couplers_to_auto_ds_WDATA;
  wire m14_couplers_to_auto_ds_WLAST;
  wire m14_couplers_to_auto_ds_WREADY;
  wire [15:0]m14_couplers_to_auto_ds_WSTRB;
  wire m14_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[15:0] = auto_pc_to_m14_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m14_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[15:0] = auto_pc_to_m14_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m14_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m14_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m14_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m14_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m14_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m14_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m14_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m14_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m14_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m14_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m14_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m14_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m14_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m14_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m14_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m14_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m14_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m14_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m14_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m14_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m14_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m14_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m14_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m14_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m14_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m14_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m14_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m14_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m14_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m14_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m14_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m14_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m14_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m14_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m14_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m14_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m14_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m14_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m14_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_13 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m14_couplers_to_auto_ds_ARADDR[15:0]),
        .s_axi_arburst(m14_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m14_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m14_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m14_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m14_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m14_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m14_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m14_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m14_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m14_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m14_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m14_couplers_to_auto_ds_AWADDR[15:0]),
        .s_axi_awburst(m14_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m14_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m14_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m14_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m14_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m14_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m14_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m14_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m14_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m14_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m14_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m14_couplers_to_auto_ds_BID),
        .s_axi_bready(m14_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m14_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m14_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m14_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m14_couplers_to_auto_ds_RID),
        .s_axi_rlast(m14_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m14_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m14_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m14_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m14_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m14_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m14_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m14_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m14_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_12 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m14_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m14_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m14_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m14_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m14_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m14_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m14_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m14_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m14_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m14_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m14_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m14_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m14_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m14_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m14_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m14_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m14_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m14_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m14_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m15_couplers_imp_U5NP7D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [19:0]auto_ds_to_m15_couplers_ARADDR;
  wire [1:0]auto_ds_to_m15_couplers_ARBURST;
  wire [3:0]auto_ds_to_m15_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m15_couplers_ARLEN;
  wire [0:0]auto_ds_to_m15_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m15_couplers_ARPROT;
  wire auto_ds_to_m15_couplers_ARREADY;
  wire [2:0]auto_ds_to_m15_couplers_ARSIZE;
  wire auto_ds_to_m15_couplers_ARVALID;
  wire [19:0]auto_ds_to_m15_couplers_AWADDR;
  wire [1:0]auto_ds_to_m15_couplers_AWBURST;
  wire [3:0]auto_ds_to_m15_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m15_couplers_AWLEN;
  wire [0:0]auto_ds_to_m15_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m15_couplers_AWPROT;
  wire auto_ds_to_m15_couplers_AWREADY;
  wire [2:0]auto_ds_to_m15_couplers_AWSIZE;
  wire auto_ds_to_m15_couplers_AWVALID;
  wire auto_ds_to_m15_couplers_BREADY;
  wire [1:0]auto_ds_to_m15_couplers_BRESP;
  wire auto_ds_to_m15_couplers_BVALID;
  wire [31:0]auto_ds_to_m15_couplers_RDATA;
  wire auto_ds_to_m15_couplers_RLAST;
  wire auto_ds_to_m15_couplers_RREADY;
  wire [1:0]auto_ds_to_m15_couplers_RRESP;
  wire auto_ds_to_m15_couplers_RVALID;
  wire [31:0]auto_ds_to_m15_couplers_WDATA;
  wire auto_ds_to_m15_couplers_WLAST;
  wire auto_ds_to_m15_couplers_WREADY;
  wire [3:0]auto_ds_to_m15_couplers_WSTRB;
  wire auto_ds_to_m15_couplers_WVALID;
  wire [39:0]m15_couplers_to_auto_ds_ARADDR;
  wire [1:0]m15_couplers_to_auto_ds_ARBURST;
  wire [3:0]m15_couplers_to_auto_ds_ARCACHE;
  wire [15:0]m15_couplers_to_auto_ds_ARID;
  wire [7:0]m15_couplers_to_auto_ds_ARLEN;
  wire [0:0]m15_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m15_couplers_to_auto_ds_ARPROT;
  wire [3:0]m15_couplers_to_auto_ds_ARQOS;
  wire m15_couplers_to_auto_ds_ARREADY;
  wire [3:0]m15_couplers_to_auto_ds_ARREGION;
  wire [2:0]m15_couplers_to_auto_ds_ARSIZE;
  wire m15_couplers_to_auto_ds_ARVALID;
  wire [39:0]m15_couplers_to_auto_ds_AWADDR;
  wire [1:0]m15_couplers_to_auto_ds_AWBURST;
  wire [3:0]m15_couplers_to_auto_ds_AWCACHE;
  wire [15:0]m15_couplers_to_auto_ds_AWID;
  wire [7:0]m15_couplers_to_auto_ds_AWLEN;
  wire [0:0]m15_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m15_couplers_to_auto_ds_AWPROT;
  wire [3:0]m15_couplers_to_auto_ds_AWQOS;
  wire m15_couplers_to_auto_ds_AWREADY;
  wire [3:0]m15_couplers_to_auto_ds_AWREGION;
  wire [2:0]m15_couplers_to_auto_ds_AWSIZE;
  wire m15_couplers_to_auto_ds_AWVALID;
  wire [15:0]m15_couplers_to_auto_ds_BID;
  wire m15_couplers_to_auto_ds_BREADY;
  wire [1:0]m15_couplers_to_auto_ds_BRESP;
  wire m15_couplers_to_auto_ds_BVALID;
  wire [127:0]m15_couplers_to_auto_ds_RDATA;
  wire [15:0]m15_couplers_to_auto_ds_RID;
  wire m15_couplers_to_auto_ds_RLAST;
  wire m15_couplers_to_auto_ds_RREADY;
  wire [1:0]m15_couplers_to_auto_ds_RRESP;
  wire m15_couplers_to_auto_ds_RVALID;
  wire [127:0]m15_couplers_to_auto_ds_WDATA;
  wire m15_couplers_to_auto_ds_WLAST;
  wire m15_couplers_to_auto_ds_WREADY;
  wire [15:0]m15_couplers_to_auto_ds_WSTRB;
  wire m15_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[19:0] = auto_ds_to_m15_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m15_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m15_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m15_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m15_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m15_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m15_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = auto_ds_to_m15_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m15_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m15_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m15_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m15_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m15_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m15_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m15_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m15_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m15_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m15_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m15_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m15_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m15_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = m15_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m15_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m15_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = m15_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m15_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m15_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m15_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m15_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m15_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m15_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m15_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m15_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m15_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign m15_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m15_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m15_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m15_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m15_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m15_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m15_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m15_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m15_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m15_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign m15_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m15_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m15_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m15_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m15_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m15_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m15_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m15_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m15_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m15_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m15_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m15_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_14 auto_ds
       (.m_axi_araddr(auto_ds_to_m15_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m15_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m15_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m15_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m15_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m15_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m15_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m15_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m15_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m15_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m15_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m15_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m15_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m15_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m15_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m15_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m15_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m15_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m15_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m15_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m15_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m15_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m15_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m15_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m15_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m15_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m15_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m15_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m15_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m15_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m15_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m15_couplers_to_auto_ds_ARADDR[19:0]),
        .s_axi_arburst(m15_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m15_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m15_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m15_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m15_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m15_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m15_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m15_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m15_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m15_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m15_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m15_couplers_to_auto_ds_AWADDR[19:0]),
        .s_axi_awburst(m15_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m15_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m15_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m15_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m15_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m15_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m15_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m15_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m15_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m15_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m15_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m15_couplers_to_auto_ds_BID),
        .s_axi_bready(m15_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m15_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m15_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m15_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m15_couplers_to_auto_ds_RID),
        .s_axi_rlast(m15_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m15_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m15_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m15_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m15_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m15_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m15_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m15_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m15_couplers_to_auto_ds_WVALID));
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [39:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [15:0]s00_couplers_to_s00_couplers_AWUSER;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [15:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [127:0]s00_couplers_to_s00_couplers_RDATA;
  wire [15:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [127:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [15:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[15:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[15:0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module timing_module_imp_2RES6C
   (Din,
    cmd_bit_act,
    cmd_bit_adc_reset,
    cmd_bit_edge,
    cmd_bit_idle,
    cmd_bit_reset,
    cmd_bit_sync,
    cmd_code_act_0,
    cmd_code_adc_reset_0,
    cmd_code_edge_0,
    cmd_code_idle_0,
    cmd_code_reset_0,
    cmd_code_sync_0,
    fake_time_stamp_en_0,
    fake_time_stamp_init_0,
    probe15,
    sclk,
    stat_0,
    ts_cdr_lol,
    ts_cdr_los,
    ts_clk,
    ts_evtctr,
    ts_rdy,
    ts_rec_clk_locked,
    ts_rec_d,
    ts_rec_d_clk,
    ts_rst,
    ts_sfp_los,
    ts_sync,
    ts_sync_v,
    ts_tstamp,
    ts_valid_0,
    tx_dis_0,
    txd_0);
  input [1023:0]Din;
  output cmd_bit_act;
  output cmd_bit_adc_reset;
  output cmd_bit_edge;
  output cmd_bit_idle;
  output cmd_bit_reset;
  output cmd_bit_sync;
  input [7:0]cmd_code_act_0;
  input [7:0]cmd_code_adc_reset_0;
  input [7:0]cmd_code_edge_0;
  input [7:0]cmd_code_idle_0;
  input [7:0]cmd_code_reset_0;
  input [7:0]cmd_code_sync_0;
  input fake_time_stamp_en_0;
  input [63:0]fake_time_stamp_init_0;
  input [0:0]probe15;
  input sclk;
  output [3:0]stat_0;
  input ts_cdr_lol;
  input ts_cdr_los;
  output ts_clk;
  output [31:0]ts_evtctr;
  output ts_rdy;
  input ts_rec_clk_locked;
  input ts_rec_d;
  input ts_rec_d_clk;
  output ts_rst;
  input ts_sfp_los;
  output [3:0]ts_sync;
  output [0:0]ts_sync_v;
  output [63:0]ts_tstamp;
  output ts_valid_0;
  output [0:0]tx_dis_0;
  output txd_0;

  wire [1023:0]axi_gpio_1_gpio_io_o;
  wire clk_wiz_0_clk_out1;
  wire [7:0]cmd_code_act_0_1;
  wire [7:0]cmd_code_adc_reset_0_1;
  wire [7:0]cmd_code_edge_0_1;
  wire [7:0]cmd_code_idle_0_1;
  wire [7:0]cmd_code_reset_0_1;
  wire [7:0]cmd_code_sync_0_1;
  wire fake_time_stamp_en_0_1;
  wire [63:0]fake_time_stamp_init_0_1;
  wire pdts_endpoint_stdlog_0_rdy;
  wire pdts_endpoint_stdlog_0_rst;
  wire [3:0]pdts_endpoint_stdlog_0_stat;
  wire [3:0]pdts_endpoint_stdlog_0_sync;
  wire pdts_endpoint_stdlog_0_sync_first;
  wire pdts_endpoint_stdlog_0_sync_stb;
  wire [63:0]pdts_endpoint_stdlog_0_tstamp;
  wire pdts_endpoint_stdlog_0_tx_dis;
  wire pdts_endpoint_stdlog_0_txd;
  wire [0:0]probe15_1;
  wire sclk_1;
  wire ts_cdr_lol_1;
  wire ts_cdr_los_1;
  wire ts_rec_clk_locked_1;
  wire ts_rec_d_1;
  wire ts_rec_d_clk_1;
  wire ts_reclock_0_cmd_bit_act;
  wire ts_reclock_0_cmd_bit_adc_reset;
  wire ts_reclock_0_cmd_bit_edge;
  wire ts_reclock_0_cmd_bit_idle;
  wire ts_reclock_0_cmd_bit_reset;
  wire ts_reclock_0_cmd_bit_sync;
  wire ts_reclock_0_fifo_valid;
  wire ts_reclock_0_rdy_out;
  wire ts_reclock_0_rst_out;
  wire [3:0]ts_reclock_0_stat_out;
  wire [1:0]ts_reclock_0_state;
  wire ts_reclock_0_sync_first_out;
  wire [3:0]ts_reclock_0_sync_out;
  wire ts_reclock_0_sync_stb_out;
  wire ts_reclock_0_ts_valid;
  wire [63:0]ts_reclock_0_tstamp_out;
  wire ts_sfp_los_1;
  wire [0:0]xlconstant_1_dout;
  wire [31:0]xlconstant_2_dout;
  wire [1:0]xlslice_0_Dout;
  wire [7:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;

  assign axi_gpio_1_gpio_io_o = Din[1023:0];
  assign cmd_bit_act = ts_reclock_0_cmd_bit_act;
  assign cmd_bit_adc_reset = ts_reclock_0_cmd_bit_adc_reset;
  assign cmd_bit_edge = ts_reclock_0_cmd_bit_edge;
  assign cmd_bit_idle = ts_reclock_0_cmd_bit_idle;
  assign cmd_bit_reset = ts_reclock_0_cmd_bit_reset;
  assign cmd_bit_sync = ts_reclock_0_cmd_bit_sync;
  assign cmd_code_act_0_1 = cmd_code_act_0[7:0];
  assign cmd_code_adc_reset_0_1 = cmd_code_adc_reset_0[7:0];
  assign cmd_code_edge_0_1 = cmd_code_edge_0[7:0];
  assign cmd_code_idle_0_1 = cmd_code_idle_0[7:0];
  assign cmd_code_reset_0_1 = cmd_code_reset_0[7:0];
  assign cmd_code_sync_0_1 = cmd_code_sync_0[7:0];
  assign fake_time_stamp_en_0_1 = fake_time_stamp_en_0;
  assign fake_time_stamp_init_0_1 = fake_time_stamp_init_0[63:0];
  assign probe15_1 = probe15[0];
  assign sclk_1 = sclk;
  assign stat_0[3:0] = ts_reclock_0_stat_out;
  assign ts_cdr_lol_1 = ts_cdr_lol;
  assign ts_cdr_los_1 = ts_cdr_los;
  assign ts_clk = clk_wiz_0_clk_out1;
  assign ts_evtctr[31:0] = xlconstant_2_dout;
  assign ts_rdy = ts_reclock_0_rdy_out;
  assign ts_rec_clk_locked_1 = ts_rec_clk_locked;
  assign ts_rec_d_1 = ts_rec_d;
  assign ts_rec_d_clk_1 = ts_rec_d_clk;
  assign ts_rst = ts_reclock_0_rst_out;
  assign ts_sfp_los_1 = ts_sfp_los;
  assign ts_sync[3:0] = ts_reclock_0_sync_out;
  assign ts_sync_v[0] = xlconstant_1_dout;
  assign ts_tstamp[63:0] = ts_reclock_0_tstamp_out;
  assign ts_valid_0 = ts_reclock_0_ts_valid;
  assign tx_dis_0[0] = pdts_endpoint_stdlog_0_tx_dis;
  assign txd_0 = pdts_endpoint_stdlog_0_txd;
  design_1_ila_0_1 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(ts_reclock_0_stat_out),
        .probe1(ts_reclock_0_rst_out),
        .probe10(ts_reclock_0_cmd_bit_sync),
        .probe11(ts_reclock_0_cmd_bit_act),
        .probe12(ts_reclock_0_cmd_bit_reset),
        .probe13(ts_reclock_0_cmd_bit_adc_reset),
        .probe14(ts_reclock_0_fifo_valid),
        .probe15(probe15_1),
        .probe16(ts_reclock_0_state),
        .probe2(ts_reclock_0_rdy_out),
        .probe3(ts_reclock_0_sync_out),
        .probe4(ts_reclock_0_sync_stb_out),
        .probe5(ts_reclock_0_sync_first_out),
        .probe6(ts_reclock_0_tstamp_out),
        .probe7(ts_reclock_0_ts_valid),
        .probe8(ts_reclock_0_cmd_bit_idle),
        .probe9(ts_reclock_0_cmd_bit_edge));
  design_1_pdts_endpoint_stdlog_0_0 pdts_endpoint_stdlog_0
       (.addr(xlslice_1_Dout),
        .cdr_lol(ts_cdr_lol_1),
        .cdr_los(ts_cdr_los_1),
        .clk(clk_wiz_0_clk_out1),
        .pll_locked(ts_rec_clk_locked_1),
        .rdy(pdts_endpoint_stdlog_0_rdy),
        .rec_clk(ts_rec_d_clk_1),
        .rec_d(ts_rec_d_1),
        .rst(pdts_endpoint_stdlog_0_rst),
        .sclk(sclk_1),
        .sfp_los(ts_sfp_los_1),
        .srst(xlslice_2_Dout),
        .stat(pdts_endpoint_stdlog_0_stat),
        .sync(pdts_endpoint_stdlog_0_sync),
        .sync_first(pdts_endpoint_stdlog_0_sync_first),
        .sync_stb(pdts_endpoint_stdlog_0_sync_stb),
        .tgrp(xlslice_0_Dout),
        .tstamp(pdts_endpoint_stdlog_0_tstamp),
        .tx_dis(pdts_endpoint_stdlog_0_tx_dis),
        .txd(pdts_endpoint_stdlog_0_txd));
  design_1_ts_reclock_0_0 ts_reclock_0
       (.clk62p5(clk_wiz_0_clk_out1),
        .cmd_bit_act(ts_reclock_0_cmd_bit_act),
        .cmd_bit_adc_reset(ts_reclock_0_cmd_bit_adc_reset),
        .cmd_bit_edge(ts_reclock_0_cmd_bit_edge),
        .cmd_bit_idle(ts_reclock_0_cmd_bit_idle),
        .cmd_bit_reset(ts_reclock_0_cmd_bit_reset),
        .cmd_bit_sync(ts_reclock_0_cmd_bit_sync),
        .cmd_code_act(cmd_code_act_0_1),
        .cmd_code_adc_reset(cmd_code_adc_reset_0_1),
        .cmd_code_edge(cmd_code_edge_0_1),
        .cmd_code_idle(cmd_code_idle_0_1),
        .cmd_code_reset(cmd_code_reset_0_1),
        .cmd_code_sync(cmd_code_sync_0_1),
        .fake_time_stamp_en(fake_time_stamp_en_0_1),
        .fake_time_stamp_init(fake_time_stamp_init_0_1),
        .fifo_rst(xlslice_2_Dout),
        .fifo_valid(ts_reclock_0_fifo_valid),
        .rdy_in(pdts_endpoint_stdlog_0_rdy),
        .rdy_out(ts_reclock_0_rdy_out),
        .rst_in(pdts_endpoint_stdlog_0_rst),
        .rst_out(ts_reclock_0_rst_out),
        .stat_in(pdts_endpoint_stdlog_0_stat),
        .stat_out(ts_reclock_0_stat_out),
        .state(ts_reclock_0_state),
        .sync_first_in(pdts_endpoint_stdlog_0_sync_first),
        .sync_first_out(ts_reclock_0_sync_first_out),
        .sync_in(pdts_endpoint_stdlog_0_sync),
        .sync_out(ts_reclock_0_sync_out),
        .sync_stb_in(pdts_endpoint_stdlog_0_sync_stb),
        .sync_stb_out(ts_reclock_0_sync_stb_out),
        .ts_valid(ts_reclock_0_ts_valid),
        .tstamp_in(pdts_endpoint_stdlog_0_tstamp),
        .tstamp_out(ts_reclock_0_tstamp_out));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_1_1 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_2 xlslice_1
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_0_1 xlslice_2
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(xlslice_2_Dout));
endmodule
