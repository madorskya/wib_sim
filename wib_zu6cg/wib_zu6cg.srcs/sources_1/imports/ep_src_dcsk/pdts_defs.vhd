-- pdts_defs
--
-- Constants and types for PDTS
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package pdts_defs is

	constant PDTS_VERSION: std_logic_vector(31 downto 0) := X"00070000"; -- Version number

-- L1 constants (encoding layer)
	
	constant CCHAR: std_logic_vector(7 downto 0) := X"bc"; -- Async pkt marker and comma: K28.5
	constant CCHAR_PD: std_logic_vector(9 downto 0) := "1010000011"; -- K28.5 encoded RD = +1, 0x283
	constant CCHAR_ND: std_logic_vector(9 downto 0) := "0101111100"; -- K28.5 encoded RD = -1, 0x17c
	constant SCHAR: std_logic_vector(7 downto 0) := X"3c"; -- Sync pkt marker: K28.1
	constant TIMEOUT_W: positive := 6; -- Bitwidth of comma timeout counter	
	constant LOCK_CTR_W: positive := 2; -- Bitwidth of lock counter

-- L2 constants (protocol layer)
	
	constant IDLE_DATA_WDS: positive := 16; -- Number of data words in idle packet
	constant BCAST_ADDR: std_logic_vector(15 downto 0) := X"ffff";
	constant IDLE_ADDR: std_logic_vector(15 downto 0) := X"fffe";
	constant PACKET_LEN_RADIX: natural := 5; -- Maximum packet length (2^PACKET_LEN_RADIX)
	
-- L3 constants (application layer)
	
	constant SCMD_SYNC: std_logic_vector(7 downto 0) := X"00"; -- Set the timestamp
	constant SCMD_ECHO: std_logic_vector(7 downto 0) := X"01"; -- Echo for loop delay measurement
	constant SCMD_NULL: std_logic_vector(7 downto 0) := X"ff"; -- Null command, never used

	constant SCMD_MAX: integer := 15; -- Number of scmds in use (must be contiguous)
	
	constant TS_REG_ADDR: std_logic_vector(7 downto 0) := X"77"; -- Address of endpoint timestamp FIFO register
	
-- Types

	type pdts_cmd_w is
		record
			d: std_logic_vector(7 downto 0);
			valid: std_logic;
			last: std_logic;
			err: std_logic;
		end record;

	type pdts_cmd_w_array is array(natural range <>) of pdts_cmd_w;
	constant PDTS_CMD_W_NULL: pdts_cmd_w := ((others => '0'), '0', '0', '0');
	
	type pdts_cmd_r is
		record
			rdy: std_logic;
		end record;

	type pdts_cmd_r_array is array(natural range <>) of pdts_cmd_r;
	constant PDTS_CMD_R_NULL: pdts_cmd_r := (rdy => '0');
	
end pdts_defs;
