`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//******************************************************************************
//
//      Electrical Fuse - TEF65LP32X1S_I
//	The TEF65LP32X1S_I is organized as a maximum of 32 bits one-time
//  	programmable electrical fuse with serial interface.  The fuse is a
//  	kind of non-volatile memory fabricated in standard CMOS logic process.
//  	This fuse macro is widely used in chip ID, memory redundancy repair, security
//  	code, configuration setting, and feature selection, etc.
//
//	CSB 	(I) - Chip select, low active, to put in low power standby mode
//	PGM     (I) - Program enable for entering program mode and also for each
//    	    	      bit program control
//  	SCLK	(I) - Serial clock.  High period to program.  Falling edge to
//  	    	      shift data out to DOUT
//  	DIN 	(I) - Serial data input
//  	VDDQ	(I) - High voltage switch for fuse programming
//  	DOUT	(O) - Data serial output
//      Q31-Q0       (0) - Data parallel output
//
//
//      To activate data preloading,
//              1. Please provide an input file containing the value of the fuse data(ex: preload.data).
//              2. Call the simulator with "+preload_file=preload.data" option
//                                                        ^^^^^^^^^^^^ could accept 32 characters
//              ex:
//                    ncverilog +access+rwc +preload_file=preload.data tefxx.v ...
//
//          preload.data format
//          -------------------
//
//              1. @<address> <data>, ex:
//                 @00000000 0 @00000001 0 @00000002 0 @00000003 0 @00000004 0 @00000005 0 @00000006 0
//                 @00000007 0 @00000008 0 @00000009 0 @0000000a 0 @0000000b 0 @0000000c 0 @0000000d 0
//
//              2. <data> <data> <data> ...etc., index from address 0. ex:
//                 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
//                 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
//
//      To waive the timing delays and constraints, please add the following line in the caller
//      module.
//              `define no_timing
//
//
//******************************************************************************
//
// STATEMENT OF USE
//
// This information contains confidential and proprietary information of TSMC.
// No part of this information may be reproduced, transmitted, transcribed,
// stored in a retrieval system, or translated into any human or computer
// language, in any form or by any means, electronic, mechanical, magnetic,
// optical, chemical, manual, or otherwise, without the prior written permission
// of TSMC. This information was prepared for informational purpose and is for
// use by TSMC's customers only. TSMC reserves the right to make changes in the
// information at any time and without notice.
//
//******************************************************************************

`celldefine
`timescale 1ns/1ps

module TEF65LP32X1S_I (CSB, PGM, SCLK, DIN, VDDQ, DOUT,
Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,
Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31);

// Define Parameters
parameter  fuseSize = 32;
parameter  fuseSizeAddr = 5;

// For checking program window max
real sclkl_time;
real sclkh_time;

// IO Ports
input  CSB, PGM, SCLK, DIN, VDDQ;
output DOUT;
output Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,
Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31;

// Internal Signals
wire  CSB_i, PGM_i, SCLK_i, DIN_i, VDDQ_i;
wire  DOUT_i;
wire [fuseSize-1:0] Q_i;
wire  check_read, check_pgm, check_idle;
wire  check_read_out, check_pgm_out;

// Registers
reg [fuseSize-1:0] fuseData;
reg [fuseSize-1:0] register, pgm_out;
reg [fuseSize-1 : 0] Q_d1;
reg preload_data [fuseSize-1 : 0] ;
reg DOUT_d;
reg DOUT_d1;
reg notify_read_all;
reg notify_pgm_all;
reg notify_pgm_bit;

// data preloading setting
reg [255:0] preload_file_name ;

