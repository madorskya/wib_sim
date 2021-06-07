-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Jun  4 16:17:50 2021
-- Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lxeng99/DUNE/wib_sim_timing_sync/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ept_auto_rst_0_0/design_1_ept_auto_rst_0_0_sim_netlist.vhdl
-- Design      : design_1_ept_auto_rst_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ept_auto_rst_0_0_ept_auto_rst is
  port (
    err_out : out STD_LOGIC;
    rst_out : out STD_LOGIC;
    srst_in : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    timeout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ept_auto_rst_in : in STD_LOGIC;
    pass_thru : in STD_LOGIC;
    stat_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    retry_in : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ept_auto_rst_0_0_ept_auto_rst : entity is "ept_auto_rst";
end design_1_ept_auto_rst_0_0_ept_auto_rst;

architecture STRUCTURE of design_1_ept_auto_rst_0_0_ept_auto_rst is
  signal \FSM_onehot_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal ept_auto_rst_out : STD_LOGIC;
  signal \ept_auto_rst_out__0\ : STD_LOGIC;
  signal err_out_reg : STD_LOGIC;
  signal err_out_reg_reg_i_1_n_0 : STD_LOGIC;
  signal \next_state0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_n_0\ : STD_LOGIC;
  signal \next_state0_carry__0_n_1\ : STD_LOGIC;
  signal \next_state0_carry__0_n_2\ : STD_LOGIC;
  signal \next_state0_carry__0_n_3\ : STD_LOGIC;
  signal \next_state0_carry__0_n_4\ : STD_LOGIC;
  signal \next_state0_carry__0_n_5\ : STD_LOGIC;
  signal \next_state0_carry__0_n_6\ : STD_LOGIC;
  signal \next_state0_carry__0_n_7\ : STD_LOGIC;
  signal next_state0_carry_i_10_n_0 : STD_LOGIC;
  signal next_state0_carry_i_11_n_0 : STD_LOGIC;
  signal next_state0_carry_i_12_n_0 : STD_LOGIC;
  signal next_state0_carry_i_13_n_0 : STD_LOGIC;
  signal next_state0_carry_i_14_n_0 : STD_LOGIC;
  signal next_state0_carry_i_15_n_0 : STD_LOGIC;
  signal next_state0_carry_i_16_n_0 : STD_LOGIC;
  signal next_state0_carry_i_1_n_0 : STD_LOGIC;
  signal next_state0_carry_i_2_n_0 : STD_LOGIC;
  signal next_state0_carry_i_3_n_0 : STD_LOGIC;
  signal next_state0_carry_i_4_n_0 : STD_LOGIC;
  signal next_state0_carry_i_5_n_0 : STD_LOGIC;
  signal next_state0_carry_i_6_n_0 : STD_LOGIC;
  signal next_state0_carry_i_7_n_0 : STD_LOGIC;
  signal next_state0_carry_i_8_n_0 : STD_LOGIC;
  signal next_state0_carry_i_9_n_0 : STD_LOGIC;
  signal next_state0_carry_n_0 : STD_LOGIC;
  signal next_state0_carry_n_1 : STD_LOGIC;
  signal next_state0_carry_n_2 : STD_LOGIC;
  signal next_state0_carry_n_3 : STD_LOGIC;
  signal next_state0_carry_n_4 : STD_LOGIC;
  signal next_state0_carry_n_5 : STD_LOGIC;
  signal next_state0_carry_n_6 : STD_LOGIC;
  signal next_state0_carry_n_7 : STD_LOGIC;
  signal retry_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \retry_count__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \retry_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \retry_count_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal tmo_clear : STD_LOGIC;
  signal \tmo_clear__0\ : STD_LOGIC;
  signal tmo_clear_reg_i_2_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_next_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_next_state0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[4]_i_3\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[4]\ : label is "COUNT:00010,MONITOR:00100,DO_RESET:01000,START:00001,ERROR:10000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 16;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ept_auto_rst_out_reg : label is "LD";
  attribute SOFT_HLUTNM of ept_auto_rst_out_reg_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of err_out_reg_reg : label is "LD";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of next_state0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_state0_carry__0\ : label is 11;
  attribute XILINX_LEGACY_PRIM of \retry_count_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \retry_count_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \retry_count_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \retry_count_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \retry_count_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \retry_count_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \retry_count_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \retry_count_reg[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rst_out_INST_0 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of tmo_clear_reg : label is "LD";
  attribute SOFT_HLUTNM of tmo_clear_reg_i_2 : label is "soft_lutpair0";
begin
\FSM_onehot_curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFBAAAA"
    )
        port map (
      I0 => err_out_reg,
      I1 => \FSM_onehot_curr_state[4]_i_4_n_0\,
      I2 => retry_in(3),
      I3 => retry_count(3),
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => \FSM_onehot_curr_state[0]_i_1_n_0\
    );
\FSM_onehot_curr_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \next_state0_carry__0_n_0\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I3 => ept_auto_rst_in,
      I4 => err_out_reg,
      I5 => \FSM_onehot_curr_state[4]_i_3_n_0\,
      O => \FSM_onehot_curr_state[4]_i_1_n_0\
    );
