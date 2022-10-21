-- pdts_idle_gen
--
-- Generates stream of idle packets to fill up link
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;
use work.pdts_clock_defs.all;

entity pdts_idle_gen is
	port(
		clk: in std_logic;
		rst: in std_logic;
		acmd_out: out pdts_cmd_w;
		acmd_in: in pdts_cmd_r
	);

end pdts_idle_gen;

architecture rtl of pdts_idle_gen is

	signal ctr: unsigned(7 downto 0);
	signal last_i: std_logic;
	signal r: std_logic_vector(7 downto 0);
	signal b: std_logic;

begin

-- PRBS8 gen

	b <= r(7) xor r(5) xor r(4) xor r(3);
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				r <= X"01";
			elsif acmd_in.rdy = '1' then
				r <= r(6 downto 0) & b;
			end if;
		end if;
	end process;
	
-- Counter

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				ctr <= X"00";
			elsif acmd_in.rdy = '1' then
				if last_i = '1' then
					ctr <= X"00";
				else
					ctr <= ctr + 1;
				end if;
			end if;
		end if;
	end process;
	
	last_i <= '1' when ctr = 2 + IDLE_DATA_WDS - 1 else '0';
	acmd_out.last <= last_i;
	acmd_out.d <= IDLE_ADDR(to_integer(ctr) * 8 + 7 downto to_integer(ctr) * 8) when ctr < 2 else r;
	acmd_out.valid <= '1';
	acmd_out.err <= '0';
	
end rtl;
