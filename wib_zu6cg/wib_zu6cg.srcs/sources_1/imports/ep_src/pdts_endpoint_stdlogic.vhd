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
		addr: in std_logic_vector(7 downto 0); -- Endpoint address (async, sampled in clk domain)
		tgrp: in std_logic_vector(1 downto 0); -- Timing group (async, sampled in clk domain)
		stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
		rec_clk: in std_logic; -- CDR recovered clock from timing link
		rec_d: in std_logic; -- CDR recovered data from timing link (rec_clk domain)
		sfp_los: in std_logic := '0'; -- SFP LOS line (async, sampled in sclk domain)
		cdr_los: in std_logic := '0'; -- CDR LOS line (async, sampled in sclk domain)
		cdr_lol: in std_logic := '0'; -- CDR LOL line (async, --sampled in sclk domain)
        pll_locked: in std_logic;
--		io_rdy: in std_logic; -- Sampled in sclk domaain
		clk: out std_logic; -- 50MHz clock output
		clkx2: out std_logic; -- Maq double system clock
        rst: out std_logic; -- 50MHz domain reset
		rdy: out std_logic; -- Timestamp valid flag
		sync: out std_logic_vector(3 downto 0); -- Sync command output (clk domain)
		sync_stb: out std_logic; -- Sync command strobe (clk domain)
		sync_first: out std_logic; -- Sync command valid flag (clk domain)
		tstamp: out std_logic_vector(63 downto 0); -- Timestamp out
		debug: out std_logic_vector(31 downto 0); -- port for debug info, e.g. applied delay values
		txd: out std_logic;
		tx_dis: out std_logic
	);

end pdts_endpoint_stdlogic;

architecture rtl of pdts_endpoint_stdlogic is

    attribute X_INTERFACE_PARAMETER: string;
    attribute X_INTERFACE_PARAMETER of clk: signal is "FREQ_HZ 62500000";
    attribute X_INTERFACE_PARAMETER of clkx2: signal is "FREQ_HZ 125000000"; -- Maq

    -- Maq: adding RST polarity to make the schematics happy
    -- Declare the attributes in the architecture section
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of rst: SIGNAL is "xilinx.com:signal:reset:1.0 rst RST";
    -- Supported parameter: POLARITY {ACTIVE_LOW, ACTIVE_HIGH}
    -- Normally active low is assumed.  Use this parameter to force the level
    ATTRIBUTE X_INTERFACE_PARAMETER of rst: SIGNAL is "POLARITY ACTIVE_HIGH";		
    
    signal io_rdy: std_logic;
    
begin

    io_rdy <= not (sfp_los or cdr_lol or cdr_los) and pll_locked;

	ep: entity work.pdts_endpoint
		generic map(
			SCLK_FREQ => 100.0,
			NEED_ADJUST => false,
			NEED_TSTAMP => false
		)
		port map(
			sclk => sclk,
			srst => srst,
			addr => addr,
			tgrp => tgrp,
			stat => stat,
			rec_clk => rec_clk,
			rec_d => rec_d,
			txd => txd,
--			sfp_los => sfp_los,
--			cdr_los => cdr_los,
--			cdr_lol => cdr_lol,
			io_rdy => io_rdy,
			sfp_tx_dis => tx_dis,
			clk => clk,
			clkx2 => clkx2, -- Maq double system clock
			rst => rst,
			rdy => rdy,
			sync => sync,
			sync_stb => sync_stb,
			sync_first => sync_first,
			tstamp => tstamp,
			tsync_out => open,
			debug => debug
		);

end rtl;
