-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Feb  4 22:06:29 2021
-- Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_daq_spy_control_0_1/design_1_daq_spy_control_0_1_sim_netlist.vhdl
-- Design      : design_1_daq_spy_control_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_daq_spy_control_0_1_daq_spy_control is
  port (
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    full : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    daq_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    daq_stream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    daq_stream_k : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_daq_spy_control_0_1_daq_spy_control : entity is "daq_spy_control";
end design_1_daq_spy_control_0_1_daq_spy_control;

architecture STRUCTURE of design_1_daq_spy_control_0_1_daq_spy_control is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_1\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_2\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_3\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_4\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_5\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_6\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_12_n_7\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_1\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_2\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_3\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_4\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_5\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_6\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_13_n_7\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_14_n_6\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_14_n_7\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
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
  signal next_frame_addr : STD_LOGIC_VECTOR ( 19 downto 5 );
  signal \next_frame_addr_carry__0_n_1\ : STD_LOGIC;
  signal \next_frame_addr_carry__0_n_2\ : STD_LOGIC;
  signal \next_frame_addr_carry__0_n_3\ : STD_LOGIC;
  signal \next_frame_addr_carry__0_n_4\ : STD_LOGIC;
  signal \next_frame_addr_carry__0_n_5\ : STD_LOGIC;
  signal \next_frame_addr_carry__0_n_6\ : STD_LOGIC;
  signal \next_frame_addr_carry__0_n_7\ : STD_LOGIC;
  signal next_frame_addr_carry_i_1_n_0 : STD_LOGIC;
  signal next_frame_addr_carry_i_2_n_0 : STD_LOGIC;
  signal next_frame_addr_carry_i_3_n_0 : STD_LOGIC;
  signal next_frame_addr_carry_i_4_n_0 : STD_LOGIC;
  signal next_frame_addr_carry_n_0 : STD_LOGIC;
  signal next_frame_addr_carry_n_1 : STD_LOGIC;
  signal next_frame_addr_carry_n_2 : STD_LOGIC;
  signal next_frame_addr_carry_n_3 : STD_LOGIC;
  signal next_frame_addr_carry_n_4 : STD_LOGIC;
  signal next_frame_addr_carry_n_5 : STD_LOGIC;
  signal next_frame_addr_carry_n_6 : STD_LOGIC;
  signal next_frame_addr_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 19 downto 2 );
  signal reset_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of reset_r : signal is "true";
  signal \^state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_onehot_state_reg[4]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_FSM_onehot_state_reg[4]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_FSM_onehot_state_reg[4]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_bram_addr_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_bram_addr_reg[19]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_next_frame_addr_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_next_frame_addr_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:00001,RECORD:00010,LAST:00100,IDLE_CHECK:01000,FULL:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:00001,RECORD:00010,LAST:00100,IDLE_CHECK:01000,FULL:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:00001,RECORD:00010,LAST:00100,IDLE_CHECK:01000,FULL:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "IDLE:00001,RECORD:00010,LAST:00100,IDLE_CHECK:01000,FULL:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "IDLE:00001,RECORD:00010,LAST:00100,IDLE_CHECK:01000,FULL:10000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \FSM_onehot_state_reg[4]_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \FSM_onehot_state_reg[4]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \FSM_onehot_state_reg[4]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_addr_reg[17]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bram_addr_reg[19]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bram_addr_reg[9]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of next_frame_addr_carry : label is 35;
  attribute ADDER_THRESHOLD of \next_frame_addr_carry__0\ : label is 35;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \reset_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \reset_r_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \reset_r_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \reset_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \reset_r_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \state[0]_INST_0\ : label is "soft_lutpair0";
