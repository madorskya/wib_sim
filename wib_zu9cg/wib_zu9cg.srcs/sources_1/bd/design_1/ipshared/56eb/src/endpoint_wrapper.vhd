----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2020 04:40:15 PM
-- Design Name: 
-- Module Name: endpoint_wrapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity endpoint_wrapper is
	port(
		sclk: in std_logic; -- Free-running system clock
		srst: in std_logic; -- System reset (sclk domain)
		addr: in std_logic_vector(7 downto 0); -- Endpoint address (async, sampled in clk domain)
		tgrp: in std_logic_vector(1 downto 0); -- Timing group (async, sampled in clk domain)
		stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
		rec_clk: in std_logic; -- CDR recovered clock from timing link
		rec_d: in std_logic; -- CDR recovered data from timing link (rec_clk domain)
		--txd: out std_logic; -- Output data to timing link (rec_clk domain)
		sfp_los: in std_logic := '0'; -- SFP LOS line (async, sampled in sclk domain)
		cdr_los: in std_logic := '0'; -- CDR LOS line (async, sampled in sclk domain)
		cdr_lol: in std_logic := '0'; -- CDR LOL line (async, sampled in sclk domain)
		--sfp_tx_dis: out std_logic; -- SFP tx disable line (clk domain)
		clk: out std_logic; -- 50MHz clock output
		rst: out std_logic; -- 50MHz domain reset
		rdy: out std_logic; -- Timestamp valid flag
		sync: out std_logic_vector(3 downto 0); -- Sync command output (clk domain)
		sync_stb: out std_logic; -- Sync command strobe (clk domain)
		sync_first: out std_logic; -- Sync command valid flag (clk domain)
		tstamp: out std_logic_vector(63 downto 0) -- Timestamp out
		--tsync_in: in cmd_w := CMD_W_NULL; -- Tx sync command input
		--tsync_out: out cmd_r -- Tx sync command handshake
	);
	
end endpoint_wrapper;

architecture Behavioral of endpoint_wrapper is

begin

	ep: entity work.pdts_endpoint
		generic map(
            SCLK_FREQ => 100.0, -- Frequency (MHz) of the supplied sclk
            EN_TX => false,
            SIM => false,
            NEED_ADJUST => false,
            NEED_TSTAMP => true
		)
		port map(
			sclk => sclk,
			srst => srst,
			addr => addr,
			tgrp => tgrp,
			stat => stat,
			rec_clk => rec_clk,
			rec_d => rec_d,
			--txd => txd,
			sfp_los => sfp_los,
			cdr_los => cdr_los,
			cdr_lol => cdr_lol,
			--sfp_tx_dis => sfp_tx_dis,
			clk => clk,
			rst => rst,
			rdy => rdy,
			sync => sync,
			sync_stb => sync_stb,
			sync_first => sync_first,
			tstamp => tstamp
			--tsync_in => tsync_in,
			--tsync_out => tsync_out
		);
		
end Behavioral;
