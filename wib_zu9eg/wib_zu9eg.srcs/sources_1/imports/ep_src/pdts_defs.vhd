-- pdts_defs
--
-- Constants and types for PDTS
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package pdts_defs is

-- L0 constants (signalling layer)

-- Allowed values for SCLK_RATIO are 10 (500Mb/s IO at CLK_FREQ=50), 5 (250Mb/s IO), 2 (100Mb/s IO), 1 (50Mb/s IO)

	constant CLK_FREQ: real := 62.5; -- System clock frequency, MHz
	constant SCLK_RATIO: integer := 5; -- Ratio of IO clock to base clock
	constant VCO_RATIO: integer := 4; -- Needs to be such that VCO frequency is 600 < f < 1200

-- L1 constants (encoding layer)
	
	constant CCHAR: std_logic_vector(7 downto 0) := X"bc"; -- Async pkt marker and comma: K28.5
	constant CCHAR_PD: std_logic_vector(9 downto 0) := "1010000011"; -- K28.5 encoded RD = +1, 0x283
	constant CCHAR_ND: std_logic_vector(9 downto 0) := "0101111100"; -- K28.5 encoded RD = -1, 0x17c
	constant SCHAR: std_logic_vector(7 downto 0) := X"3c"; -- Sync pkt marker: K28.1
	constant TIMEOUT_W: positive := 8; -- Bitwidth of comma timeout counter	
	constant LOCK_CTR_W: positive := 2; -- Bitwidth of lock counter

-- L2 constants (protocol layer)
	
	constant GRP_W: positive := 2; -- Bitwidth of group ID
	constant ADDR_WDS: positive := 1; -- Number of address words	
	constant SCMD_W: positive := 4; -- Bitwidth of sync cmd
	constant CSUM_WDS : positive := 2; -- Number of checksum words (CRC16)
	constant ACMD_LEN_MIN: natural := ADDR_WDS * 2 + 1 + CSUM_WDS;
	constant IDLE_DATA_WDS: positive := 16; -- Number of data words in idle packet
	constant CMD_LEN_MAX: natural := IDLE_DATA_WDS + ACMD_LEN_MIN; -- Maximum command length
	
-- L3 constants (application layer)

	constant TSTAMP_WDS: natural := 8; -- Number of words in timestamp
	constant EVTCTR_WDS: natural := 4; -- Number of words in event counter
	constant EVTCTR_MASK: std_logic_vector(2 ** SCMD_W - 1 downto 0) := X"ff00"; -- Which sync cmds cause evt ctr update
	
	constant SCMD_SYNC: std_logic_vector(3 downto 0) := X"0"; -- Set the timestamp
	constant SCMD_ECHO: std_logic_vector(3 downto 0) := X"1"; -- Echo for loop delay measurement
	constant SCMD_SPILL_START: std_logic_vector(3 downto 0) := X"2"; -- Start / stop spill
	constant SCMD_SPILL_STOP: std_logic_vector(3 downto 0) := X"3";
	constant SCMD_RUN_START: std_logic_vector(3 downto 0) := X"4"; -- Start / stop run
	constant SCMD_RUN_STOP: std_logic_vector(3 downto 0) := X"5";
	constant SCMD_WIB_CALIB: std_logic_vector(3 downto 0) := X"6";
	constant SCMD_SSP_CALIB: std_logic_vector(3 downto 0) := X"7";
	constant SCMD_FAKE_TRIG0: std_logic_vector(3 downto 0) := X"8"; -- Commands from 0xc to 0xf reserved for triggers / calib
	constant SCMD_FAKE_TRIG1: std_logic_vector(3 downto 0) := X"9"; -- Commands from 0xc to 0xf reserved for triggers / calib
	constant SCMD_FAKE_TRIG2: std_logic_vector(3 downto 0) := X"A"; -- Commands from 0xc to 0xf reserved for triggers / calib
	constant SCMD_FAKE_TRIG3: std_logic_vector(3 downto 0) := X"B"; -- Commands from 0xc to 0xf reserved for triggers / calib
	constant SCMD_TRIG_BEAM: std_logic_vector(3 downto 0) := X"C"; -- Beam triggers
	constant SCMD_TRIG_NOBEAM: std_logic_vector(3 downto 0) := X"D"; -- No-beam triggers
	constant SCMD_TRIG_RAND: std_logic_vector(3 downto 0) := X"E"; -- Random triggers

	constant SCMD_MAX: integer := 15; -- Number of scmds in use (must be contiguous)
	type SCMD_LEN_T is array(0 to 2 ** SCMD_W - 1) of natural; -- Data words for each sync cmd
	constant SCMD_LEN: SCMD_LEN_T := (to_integer(unsigned(SCMD_SYNC)) => 1 + TSTAMP_WDS, others => 1);
	
-- Types

	type cmd_w is
		record
			d: std_logic_vector(7 downto 0);
			req: std_logic;
			last: std_logic;
		end record;

	type cmd_w_array is array(natural range <>) of cmd_w;
	constant CMD_W_NULL: cmd_w := ((others => '0'), '0', '0');
	
	type cmd_r is
		record
			ack: std_logic;
			ren: std_logic;
		end record;

	type cmd_r_array is array(natural range <>) of cmd_r;
	
end pdts_defs;