begin
  bram_addr(17 downto 0) <= \^bram_addr\(17 downto 0);
  state(2 downto 0) <= \^state\(2 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4040404040"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[1]_i_2_n_0\,
      I5 => \FSM_onehot_state[3]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state[4]_i_7_n_0\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[4]_i_6_n_0\,
      I4 => \FSM_onehot_state[4]_i_5_n_0\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => next_frame_addr(16),
      I1 => next_frame_addr(13),
      I2 => next_frame_addr(15),
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_6_n_0\,
      I1 => \FSM_onehot_state[3]_i_4_n_0\,
      I2 => daq_stream(7),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_state[3]_i_5_n_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state[4]_i_3_n_0\,
      I3 => \FSM_onehot_state[4]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => daq_stream(20),
      I1 => daq_stream(25),
      I2 => daq_stream(18),
      I3 => daq_stream(30),
      I4 => \FSM_onehot_state[3]_i_11_n_0\,
      O => \FSM_onehot_state[3]_i_10_n_0\
    );
\FSM_onehot_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => daq_stream(29),
      I1 => daq_stream(19),
      I2 => daq_stream(23),
      I3 => daq_stream(17),
      O => \FSM_onehot_state[3]_i_11_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_3_n_0\,
      I1 => daq_stream(7),
      I2 => \FSM_onehot_state[3]_i_4_n_0\,
      I3 => \FSM_onehot_state[3]_i_5_n_0\,
      I4 => \FSM_onehot_state[3]_i_6_n_0\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => daq_stream(0),
      I1 => daq_stream(6),
      I2 => daq_stream(1),
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => daq_stream_k(1),
      I1 => daq_stream_k(2),
      I2 => daq_stream(2),
      I3 => daq_stream(5),
      I4 => \FSM_onehot_state[3]_i_7_n_0\,
      O => \FSM_onehot_state[3]_i_4_n_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => daq_stream(8),
      I1 => daq_stream(10),
      I2 => daq_stream(13),
      I3 => daq_stream(15),
      I4 => \FSM_onehot_state[3]_i_8_n_0\,
      O => \FSM_onehot_state[3]_i_5_n_0\
    );
\FSM_onehot_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_9_n_0\,
      I1 => daq_stream(31),
      I2 => daq_stream(16),
      I3 => daq_stream(27),
      I4 => daq_stream(21),
      I5 => \FSM_onehot_state[3]_i_10_n_0\,
      O => \FSM_onehot_state[3]_i_6_n_0\
    );
\FSM_onehot_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => daq_stream_k(0),
      I1 => daq_stream_k(3),
      I2 => daq_stream(3),
      I3 => daq_stream(4),
      O => \FSM_onehot_state[3]_i_7_n_0\
    );
\FSM_onehot_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => daq_stream(11),
      I1 => daq_stream(9),
      I2 => daq_stream(14),
      I3 => daq_stream(12),
      O => \FSM_onehot_state[3]_i_8_n_0\
    );
\FSM_onehot_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => daq_stream(28),
      I1 => daq_stream(26),
      I2 => daq_stream(24),
      I3 => daq_stream(22),
      O => \FSM_onehot_state[3]_i_9_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in(14),
      I1 => p_0_in(7),
      I2 => p_0_in(11),
      I3 => p_0_in(8),
      O => \FSM_onehot_state[4]_i_10_n_0\
    );
\FSM_onehot_state[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in(19),
      I1 => p_0_in(9),
      I2 => p_0_in(17),
      I3 => p_0_in(18),
      O => \FSM_onehot_state[4]_i_11_n_0\
    );
\FSM_onehot_state[4]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(0),
      O => \FSM_onehot_state[4]_i_15_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5_n_0\,
      I1 => \FSM_onehot_state[4]_i_6_n_0\,
      I2 => next_frame_addr(16),
      I3 => next_frame_addr(13),
      I4 => next_frame_addr(15),
      I5 => \FSM_onehot_state[4]_i_7_n_0\,
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_8_n_0\,
      I1 => \FSM_onehot_state[4]_i_9_n_0\,
      I2 => \FSM_onehot_state[4]_i_10_n_0\,
      I3 => \FSM_onehot_state[4]_i_11_n_0\,
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => next_frame_addr(10),
      I1 => next_frame_addr(11),
      I2 => next_frame_addr(9),
      I3 => next_frame_addr(19),
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => next_frame_addr(12),
      I1 => next_frame_addr(17),
      I2 => next_frame_addr(14),
      I3 => next_frame_addr(18),
      O => \FSM_onehot_state[4]_i_6_n_0\
    );