\FSM_onehot_curr_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A08"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => retry_count(3),
      I2 => retry_in(3),
      I3 => \FSM_onehot_curr_state[4]_i_4_n_0\,
      O => \FSM_onehot_curr_state[4]_i_2_n_0\
    );
\FSM_onehot_curr_state[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => srst_in,
      I1 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_state[4]_i_5_n_0\,
      O => \FSM_onehot_curr_state[4]_i_3_n_0\
    );
\FSM_onehot_curr_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => retry_count(0),
      I1 => retry_in(0),
      I2 => retry_in(1),
      I3 => retry_count(1),
      I4 => retry_in(2),
      I5 => retry_count(2),
      O => \FSM_onehot_curr_state[4]_i_4_n_0\
    );
\FSM_onehot_curr_state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I1 => stat_in(1),
      I2 => stat_in(2),
      I3 => stat_in(3),
      I4 => stat_in(0),
      O => \FSM_onehot_curr_state[4]_i_5_n_0\
    );
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in,
      CE => \FSM_onehot_curr_state[4]_i_1_n_0\,
      D => \FSM_onehot_curr_state[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[0]\,
      S => srst_in
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \FSM_onehot_curr_state[4]_i_1_n_0\,
      D => \FSM_onehot_curr_state_reg_n_0_[0]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[1]\,
      R => srst_in
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \FSM_onehot_curr_state[4]_i_1_n_0\,
      D => \FSM_onehot_curr_state_reg_n_0_[1]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[2]\,
      R => srst_in
    );
\FSM_onehot_curr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \FSM_onehot_curr_state[4]_i_1_n_0\,
      D => \FSM_onehot_curr_state_reg_n_0_[2]\,
      Q => \FSM_onehot_curr_state_reg_n_0_[3]\,
      R => srst_in
    );
