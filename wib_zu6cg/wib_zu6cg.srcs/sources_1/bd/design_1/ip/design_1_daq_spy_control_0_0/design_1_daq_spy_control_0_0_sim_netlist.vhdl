-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Dec  2 20:10:29 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_daq_spy_control_0_0/design_1_daq_spy_control_0_0_sim_netlist.vhdl
-- Design      : design_1_daq_spy_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_daq_spy_control_0_0_daq_spy_control is
  port (
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    full : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    daq_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    trigger : in STD_LOGIC;
    daq_stream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    daq_data_type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rec_time : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_daq_spy_control_0_0_daq_spy_control : entity is "daq_spy_control";
end design_1_daq_spy_control_0_0_daq_spy_control;

architecture STRUCTURE of design_1_daq_spy_control_0_0_daq_spy_control is
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \bram_addr[9]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[17]_i_1_n_9\ : STD_LOGIC;
  signal \bram_addr_reg[19]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[19]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[9]_i_1_n_9\ : STD_LOGIC;
  signal daq_stream_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in5 : STD_LOGIC_VECTOR ( 17 downto 1 );
  signal \rec_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rec_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \rec_cnt[17]_i_2_n_0\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rec_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rec_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \rec_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal reset_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of reset_r : signal is "true";
  signal \^state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_i_5_n_0 : STD_LOGIC;
  signal state1_carry_i_6_n_0 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal state1_carry_n_4 : STD_LOGIC;
  signal state1_carry_n_5 : STD_LOGIC;
  signal state1_carry_n_6 : STD_LOGIC;
  signal state1_carry_n_7 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trigger_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of trigger_r : signal is "true";
  signal \NLW_bram_addr_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_bram_addr_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_rec_cnt_reg[17]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_rec_cnt_reg[17]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_state1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:00,RECORD:01,LAST:10,FULL:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:00,RECORD:01,LAST:10,FULL:11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_addr_reg[17]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bram_addr_reg[19]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bram_addr_reg[9]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \rec_cnt_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rec_cnt_reg[17]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \rec_cnt_reg[8]_i_1\ : label is 35;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \reset_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \reset_r_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reset_r_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reset_r_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_INST_0\ : label is "soft_lutpair0";
  attribute ASYNC_REG_boolean of \trigger_r_reg[0]\ : label is std.standard.true;
  attribute KEEP of \trigger_r_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \trigger_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \trigger_r_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \trigger_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \trigger_r_reg[2]\ : label is "yes";
begin
  bram_addr(17 downto 0) <= \^bram_addr\(17 downto 0);
  state(2 downto 0) <= \^state\(2 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888B888BBB8B88"
    )
        port map (
      I0 => state1_carry_n_2,
      I1 => \state__0\(1),
      I2 => trigger_r(2),
      I3 => \state__0\(0),
      I4 => daq_data_type(0),
      I5 => daq_data_type(1),
      O => \state__1\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \state__0\(1),
      I1 => trigger_r(2),
      I2 => \state__0\(0),
      O => \state__1\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      D => \state__1\(0),
      Q => \state__0\(0),
      R => reset_r(2)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      D => \state__1\(1),
      Q => \state__0\(1),
      R => reset_r(2)
    );
\bram_addr[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(0),
      O => \bram_addr[9]_i_2_n_0\
    );
\bram_addr_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_15\,
      Q => \^bram_addr\(8),
      S => reset_r(2)
    );
\bram_addr_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_14\,
      Q => \^bram_addr\(9),
      S => reset_r(2)
    );
\bram_addr_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_13\,
      Q => \^bram_addr\(10),
      S => reset_r(2)
    );
\bram_addr_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_12\,
      Q => \^bram_addr\(11),
      S => reset_r(2)
    );
\bram_addr_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_11\,
      Q => \^bram_addr\(12),
      S => reset_r(2)
    );
\bram_addr_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_10\,
      Q => \^bram_addr\(13),
      S => reset_r(2)
    );