\FSM_onehot_state[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => next_frame_addr(5),
      I1 => next_frame_addr(8),
      I2 => next_frame_addr(6),
      I3 => next_frame_addr(7),
      O => \FSM_onehot_state[4]_i_7_n_0\
    );
\FSM_onehot_state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(12),
      I4 => p_0_in(3),
      I5 => p_0_in(16),
      O => \FSM_onehot_state[4]_i_8_n_0\
    );
\FSM_onehot_state[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in(13),
      I1 => p_0_in(10),
      I2 => p_0_in(15),
      I3 => p_0_in(6),
      O => \FSM_onehot_state[4]_i_9_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => daq_clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => reset_r(2)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => daq_clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => reset_r(2)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => daq_clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => reset_r(2)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => daq_clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => reset_r(2)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => daq_clk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[4]_i_2_n_0\,
      Q => \^state\(2),
      R => reset_r(2)
    );
\FSM_onehot_state_reg[4]_i_12\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \FSM_onehot_state_reg[4]_i_12_n_0\,
      CO(6) => \FSM_onehot_state_reg[4]_i_12_n_1\,
      CO(5) => \FSM_onehot_state_reg[4]_i_12_n_2\,
      CO(4) => \FSM_onehot_state_reg[4]_i_12_n_3\,
      CO(3) => \FSM_onehot_state_reg[4]_i_12_n_4\,
      CO(2) => \FSM_onehot_state_reg[4]_i_12_n_5\,
      CO(1) => \FSM_onehot_state_reg[4]_i_12_n_6\,
      CO(0) => \FSM_onehot_state_reg[4]_i_12_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^bram_addr\(0),
      DI(0) => '0',
      O(7 downto 1) => p_0_in(8 downto 2),
      O(0) => \NLW_FSM_onehot_state_reg[4]_i_12_O_UNCONNECTED\(0),
      S(7 downto 2) => \^bram_addr\(6 downto 1),
      S(1) => \FSM_onehot_state[4]_i_15_n_0\,
      S(0) => '0'
    );
\FSM_onehot_state_reg[4]_i_13\: unisim.vcomponents.CARRY8
     port map (
      CI => \FSM_onehot_state_reg[4]_i_12_n_0\,
      CI_TOP => '0',
      CO(7) => \FSM_onehot_state_reg[4]_i_13_n_0\,
      CO(6) => \FSM_onehot_state_reg[4]_i_13_n_1\,
      CO(5) => \FSM_onehot_state_reg[4]_i_13_n_2\,
      CO(4) => \FSM_onehot_state_reg[4]_i_13_n_3\,
      CO(3) => \FSM_onehot_state_reg[4]_i_13_n_4\,
      CO(2) => \FSM_onehot_state_reg[4]_i_13_n_5\,
      CO(1) => \FSM_onehot_state_reg[4]_i_13_n_6\,
      CO(0) => \FSM_onehot_state_reg[4]_i_13_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => p_0_in(16 downto 9),
      S(7 downto 0) => \^bram_addr\(14 downto 7)
    );