\FSM_onehot_curr_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \FSM_onehot_curr_state[4]_i_1_n_0\,
      D => \FSM_onehot_curr_state[4]_i_2_n_0\,
      Q => err_out_reg,
      R => srst_in
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_15\,
      Q => counter_reg(0),
      R => tmo_clear
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1_n_0\,
      CO(6) => \counter_reg[0]_i_1_n_1\,
      CO(5) => \counter_reg[0]_i_1_n_2\,
      CO(4) => \counter_reg[0]_i_1_n_3\,
      CO(3) => \counter_reg[0]_i_1_n_4\,
      CO(2) => \counter_reg[0]_i_1_n_5\,
      CO(1) => \counter_reg[0]_i_1_n_6\,
      CO(0) => \counter_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \counter_reg[0]_i_1_n_8\,
      O(6) => \counter_reg[0]_i_1_n_9\,
      O(5) => \counter_reg[0]_i_1_n_10\,
      O(4) => \counter_reg[0]_i_1_n_11\,
      O(3) => \counter_reg[0]_i_1_n_12\,
      O(2) => \counter_reg[0]_i_1_n_13\,
      O(1) => \counter_reg[0]_i_1_n_14\,
      O(0) => \counter_reg[0]_i_1_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_13\,
      Q => counter_reg(10),
      R => tmo_clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_12\,
      Q => counter_reg(11),
      R => tmo_clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_11\,
      Q => counter_reg(12),
      R => tmo_clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_10\,
      Q => counter_reg(13),
      R => tmo_clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_9\,
      Q => counter_reg(14),
      R => tmo_clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_8\,
      Q => counter_reg(15),
      R => tmo_clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_15\,
      Q => counter_reg(16),
      R => tmo_clear
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1_n_0\,
      CO(6) => \counter_reg[16]_i_1_n_1\,
      CO(5) => \counter_reg[16]_i_1_n_2\,
      CO(4) => \counter_reg[16]_i_1_n_3\,
      CO(3) => \counter_reg[16]_i_1_n_4\,
      CO(2) => \counter_reg[16]_i_1_n_5\,
      CO(1) => \counter_reg[16]_i_1_n_6\,
      CO(0) => \counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1_n_8\,
      O(6) => \counter_reg[16]_i_1_n_9\,
      O(5) => \counter_reg[16]_i_1_n_10\,
      O(4) => \counter_reg[16]_i_1_n_11\,
      O(3) => \counter_reg[16]_i_1_n_12\,
      O(2) => \counter_reg[16]_i_1_n_13\,
      O(1) => \counter_reg[16]_i_1_n_14\,
      O(0) => \counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_14\,
      Q => counter_reg(17),
      R => tmo_clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_13\,
      Q => counter_reg(18),
      R => tmo_clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_12\,
      Q => counter_reg(19),
      R => tmo_clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_14\,
      Q => counter_reg(1),
      R => tmo_clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_11\,
      Q => counter_reg(20),
      R => tmo_clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_10\,
      Q => counter_reg(21),
      R => tmo_clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_9\,
      Q => counter_reg(22),
      R => tmo_clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_8\,
      Q => counter_reg(23),
      R => tmo_clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_15\,
      Q => counter_reg(24),
      R => tmo_clear
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1_n_1\,
      CO(5) => \counter_reg[24]_i_1_n_2\,
      CO(4) => \counter_reg[24]_i_1_n_3\,
      CO(3) => \counter_reg[24]_i_1_n_4\,
      CO(2) => \counter_reg[24]_i_1_n_5\,
      CO(1) => \counter_reg[24]_i_1_n_6\,
      CO(0) => \counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1_n_8\,
      O(6) => \counter_reg[24]_i_1_n_9\,
      O(5) => \counter_reg[24]_i_1_n_10\,
      O(4) => \counter_reg[24]_i_1_n_11\,
      O(3) => \counter_reg[24]_i_1_n_12\,
      O(2) => \counter_reg[24]_i_1_n_13\,
      O(1) => \counter_reg[24]_i_1_n_14\,
      O(0) => \counter_reg[24]_i_1_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_14\,
      Q => counter_reg(25),
      R => tmo_clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_13\,
      Q => counter_reg(26),
      R => tmo_clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_12\,
      Q => counter_reg(27),
      R => tmo_clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_11\,
      Q => counter_reg(28),
      R => tmo_clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_10\,
      Q => counter_reg(29),
      R => tmo_clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_13\,
      Q => counter_reg(2),
      R => tmo_clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_9\,
      Q => counter_reg(30),
      R => tmo_clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_8\,
      Q => counter_reg(31),
      R => tmo_clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_12\,
      Q => counter_reg(3),
      R => tmo_clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_11\,
      Q => counter_reg(4),
      R => tmo_clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_10\,
      Q => counter_reg(5),
      R => tmo_clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_9\,
      Q => counter_reg(6),
      R => tmo_clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[0]_i_1_n_8\,
      Q => counter_reg(7),
      R => tmo_clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_15\,
      Q => counter_reg(8),
      R => tmo_clear
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1_n_0\,
      CO(6) => \counter_reg[8]_i_1_n_1\,
      CO(5) => \counter_reg[8]_i_1_n_2\,
      CO(4) => \counter_reg[8]_i_1_n_3\,
      CO(3) => \counter_reg[8]_i_1_n_4\,
      CO(2) => \counter_reg[8]_i_1_n_5\,
      CO(1) => \counter_reg[8]_i_1_n_6\,
      CO(0) => \counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1_n_8\,
      O(6) => \counter_reg[8]_i_1_n_9\,
      O(5) => \counter_reg[8]_i_1_n_10\,
      O(4) => \counter_reg[8]_i_1_n_11\,
      O(3) => \counter_reg[8]_i_1_n_12\,
      O(2) => \counter_reg[8]_i_1_n_13\,
      O(1) => \counter_reg[8]_i_1_n_14\,
      O(0) => \counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_14\,
      Q => counter_reg(9),
      R => tmo_clear
    );