\bram_addr_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_9\,
      Q => \^bram_addr\(14),
      S => reset_r(2)
    );
\bram_addr_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[17]_i_1_n_8\,
      Q => \^bram_addr\(15),
      S => reset_r(2)
    );
\bram_addr_reg[17]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_reg[9]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \bram_addr_reg[17]_i_1_n_0\,
      CO(6) => \bram_addr_reg[17]_i_1_n_1\,
      CO(5) => \bram_addr_reg[17]_i_1_n_2\,
      CO(4) => \bram_addr_reg[17]_i_1_n_3\,
      CO(3) => \bram_addr_reg[17]_i_1_n_4\,
      CO(2) => \bram_addr_reg[17]_i_1_n_5\,
      CO(1) => \bram_addr_reg[17]_i_1_n_6\,
      CO(0) => \bram_addr_reg[17]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \bram_addr_reg[17]_i_1_n_8\,
      O(6) => \bram_addr_reg[17]_i_1_n_9\,
      O(5) => \bram_addr_reg[17]_i_1_n_10\,
      O(4) => \bram_addr_reg[17]_i_1_n_11\,
      O(3) => \bram_addr_reg[17]_i_1_n_12\,
      O(2) => \bram_addr_reg[17]_i_1_n_13\,
      O(1) => \bram_addr_reg[17]_i_1_n_14\,
      O(0) => \bram_addr_reg[17]_i_1_n_15\,
      S(7 downto 0) => \^bram_addr\(15 downto 8)
    );
\bram_addr_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[19]_i_1_n_15\,
      Q => \^bram_addr\(16),
      S => reset_r(2)
    );
\bram_addr_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[19]_i_1_n_14\,
      Q => \^bram_addr\(17),
      S => reset_r(2)
    );
\bram_addr_reg[19]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_reg[17]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_bram_addr_reg[19]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \bram_addr_reg[19]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_bram_addr_reg[19]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \bram_addr_reg[19]_i_1_n_14\,
      O(0) => \bram_addr_reg[19]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => \^bram_addr\(17 downto 16)
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_15\,
      Q => \^bram_addr\(0),
      S => reset_r(2)
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_14\,
      Q => \^bram_addr\(1),
      S => reset_r(2)
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_13\,
      Q => \^bram_addr\(2),
      S => reset_r(2)
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_12\,
      Q => \^bram_addr\(3),
      S => reset_r(2)
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_11\,
      Q => \^bram_addr\(4),
      S => reset_r(2)
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_10\,
      Q => \^bram_addr\(5),
      S => reset_r(2)
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_9\,
      Q => \^bram_addr\(6),
      S => reset_r(2)
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => daq_clk,
      CE => \^state\(1),
      D => \bram_addr_reg[9]_i_1_n_8\,
      Q => \^bram_addr\(7),
      S => reset_r(2)
    );
\bram_addr_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \bram_addr_reg[9]_i_1_n_0\,
      CO(6) => \bram_addr_reg[9]_i_1_n_1\,
      CO(5) => \bram_addr_reg[9]_i_1_n_2\,
      CO(4) => \bram_addr_reg[9]_i_1_n_3\,
      CO(3) => \bram_addr_reg[9]_i_1_n_4\,
      CO(2) => \bram_addr_reg[9]_i_1_n_5\,
      CO(1) => \bram_addr_reg[9]_i_1_n_6\,
      CO(0) => \bram_addr_reg[9]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \bram_addr_reg[9]_i_1_n_8\,
      O(6) => \bram_addr_reg[9]_i_1_n_9\,
      O(5) => \bram_addr_reg[9]_i_1_n_10\,
      O(4) => \bram_addr_reg[9]_i_1_n_11\,
      O(3) => \bram_addr_reg[9]_i_1_n_12\,
      O(2) => \bram_addr_reg[9]_i_1_n_13\,
      O(1) => \bram_addr_reg[9]_i_1_n_14\,
      O(0) => \bram_addr_reg[9]_i_1_n_15\,
      S(7 downto 1) => \^bram_addr\(7 downto 1),
      S(0) => \bram_addr[9]_i_2_n_0\
    );
