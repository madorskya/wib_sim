module frame_builder_femb
(
    input [13:0] deframed_mapped [1:0][3:0][15:0], // [coldata][adc][sample]
    output [31:0] tx_words [55:0],
    input raw_channel_map
);

    reg [882+14-1:0] parallel_daq_0, parallel_daq_1;

    genvar i;
    generate
        // chop parallel daq word into 32-bit words ready for transmission
        for (i = 0; i < 28; i++)
        begin
            assign tx_words[i   ] = parallel_daq_0[i*32 +: 32];
            assign tx_words[i+28] = parallel_daq_1[i*32 +: 32];
        end
    endgenerate

    // map below generated in Excel file
    // F:\madorsky\github\zynq\wib_sim\doc\chamber_channel_map.xlsx
    // source table for wire mapping taken from page 9 of this document:
    // on physicsd2102b computer:
    // F:/cygwin/home/madorsky/documents/projects/dune/doc/coldadc/pdsp-tpc-numbers-3.pdf
    // had to split parallel_daq in two parts because of max length limitation of 1024 bits in one variable
    // mapping for COLDATA_P3 and monolithic FEMB is according to Roger's message from 2022-07-07

    always @(*)
    begin
        if (raw_channel_map == 1'b1)
        begin
            // raw channel map
            parallel_daq_0 [0 +: 14] = deframed_mapped [0][0][0];
            parallel_daq_0 [14 +: 14] = deframed_mapped [0][0][1];
            parallel_daq_0 [28 +: 14] = deframed_mapped [0][0][2];
            parallel_daq_0 [42 +: 14] = deframed_mapped [0][0][3];
            parallel_daq_0 [56 +: 14] = deframed_mapped [0][0][4];
            parallel_daq_0 [70 +: 14] = deframed_mapped [0][0][5];
            parallel_daq_0 [84 +: 14] = deframed_mapped [0][0][6];
            parallel_daq_0 [98 +: 14] = deframed_mapped [0][0][7];
            parallel_daq_0 [112 +: 14] = deframed_mapped [0][0][8];
            parallel_daq_0 [126 +: 14] = deframed_mapped [0][0][9];
            parallel_daq_0 [140 +: 14] = deframed_mapped [0][0][10];
            parallel_daq_0 [154 +: 14] = deframed_mapped [0][0][11];
            parallel_daq_0 [168 +: 14] = deframed_mapped [0][0][12];
            parallel_daq_0 [182 +: 14] = deframed_mapped [0][0][13];
            parallel_daq_0 [196 +: 14] = deframed_mapped [0][0][14];
            parallel_daq_0 [210 +: 14] = deframed_mapped [0][0][15];
            parallel_daq_0 [224 +: 14] = deframed_mapped [0][1][0];
            parallel_daq_0 [238 +: 14] = deframed_mapped [0][1][1];
            parallel_daq_0 [252 +: 14] = deframed_mapped [0][1][2];
            parallel_daq_0 [266 +: 14] = deframed_mapped [0][1][3];
            parallel_daq_0 [280 +: 14] = deframed_mapped [0][1][4];
            parallel_daq_0 [294 +: 14] = deframed_mapped [0][1][5];
            parallel_daq_0 [308 +: 14] = deframed_mapped [0][1][6];
            parallel_daq_0 [322 +: 14] = deframed_mapped [0][1][7];
            parallel_daq_0 [336 +: 14] = deframed_mapped [0][1][8];
            parallel_daq_0 [350 +: 14] = deframed_mapped [0][1][9];
            parallel_daq_0 [364 +: 14] = deframed_mapped [0][1][10];
            parallel_daq_0 [378 +: 14] = deframed_mapped [0][1][11];
            parallel_daq_0 [392 +: 14] = deframed_mapped [0][1][12];
            parallel_daq_0 [406 +: 14] = deframed_mapped [0][1][13];
            parallel_daq_0 [420 +: 14] = deframed_mapped [0][1][14];
            parallel_daq_0 [434 +: 14] = deframed_mapped [0][1][15];
            parallel_daq_0 [448 +: 14] = deframed_mapped [0][2][0];
            parallel_daq_0 [462 +: 14] = deframed_mapped [0][2][1];
            parallel_daq_0 [476 +: 14] = deframed_mapped [0][2][2];
            parallel_daq_0 [490 +: 14] = deframed_mapped [0][2][3];
            parallel_daq_0 [504 +: 14] = deframed_mapped [0][2][4];
            parallel_daq_0 [518 +: 14] = deframed_mapped [0][2][5];
            parallel_daq_0 [532 +: 14] = deframed_mapped [0][2][6];
            parallel_daq_0 [546 +: 14] = deframed_mapped [0][2][7];
            parallel_daq_0 [560 +: 14] = deframed_mapped [0][2][8];
            parallel_daq_0 [574 +: 14] = deframed_mapped [0][2][9];
            parallel_daq_0 [588 +: 14] = deframed_mapped [0][2][10];
            parallel_daq_0 [602 +: 14] = deframed_mapped [0][2][11];
            parallel_daq_0 [616 +: 14] = deframed_mapped [0][2][12];
            parallel_daq_0 [630 +: 14] = deframed_mapped [0][2][13];
            parallel_daq_0 [644 +: 14] = deframed_mapped [0][2][14];
            parallel_daq_0 [658 +: 14] = deframed_mapped [0][2][15];
            parallel_daq_0 [672 +: 14] = deframed_mapped [0][3][0];
            parallel_daq_0 [686 +: 14] = deframed_mapped [0][3][1];
            parallel_daq_0 [700 +: 14] = deframed_mapped [0][3][2];
            parallel_daq_0 [714 +: 14] = deframed_mapped [0][3][3];
            parallel_daq_0 [728 +: 14] = deframed_mapped [0][3][4];
            parallel_daq_0 [742 +: 14] = deframed_mapped [0][3][5];
            parallel_daq_0 [756 +: 14] = deframed_mapped [0][3][6];
            parallel_daq_0 [770 +: 14] = deframed_mapped [0][3][7];
            parallel_daq_0 [784 +: 14] = deframed_mapped [0][3][8];
            parallel_daq_0 [798 +: 14] = deframed_mapped [0][3][9];
            parallel_daq_0 [812 +: 14] = deframed_mapped [0][3][10];
            parallel_daq_0 [826 +: 14] = deframed_mapped [0][3][11];
            parallel_daq_0 [840 +: 14] = deframed_mapped [0][3][12];
            parallel_daq_0 [854 +: 14] = deframed_mapped [0][3][13];
            parallel_daq_0 [868 +: 14] = deframed_mapped [0][3][14];
            parallel_daq_0 [882 +: 14] = deframed_mapped [0][3][15];
            parallel_daq_0 [0 +: 14] = deframed_mapped [1][0][0];
            parallel_daq_0 [14 +: 14] = deframed_mapped [1][0][1];
            parallel_daq_0 [28 +: 14] = deframed_mapped [1][0][2];
            parallel_daq_0 [42 +: 14] = deframed_mapped [1][0][3];
            parallel_daq_0 [56 +: 14] = deframed_mapped [1][0][4];
            parallel_daq_0 [70 +: 14] = deframed_mapped [1][0][5];
            parallel_daq_0 [84 +: 14] = deframed_mapped [1][0][6];
            parallel_daq_0 [98 +: 14] = deframed_mapped [1][0][7];
            parallel_daq_0 [112 +: 14] = deframed_mapped [1][0][8];
            parallel_daq_0 [126 +: 14] = deframed_mapped [1][0][9];
            parallel_daq_0 [140 +: 14] = deframed_mapped [1][0][10];
            parallel_daq_0 [154 +: 14] = deframed_mapped [1][0][11];
            parallel_daq_0 [168 +: 14] = deframed_mapped [1][0][12];
            parallel_daq_0 [182 +: 14] = deframed_mapped [1][0][13];
            parallel_daq_0 [196 +: 14] = deframed_mapped [1][0][14];
            parallel_daq_0 [210 +: 14] = deframed_mapped [1][0][15];
            parallel_daq_0 [224 +: 14] = deframed_mapped [1][1][0];
            parallel_daq_0 [238 +: 14] = deframed_mapped [1][1][1];
            parallel_daq_0 [252 +: 14] = deframed_mapped [1][1][2];
            parallel_daq_0 [266 +: 14] = deframed_mapped [1][1][3];
            parallel_daq_0 [280 +: 14] = deframed_mapped [1][1][4];
            parallel_daq_0 [294 +: 14] = deframed_mapped [1][1][5];
            parallel_daq_0 [308 +: 14] = deframed_mapped [1][1][6];
            parallel_daq_0 [322 +: 14] = deframed_mapped [1][1][7];
            parallel_daq_0 [336 +: 14] = deframed_mapped [1][1][8];
            parallel_daq_0 [350 +: 14] = deframed_mapped [1][1][9];
            parallel_daq_0 [364 +: 14] = deframed_mapped [1][1][10];
            parallel_daq_0 [378 +: 14] = deframed_mapped [1][1][11];
            parallel_daq_0 [392 +: 14] = deframed_mapped [1][1][12];
            parallel_daq_0 [406 +: 14] = deframed_mapped [1][1][13];
            parallel_daq_0 [420 +: 14] = deframed_mapped [1][1][14];
            parallel_daq_0 [434 +: 14] = deframed_mapped [1][1][15];
            parallel_daq_0 [448 +: 14] = deframed_mapped [1][2][0];
            parallel_daq_0 [462 +: 14] = deframed_mapped [1][2][1];
            parallel_daq_0 [476 +: 14] = deframed_mapped [1][2][2];
            parallel_daq_0 [490 +: 14] = deframed_mapped [1][2][3];
            parallel_daq_0 [504 +: 14] = deframed_mapped [1][2][4];
            parallel_daq_0 [518 +: 14] = deframed_mapped [1][2][5];
            parallel_daq_0 [532 +: 14] = deframed_mapped [1][2][6];
            parallel_daq_0 [546 +: 14] = deframed_mapped [1][2][7];
            parallel_daq_0 [560 +: 14] = deframed_mapped [1][2][8];
            parallel_daq_0 [574 +: 14] = deframed_mapped [1][2][9];
            parallel_daq_0 [588 +: 14] = deframed_mapped [1][2][10];
            parallel_daq_0 [602 +: 14] = deframed_mapped [1][2][11];
            parallel_daq_0 [616 +: 14] = deframed_mapped [1][2][12];
            parallel_daq_0 [630 +: 14] = deframed_mapped [1][2][13];
            parallel_daq_0 [644 +: 14] = deframed_mapped [1][2][14];
            parallel_daq_0 [658 +: 14] = deframed_mapped [1][2][15];
            parallel_daq_0 [672 +: 14] = deframed_mapped [1][3][0];
            parallel_daq_0 [686 +: 14] = deframed_mapped [1][3][1];
            parallel_daq_0 [700 +: 14] = deframed_mapped [1][3][2];
            parallel_daq_0 [714 +: 14] = deframed_mapped [1][3][3];
            parallel_daq_0 [728 +: 14] = deframed_mapped [1][3][4];
            parallel_daq_0 [742 +: 14] = deframed_mapped [1][3][5];
            parallel_daq_0 [756 +: 14] = deframed_mapped [1][3][6];
            parallel_daq_0 [770 +: 14] = deframed_mapped [1][3][7];
            parallel_daq_0 [784 +: 14] = deframed_mapped [1][3][8];
            parallel_daq_0 [798 +: 14] = deframed_mapped [1][3][9];
            parallel_daq_0 [812 +: 14] = deframed_mapped [1][3][10];
            parallel_daq_0 [826 +: 14] = deframed_mapped [1][3][11];
            parallel_daq_0 [840 +: 14] = deframed_mapped [1][3][12];
            parallel_daq_0 [854 +: 14] = deframed_mapped [1][3][13];
            parallel_daq_0 [868 +: 14] = deframed_mapped [1][3][14];
            parallel_daq_0 [882 +: 14] = deframed_mapped [1][3][15];        
        end
        else
        begin
            // Mono FEMB UVX map
            parallel_daq_0 [0 +: 14] = deframed_mapped [0][0][4];	// U0
            parallel_daq_0 [14 +: 14] = deframed_mapped [0][1][11];	// U1
            parallel_daq_0 [28 +: 14] = deframed_mapped [0][0][3];	// U2
            parallel_daq_0 [42 +: 14] = deframed_mapped [0][1][12];	// U3
            parallel_daq_0 [56 +: 14] = deframed_mapped [0][0][2];	// U4
            parallel_daq_0 [70 +: 14] = deframed_mapped [0][1][13];	// U5
            parallel_daq_0 [84 +: 14] = deframed_mapped [0][0][1];	// U6
            parallel_daq_0 [98 +: 14] = deframed_mapped [0][1][14];	// U7
            parallel_daq_0 [112 +: 14] = deframed_mapped [0][0][0];	// U8
            parallel_daq_0 [126 +: 14] = deframed_mapped [0][1][15];	// U9
            parallel_daq_0 [140 +: 14] = deframed_mapped [0][3][4];	// U10
            parallel_daq_0 [154 +: 14] = deframed_mapped [0][2][11];	// U11
            parallel_daq_0 [168 +: 14] = deframed_mapped [0][3][3];	// U12
            parallel_daq_0 [182 +: 14] = deframed_mapped [0][2][12];	// U13
            parallel_daq_0 [196 +: 14] = deframed_mapped [0][3][2];	// U14
            parallel_daq_0 [210 +: 14] = deframed_mapped [0][2][13];	// U15
            parallel_daq_0 [224 +: 14] = deframed_mapped [0][3][1];	// U16
            parallel_daq_0 [238 +: 14] = deframed_mapped [0][2][14];	// U17
            parallel_daq_0 [252 +: 14] = deframed_mapped [0][3][0];	// U18
            parallel_daq_0 [266 +: 14] = deframed_mapped [0][2][15];	// U19
            parallel_daq_0 [280 +: 14] = deframed_mapped [1][0][4];	// U20
            parallel_daq_0 [294 +: 14] = deframed_mapped [1][1][11];	// U21
            parallel_daq_0 [308 +: 14] = deframed_mapped [1][0][3];	// U22
            parallel_daq_0 [322 +: 14] = deframed_mapped [1][1][12];	// U23
            parallel_daq_0 [336 +: 14] = deframed_mapped [1][0][2];	// U24
            parallel_daq_0 [350 +: 14] = deframed_mapped [1][1][13];	// U25
            parallel_daq_0 [364 +: 14] = deframed_mapped [1][0][1];	// U26
            parallel_daq_0 [378 +: 14] = deframed_mapped [1][1][14];	// U27
            parallel_daq_0 [392 +: 14] = deframed_mapped [1][0][0];	// U28
            parallel_daq_0 [406 +: 14] = deframed_mapped [1][1][15];	// U29
            parallel_daq_0 [420 +: 14] = deframed_mapped [1][3][4];	// U30
            parallel_daq_0 [434 +: 14] = deframed_mapped [1][2][11];	// U31
            parallel_daq_0 [448 +: 14] = deframed_mapped [1][3][3];	// U32
            parallel_daq_0 [462 +: 14] = deframed_mapped [1][2][12];	// U33
            parallel_daq_0 [476 +: 14] = deframed_mapped [1][3][2];	// U34
            parallel_daq_0 [490 +: 14] = deframed_mapped [1][2][13];	// U35
            parallel_daq_0 [504 +: 14] = deframed_mapped [1][3][1];	// U36
            parallel_daq_0 [518 +: 14] = deframed_mapped [1][2][14];	// U37
            parallel_daq_0 [532 +: 14] = deframed_mapped [1][3][0];	// U38
            parallel_daq_0 [546 +: 14] = deframed_mapped [1][2][15];	// U39
            parallel_daq_0 [560 +: 14] = deframed_mapped [0][0][9];	// V0
            parallel_daq_0 [574 +: 14] = deframed_mapped [0][1][6];	// V1
            parallel_daq_0 [588 +: 14] = deframed_mapped [0][0][8];	// V2
            parallel_daq_0 [602 +: 14] = deframed_mapped [0][1][7];	// V3
            parallel_daq_0 [616 +: 14] = deframed_mapped [0][0][7];	// V4
            parallel_daq_0 [630 +: 14] = deframed_mapped [0][1][8];	// V5
            parallel_daq_0 [644 +: 14] = deframed_mapped [0][0][6];	// V6
            parallel_daq_0 [658 +: 14] = deframed_mapped [0][1][9];	// V7
            parallel_daq_0 [672 +: 14] = deframed_mapped [0][0][5];	// V8
            parallel_daq_0 [686 +: 14] = deframed_mapped [0][1][10];	// V9
            parallel_daq_0 [700 +: 14] = deframed_mapped [0][3][9];	// V10
            parallel_daq_0 [714 +: 14] = deframed_mapped [0][2][6];	// V11
            parallel_daq_0 [728 +: 14] = deframed_mapped [0][3][8];	// V12
            parallel_daq_0 [742 +: 14] = deframed_mapped [0][2][7];	// V13
            parallel_daq_0 [756 +: 14] = deframed_mapped [0][3][7];	// V14
            parallel_daq_0 [770 +: 14] = deframed_mapped [0][2][8];	// V15
            parallel_daq_0 [784 +: 14] = deframed_mapped [0][3][6];	// V16
            parallel_daq_0 [798 +: 14] = deframed_mapped [0][2][9];	// V17
            parallel_daq_0 [812 +: 14] = deframed_mapped [0][3][5];	// V18
            parallel_daq_0 [826 +: 14] = deframed_mapped [0][2][10];	// V19
            parallel_daq_0 [840 +: 14] = deframed_mapped [1][0][9];	// V20
            parallel_daq_0 [854 +: 14] = deframed_mapped [1][1][6];	// V21
            parallel_daq_0 [868 +: 14] = deframed_mapped [1][0][8];	// V22
            parallel_daq_0 [882 +: 14] = deframed_mapped [1][1][7];	// V23
            parallel_daq_1 [0 +: 14] = deframed_mapped [1][0][7];	// V24
            parallel_daq_1 [14 +: 14] = deframed_mapped [1][1][8];	// V25
            parallel_daq_1 [28 +: 14] = deframed_mapped [1][0][6];	// V26
            parallel_daq_1 [42 +: 14] = deframed_mapped [1][1][9];	// V27
            parallel_daq_1 [56 +: 14] = deframed_mapped [1][0][5];	// V28
            parallel_daq_1 [70 +: 14] = deframed_mapped [1][1][10];	// V29
            parallel_daq_1 [84 +: 14] = deframed_mapped [1][3][9];	// V30
            parallel_daq_1 [98 +: 14] = deframed_mapped [1][2][6];	// V31
            parallel_daq_1 [112 +: 14] = deframed_mapped [1][3][8];	// V32
            parallel_daq_1 [126 +: 14] = deframed_mapped [1][2][7];	// V33
            parallel_daq_1 [140 +: 14] = deframed_mapped [1][3][7];	// V34
            parallel_daq_1 [154 +: 14] = deframed_mapped [1][2][8];	// V35
            parallel_daq_1 [168 +: 14] = deframed_mapped [1][3][6];	// V36
            parallel_daq_1 [182 +: 14] = deframed_mapped [1][2][9];	// V37
            parallel_daq_1 [196 +: 14] = deframed_mapped [1][3][5];	// V38
            parallel_daq_1 [210 +: 14] = deframed_mapped [1][2][10];	// V39
            parallel_daq_1 [224 +: 14] = deframed_mapped [0][0][15];	// X0
            parallel_daq_1 [238 +: 14] = deframed_mapped [0][1][0];	// X1
            parallel_daq_1 [252 +: 14] = deframed_mapped [0][0][14];	// X2
            parallel_daq_1 [266 +: 14] = deframed_mapped [0][1][1];	// X3
            parallel_daq_1 [280 +: 14] = deframed_mapped [0][0][13];	// X4
            parallel_daq_1 [294 +: 14] = deframed_mapped [0][1][2];	// X5
            parallel_daq_1 [308 +: 14] = deframed_mapped [0][0][12];	// X6
            parallel_daq_1 [322 +: 14] = deframed_mapped [0][1][3];	// X7
            parallel_daq_1 [336 +: 14] = deframed_mapped [0][0][11];	// X8
            parallel_daq_1 [350 +: 14] = deframed_mapped [0][1][4];	// X9
            parallel_daq_1 [364 +: 14] = deframed_mapped [0][0][10];	// X10
            parallel_daq_1 [378 +: 14] = deframed_mapped [0][1][5];	// X11
            parallel_daq_1 [392 +: 14] = deframed_mapped [0][3][15];	// X12
            parallel_daq_1 [406 +: 14] = deframed_mapped [0][2][0];	// X13
            parallel_daq_1 [420 +: 14] = deframed_mapped [0][3][14];	// X14
            parallel_daq_1 [434 +: 14] = deframed_mapped [0][2][1];	// X15
            parallel_daq_1 [448 +: 14] = deframed_mapped [0][3][13];	// X16
            parallel_daq_1 [462 +: 14] = deframed_mapped [0][2][2];	// X17
            parallel_daq_1 [476 +: 14] = deframed_mapped [0][3][12];	// X18
            parallel_daq_1 [490 +: 14] = deframed_mapped [0][2][3];	// X19
            parallel_daq_1 [504 +: 14] = deframed_mapped [0][3][11];	// X20
            parallel_daq_1 [518 +: 14] = deframed_mapped [0][2][4];	// X21
            parallel_daq_1 [532 +: 14] = deframed_mapped [0][3][10];	// X22
            parallel_daq_1 [546 +: 14] = deframed_mapped [0][2][5];	// X23
            parallel_daq_1 [560 +: 14] = deframed_mapped [1][0][15];	// X24
            parallel_daq_1 [574 +: 14] = deframed_mapped [1][1][0];	// X25
            parallel_daq_1 [588 +: 14] = deframed_mapped [1][0][14];	// X26
            parallel_daq_1 [602 +: 14] = deframed_mapped [1][1][1];	// X27
            parallel_daq_1 [616 +: 14] = deframed_mapped [1][0][13];	// X28
            parallel_daq_1 [630 +: 14] = deframed_mapped [1][1][2];	// X29
            parallel_daq_1 [644 +: 14] = deframed_mapped [1][0][12];	// X30
            parallel_daq_1 [658 +: 14] = deframed_mapped [1][1][3];	// X31
            parallel_daq_1 [672 +: 14] = deframed_mapped [1][0][11];	// X32
            parallel_daq_1 [686 +: 14] = deframed_mapped [1][1][4];	// X33
            parallel_daq_1 [700 +: 14] = deframed_mapped [1][0][10];	// X34
            parallel_daq_1 [714 +: 14] = deframed_mapped [1][1][5];	// X35
            parallel_daq_1 [728 +: 14] = deframed_mapped [1][3][15];	// X36
            parallel_daq_1 [742 +: 14] = deframed_mapped [1][2][0];	// X37
            parallel_daq_1 [756 +: 14] = deframed_mapped [1][3][14];	// X38
            parallel_daq_1 [770 +: 14] = deframed_mapped [1][2][1];	// X39
            parallel_daq_1 [784 +: 14] = deframed_mapped [1][3][13];	// X40
            parallel_daq_1 [798 +: 14] = deframed_mapped [1][2][2];	// X41
            parallel_daq_1 [812 +: 14] = deframed_mapped [1][3][12];	// X42
            parallel_daq_1 [826 +: 14] = deframed_mapped [1][2][3];	// X43
            parallel_daq_1 [840 +: 14] = deframed_mapped [1][3][11];	// X44
            parallel_daq_1 [854 +: 14] = deframed_mapped [1][2][4];	// X45
            parallel_daq_1 [868 +: 14] = deframed_mapped [1][3][10];	// X46
            parallel_daq_1 [882 +: 14] = deframed_mapped [1][2][5];	// X47
        end
    end

endmodule