ept_auto_rst_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ept_auto_rst_out__0\,
      G => err_out_reg_reg_i_1_n_0,
      GE => '1',
      Q => ept_auto_rst_out
    );
ept_auto_rst_out_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => err_out_reg,
      O => \ept_auto_rst_out__0\
    );
err_out_reg_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => err_out_reg,
      G => err_out_reg_reg_i_1_n_0,
      GE => '1',
      Q => err_out
    );
err_out_reg_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I2 => ept_auto_rst_in,
      I3 => err_out_reg,
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => err_out_reg_reg_i_1_n_0
    );
next_state0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => next_state0_carry_n_0,
      CO(6) => next_state0_carry_n_1,
      CO(5) => next_state0_carry_n_2,
      CO(4) => next_state0_carry_n_3,
      CO(3) => next_state0_carry_n_4,
      CO(2) => next_state0_carry_n_5,
      CO(1) => next_state0_carry_n_6,
      CO(0) => next_state0_carry_n_7,
      DI(7) => next_state0_carry_i_1_n_0,
      DI(6) => next_state0_carry_i_2_n_0,
      DI(5) => next_state0_carry_i_3_n_0,
      DI(4) => next_state0_carry_i_4_n_0,
      DI(3) => next_state0_carry_i_5_n_0,
      DI(2) => next_state0_carry_i_6_n_0,
      DI(1) => next_state0_carry_i_7_n_0,
      DI(0) => next_state0_carry_i_8_n_0,
      O(7 downto 0) => NLW_next_state0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => next_state0_carry_i_9_n_0,
      S(6) => next_state0_carry_i_10_n_0,
      S(5) => next_state0_carry_i_11_n_0,
      S(4) => next_state0_carry_i_12_n_0,
      S(3) => next_state0_carry_i_13_n_0,
      S(2) => next_state0_carry_i_14_n_0,
      S(1) => next_state0_carry_i_15_n_0,
      S(0) => next_state0_carry_i_16_n_0
    );
\next_state0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => next_state0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \next_state0_carry__0_n_0\,
      CO(6) => \next_state0_carry__0_n_1\,
      CO(5) => \next_state0_carry__0_n_2\,
      CO(4) => \next_state0_carry__0_n_3\,
      CO(3) => \next_state0_carry__0_n_4\,
      CO(2) => \next_state0_carry__0_n_5\,
      CO(1) => \next_state0_carry__0_n_6\,
      CO(0) => \next_state0_carry__0_n_7\,
      DI(7) => \next_state0_carry__0_i_1_n_0\,
      DI(6) => \next_state0_carry__0_i_2_n_0\,
      DI(5) => \next_state0_carry__0_i_3_n_0\,
      DI(4) => \next_state0_carry__0_i_4_n_0\,
      DI(3) => \next_state0_carry__0_i_5_n_0\,
      DI(2) => \next_state0_carry__0_i_6_n_0\,
      DI(1) => \next_state0_carry__0_i_7_n_0\,
      DI(0) => \next_state0_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_next_state0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \next_state0_carry__0_i_9_n_0\,
      S(6) => \next_state0_carry__0_i_10_n_0\,
      S(5) => \next_state0_carry__0_i_11_n_0\,
      S(4) => \next_state0_carry__0_i_12_n_0\,
      S(3) => \next_state0_carry__0_i_13_n_0\,
      S(2) => \next_state0_carry__0_i_14_n_0\,
      S(1) => \next_state0_carry__0_i_15_n_0\,
      S(0) => \next_state0_carry__0_i_16_n_0\
    );
\next_state0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(30),
      I1 => timeout(30),
      I2 => timeout(31),
      I3 => counter_reg(31),
      O => \next_state0_carry__0_i_1_n_0\
    );
\next_state0_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(28),
      I1 => timeout(28),
      I2 => counter_reg(29),
      I3 => timeout(29),
      O => \next_state0_carry__0_i_10_n_0\
    );
