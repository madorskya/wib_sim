// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec  6 10:40:19 2021
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_c443_bsip_0 -prefix
//               bd_c443_bsip_0_ bd_c443_bsip_0_sim_netlist.v
// Design      : bd_c443_bsip_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_c443_bsip_0,bsip_v1_1_0_bsip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bsip_v1_1_0_bsip,Vivado 2020.1.1_AR73018" *) 
(* dont_touch = "true" *) 
(* NotValidForBitStream *)
module bd_c443_bsip_0
   (drck,
    reset,
    sel,
    shift,
    tdi,
    update,
    capture,
    runtest,
    tck,
    tms,
    tap_tdo,
    tdo,
    tap_tdi,
    tap_tms,
    tap_tck);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms;
  output tap_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo;
  input tap_tdi;
  input tap_tms;
  input tap_tck;

  wire capture;
  wire drck;
  wire reset;
  wire runtest;
  wire sel;
  wire shift;
  wire tap_tck;
  wire tap_tdi;
  wire tap_tdo;
  wire tap_tms;
  wire tck;
  wire tdi;
  wire tdo;
  wire tms;
  wire update;
  wire NLW_inst_prim_tdo_UNCONNECTED;

  (* C_CHIP_ID = "0" *) 
  (* C_DEVICE_FAMILY = "0" *) 
  (* C_EN_MUX = "0" *) 
  (* C_EN_MUX_EXT_BS = "0" *) 
  (* C_IR_ID_INSTR = "0" *) 
  (* C_IR_USER1_INSTR = "0" *) 
  (* C_IR_WIDTH = "0" *) 
  (* C_USER_SCAN_CHAIN = "1" *) 
  (* C_USE_SOFTBSCAN = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  bd_c443_bsip_0_bsip_v1_1_0_bsip inst
       (.capture(capture),
        .drck(drck),
        .prim_capture(1'b0),
        .prim_drck(1'b0),
        .prim_reset(1'b0),
        .prim_runtest(1'b0),
        .prim_sel(1'b0),
        .prim_shift(1'b0),
        .prim_tck(1'b0),
        .prim_tdi(1'b0),
        .prim_tdo(NLW_inst_prim_tdo_UNCONNECTED),
        .prim_tms(1'b0),
        .prim_update(1'b0),
        .reset(reset),
        .runtest(runtest),
        .sel(sel),
        .shift(shift),
        .tap_tck(tap_tck),
        .tap_tdi(tap_tdi),
        .tap_tdo(tap_tdo),
        .tap_tms(tap_tms),
        .tck(tck),
        .tdi(tdi),
        .tdo(tdo),
        .tms(tms),
        .update(update));
endmodule

module bd_c443_bsip_0_bsip_v1_1_0_bscan_tap
   (AR,
    tap_tdo,
    SEL,
    drck,
    capture,
    shift,
    update,
    runtest,
    UPDATEDR_O_reg,
    tap_tms,
    tap_tdi,
    tdo);
  output [0:0]AR;
  output tap_tdo;
  output SEL;
  output drck;
  output capture;
  output shift;
  output update;
  output runtest;
  input UPDATEDR_O_reg;
  input tap_tms;
  input tap_tdi;
  input tdo;

  wire [0:0]AR;
  wire UPDATEDR_O_reg;
  wire capdr;
  wire capture;
  wire drck;
  (* RTL_KEEP = "yes" *) wire [5:0]instr_reg;
  wire runtest;
  wire shift;
  wire shiftdr;
  wire tap_tdi;
  wire tap_tdo;
  wire tap_tms;
  wire tdo;
  wire update;
  (* RTL_KEEP = "yes" *) wire user_code_sel;

  assign SEL = user_code_sel;
  LUT4 #(
    .INIT(16'hA800)) 
    \/i_ 
       (.I0(user_code_sel),
        .I1(shiftdr),
        .I2(capdr),
        .I3(UPDATEDR_O_reg),
        .O(drck));
  bd_c443_bsip_0_bsip_v1_1_0_jtag_tap U_BASETAP
       (.AS(AR),
        .SEL(user_code_sel),
        .UPDATEDR_O_reg(UPDATEDR_O_reg),
        .capdr(capdr),
        .capture(capture),
        .out(instr_reg),
        .runtest(runtest),
        .\sh_reg_reg[5] (instr_reg),
        .shift(shift),
        .shiftdr(shiftdr),
        .tap_tdi(tap_tdi),
        .tap_tdo(tap_tdo),
        .tap_tms(tap_tms),
        .tdo(tdo),
        .update(update));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \user_code_sel_inferred__1/i_ 
       (.I0(instr_reg[5]),
        .I1(instr_reg[4]),
        .I2(instr_reg[0]),
        .I3(instr_reg[1]),
        .I4(instr_reg[3]),
        .I5(instr_reg[2]),
        .O(user_code_sel));
endmodule

(* C_CHIP_ID = "0" *) (* C_DEVICE_FAMILY = "0" *) (* C_EN_MUX = "0" *) 
(* C_EN_MUX_EXT_BS = "0" *) (* C_IR_ID_INSTR = "0" *) (* C_IR_USER1_INSTR = "0" *) 
(* C_IR_WIDTH = "0" *) (* C_USER_SCAN_CHAIN = "1" *) (* C_USE_SOFTBSCAN = "1" *) 
module bd_c443_bsip_0_bsip_v1_1_0_bsip
   (drck,
    reset,
    sel,
    capture,
    shift,
    runtest,
    tdi,
    tck,
    tms,
    update,
    tap_tdo,
    prim_drck,
    prim_reset,
    prim_sel,
    prim_capture,
    prim_shift,
    prim_runtest,
    prim_tdi,
    prim_tck,
    prim_tms,
    prim_update,
    prim_tdo,
    tdo,
    tap_tdi,
    tap_tms,
    tap_tck);
  output drck;
  output reset;
  output sel;
  output capture;
  output shift;
  output runtest;
  output tdi;
  output tck;
  output tms;
  output update;
  output tap_tdo;
  input prim_drck;
  input prim_reset;
  input prim_sel;
  input prim_capture;
  input prim_shift;
  input prim_runtest;
  input prim_tdi;
  input prim_tck;
  input prim_tms;
  input prim_update;
  output prim_tdo;
  input tdo;
  input tap_tdi;
  input tap_tms;
  input tap_tck;

  wire \<const0> ;
  wire capture;
  wire drck;
  wire reset;
  wire runtest;
  wire sel;
  wire shift;
  wire tap_tck;
  wire tap_tdi;
  wire tap_tdo;
  wire tap_tms;
  wire tck;
  wire tdo;
  wire update;

  assign prim_tdo = \<const0> ;
  assign tdi = tap_tdi;
  assign tms = tap_tms;
  GND GND
       (.G(\<const0> ));
  bd_c443_bsip_0_bsip_v1_1_0_bscan_tap \USE_SOFTBSCAN.U_BSCAN_TAP 
       (.AR(reset),
        .SEL(sel),
        .UPDATEDR_O_reg(tck),
        .capture(capture),
        .drck(drck),
        .runtest(runtest),
        .shift(shift),
        .tap_tdi(tap_tdi),
        .tap_tdo(tap_tdo),
        .tap_tms(tap_tms),
        .tdo(tdo),
        .update(update));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    \USE_SOFTBSCAN.U_TAP_TCKBUFG 
       (.CE(1'b1),
        .I(tap_tck),
        .O(tck));
endmodule

module bd_c443_bsip_0_bsip_v1_1_0_jtag_reg
   (D,
    Q,
    E,
    \REG_O_reg[5]_0 ,
    \REG_O_reg[5]_1 ,
    AR,
    \sh_reg_reg[5]_0 ,
    capir_lcl,
    tap_tdi);
  output [0:0]D;
  output [5:0]Q;
  input [0:0]E;
  input \REG_O_reg[5]_0 ;
  input [0:0]\REG_O_reg[5]_1 ;
  input [0:0]AR;
  input [5:0]\sh_reg_reg[5]_0 ;
  input capir_lcl;
  input tap_tdi;

  wire [0:0]AR;
  wire [0:0]E;
  wire [5:0]Q;
  wire \REG_O_reg[5]_0 ;
  wire [0:0]\REG_O_reg[5]_1 ;
  wire capir_lcl;
  (* RTL_KEEP = "yes" *) wire [5:0]sh_reg;
  wire \sh_reg[0]_i_1_n_0 ;
  wire \sh_reg[1]_i_1_n_0 ;
  wire \sh_reg[2]_i_1_n_0 ;
  wire \sh_reg[3]_i_1_n_0 ;
  wire \sh_reg[4]_i_1_n_0 ;
  wire \sh_reg[5]_i_2_n_0 ;
  wire [5:0]\sh_reg_reg[5]_0 ;
  wire tap_tdi;

  assign D[0] = sh_reg[0];
  FDPE \REG_O_reg[0] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(\REG_O_reg[5]_1 ),
        .D(sh_reg[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDCE \REG_O_reg[1] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(\REG_O_reg[5]_1 ),
        .CLR(AR),
        .D(sh_reg[1]),
        .Q(Q[1]));
  FDCE \REG_O_reg[2] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(\REG_O_reg[5]_1 ),
        .CLR(AR),
        .D(sh_reg[2]),
        .Q(Q[2]));
  FDPE \REG_O_reg[3] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(\REG_O_reg[5]_1 ),
        .D(sh_reg[3]),
        .PRE(AR),
        .Q(Q[3]));
  FDCE \REG_O_reg[4] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(\REG_O_reg[5]_1 ),
        .CLR(AR),
        .D(sh_reg[4]),
        .Q(Q[4]));
  FDCE \REG_O_reg[5] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(\REG_O_reg[5]_1 ),
        .CLR(AR),
        .D(sh_reg[5]),
        .Q(Q[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[0]_i_1 
       (.I0(\sh_reg_reg[5]_0 [0]),
        .I1(capir_lcl),
        .I2(sh_reg[1]),
        .O(\sh_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[1]_i_1 
       (.I0(\sh_reg_reg[5]_0 [1]),
        .I1(capir_lcl),
        .I2(sh_reg[2]),
        .O(\sh_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[2]_i_1 
       (.I0(\sh_reg_reg[5]_0 [2]),
        .I1(capir_lcl),
        .I2(sh_reg[3]),
        .O(\sh_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[3]_i_1 
       (.I0(\sh_reg_reg[5]_0 [3]),
        .I1(capir_lcl),
        .I2(sh_reg[4]),
        .O(\sh_reg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[4]_i_1 
       (.I0(\sh_reg_reg[5]_0 [4]),
        .I1(capir_lcl),
        .I2(sh_reg[5]),
        .O(\sh_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[5]_i_2 
       (.I0(\sh_reg_reg[5]_0 [5]),
        .I1(capir_lcl),
        .I2(tap_tdi),
        .O(\sh_reg[5]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[0] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(E),
        .D(\sh_reg[0]_i_1_n_0 ),
        .Q(sh_reg[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[1] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(E),
        .D(\sh_reg[1]_i_1_n_0 ),
        .Q(sh_reg[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[2] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(E),
        .D(\sh_reg[2]_i_1_n_0 ),
        .Q(sh_reg[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[3] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(E),
        .D(\sh_reg[3]_i_1_n_0 ),
        .Q(sh_reg[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[4] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(E),
        .D(\sh_reg[4]_i_1_n_0 ),
        .Q(sh_reg[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[5] 
       (.C(\REG_O_reg[5]_0 ),
        .CE(E),
        .D(\sh_reg[5]_i_2_n_0 ),
        .Q(sh_reg[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "bsip_v1_1_0_jtag_reg" *) 
module bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1
   (in0,
    out,
    \sh_reg_reg[0]_0 ,
    \sh_reg_reg[0]_1 );
  output in0;
  output out;
  input \sh_reg_reg[0]_0 ;
  input \sh_reg_reg[0]_1 ;

  (* RTL_KEEP = "yes" *) wire sh_reg;
  wire \sh_reg_reg[0]_0 ;
  wire \sh_reg_reg[0]_1 ;

  assign in0 = sh_reg;
  assign out = sh_reg;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[0] 
       (.C(\sh_reg_reg[0]_1 ),
        .CE(1'b1),
        .D(\sh_reg_reg[0]_0 ),
        .Q(sh_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "bsip_v1_1_0_jtag_reg" *) 
module bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3
   (out,
    \sh_reg_reg[31]_0 ,
    \sh_reg_reg[31]_1 ,
    tap_tdi,
    \sh_reg_reg[31]_2 );
  output [0:0]out;
  input \sh_reg_reg[31]_0 ;
  input \sh_reg_reg[31]_1 ;
  input tap_tdi;
  input \sh_reg_reg[31]_2 ;

  (* RTL_KEEP = "yes" *) wire [31:0]sh_reg;
  wire \sh_reg_reg[31]_0 ;
  wire \sh_reg_reg[31]_1 ;
  wire \sh_reg_reg[31]_2 ;
  wire tap_tdi;

  assign out[0] = sh_reg[0];
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[0] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[1]),
        .Q(sh_reg[0]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[10] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[11]),
        .Q(sh_reg[10]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[11] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[12]),
        .Q(sh_reg[11]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[12] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[13]),
        .Q(sh_reg[12]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[13] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[14]),
        .Q(sh_reg[13]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[14] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[15]),
        .Q(sh_reg[14]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[15] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[16]),
        .Q(sh_reg[15]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[16] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[17]),
        .Q(sh_reg[16]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[17] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[18]),
        .Q(sh_reg[17]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[18] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[19]),
        .Q(sh_reg[18]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[19] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[20]),
        .Q(sh_reg[19]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[1] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[2]),
        .Q(sh_reg[1]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[20] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[21]),
        .Q(sh_reg[20]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[21] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[22]),
        .Q(sh_reg[21]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[22] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[23]),
        .Q(sh_reg[22]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[23] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[24]),
        .Q(sh_reg[23]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[24] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[25]),
        .Q(sh_reg[24]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[25] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[26]),
        .Q(sh_reg[25]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[26] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[27]),
        .Q(sh_reg[26]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[27] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[28]),
        .Q(sh_reg[27]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[28] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[29]),
        .Q(sh_reg[28]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[29] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[30]),
        .Q(sh_reg[29]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[2] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[3]),
        .Q(sh_reg[2]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[30] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[31]),
        .Q(sh_reg[30]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[31] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(tap_tdi),
        .Q(sh_reg[31]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[3] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[4]),
        .Q(sh_reg[3]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[4] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[5]),
        .Q(sh_reg[4]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[5] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[6]),
        .Q(sh_reg[5]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[6] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[7]),
        .Q(sh_reg[6]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE \sh_reg_reg[7] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[8]),
        .Q(sh_reg[7]),
        .S(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[8] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[9]),
        .Q(sh_reg[8]),
        .R(\sh_reg_reg[31]_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \sh_reg_reg[9] 
       (.C(\sh_reg_reg[31]_2 ),
        .CE(\sh_reg_reg[31]_1 ),
        .D(sh_reg[10]),
        .Q(sh_reg[9]),
        .R(\sh_reg_reg[31]_0 ));
endmodule

module bd_c443_bsip_0_bsip_v1_1_0_jtag_tap
   (out,
    tap_tdo,
    AS,
    capdr,
    shiftdr,
    runtest,
    capture,
    shift,
    update,
    UPDATEDR_O_reg,
    SEL,
    tap_tdi,
    \sh_reg_reg[5] ,
    tdo,
    tap_tms);
  output [5:0]out;
  output tap_tdo;
  output [0:0]AS;
  output capdr;
  output shiftdr;
  output runtest;
  output capture;
  output shift;
  output update;
  input UPDATEDR_O_reg;
  input SEL;
  input tap_tdi;
  input [5:0]\sh_reg_reg[5] ;
  input tdo;
  input tap_tms;

  wire [0:0]AS;
  wire SEL;
  wire UPDATEDR_O_reg;
  wire UPDATEIR_O;
  wire U_TAP_n_10;
  wire U_TAP_n_6;
  (* RTL_KEEP = "yes" *) wire bypass_tdo;
  wire capdr;
  wire capir_lcl;
  wire capture;
  (* RTL_KEEP = "yes" *) wire dr_tdo;
  wire dr_tdo_inferred_i_2_n_0;
  wire dr_tdo_inferred_i_3_n_0;
  (* RTL_KEEP = "yes" *) wire id_tdo;
  (* RTL_KEEP = "yes" *) wire [5:0]instr_reg;
  (* RTL_KEEP = "yes" *) wire ir_tdo;
  wire runtest;
  wire sh_reg_orig;
  wire [5:0]\sh_reg_reg[5] ;
  wire shift;
  wire shiftdr;
  wire tap_tdi;
  wire tap_tdo;
  wire tap_tms;
  wire tdo;
  (* RTL_KEEP = "yes" *) wire tdo_rise_edge;
  wire update;

  assign out[5:0] = instr_reg;
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    TDO_O_reg
       (.C(UPDATEDR_O_reg),
        .CE(1'b1),
        .CLR(AS),
        .D(tdo_rise_edge),
        .Q(tap_tdo));
  bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1 U_BYPASS
       (.in0(sh_reg_orig),
        .out(bypass_tdo),
        .\sh_reg_reg[0]_0 (U_TAP_n_10),
        .\sh_reg_reg[0]_1 (UPDATEDR_O_reg));
  bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3 U_ID
       (.out(id_tdo),
        .\sh_reg_reg[31]_0 (capdr),
        .\sh_reg_reg[31]_1 (shiftdr),
        .\sh_reg_reg[31]_2 (UPDATEDR_O_reg),
        .tap_tdi(tap_tdi));
  bd_c443_bsip_0_bsip_v1_1_0_jtag_reg U_IR
       (.AR(AS),
        .D(ir_tdo),
        .E(U_TAP_n_6),
        .Q(instr_reg),
        .\REG_O_reg[5]_0 (UPDATEDR_O_reg),
        .\REG_O_reg[5]_1 (UPDATEIR_O),
        .capir_lcl(capir_lcl),
        .\sh_reg_reg[5]_0 (\sh_reg_reg[5] ),
        .tap_tdi(tap_tdi));
  bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl U_TAP
       (.AS(AS),
        .CAPDR_O_reg_0(capdr),
        .E(U_TAP_n_6),
        .SEL(SEL),
        .SHIFTDR_O_reg_0(shiftdr),
        .TDO_O_reg(dr_tdo),
        .UPDATEDR_O_reg_0(UPDATEDR_O_reg),
        .UPDATEIR_O_reg_0(UPDATEIR_O),
        .capir_lcl(capir_lcl),
        .capture(capture),
        .in0(sh_reg_orig),
        .out(ir_tdo),
        .runtest(runtest),
        .shift(shift),
        .tap_tdi(tap_tdi),
        .tap_tdi_0(U_TAP_n_10),
        .tap_tms(tap_tms),
        .tdo_rise_edge(tdo_rise_edge),
        .update(update));
  LUT5 #(
    .INIT(32'hFAFCAA0C)) 
    dr_tdo_inferred_i_1
       (.I0(id_tdo),
        .I1(tdo),
        .I2(dr_tdo_inferred_i_2_n_0),
        .I3(dr_tdo_inferred_i_3_n_0),
        .I4(bypass_tdo),
        .O(dr_tdo));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    dr_tdo_inferred_i_2
       (.I0(instr_reg[0]),
        .I1(instr_reg[5]),
        .I2(instr_reg[2]),
        .I3(instr_reg[4]),
        .I4(instr_reg[1]),
        .I5(instr_reg[3]),
        .O(dr_tdo_inferred_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    dr_tdo_inferred_i_3
       (.I0(instr_reg[0]),
        .I1(instr_reg[5]),
        .I2(instr_reg[2]),
        .I3(instr_reg[4]),
        .I4(instr_reg[1]),
        .I5(instr_reg[3]),
        .O(dr_tdo_inferred_i_3_n_0));
endmodule

module bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl
   (AS,
    capir_lcl,
    CAPDR_O_reg_0,
    SHIFTDR_O_reg_0,
    runtest,
    UPDATEIR_O_reg_0,
    E,
    capture,
    shift,
    update,
    tap_tdi_0,
    tdo_rise_edge,
    UPDATEDR_O_reg_0,
    SEL,
    tap_tdi,
    in0,
    out,
    TDO_O_reg,
    tap_tms);
  output [0:0]AS;
  output capir_lcl;
  output CAPDR_O_reg_0;
  output SHIFTDR_O_reg_0;
  output runtest;
  output [0:0]UPDATEIR_O_reg_0;
  output [0:0]E;
  output capture;
  output shift;
  output update;
  output tap_tdi_0;
  output tdo_rise_edge;
  input UPDATEDR_O_reg_0;
  input SEL;
  input tap_tdi;
  input in0;
  input out;
  input TDO_O_reg;
  input tap_tms;

  wire [0:0]AS;
  wire CAPDR_O_reg_0;
  wire [0:0]E;
  wire RUNTEST_O_i_1_n_0;
  wire SEL;
  wire SHIFTDR_O_reg_0;
  wire TDO_O_reg;
  wire UPDATEDR_O;
  wire UPDATEDR_O_reg_0;
  wire [0:0]UPDATEIR_O_reg_0;
  wire capdr_i_n_0;
  wire capir_i_n_0;
  wire capir_lcl;
  wire capture;
  (* RTL_KEEP = "yes" *) (* signal_encoding = "user" *) wire [3:0]current_state;
  wire in0;
  wire [3:0]next_state__0;
  wire out;
  wire reset_i_n_0;
  wire runtest;
  wire shift;
  wire shiftdr_i_n_0;
  wire shiftir_i_n_0;
  wire shiftir_lcl;
  wire tap_tdi;
  wire tap_tdi_0;
  wire tap_tms;
  wire tdo_rise_edge;
  wire update;
  wire updatedr_i_n_0;
  wire updateir_i_n_0;

  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    CAPDR_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(capdr_i_n_0),
        .Q(CAPDR_O_reg_0),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    CAPIR_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(capir_i_n_0),
        .Q(capir_lcl),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    RESET_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(reset_i_n_0),
        .Q(AS),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    RUNTEST_O_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(RUNTEST_O_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    RUNTEST_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(RUNTEST_O_i_1_n_0),
        .Q(runtest),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    SHIFTDR_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(shiftdr_i_n_0),
        .Q(SHIFTDR_O_reg_0),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    SHIFTIR_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(shiftir_i_n_0),
        .Q(shiftir_lcl),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    UPDATEDR_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(updatedr_i_n_0),
        .Q(UPDATEDR_O),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    UPDATEIR_O_reg
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(updateir_i_n_0),
        .Q(UPDATEIR_O_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    capdr_i
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(capdr_i_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    capir_i
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .O(capir_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    capture_INST_0
       (.I0(SEL),
        .I1(CAPDR_O_reg_0),
        .O(capture));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8FFF3300)) 
    \current_state[0]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(tap_tms),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB3004DFF)) 
    \current_state[1]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(tap_tms),
        .O(next_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h88FC)) 
    \current_state[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(tap_tms),
        .I3(current_state[1]),
        .O(next_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA2A6AEAE)) 
    \current_state[3]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(tap_tms),
        .O(next_state__0[3]));
  (* FSM_ENCODED_STATES = "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101" *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  (* signal_encoding = "user" *) 
  FDRE \current_state_reg[0] 
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(next_state__0[0]),
        .Q(current_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101" *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  (* signal_encoding = "user" *) 
  FDRE \current_state_reg[1] 
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(next_state__0[1]),
        .Q(current_state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101" *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  (* signal_encoding = "user" *) 
  FDRE \current_state_reg[2] 
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(next_state__0[2]),
        .Q(current_state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101" *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  (* signal_encoding = "user" *) 
  FDRE \current_state_reg[3] 
       (.C(UPDATEDR_O_reg_0),
        .CE(1'b1),
        .D(next_state__0[3]),
        .Q(current_state[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    reset_i
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(reset_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \sh_reg[0]_i_1 
       (.I0(tap_tdi),
        .I1(CAPDR_O_reg_0),
        .I2(SHIFTDR_O_reg_0),
        .I3(in0),
        .O(tap_tdi_0));
  LUT2 #(
    .INIT(4'hE)) 
    \sh_reg[5]_i_1 
       (.I0(capir_lcl),
        .I1(shiftir_lcl),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shift_INST_0
       (.I0(SEL),
        .I1(SHIFTDR_O_reg_0),
        .O(shift));
  LUT4 #(
    .INIT(16'h0010)) 
    shiftdr_i
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(shiftdr_i_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    shiftir_i
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(shiftir_i_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    tdo_rise_edge_inferred_i_1
       (.I0(out),
        .I1(current_state[3]),
        .I2(TDO_O_reg),
        .O(tdo_rise_edge));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    update_INST_0
       (.I0(SEL),
        .I1(UPDATEDR_O),
        .O(update));
  LUT4 #(
    .INIT(16'h1000)) 
    updatedr_i
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(updatedr_i_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    updateir_i
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .O(updateir_i_n_0));
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