\FSM_onehot_state_reg[4]_i_14\: unisim.vcomponents.CARRY8
     port map (
      CI => \FSM_onehot_state_reg[4]_i_13_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_FSM_onehot_state_reg[4]_i_14_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \FSM_onehot_state_reg[4]_i_14_n_6\,
      CO(0) => \FSM_onehot_state_reg[4]_i_14_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_FSM_onehot_state_reg[4]_i_14_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => p_0_in(19 downto 17),
      S(7 downto 3) => B"00000",
      S(2 downto 0) => \^bram_addr\(17 downto 15)
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
next_frame_addr_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => next_frame_addr_carry_n_0,
      CO(6) => next_frame_addr_carry_n_1,
      CO(5) => next_frame_addr_carry_n_2,
      CO(4) => next_frame_addr_carry_n_3,
      CO(3) => next_frame_addr_carry_n_4,
      CO(2) => next_frame_addr_carry_n_5,
      CO(1) => next_frame_addr_carry_n_6,
      CO(0) => next_frame_addr_carry_n_7,
      DI(7 downto 5) => B"000",
      DI(4 downto 1) => \^bram_addr\(6 downto 3),
      DI(0) => '0',
      O(7 downto 1) => next_frame_addr(11 downto 5),
      O(0) => NLW_next_frame_addr_carry_O_UNCONNECTED(0),
      S(7 downto 5) => \^bram_addr\(9 downto 7),
      S(4) => next_frame_addr_carry_i_1_n_0,
      S(3) => next_frame_addr_carry_i_2_n_0,
      S(2) => next_frame_addr_carry_i_3_n_0,
      S(1) => next_frame_addr_carry_i_4_n_0,
      S(0) => \^bram_addr\(2)
    );
\next_frame_addr_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => next_frame_addr_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_next_frame_addr_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \next_frame_addr_carry__0_n_1\,
      CO(5) => \next_frame_addr_carry__0_n_2\,
      CO(4) => \next_frame_addr_carry__0_n_3\,
      CO(3) => \next_frame_addr_carry__0_n_4\,
      CO(2) => \next_frame_addr_carry__0_n_5\,
      CO(1) => \next_frame_addr_carry__0_n_6\,
      CO(0) => \next_frame_addr_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => next_frame_addr(19 downto 12),
      S(7 downto 0) => \^bram_addr\(17 downto 10)
    );
next_frame_addr_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(6),
      O => next_frame_addr_carry_i_1_n_0
    );
next_frame_addr_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(5),
      O => next_frame_addr_carry_i_2_n_0
    );
next_frame_addr_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(4),
      O => next_frame_addr_carry_i_3_n_0
    );
next_frame_addr_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(3),
      O => next_frame_addr_carry_i_4_n_0
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
\state[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \^state\(0)
    );
\state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \^state\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_daq_spy_control_0_1 is
  port (
    daq_stream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    daq_stream_k : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_daq_spy_control_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_daq_spy_control_0_1 : entity is "design_1_daq_spy_control_0_1,daq_spy_control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_daq_spy_control_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_daq_spy_control_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_daq_spy_control_0_1 : entity is "daq_spy_control,Vivado 2020.1.1_AR73018";
end design_1_daq_spy_control_0_1;

architecture STRUCTURE of design_1_daq_spy_control_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 19 downto 2 );
  signal \^bram_we\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^daq_clk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of bram_clk : signal is "xilinx.com:signal:clock:1.0 bram_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of bram_clk : signal is "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_spy_control_0_1_bram_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bram_rst : signal is "xilinx.com:signal:reset:1.0 bram_rst RST";
  attribute X_INTERFACE_PARAMETER of bram_rst : signal is "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of daq_clk : signal is "xilinx.com:signal:clock:1.0 daq_clk CLK";
  attribute X_INTERFACE_PARAMETER of daq_clk : signal is "XIL_INTERFACENAME daq_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_clk, INSERT_VIP 0";
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
inst: entity work.design_1_daq_spy_control_0_1_daq_spy_control
     port map (
      bram_addr(17 downto 0) => \^bram_addr\(19 downto 2),
      bram_din(31 downto 0) => bram_din(31 downto 0),
      bram_we(0) => \^bram_we\(3),
      daq_clk => \^daq_clk\,
      daq_stream(31 downto 0) => daq_stream(31 downto 0),
      daq_stream_k(3 downto 0) => daq_stream_k(3 downto 0),
      full => full,
      reset => reset,
      state(2 downto 0) => state(2 downto 0)
    );
end STRUCTURE;