\next_state0_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(26),
      I1 => timeout(26),
      I2 => counter_reg(27),
      I3 => timeout(27),
      O => \next_state0_carry__0_i_11_n_0\
    );
\next_state0_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(24),
      I1 => timeout(24),
      I2 => counter_reg(25),
      I3 => timeout(25),
      O => \next_state0_carry__0_i_12_n_0\
    );
\next_state0_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(22),
      I1 => timeout(22),
      I2 => counter_reg(23),
      I3 => timeout(23),
      O => \next_state0_carry__0_i_13_n_0\
    );
\next_state0_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(20),
      I1 => timeout(20),
      I2 => counter_reg(21),
      I3 => timeout(21),
      O => \next_state0_carry__0_i_14_n_0\
    );
\next_state0_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(18),
      I1 => timeout(18),
      I2 => counter_reg(19),
      I3 => timeout(19),
      O => \next_state0_carry__0_i_15_n_0\
    );
\next_state0_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(16),
      I1 => timeout(16),
      I2 => counter_reg(17),
      I3 => timeout(17),
      O => \next_state0_carry__0_i_16_n_0\
    );
\next_state0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(28),
      I1 => timeout(28),
      I2 => timeout(29),
      I3 => counter_reg(29),
      O => \next_state0_carry__0_i_2_n_0\
    );
\next_state0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(26),
      I1 => timeout(26),
      I2 => timeout(27),
      I3 => counter_reg(27),
      O => \next_state0_carry__0_i_3_n_0\
    );
\next_state0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(24),
      I1 => timeout(24),
      I2 => timeout(25),
      I3 => counter_reg(25),
      O => \next_state0_carry__0_i_4_n_0\
    );
\next_state0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(22),
      I1 => timeout(22),
      I2 => timeout(23),
      I3 => counter_reg(23),
      O => \next_state0_carry__0_i_5_n_0\
    );
\next_state0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(20),
      I1 => timeout(20),
      I2 => timeout(21),
      I3 => counter_reg(21),
      O => \next_state0_carry__0_i_6_n_0\
    );
\next_state0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(18),
      I1 => timeout(18),
      I2 => timeout(19),
      I3 => counter_reg(19),
      O => \next_state0_carry__0_i_7_n_0\
    );
\next_state0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(16),
      I1 => timeout(16),
      I2 => timeout(17),
      I3 => counter_reg(17),
      O => \next_state0_carry__0_i_8_n_0\
    );
\next_state0_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(30),
      I1 => timeout(30),
      I2 => counter_reg(31),
      I3 => timeout(31),
      O => \next_state0_carry__0_i_9_n_0\
    );
next_state0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(14),
      I1 => timeout(14),
      I2 => timeout(15),
      I3 => counter_reg(15),
      O => next_state0_carry_i_1_n_0
    );
next_state0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(12),
      I1 => timeout(12),
      I2 => counter_reg(13),
      I3 => timeout(13),
      O => next_state0_carry_i_10_n_0
    );
next_state0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(10),
      I1 => timeout(10),
      I2 => counter_reg(11),
      I3 => timeout(11),
      O => next_state0_carry_i_11_n_0
    );
next_state0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(8),
      I1 => timeout(8),
      I2 => counter_reg(9),
      I3 => timeout(9),
      O => next_state0_carry_i_12_n_0
    );
next_state0_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(6),
      I1 => timeout(6),
      I2 => counter_reg(7),
      I3 => timeout(7),
      O => next_state0_carry_i_13_n_0
    );
next_state0_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(4),
      I1 => timeout(4),
      I2 => counter_reg(5),
      I3 => timeout(5),
      O => next_state0_carry_i_14_n_0
    );
next_state0_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(2),
      I1 => timeout(2),
      I2 => counter_reg(3),
      I3 => timeout(3),
      O => next_state0_carry_i_15_n_0
    );
next_state0_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(0),
      I1 => timeout(0),
      I2 => counter_reg(1),
      I3 => timeout(1),
      O => next_state0_carry_i_16_n_0
    );
next_state0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(12),
      I1 => timeout(12),
      I2 => timeout(13),
      I3 => counter_reg(13),
      O => next_state0_carry_i_2_n_0
    );
next_state0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(10),
      I1 => timeout(10),
      I2 => timeout(11),
      I3 => counter_reg(11),
      O => next_state0_carry_i_3_n_0
    );