\bram_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(0),
      Q => bram_din(0),
      R => '0'
    );
\bram_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(10),
      Q => bram_din(10),
      R => '0'
    );
\bram_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(11),
      Q => bram_din(11),
      R => '0'
    );
\bram_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(12),
      Q => bram_din(12),
      R => '0'
    );
\bram_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(13),
      Q => bram_din(13),
      R => '0'
    );
\bram_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(14),
      Q => bram_din(14),
      R => '0'
    );
\bram_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(15),
      Q => bram_din(15),
      R => '0'
    );
\bram_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(16),
      Q => bram_din(16),
      R => '0'
    );
\bram_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(17),
      Q => bram_din(17),
      R => '0'
    );
\bram_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(18),
      Q => bram_din(18),
      R => '0'
    );
\bram_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(19),
      Q => bram_din(19),
      R => '0'
    );
\bram_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(1),
      Q => bram_din(1),
      R => '0'
    );
\bram_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(20),
      Q => bram_din(20),
      R => '0'
    );
\bram_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(21),
      Q => bram_din(21),
      R => '0'
    );
\bram_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(22),
      Q => bram_din(22),
      R => '0'
    );
\bram_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(23),
      Q => bram_din(23),
      R => '0'
    );
\bram_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(24),
      Q => bram_din(24),
      R => '0'
    );
\bram_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(25),
      Q => bram_din(25),
      R => '0'
    );
\bram_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(26),
      Q => bram_din(26),
      R => '0'
    );
\bram_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(27),
      Q => bram_din(27),
      R => '0'
    );
\bram_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(28),
      Q => bram_din(28),
      R => '0'
    );
\bram_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(29),
      Q => bram_din(29),
      R => '0'
    );
\bram_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(2),
      Q => bram_din(2),
      R => '0'
    );
\bram_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(30),
      Q => bram_din(30),
      R => '0'
    );
\bram_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(31),
      Q => bram_din(31),
      R => '0'
    );
\bram_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(3),
      Q => bram_din(3),
      R => '0'
    );
\bram_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(4),
      Q => bram_din(4),
      R => '0'
    );
\bram_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(5),
      Q => bram_din(5),
      R => '0'
    );
\bram_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(6),
      Q => bram_din(6),
      R => '0'
    );
\bram_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(7),
      Q => bram_din(7),
      R => '0'
    );
\bram_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(8),
      Q => bram_din(8),
      R => '0'
    );
\bram_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream_r(9),
      Q => bram_din(9),
      R => '0'
    );
bram_en_reg: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => \^state\(1),
      Q => bram_we(0),
      R => reset_r(2)
    );
\daq_stream_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(0),
      Q => daq_stream_r(0),
      R => '0'
    );
\daq_stream_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(10),
      Q => daq_stream_r(10),
      R => '0'
    );
\daq_stream_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(11),
      Q => daq_stream_r(11),
      R => '0'
    );
\daq_stream_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(12),
      Q => daq_stream_r(12),
      R => '0'
    );
\daq_stream_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(13),
      Q => daq_stream_r(13),
      R => '0'
    );
\daq_stream_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(14),
      Q => daq_stream_r(14),
      R => '0'
    );
\daq_stream_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(15),
      Q => daq_stream_r(15),
      R => '0'
    );
\daq_stream_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(16),
      Q => daq_stream_r(16),
      R => '0'
    );
\daq_stream_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(17),
      Q => daq_stream_r(17),
      R => '0'
    );
\daq_stream_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(18),
      Q => daq_stream_r(18),
      R => '0'
    );
\daq_stream_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(19),
      Q => daq_stream_r(19),
      R => '0'
    );
\daq_stream_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(1),
      Q => daq_stream_r(1),
      R => '0'
    );
\daq_stream_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(20),
      Q => daq_stream_r(20),
      R => '0'
    );
