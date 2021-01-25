-- pdts_endpoint_stdlogic
--
-- This block wraps the endpoint so that only std_logic signals are exposed.
-- This is necessary to use with the IP Integrator flow in vivado.
-- NB: endpoint generic settings differ from standard, and many ports are quashed in the interests of maximum simplicity
--
-- Dave Newbold, January 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;

entity pdts_endpoint_stdlogic is
	port(
		sclk: in std_logic; -- Free-running system clock
		srst: in std_logic; -- System reset (sclk domain)
		stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
		rec_clk: in std_logic; -- CDR recovered clock from timing link
		rec_d: in std_logic; -- CDR recovered data from timing link (rec_clk domain)
		sfp_los: in std_logic := '0'; -- SFP LOS line (async, sampled in sclk domain)
		cdr_los: in std_logic := '0'; -- CDR LOS line (async, sampled in sclk domain)
		cdr_lol: in std_logic := '0'; -- CDR LOL line (async, sampled in sclk domain)
		clk: out std_logic; -- 50MHz clock output
		rst: out std_logic; -- 50MHz domain reset
		rdy: out std_logic; -- Timestamp valid flag
		debug: out std_logic_vector(31 downto 0) := (others => '0') -- port for debug info, e.g. applied delay values
	);

end pdts_endpoint_stdlogic;

architecture rtl of pdts_endpoint_stdlogic is

begin

	ep: entity work.pdts_endpoint
		generic map(
			SCLK_FREQ => 100.0,
			NEED_ADJUST => false,
			NEED_TSTAMP => false
		)
		port map(
			sclk => sclk,
			srst => srst,
			addr => X"00",
			tgrp => "00",
			stat => stat,
			rec_clk => rec_clk,
			rec_d => rec_d,
			txd => open,
			sfp_los => sfp_los,
			cdr_los => cdr_los,
			cdr_lol => cdr_lol,
			sfp_tx_dis => open,
			clk => clk,
			rst => rst,
			rdy => rdy,
			sync => open,
			sync_stb => open,
			sync_first => open,
			tstamp => open,
			tsync_out => open,
			debug => debug
		);

end rtl;