next_state0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(8),
      I1 => timeout(8),
      I2 => timeout(9),
      I3 => counter_reg(9),
      O => next_state0_carry_i_4_n_0
    );
next_state0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(6),
      I1 => timeout(6),
      I2 => timeout(7),
      I3 => counter_reg(7),
      O => next_state0_carry_i_5_n_0
    );
next_state0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(4),
      I1 => timeout(4),
      I2 => timeout(5),
      I3 => counter_reg(5),
      O => next_state0_carry_i_6_n_0
    );
next_state0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(2),
      I1 => timeout(2),
      I2 => timeout(3),
      I3 => counter_reg(3),
      O => next_state0_carry_i_7_n_0
    );
next_state0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_reg(0),
      I1 => timeout(0),
      I2 => timeout(1),
      I3 => counter_reg(1),
      O => next_state0_carry_i_8_n_0
    );
next_state0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(14),
      I1 => timeout(14),
      I2 => counter_reg(15),
      I3 => timeout(15),
      O => next_state0_carry_i_9_n_0
    );
\retry_count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \retry_count_reg[0]_i_1_n_0\,
      G => \retry_count_reg[3]_i_2_n_0\,
      GE => '1',
      Q => retry_count(0)
    );
\retry_count_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => retry_count(0),
      O => \retry_count_reg[0]_i_1_n_0\
    );
\retry_count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \retry_count__0\(1),
      G => \retry_count_reg[3]_i_2_n_0\,
      GE => '1',
      Q => retry_count(1)
    );
\retry_count_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => retry_count(1),
      I2 => retry_count(0),
      O => \retry_count__0\(1)
    );
\retry_count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \retry_count__0\(2),
      G => \retry_count_reg[3]_i_2_n_0\,
      GE => '1',
      Q => retry_count(2)
    );
\retry_count_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => retry_count(2),
      I2 => retry_count(1),
      I3 => retry_count(0),
      O => \retry_count__0\(2)
    );
\retry_count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \retry_count__0\(3),
      G => \retry_count_reg[3]_i_2_n_0\,
      GE => '1',
      Q => retry_count(3)
    );
\retry_count_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => retry_count(3),
      I2 => retry_count(2),
      I3 => retry_count(0),
      I4 => retry_count(1),
      O => \retry_count__0\(3)
    );
\retry_count_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => ept_auto_rst_in,
      I2 => err_out_reg,
      O => \retry_count_reg[3]_i_2_n_0\
    );
rst_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => srst_in,
      I1 => pass_thru,
      I2 => ept_auto_rst_out,
      O => rst_out
    );
tmo_clear_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \tmo_clear__0\,
      G => tmo_clear_reg_i_2_n_0,
      GE => '1',
      Q => tmo_clear
    );
tmo_clear_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => err_out_reg,
      I2 => \next_state0_carry__0_n_0\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \tmo_clear__0\
    );
tmo_clear_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => err_out_reg,
      I4 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => tmo_clear_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ept_auto_rst_0_0 is
  port (
    stat_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in : in STD_LOGIC;
    srst_in : in STD_LOGIC;
    timeout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    retry_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pass_thru : in STD_LOGIC;
    ept_auto_rst_in : in STD_LOGIC;
    rst_out : out STD_LOGIC;
    err_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ept_auto_rst_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ept_auto_rst_0_0 : entity is "design_1_ept_auto_rst_0_0,ept_auto_rst,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ept_auto_rst_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ept_auto_rst_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ept_auto_rst_0_0 : entity is "ept_auto_rst,Vivado 2020.1";
end design_1_ept_auto_rst_0_0;

architecture STRUCTURE of design_1_ept_auto_rst_0_0 is
begin
inst: entity work.design_1_ept_auto_rst_0_0_ept_auto_rst
     port map (
      clk_in => clk_in,
      ept_auto_rst_in => ept_auto_rst_in,
      err_out => err_out,
      pass_thru => pass_thru,
      retry_in(3 downto 0) => retry_in(3 downto 0),
      rst_out => rst_out,
      srst_in => srst_in,
      stat_in(3 downto 0) => stat_in(3 downto 0),
      timeout(31 downto 0) => timeout(31 downto 0)
    );
end STRUCTURE;
