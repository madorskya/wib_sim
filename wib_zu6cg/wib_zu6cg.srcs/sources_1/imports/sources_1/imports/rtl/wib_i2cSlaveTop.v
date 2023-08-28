//////////////////////////////////////////////////////////////////////
////                                                              ////
//// wib_i2cSlaveTop.v                                                   ////
////                                                              ////
//// This file is part of the wib_i2cSlave opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description:                                          ////
//// You will need to modify this file to implement your 
//// interface.
////                                                              ////
//// To Do:                                                       ////
//// 
////                                                              ////
//// Author(s):                                                   ////
//// - Steve Fielding, sfielding@base2designs.com                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2008 Steve Fielding and OPENCORES.ORG          ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from <http://www.opencores.org/lgpl.shtml>                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
`include "wib_i2cSlave_define.v"


module wib_i2cSlaveTop 
(
    clk,
    rst,
    scl,
    
    sda_i,
    sda_t,
    
    reg_0, // {bus_select, activate}
    slot,
    slot_rb,
    crate_id
);
    input clk;
    input rst;
    input scl;
    input  sda_i;
    output sda_t;
    output [7:0] reg_0;
    input [2:0] slot;
    input [2:0] slot_rb;
    input [9:0] crate_id;
    
    
    wib_i2cSlave u_wib_i2cSlave
    (
        .clk    (clk),
        .rst    (rst),
        .scl    (scl),
        .sda_i  (sda_i),
        .sda_t  (sda_t),
        .myReg0 (reg_0),
        .myReg1 (),
        .myReg2 (),
        .myReg3 (),
        .myReg4 ({crate_id[4:0], slot_rb}),
        .myReg5 ({3'h7, crate_id[9:5]}),
        .myReg6 (8'hbe),
        .myReg7 (8'hba),
        .slot   (slot)
    );


endmodule


 