// Variables
integer program_bit;
reg idle_flag, program_flag, read_flag;
reg program_out_flag, read_out_flag;
reg [fuseSizeAddr:0] i ;
// IO Buffers
buf (CSB_i, CSB);
buf (PGM_i, PGM);
buf (SCLK_i, SCLK);
buf (DIN_i, DIN);
buf (VDDQ_i, VDDQ);
nmos (DOUT, DOUT_i, 1'b1);
nmos (Q0, Q_i[0], 1'b1);
nmos (Q1, Q_i[1], 1'b1);
nmos (Q2, Q_i[2], 1'b1);
nmos (Q3, Q_i[3], 1'b1);
nmos (Q4, Q_i[4], 1'b1);
nmos (Q5, Q_i[5], 1'b1);
nmos (Q6, Q_i[6], 1'b1);
nmos (Q7, Q_i[7], 1'b1);
nmos (Q8, Q_i[8], 1'b1);
nmos (Q9, Q_i[9], 1'b1);
nmos (Q10, Q_i[10], 1'b1);
nmos (Q11, Q_i[11], 1'b1);
nmos (Q12, Q_i[12], 1'b1);
nmos (Q13, Q_i[13], 1'b1);
nmos (Q14, Q_i[14], 1'b1);
nmos (Q15, Q_i[15], 1'b1);
nmos (Q16, Q_i[16], 1'b1);
nmos (Q17, Q_i[17], 1'b1);
nmos (Q18, Q_i[18], 1'b1);
nmos (Q19, Q_i[19], 1'b1);
nmos (Q20, Q_i[20], 1'b1);
nmos (Q21, Q_i[21], 1'b1);
nmos (Q22, Q_i[22], 1'b1);
nmos (Q23, Q_i[23], 1'b1);
nmos (Q24, Q_i[24], 1'b1);
nmos (Q25, Q_i[25], 1'b1);
nmos (Q26, Q_i[26], 1'b1);
nmos (Q27, Q_i[27], 1'b1);
nmos (Q28, Q_i[28], 1'b1);
nmos (Q29, Q_i[29], 1'b1);
nmos (Q30, Q_i[30], 1'b1);
nmos (Q31, Q_i[31], 1'b1);

`ifdef no_timing
`else
// Specify Block for Timing Delay Path and Timing Constraints
specify
    // READ timing values
    specparam Tckdq =        2.413 ;
    specparam Tckdqh =       0.000 ;
    specparam Tcsq =         159.160 ;
    specparam Tckhr =        4.000 ;
    specparam Tcklr =        4.000 ;
    specparam Tsur_ck =      2.456 ;
    specparam Thr_ck =       174.160 ;
    specparam Tsur_pg =      2.256 ;
    specparam Thr_pg =       1.932 ;
    specparam Tsurs_ck =     8.226 ;
    specparam Tdqh =         0.000 ;
    specparam Tsur_din =     3.603 ;
    specparam Thr_din =      3.487 ;
    specparam Tsur_vq =      10.000 ;
    specparam Thr_vq =       10.000 ;
    // PROGRAM timing values
    specparam Tckhp_min =    4000.000 ;
    specparam Tckhp_max =    6000 ;
    specparam Tcklp =        4.000 ;
    specparam Tsu_pgm =      3.388 ;
    specparam Th_pgm =       3.454 ;
    specparam Tsup_ck =      1.940 ;
    specparam Thp_ck =       15.328 ;
    specparam Tsup_pg =      1.740 ;
    specparam Thp_pg =       1.940 ;
    specparam Tsups_ck =     8.226 ;
    specparam Tsup_din =     4.020 ;
    specparam Thp_din =      4.032 ;
    specparam Tsup_vq =      10.000 ;
    specparam Thp_vq =       10.000 ;

    // CSB L->H data hold
    //(posedge CSB => (DOUT:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (DOUT:CSB)) = Tdqh ;

    // SCLK to output delay
    if (check_read === 1'b1) (negedge SCLK => (DOUT:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);

    // SCLK to latch delay
    if (check_read === 1'b1) (negedge SCLK => (Q0:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q1:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q2:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q3:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q4:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q5:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q6:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q7:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q8:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q9:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q10:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q11:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q12:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q13:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q14:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q15:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q16:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q17:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q18:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q19:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q20:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q21:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q22:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q23:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q24:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q25:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q26:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q27:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q28:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q29:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q30:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);
    if (check_read === 1'b1) (negedge SCLK => (Q31:SCLK)) = (Tckdq, Tckdq, Tckdqh, Tckdq, Tckdqh, Tckdq);


    if (check_idle === 1'b1) (posedge CSB => (Q0:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q1:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q2:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q3:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q4:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q5:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q6:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q7:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q8:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q9:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q10:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q11:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q12:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q13:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q14:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q15:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q16:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q17:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q18:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q19:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q20:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q21:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q22:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q23:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q24:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q25:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q26:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q27:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q28:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q29:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q30:CSB)) = Tdqh;
    if (check_idle === 1'b1) (posedge CSB => (Q31:CSB)) = Tdqh;

    if (check_idle === 1'b0) (negedge CSB => (Q0:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q1:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q2:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q3:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q4:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q5:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q6:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q7:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q8:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q9:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q10:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q11:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q12:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q13:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q14:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q15:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q16:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q17:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q18:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q19:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q20:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q21:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q22:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q23:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q24:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q25:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q26:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q27:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q28:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q29:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q30:CSB)) = Tcsq;
    if (check_idle === 1'b0) (negedge CSB => (Q31:CSB)) = Tcsq;

// READ timing constraints
$width(posedge SCLK &&& check_read, Tckhr, 0, notify_read_all);
$width(negedge SCLK &&& check_read, Tcklr, 0, notify_read_all);
$setuphold(negedge CSB &&& check_read, posedge SCLK, Tsur_ck, 0,  notify_read_all);
$setuphold(negedge CSB &&& check_read, negedge SCLK, 0, Thr_ck,  notify_read_all);
$setuphold(negedge CSB &&& check_read, negedge PGM, Tsur_pg, 0,  notify_read_all);
$setuphold(negedge CSB &&& check_read, posedge PGM, 0, Thr_pg,  notify_read_all);

$setuphold(negedge SCLK &&& check_read, posedge CSB, 0, Tsurs_ck,  notify_read_all);

$setuphold(negedge SCLK &&& check_read, posedge DIN, Tsur_din, 0,  notify_read_all);
$setuphold(negedge SCLK &&& check_read, negedge DIN, Tsur_din, 0,  notify_read_all);
$setuphold(negedge SCLK &&& check_read, posedge DIN, 0, Thr_din,  notify_read_all);
$setuphold(negedge SCLK &&& check_read, negedge DIN, 0, Thr_din,  notify_read_all);
$setuphold(negedge CSB &&& check_read, negedge VDDQ, Tsur_vq, 0,  notify_read_all);
$setuphold(posedge CSB &&& check_read_out, posedge VDDQ, 0, Thr_vq,  notify_read_all);

// PROGRAM timing constraints
$width(posedge SCLK &&& check_pgm, Tckhp_min, 0, notify_pgm_bit);
$width(negedge SCLK &&& check_pgm, Tcklp, 0, notify_pgm_bit);
$setuphold(posedge SCLK &&& check_pgm, posedge PGM, Tsu_pgm, 0,  notify_pgm_bit);
$setuphold(posedge SCLK &&& check_pgm, negedge PGM, Tsu_pgm, 0,  notify_pgm_bit);
$setuphold(posedge SCLK &&& check_pgm, posedge PGM, 0, Th_pgm,  notify_pgm_bit);
$setuphold(posedge SCLK &&& check_pgm, negedge PGM, 0, Th_pgm,  notify_pgm_bit);
$setuphold(negedge CSB &&& check_pgm, negedge SCLK, Tsup_ck, 0,  notify_pgm_all);
$setuphold(negedge CSB &&& check_pgm, posedge SCLK, 0, Thp_ck,  notify_pgm_all);
$setuphold(negedge CSB &&& check_pgm, posedge PGM, Tsup_pg, 0,  notify_pgm_all);
$setuphold(negedge CSB &&& check_pgm, negedge PGM, 0, Thp_pg,  notify_pgm_all);

$setuphold(negedge SCLK &&& check_pgm, posedge CSB, 0, Tsups_ck,  notify_pgm_bit);

$setuphold(negedge CSB &&& check_pgm, negedge DIN, Tsup_din, 0,  notify_pgm_all);
$setuphold(posedge CSB &&& check_pgm_out, posedge DIN, 0, Thp_din,  notify_pgm_all);
$setuphold(negedge CSB &&& check_pgm, posedge VDDQ, Tsup_vq, 0,  notify_pgm_all);
$setuphold(posedge CSB &&& check_pgm_out, negedge VDDQ, 0, Thp_vq,  notify_pgm_all);

endspecify
`endif

// Initial Block
initial begin

    fuseData = {fuseSize{1'b0}};

    if ($value$plusargs("preload_file=%s", preload_file_name)) begin
        if(!$fopen(preload_file_name, "r")) begin
            $write("%.3f (ns) ERROR! Preload file(%0s) not found. \n", $realtime, preload_file_name);
        end else begin
            $write("Activate data preloading with file: %0s\n", preload_file_name);
            preloadFuse(preload_file_name);
        end
    end

    DOUT_d = 1'bx;
    register = {fuseSize{1'bx}};
    pgm_out = {fuseSize{1'b1}};
    pgm_out[0] = 1'b0;
    program_bit = 0;
    idle_flag = 0;
    program_flag = 0;
    read_flag = 0;
    program_out_flag = 0;
    read_out_flag = 0;

    sclkl_time=0;
    sclkh_time=0;

end


// Continuous Signals and Data Output
assign DOUT_i = DOUT_d1;
assign Q_i = Q_d1 ;
assign check_read = read_flag;
assign check_pgm = program_flag;
assign check_idle = idle_flag;
assign check_read_out = read_out_flag;
assign check_pgm_out = program_out_flag;

always @(SCLK_i) begin

    `ifdef no_timing
    `else
     // check program window, if it > Tckhp_max, display ERROR messages.
     if (program_flag ==1) begin
      if (SCLK_i) begin
       sclkh_time = $realtime ;
      end
      else if  (!SCLK_i) begin
       sclkl_time = $realtime ;

       if(sclkl_time != 0 && sclkh_time != 0 && (sclkl_time - sclkh_time) > Tckhp_max) begin
        $display("ERROR! Timing violation (%m), SCLK programming width > %.0f at %.1f\n", Tckhp_max, $realtime);
        fuseData = {fuseSize{1'bx}};
        register = {fuseSize{1'bx}};
        DOUT_d = 1'bx;
       end
      end
     end
    `endif

    if (SCLK_i) begin
    	if (program_flag == 1) begin
	    if (PGM_i) begin
	    	// burn fuse only when originally 0, cannot make x/z become 1
	    	if (fuseData[program_bit] === 1'b0) begin
	    	    fuseData[program_bit] = 1'b1;	// burn fuse
		end
		else if(fuseData[program_bit] === 1'b1) begin
		    $display("%.2f ns ERROR: Fuse: %b already burned!!!", $realtime, program_bit);
		    fuseData = {fuseSize{1'bx}};
	    	    register = {fuseSize{1'bx}};
	    	    DOUT_d = 1'bx;
                end
	    end
	    else if (!PGM_i) begin
	    	pgm_out[0] = 1'b0;   	    	    	// dummy -> no action
	    end
	    else begin  // PGM == x/z
	    	$display("%.2fns Warning: PGM x/z during program mode!!!", $realtime);
	    	fuseData = {fuseSize{1'bx}};
	    	register = {fuseSize{1'bx}};
	    	DOUT_d = 1'bx;
	    end
	    if (program_bit < fuseSize) begin
	    	program_bit = program_bit + 1;
	    end
	end
    end
    else if (!SCLK_i) begin
    	if (read_flag == 1) begin
    	    DOUT_d = register[fuseSize - 1];
	    register[fuseSize-1:1] = register[fuseSize-2:0];
	    register[0] = DIN_i;
    	end
    end
    else begin  // SCLK == x/z
    	if (read_flag == 1) begin
    	    $display("%.2fns Warning: SCLK x/z during read mode!!!", $realtime);
    	    fuseData = {fuseSize{1'bx}};
	    register = {fuseSize{1'bx}};
	    DOUT_d = 1'bx;
	end
    	if (program_flag == 1) begin
    	    $display("%.2fns ERROR: SCLK x/z during program mode!!!", $realtime);
    	    fuseData = {fuseSize{1'bx}};
	    register = {fuseSize{1'bx}};
	    DOUT_d = 1'bx;
	end
    end
end

always @(PGM_i) begin
    if ( ((PGM_i === 1'bx) || (PGM_i === 1'bz)) && (program_flag == 1) ) begin
    	$display("%.2fns ERROR: PGM x/z during program mode!!!", $realtime);
	fuseData = {fuseSize{1'bx}};
	register = {fuseSize{1'bx}};
	DOUT_d = 1'bx;
    end
end

always @(DIN_i) begin
    if (program_flag == 1) begin
    	$display("%.2fns ERROR: DIN toggled during program mode!!!", $realtime);
	fuseData = {fuseSize{1'bx}};
    end
end

always @(VDDQ_i) begin
    if (program_flag == 1) begin
        $display("%.2fns ERROR: VDDQ toggled during program mode!!!", $realtime);
        fuseData = {fuseSize{1'bx}};
    end
    if (read_flag == 1) begin
        $display("%.2fns ERROR: VDDQ toggled during read mode!!!", $realtime);
        register = {fuseSize{1'bx}};
        DOUT_d = 1'bx;
    end
end

always @(CSB_i) begin
    if (CSB_i) begin
        if (program_flag == 1) begin
         if( SCLK === 1'b1) begin
	  $display("%.2fns ERROR! Please keep SCLK low during program out.", $realtime);
          fuseData = {fuseSize{1'bx}};
	  DOUT_d = 1'bx;
         end
         program_out_flag = 1;
        end
        if (read_flag == 1) begin
         read_out_flag = 1;
        end

    	program_bit = 0;
    	idle_flag = 1;
	program_flag = 0;
	read_flag = 0;
	register = {fuseSize{1'bx}};
	DOUT_d = 1'bx;
    end
    else if (!CSB_i) begin
	program_out_flag = 0;
	read_out_flag = 0;
    	// go in PGM mode
    	if ( (PGM_i === 1'b1) && (SCLK_i === 1'b0) && (VDDQ_i === 1'b1) ) begin
	    program_bit = 0;
	    idle_flag = 0;
	    program_flag = 1;
	    read_flag = 0;
	    register = {fuseSize{1'bx}};
	    DOUT_d = 1'bx;
	    if (DIN_i === 1'b1) begin
            	$display("%.2fns ERROR: DIN high during program mode!!!", $realtime);
            	fuseData = {fuseSize{1'bx}};
	    end
	    else if (DIN_i === 1'bx) begin
            	$display("%.2fns ERROR: DIN unknown/high-Z during program mode!!!", $realtime);
            	fuseData = {fuseSize{1'bx}};
	    end
	end
	// go in READ mode
	else if ( (PGM_i === 1'b0) && (SCLK_i === 1'b1) && (VDDQ_i === 1'b0) ) begin
	    program_bit = 0;
	    idle_flag = 0;
	    program_flag = 0;
	    read_flag = 1;
	    register = fuseData;
	    DOUT_d = 1'bx;
	end
	else begin
	    if ( (SCLK_i === 1'bx) || (SCLK_i === 1'bz) ) begin
	    	$display("%.2fns Warning: SCLK x/z when CSB H->L!!!", $realtime);
	    	fuseData = {fuseSize{1'bx}};
	    end
	    if ( (PGM_i === 1'bx) || (PGM_i === 1'bz) ) begin
	    	$display("%.2fns Warning: PGM x/z when CSB H->L!!!", $realtime);
	    	fuseData = {fuseSize{1'bx}};
	    end
	    if ( (VDDQ_i === 1'bx) || (VDDQ_i === 1'bz) ) begin
	    	$display("%.2fns Warning: VDDQ x/z when CSB H->L!!!", $realtime);
	    	fuseData = {fuseSize{1'bx}};
	    end
  	    program_bit = 0;
	    idle_flag = 1;
	    program_flag = 0;
	    read_flag = 0;
	    register = {fuseSize{1'bx}};
	    DOUT_d = 1'bx;
	end
    end
    else begin
    	$display("%.2fns Warning: CSB x/z!!!", $realtime);
    	program_bit = 0;
	idle_flag = 1;
	program_flag = 0;
	read_flag = 0;
	fuseData = {fuseSize{1'bx}};
	register = {fuseSize{1'bx}};
    	DOUT_d = 1'bx;
    end
end


always @(negedge SCLK_i) begin

    if (read_flag === 1'b1 && read_out_flag === 1'b0) begin

       `ifdef no_timing
        //do nothing
       `else
        #(Tckdqh);
       `endif

       Q_d1 = {fuseSize{1'bx}};
       DOUT_d1 = 1'bx;

       `ifdef no_timing
        //do nothing
       `else
        #(Tckdq-Tckdqh) ;
       `endif

       Q_d1 = register;
       DOUT_d1 = DOUT_d;
    end

end

always @(register) begin

    Q_d1 = register;

end

always @(DOUT_d) begin

    DOUT_d1 = DOUT_d;

end

always @(notify_read_all) begin

    register = {fuseSize{1'bx}};
    DOUT_d = 1'bx;

end

always @(notify_pgm_all) begin

    fuseData = {fuseSize{1'bx}};

end

always @(notify_pgm_bit) begin

    fuseData[program_bit] = 1'bx;

end


task preloadFuse;
input [255:0] preload_file;
begin
    $write("%.3f (ns) Preloading data from file %0s.\n", $realtime, preload_file);
    $readmemb(preload_file, preload_data, 0, fuseSize-1);

    //checking each bit in preload_data
    for (i = 0 ; i < fuseSize ; i = i + 1) begin
        if (^preload_data[i] === 1'bx) begin
            $write("%.3f (ns) ERROR! Preload data contains unknown values. preload[%d] = %b\n", $realtime, i[fuseSizeAddr-1:0], preload_data[i]);
        end else begin
            $write("%.3f (ns) Preloading: address: %b, data: %b\n", $realtime, i[fuseSizeAddr-1:0], preload_data[i]);
            fuseData[i] = preload_data[i] ;
        end
    end
end
endtask

endmodule
`endcelldefine
