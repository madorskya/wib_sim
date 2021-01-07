-- pdts_adjust
--
-- Phase adjustment block (sets delays and controls fine phase adjustment via external PLL)
--
-- Dave Newbold, Septemeber 2018

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_adjust is
	port(
		sclk: in std_logic; -- Free-running system clock
		srst: in std_logic; -- System reset (sclk domain)
		clk: in std_logic;
		d: in std_logic_vector(15 downto 0);
		s: in std_logic;
		fdel: out std_logic_vector(3 downto 0);
		cdel: out std_logic_vector(5 downto 0);
		adj_req: out std_logic;
		adj_ack: in std_logic;
		tx_en: out std_logic
	);

end pdts_adjust;

architecture rtl of pdts_adjust is

	signal u, ud: std_logic;
	signal fdel_i: std_logic_vector(3 downto 0);
	signal cdel_i: std_logic_vector(5 downto 0);	

begin

	sync: entity work.pdts_synchro
		port map(
			clk => clk,
			clks => sclk,
			d(0) => s,
			q(0) => u
		);
		
	ud <= u when rising_edge(sclk);
	
	process(sclk)
	begin
		if rising_edge(sclk) then
			if srst = '1' then
				adj_req <= '0';
				tx_en <= '0';
				fdel <= (others => '0');
				cdel <= (others => '0');
			else
				if adj_ack = '1' then
					fdel <= fdel_i;
					cdel <= cdel_i;
					adj_req <= '0';
				elsif u = '1' and ud = '0' then
					fdel_i <= d(7 downto 4);
					cdel_i <= d(13 downto 8);
					adj_req <= d(14);
					tx_en <= d(15);
				end if;
			end if;
		end if;
	end process;

end rtl;
