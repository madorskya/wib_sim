-- pdts_ep_tstamp
--
-- Maintains the endpoint timestamp
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_ep_tstamp is
	generic(
		SKIP_TSTAMP: boolean
	);	
	port(
		clk: in std_logic;
		rst: in std_logic;
		sync: in std_logic_vector(7 downto 0);
		sync_stb: in std_logic;
		ts_in: in std_logic_vector(63 downto 0);
		ts_stb: in std_logic;
		ts_out: out std_logic_vector(63 downto 0);
		rdy: out std_logic
	);

end pdts_ep_tstamp;

architecture rtl of pdts_ep_tstamp is

	signal s, lock, valid: std_logic;
	signal ctr: unsigned(63 downto 0);

begin

	s <= '1' when sync = SCMD_SYNC and sync_stb = '1' else '0';
	valid <= (valid or ts_stb) and not (rst or s) when rising_edge(clk);

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				lock <= '0';
				ctr <= (others => '0');
			elsif lock = '0' then
				if s = '1' and valid = '1' then
					ctr <= unsigned(ts_in) + 1;
					lock <= '1';
				end if;
			else
				ctr <= ctr + 1;
				if s = '1' and valid = '1' and ctr /= unsigned(ts_in) then
					lock <= '0';
				end if;
			end if;
		end if;
	end process;
	
	ts_out <= std_logic_vector(ctr);
	rdy <= '1' when lock = '1' or SKIP_TSTAMP else '0';

end rtl;
