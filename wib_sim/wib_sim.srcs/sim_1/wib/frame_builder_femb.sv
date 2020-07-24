module frame_builder_femb
(
    input [13:0] deframed_mapped [1:0][3:0][15:0], // [coldata][adc][sample]
    output reg [31:0] tx_words [55:0]
);

    wire [1778+14-1:0] parallel_daq;

    integer i;
    always @(*)
    begin
        // chop parallel daq word into 32-bit words ready for transmission
        for (i = 0; i < 56; i++)
        begin
            tx_words[i] = parallel_daq[i*32 :+ 32];
        end
    end

    // map below generated in Excel file
    // /home/madorsky/documents/projects/dune/WIB-DAQ Format_July23_2019-3.xlsx
    // source table for wire mapping taken from page 9 of this document:
    // /home/madorsky/documents/projects/dune/pdsp-tpc-numbers-3.pdf
    assign parallel_daq [0 :+ 14] = deframed_mapped [0][1][4];	     // U0
    assign parallel_daq [14 :+ 14] = deframed_mapped [0][3][11];	 // U1
    assign parallel_daq [28 :+ 14] = deframed_mapped [0][1][3];	     // U2
    assign parallel_daq [42 :+ 14] = deframed_mapped [0][3][12];	 // U3
    assign parallel_daq [56 :+ 14] = deframed_mapped [0][1][2];	     // U4
    assign parallel_daq [70 :+ 14] = deframed_mapped [0][3][13];	 // U5
    assign parallel_daq [84 :+ 14] = deframed_mapped [0][1][1];	     // U6
    assign parallel_daq [98 :+ 14] = deframed_mapped [0][3][14];	 // U7
    assign parallel_daq [112 :+ 14] = deframed_mapped [0][1][0];	 // U8
    assign parallel_daq [126 :+ 14] = deframed_mapped [0][3][15];	 // U9
    assign parallel_daq [140 :+ 14] = deframed_mapped [0][0][4];	 // U10
    assign parallel_daq [154 :+ 14] = deframed_mapped [0][2][11];	 // U11
    assign parallel_daq [168 :+ 14] = deframed_mapped [0][0][3];	 // U12
    assign parallel_daq [182 :+ 14] = deframed_mapped [0][2][12];	 // U13
    assign parallel_daq [196 :+ 14] = deframed_mapped [0][0][2];	 // U14
    assign parallel_daq [210 :+ 14] = deframed_mapped [0][2][13];	 // U15
    assign parallel_daq [224 :+ 14] = deframed_mapped [0][0][1];	 // U16
    assign parallel_daq [238 :+ 14] = deframed_mapped [0][2][14];	 // U17
    assign parallel_daq [252 :+ 14] = deframed_mapped [0][0][0];	 // U18
    assign parallel_daq [266 :+ 14] = deframed_mapped [0][2][15];	 // U19
    assign parallel_daq [280 :+ 14] = deframed_mapped [1][0][4];	 // U20
    assign parallel_daq [294 :+ 14] = deframed_mapped [1][2][11];	 // U21
    assign parallel_daq [308 :+ 14] = deframed_mapped [1][0][3];	 // U22
    assign parallel_daq [322 :+ 14] = deframed_mapped [1][2][12];	 // U23
    assign parallel_daq [336 :+ 14] = deframed_mapped [1][0][2];	 // U24
    assign parallel_daq [350 :+ 14] = deframed_mapped [1][2][13];	 // U25
    assign parallel_daq [364 :+ 14] = deframed_mapped [1][0][1];	 // U26
    assign parallel_daq [378 :+ 14] = deframed_mapped [1][2][14];	 // U27
    assign parallel_daq [392 :+ 14] = deframed_mapped [1][0][0];	 // U28
    assign parallel_daq [406 :+ 14] = deframed_mapped [1][2][15];	 // U29
    assign parallel_daq [420 :+ 14] = deframed_mapped [1][1][4];	 // U30
    assign parallel_daq [434 :+ 14] = deframed_mapped [1][3][11];	 // U31
    assign parallel_daq [448 :+ 14] = deframed_mapped [1][1][3];	 // U32
    assign parallel_daq [462 :+ 14] = deframed_mapped [1][3][12];	 // U33
    assign parallel_daq [476 :+ 14] = deframed_mapped [1][1][2];	 // U34
    assign parallel_daq [490 :+ 14] = deframed_mapped [1][3][13];	 // U35
    assign parallel_daq [504 :+ 14] = deframed_mapped [1][1][1];	 // U36
    assign parallel_daq [518 :+ 14] = deframed_mapped [1][3][14];	 // U37
    assign parallel_daq [532 :+ 14] = deframed_mapped [1][1][0];	 // U38
    assign parallel_daq [546 :+ 14] = deframed_mapped [1][3][15];	 // U39
    assign parallel_daq [560 :+ 14] = deframed_mapped [0][1][9];	 // V0
    assign parallel_daq [574 :+ 14] = deframed_mapped [0][3][6];	 // V1
    assign parallel_daq [588 :+ 14] = deframed_mapped [0][1][8];	 // V2
    assign parallel_daq [602 :+ 14] = deframed_mapped [0][3][7];	 // V3
    assign parallel_daq [616 :+ 14] = deframed_mapped [0][1][7];	 // V4
    assign parallel_daq [630 :+ 14] = deframed_mapped [0][3][8];	 // V5
    assign parallel_daq [644 :+ 14] = deframed_mapped [0][1][6];	 // V6
    assign parallel_daq [658 :+ 14] = deframed_mapped [0][3][9];	 // V7
    assign parallel_daq [672 :+ 14] = deframed_mapped [0][1][5];	 // V8
    assign parallel_daq [686 :+ 14] = deframed_mapped [0][3][10];	 // V9
    assign parallel_daq [700 :+ 14] = deframed_mapped [0][0][9];	 // V10
    assign parallel_daq [714 :+ 14] = deframed_mapped [0][2][6];	 // V11
    assign parallel_daq [728 :+ 14] = deframed_mapped [0][0][8];	 // V12
    assign parallel_daq [742 :+ 14] = deframed_mapped [0][2][7];	 // V13
    assign parallel_daq [756 :+ 14] = deframed_mapped [0][0][7];	 // V14
    assign parallel_daq [770 :+ 14] = deframed_mapped [0][2][8];	 // V15
    assign parallel_daq [784 :+ 14] = deframed_mapped [0][0][6];	 // V16
    assign parallel_daq [798 :+ 14] = deframed_mapped [0][2][9];	 // V17
    assign parallel_daq [812 :+ 14] = deframed_mapped [0][0][5];	 // V18
    assign parallel_daq [826 :+ 14] = deframed_mapped [0][2][10];	 // V19
    assign parallel_daq [840 :+ 14] = deframed_mapped [1][0][9];	 // V20
    assign parallel_daq [854 :+ 14] = deframed_mapped [1][2][6];	 // V21
    assign parallel_daq [868 :+ 14] = deframed_mapped [1][0][8];	 // V22
    assign parallel_daq [882 :+ 14] = deframed_mapped [1][2][7];	 // V23
    assign parallel_daq [896 :+ 14] = deframed_mapped [1][0][7];	 // V24
    assign parallel_daq [910 :+ 14] = deframed_mapped [1][2][8];	 // V25
    assign parallel_daq [924 :+ 14] = deframed_mapped [1][0][6];	 // V26
    assign parallel_daq [938 :+ 14] = deframed_mapped [1][2][9];	 // V27
    assign parallel_daq [952 :+ 14] = deframed_mapped [1][0][5];	 // V28
    assign parallel_daq [966 :+ 14] = deframed_mapped [1][2][10];	 // V29
    assign parallel_daq [980 :+ 14] = deframed_mapped [1][1][9];	 // V30
    assign parallel_daq [994 :+ 14] = deframed_mapped [1][3][6];	 // V31
    assign parallel_daq [1008 :+ 14] = deframed_mapped [1][1][8];	 // V32
    assign parallel_daq [1022 :+ 14] = deframed_mapped [1][3][7];	 // V33
    assign parallel_daq [1036 :+ 14] = deframed_mapped [1][1][7];	 // V34
    assign parallel_daq [1050 :+ 14] = deframed_mapped [1][3][8];	 // V35
    assign parallel_daq [1064 :+ 14] = deframed_mapped [1][1][6];	 // V36
    assign parallel_daq [1078 :+ 14] = deframed_mapped [1][3][9];	 // V37
    assign parallel_daq [1092 :+ 14] = deframed_mapped [1][1][5];	 // V38
    assign parallel_daq [1106 :+ 14] = deframed_mapped [1][3][10];	 // V39
    assign parallel_daq [1120 :+ 14] = deframed_mapped [0][1][15];	 // X0
    assign parallel_daq [1134 :+ 14] = deframed_mapped [0][3][0];	 // X1
    assign parallel_daq [1148 :+ 14] = deframed_mapped [0][1][14];	 // X2
    assign parallel_daq [1162 :+ 14] = deframed_mapped [0][3][1];	 // X3
    assign parallel_daq [1176 :+ 14] = deframed_mapped [0][1][13];	 // X4
    assign parallel_daq [1190 :+ 14] = deframed_mapped [0][3][2];	 // X5
    assign parallel_daq [1204 :+ 14] = deframed_mapped [0][1][12];	 // X6
    assign parallel_daq [1218 :+ 14] = deframed_mapped [0][3][3];	 // X7
    assign parallel_daq [1232 :+ 14] = deframed_mapped [0][1][11];	 // X8
    assign parallel_daq [1246 :+ 14] = deframed_mapped [0][3][4];	 // X9
    assign parallel_daq [1260 :+ 14] = deframed_mapped [0][1][10];	 // X10
    assign parallel_daq [1274 :+ 14] = deframed_mapped [0][3][5];	 // X11
    assign parallel_daq [1288 :+ 14] = deframed_mapped [0][0][15];	 // X12
    assign parallel_daq [1302 :+ 14] = deframed_mapped [0][2][0];	 // X13
    assign parallel_daq [1316 :+ 14] = deframed_mapped [0][0][14];	 // X14
    assign parallel_daq [1330 :+ 14] = deframed_mapped [0][2][1];	 // X15
    assign parallel_daq [1344 :+ 14] = deframed_mapped [0][0][13];	 // X16
    assign parallel_daq [1358 :+ 14] = deframed_mapped [0][2][2];	 // X17
    assign parallel_daq [1372 :+ 14] = deframed_mapped [0][0][12];	 // X18
    assign parallel_daq [1386 :+ 14] = deframed_mapped [0][2][3];	 // X19
    assign parallel_daq [1400 :+ 14] = deframed_mapped [0][0][11];	 // X20
    assign parallel_daq [1414 :+ 14] = deframed_mapped [0][2][4];	 // X21
    assign parallel_daq [1428 :+ 14] = deframed_mapped [0][0][10];	 // X22
    assign parallel_daq [1442 :+ 14] = deframed_mapped [0][2][5];	 // X23
    assign parallel_daq [1456 :+ 14] = deframed_mapped [1][0][15];	 // X24
    assign parallel_daq [1470 :+ 14] = deframed_mapped [1][2][0];	 // X25
    assign parallel_daq [1484 :+ 14] = deframed_mapped [1][0][14];	 // X26
    assign parallel_daq [1498 :+ 14] = deframed_mapped [1][2][1];	 // X27
    assign parallel_daq [1512 :+ 14] = deframed_mapped [1][0][13];	 // X28
    assign parallel_daq [1526 :+ 14] = deframed_mapped [1][2][2];	 // X29
    assign parallel_daq [1540 :+ 14] = deframed_mapped [1][0][12];	 // X30
    assign parallel_daq [1554 :+ 14] = deframed_mapped [1][2][3];	 // X31
    assign parallel_daq [1568 :+ 14] = deframed_mapped [1][0][11];	 // X32
    assign parallel_daq [1582 :+ 14] = deframed_mapped [1][2][4];	 // X33
    assign parallel_daq [1596 :+ 14] = deframed_mapped [1][0][10];	 // X34
    assign parallel_daq [1610 :+ 14] = deframed_mapped [1][2][5];	 // X35
    assign parallel_daq [1624 :+ 14] = deframed_mapped [1][1][15];	 // X36
    assign parallel_daq [1638 :+ 14] = deframed_mapped [1][3][0];	 // X37
    assign parallel_daq [1652 :+ 14] = deframed_mapped [1][1][14];	 // X38
    assign parallel_daq [1666 :+ 14] = deframed_mapped [1][3][1];	 // X39
    assign parallel_daq [1680 :+ 14] = deframed_mapped [1][1][13];	 // X40
    assign parallel_daq [1694 :+ 14] = deframed_mapped [1][3][2];	 // X41
    assign parallel_daq [1708 :+ 14] = deframed_mapped [1][1][12];	 // X42
    assign parallel_daq [1722 :+ 14] = deframed_mapped [1][3][3];	 // X43
    assign parallel_daq [1736 :+ 14] = deframed_mapped [1][1][11];	 // X44
    assign parallel_daq [1750 :+ 14] = deframed_mapped [1][3][4];	 // X45
    assign parallel_daq [1764 :+ 14] = deframed_mapped [1][1][10];	 // X46
    assign parallel_daq [1778 :+ 14] = deframed_mapped [1][3][5];	 // X47
    

endmodule

