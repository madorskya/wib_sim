-- pdts_tstamp
--
-- Maintains the endpoint timestamp
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_tstamp is
	port(
		clk: in std_logic;
		rst: in std_logic;
		d: in std_logic_vector(7 downto 0);
		s_stb: in std_logic;
		s_first: in std_logic;
		tstamp: out std_logic_vector(8 * TSTAMP_WDS - 1 downto 0);
		rdy: out std_logic
	);

end pdts_tstamp;

architecture rtl of pdts_tstamp is

	signal sr: std_logic_vector(8 * TSTAMP_WDS - 1 downto 0);
	signal tstamp_i: unsigned(8 * TSTAMP_WDS - 1 downto 0);
	signal ctr: unsigned(7 downto 0);
	signal lock, init, pkt_end, pkt_end_d: std_logic;

begin
		
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				ctr <= (others => '0');
			elsif (s_stb = '1' and s_first = '1' and d(SCMD_W - 1 downto 0) = SCMD_SYNC) or ctr /= to_unsigned(0, ctr'length) then
				ctr <= ctr + 1;
				if ctr < (TSTAMP_WDS + 1) * (10 / SCLK_RATIO) and s_stb = '1' then
					sr <= d & sr(sr'left downto 8);
				end if;
			end if;
			pkt_end <= and_reduce(std_logic_vector(ctr));
			pkt_end_d <= pkt_end;
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				tstamp_i <= (others => '0');
				lock <= '0';
				init <= '0';
			else
				if lock = '0' and init = '0' then
					if pkt_end = '1' then
						tstamp_i <= unsigned(sr) + 256 + 1;
						lock <= '1';
						init <= '1';
					end if;
				else
					tstamp_i <= tstamp_i + 1;
					if pkt_end_d = '1' and tstamp_i /= unsigned(sr) + 256 + 1 then
						lock <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
	
	tstamp <= std_logic_vector(tstamp_i);
	rdy <= lock;

end rtl;
