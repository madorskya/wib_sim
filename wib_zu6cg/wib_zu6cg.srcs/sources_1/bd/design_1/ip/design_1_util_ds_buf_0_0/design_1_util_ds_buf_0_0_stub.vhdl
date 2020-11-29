-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Sun Nov 29 01:21:28 2020
-- Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_util_ds_buf_0_0 -prefix
--               design_1_util_ds_buf_0_0_ design_1_util_ds_buf_0_1_stub.vhdl
-- Design      : design_1_util_ds_buf_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_util_ds_buf_0_0 is
  Port ( 
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_util_ds_buf_0_0;

architecture stub of design_1_util_ds_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "OBUF_IN[0:0],OBUF_DS_P[0:0],OBUF_DS_N[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2020.1.1_AR73018";
begin
end;
