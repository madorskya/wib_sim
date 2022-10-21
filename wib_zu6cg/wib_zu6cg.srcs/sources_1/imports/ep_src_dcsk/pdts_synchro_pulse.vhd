-- pdts_synchro_pulse
--
-- A rising edge on an input bit results in a single-cycle pulse on the corresponding output bit
--
-- Dave Newbold, August 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity pdts_synchro_pulse is
	generic(
		N: natural := 1
	);
	port(
		clk: in std_logic;
        rst: in std_logic;
		clks: in std_logic;
		d: in std_logic_vector(N - 1 downto 0);
		q: out std_logic_vector(N - 1 downto 0)
	);

end pdts_synchro_pulse;

architecture rtl of pdts_synchro_pulse is

    signal dd, qs, qsd, qf, qfd: std_logic_vector(N - 1 downto 0);
    signal dx: std_logic_vector(N - 1 downto 0) := (others => '0');

begin

    dd <= d when rising_edge(clk);
    dx <= ((dx and not (qf and not qfd)) or (d and not dd)) and not (dx'range => rst) when rising_edge(clk);

    s1: entity work.pdts_synchro
        generic map(
            N => N
        )
        port map(
            clk => clk,
            clks => clks,
            d => dx,
            q => qs
        );

    qsd <= qs when rising_edge(clks);

    q <= qs and not qsd;
 
    s2: entity work.pdts_synchro
        generic map(
            N => N
        )
        port map(
            clk => clks,
            clks => clk,
            d => qs,
            q => qf
        );

    qfd <= qf when rising_edge(clk);

end rtl;