\daq_stream_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(21),
      Q => daq_stream_r(21),
      R => '0'
    );
\daq_stream_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(22),
      Q => daq_stream_r(22),
      R => '0'
    );
\daq_stream_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(23),
      Q => daq_stream_r(23),
      R => '0'
    );
\daq_stream_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(24),
      Q => daq_stream_r(24),
      R => '0'
    );
\daq_stream_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(25),
      Q => daq_stream_r(25),
      R => '0'
    );
\daq_stream_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(26),
      Q => daq_stream_r(26),
      R => '0'
    );
\daq_stream_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(27),
      Q => daq_stream_r(27),
      R => '0'
    );
\daq_stream_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(28),
      Q => daq_stream_r(28),
      R => '0'
    );
\daq_stream_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(29),
      Q => daq_stream_r(29),
      R => '0'
    );
\daq_stream_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(2),
      Q => daq_stream_r(2),
      R => '0'
    );
\daq_stream_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(30),
      Q => daq_stream_r(30),
      R => '0'
    );
\daq_stream_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(31),
      Q => daq_stream_r(31),
      R => '0'
    );
\daq_stream_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(3),
      Q => daq_stream_r(3),
      R => '0'
    );
\daq_stream_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(4),
      Q => daq_stream_r(4),
      R => '0'
    );
\daq_stream_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(5),
      Q => daq_stream_r(5),
      R => '0'
    );
\daq_stream_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(6),
      Q => daq_stream_r(6),
      R => '0'
    );
\daq_stream_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(7),
      Q => daq_stream_r(7),
      R => '0'
    );
\daq_stream_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(8),
      Q => daq_stream_r(8),
      R => '0'
    );
\daq_stream_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => daq_stream(9),
      Q => daq_stream_r(9),
      R => '0'
    );
full_reg: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => \^state\(2),
      Q => full,
      R => reset_r(2)
    );
\rec_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[0]\,
      O => \rec_cnt[0]_i_1_n_0\
    );
\rec_cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => reset_r(2),
      I1 => trigger_r(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0062"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => trigger_r(2),
      I3 => reset_r(2),
      O => \rec_cnt[17]_i_2_n_0\
    );
\rec_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => \rec_cnt[0]_i_1_n_0\,
      Q => \rec_cnt_reg_n_0_[0]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(10),
      Q => \rec_cnt_reg_n_0_[10]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(11),
      Q => \rec_cnt_reg_n_0_[11]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(12),
      Q => \rec_cnt_reg_n_0_[12]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(13),
      Q => \rec_cnt_reg_n_0_[13]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(14),
      Q => \rec_cnt_reg_n_0_[14]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(15),
      Q => \rec_cnt_reg_n_0_[15]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(16),
      Q => \rec_cnt_reg_n_0_[16]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \rec_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \rec_cnt_reg[16]_i_1_n_0\,
      CO(6) => \rec_cnt_reg[16]_i_1_n_1\,
      CO(5) => \rec_cnt_reg[16]_i_1_n_2\,
      CO(4) => \rec_cnt_reg[16]_i_1_n_3\,
      CO(3) => \rec_cnt_reg[16]_i_1_n_4\,
      CO(2) => \rec_cnt_reg[16]_i_1_n_5\,
      CO(1) => \rec_cnt_reg[16]_i_1_n_6\,
      CO(0) => \rec_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in5(16 downto 9),
      S(7) => \rec_cnt_reg_n_0_[16]\,
      S(6) => \rec_cnt_reg_n_0_[15]\,
      S(5) => \rec_cnt_reg_n_0_[14]\,
      S(4) => \rec_cnt_reg_n_0_[13]\,
      S(3) => \rec_cnt_reg_n_0_[12]\,
      S(2) => \rec_cnt_reg_n_0_[11]\,
      S(1) => \rec_cnt_reg_n_0_[10]\,
      S(0) => \rec_cnt_reg_n_0_[9]\
    );
