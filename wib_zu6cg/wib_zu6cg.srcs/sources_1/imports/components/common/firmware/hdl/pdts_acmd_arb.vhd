-- pdts_acmd_arb
--
-- Async command arbitrator; packet-oriented
--
-- This probably needs changing to use priority encoder
--
-- Dave Newbold, March 2022	

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_acmd_arb is
	generic(
		N_SRC: positive
	);
	port(
		clk: in std_logic;
		rst: in std_logic;
		acmd_in_v: in pdts_cmd_w_array(N_SRC - 1 downto 0);
		acmd_out_v: out pdts_cmd_r_array(N_SRC - 1 downto 0);
		acmd_out: out pdts_cmd_w;
		acmd_in: in pdts_cmd_r
	);
	
begin

	assert N_SRC <= 16
		report "N_SRC exceeds maximum capacity"
		severity failure;

end pdts_acmd_arb;

architecture rtl of pdts_acmd_arb is

	signal s, v, d: std_logic;
	signal p: unsigned(3 downto 0);
	signal sel: integer range N_SRC - 1 downto 0 := 0;
	signal rdy: std_logic_vector(N_SRC - 1 downto 0);
	
--	attribute MARK_DEBUG: string;
--	attribute MARK_DEBUG of acmd_in_v, acmd_out, p, s, d, v: signal is "TRUE";
	
begin

	sel <= to_integer(p);

	v <= acmd_in_v(sel).valid; -- Data waiting from current source
	d <= acmd_in_v(sel).last and acmd_in.rdy; -- Last word from current source
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				p <= X"0";
				s <= '0';
			else
				if (s = '0' and v = '0') or d = '1' then
					if p = N_SRC - 1 then
						p <= X"0";
					else
						p <= p + 1;
					end if;
				end if;
				if d = '1' then
					s <= '0';
				elsif v = '1' then
					s <= '1';
				end if;
			end if;
		end if;
	end process;

	acmd_out <= acmd_in_v(sel);
	
	process(sel, acmd_in.rdy)
	begin
		for i in N_SRC - 1 downto 0 loop
			if sel = i then
				acmd_out_v(i).rdy <= acmd_in.rdy;
			else
				acmd_out_v(i).rdy <= '0';
			end if;
		end loop;
	end process;
	
end rtl;