\rec_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(17),
      Q => \rec_cnt_reg_n_0_[17]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[17]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \rec_cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_rec_cnt_reg[17]_i_3_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_rec_cnt_reg[17]_i_3_O_UNCONNECTED\(7 downto 1),
      O(0) => in5(17),
      S(7 downto 1) => B"0000000",
      S(0) => \rec_cnt_reg_n_0_[17]\
    );
\rec_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(1),
      Q => \rec_cnt_reg_n_0_[1]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(2),
      Q => \rec_cnt_reg_n_0_[2]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(3),
      Q => \rec_cnt_reg_n_0_[3]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(4),
      Q => \rec_cnt_reg_n_0_[4]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(5),
      Q => \rec_cnt_reg_n_0_[5]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(6),
      Q => \rec_cnt_reg_n_0_[6]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(7),
      Q => \rec_cnt_reg_n_0_[7]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(8),
      Q => \rec_cnt_reg_n_0_[8]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\rec_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \rec_cnt_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => \rec_cnt_reg[8]_i_1_n_0\,
      CO(6) => \rec_cnt_reg[8]_i_1_n_1\,
      CO(5) => \rec_cnt_reg[8]_i_1_n_2\,
      CO(4) => \rec_cnt_reg[8]_i_1_n_3\,
      CO(3) => \rec_cnt_reg[8]_i_1_n_4\,
      CO(2) => \rec_cnt_reg[8]_i_1_n_5\,
      CO(1) => \rec_cnt_reg[8]_i_1_n_6\,
      CO(0) => \rec_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in5(8 downto 1),
      S(7) => \rec_cnt_reg_n_0_[8]\,
      S(6) => \rec_cnt_reg_n_0_[7]\,
      S(5) => \rec_cnt_reg_n_0_[6]\,
      S(4) => \rec_cnt_reg_n_0_[5]\,
      S(3) => \rec_cnt_reg_n_0_[4]\,
      S(2) => \rec_cnt_reg_n_0_[3]\,
      S(1) => \rec_cnt_reg_n_0_[2]\,
      S(0) => \rec_cnt_reg_n_0_[1]\
    );
\rec_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => \rec_cnt[17]_i_2_n_0\,
      D => in5(9),
      Q => \rec_cnt_reg_n_0_[9]\,
      R => \rec_cnt[17]_i_1_n_0\
    );
\reset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => reset,
      Q => reset_r(0),
      R => '0'
    );
\reset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => reset_r(0),
      Q => reset_r(1),
      R => '0'
    );
\reset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => reset_r(1),
      Q => reset_r(2),
      R => '0'
    );
state1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_state1_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => state1_carry_n_2,
      CO(4) => state1_carry_n_3,
      CO(3) => state1_carry_n_4,
      CO(2) => state1_carry_n_5,
      CO(1) => state1_carry_n_6,
      CO(0) => state1_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_state1_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => state1_carry_i_1_n_0,
      S(4) => state1_carry_i_2_n_0,
      S(3) => state1_carry_i_3_n_0,
      S(2) => state1_carry_i_4_n_0,
      S(1) => state1_carry_i_5_n_0,
      S(0) => state1_carry_i_6_n_0
    );
state1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[15]\,
      I1 => rec_time(15),
      I2 => rec_time(17),
      I3 => \rec_cnt_reg_n_0_[17]\,
      I4 => rec_time(16),
      I5 => \rec_cnt_reg_n_0_[16]\,
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[12]\,
      I1 => rec_time(12),
      I2 => rec_time(14),
      I3 => \rec_cnt_reg_n_0_[14]\,
      I4 => rec_time(13),
      I5 => \rec_cnt_reg_n_0_[13]\,
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[9]\,
      I1 => rec_time(9),
      I2 => rec_time(11),
      I3 => \rec_cnt_reg_n_0_[11]\,
      I4 => rec_time(10),
      I5 => \rec_cnt_reg_n_0_[10]\,
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[6]\,
      I1 => rec_time(6),
      I2 => rec_time(8),
      I3 => \rec_cnt_reg_n_0_[8]\,
      I4 => rec_time(7),
      I5 => \rec_cnt_reg_n_0_[7]\,
      O => state1_carry_i_4_n_0
    );
state1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[3]\,
      I1 => rec_time(3),
      I2 => rec_time(5),
      I3 => \rec_cnt_reg_n_0_[5]\,
      I4 => rec_time(4),
      I5 => \rec_cnt_reg_n_0_[4]\,
      O => state1_carry_i_5_n_0
    );
state1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rec_cnt_reg_n_0_[0]\,
      I1 => rec_time(0),
      I2 => rec_time(2),
      I3 => \rec_cnt_reg_n_0_[2]\,
      I4 => rec_time(1),
      I5 => \rec_cnt_reg_n_0_[1]\,
      O => state1_carry_i_6_n_0
    );
\state[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \^state\(0)
    );
\state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \^state\(1)
    );
\state[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \^state\(2)
    );
\trigger_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => trigger,
      Q => trigger_r(0),
      R => '0'
    );
\trigger_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => trigger_r(0),
      Q => trigger_r(1),
      R => '0'
    );
\trigger_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => daq_clk,
      CE => '1',
      D => trigger_r(1),
      Q => trigger_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_daq_spy_control_0_0 is
  port (
    daq_stream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    daq_stream_k : in STD_LOGIC_VECTOR ( 3 downto 0 );
    daq_data_type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    daq_clk : in STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    bram_clk : out STD_LOGIC;
    bram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_rst : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    time_stamp : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk65p5 : in STD_LOGIC;
    reset : in STD_LOGIC;
    full : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    trigger : in STD_LOGIC;
    rec_time : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_daq_spy_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_daq_spy_control_0_0 : entity is "design_1_daq_spy_control_0_0,daq_spy_control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_daq_spy_control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_daq_spy_control_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_daq_spy_control_0_0 : entity is "daq_spy_control,Vivado 2020.1";
end design_1_daq_spy_control_0_0;

architecture STRUCTURE of design_1_daq_spy_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 19 downto 2 );
  signal \^bram_we\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^daq_clk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of bram_clk : signal is "xilinx.com:signal:clock:1.0 bram_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of bram_clk : signal is "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_spy_control_0_0_bram_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bram_rst : signal is "xilinx.com:signal:reset:1.0 bram_rst RST";
  attribute X_INTERFACE_PARAMETER of bram_rst : signal is "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of daq_clk : signal is "xilinx.com:signal:clock:1.0 daq_clk CLK";
  attribute X_INTERFACE_PARAMETER of daq_clk : signal is "XIL_INTERFACENAME daq_clk, ASSOCIATED_RESET reset, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ddi_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^daq_clk\ <= daq_clk;
  bram_addr(19 downto 2) <= \^bram_addr\(19 downto 2);
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  bram_clk <= \^daq_clk\;
  bram_en <= \^bram_we\(3);
  bram_rst <= \<const0>\;
  bram_we(3) <= \^bram_we\(3);
  bram_we(2) <= \^bram_we\(3);
  bram_we(1) <= \^bram_we\(3);
  bram_we(0) <= \^bram_we\(3);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_daq_spy_control_0_0_daq_spy_control
     port map (
      bram_addr(17 downto 0) => \^bram_addr\(19 downto 2),
      bram_din(31 downto 0) => bram_din(31 downto 0),
      bram_we(0) => \^bram_we\(3),
      daq_clk => \^daq_clk\,
      daq_data_type(1 downto 0) => daq_data_type(1 downto 0),
      daq_stream(31 downto 0) => daq_stream(31 downto 0),
      full => full,
      rec_time(17 downto 0) => rec_time(17 downto 0),
      reset => reset,
      state(2 downto 0) => state(2 downto 0),
      trigger => trigger
    );
end STRUCTURE;
