-- pdts_ep_regfile
--
-- Timing endpoint register file
--
-- Dave Newbold, March 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;
use work.pdts_ep_defs.all;

entity pdts_ep_regfile is
	generic(
		FORCE_TX: boolean := false; -- Turn on transmit permanently
		EXT_ADDR: boolean := false; -- Skip the address setting step
		SKIP_DESKEW: boolean := false -- Skip the phase adjustment step
	);
	port(
		clk: in std_logic; -- Base clock
		rst: in std_logic; -- Base clock reset (clk domain)
		ctrl_in: in pdts_cmo; -- Control bus (clk domain)
		ctrl_out: out pdts_cmi;
		sys_addr: in std_logic_vector(15 downto 0);
		addr: out std_logic_vector(15 downto 0);
		stat: in std_logic_vector(3 downto 0);
		delay: out std_logic_vector(3 downto 0);
		phase: out std_logic_vector(11 downto 0);
		phase_done: in std_logic;
		resync: out std_logic;
		reset: out std_logic;
		txenb: out std_logic;
		tstamp: out std_logic_vector(63 downto 0);
		ts_stb: out std_logic;
		addr_done: out std_logic;
		deskew_done: out std_logic
	);

end pdts_ep_regfile;

architecture rtl of pdts_ep_regfile is

	constant BASE_ADDR: std_logic_vector(2 downto 0) := "111"; -- Addresses 0x7x
	type reg_t is array(15 downto 0) of std_logic_vector(7 downto 0);
	signal reg_w, reg_r: reg_t;
	signal cyc: std_logic;
	signal sel: integer range 15 downto 0;
	signal txen, adone, ddone: std_logic;
	signal addri: std_logic_vector(15 downto 0);
	signal tctr: unsigned(2 downto 0);
	signal ts_cyc: std_logic;
	signal tstamp_i: std_logic_vector(63 downto 0);

--	attribute MARK_DEBUG: string;
--	attribute MARK_DEBUG of resync, reset, txenb, addr_done, deskew_done, ctrl_in, cyc: signal is "TRUE";

begin

-- Control bus interface

	sel <= to_integer(unsigned(ctrl_in.a(3 downto 0)));
	cyc <= '1' when ctrl_in.a(6 downto 4) = BASE_ADDR and ctrl_in.stb = '1' else '0'; -- Addresses 0x7x
	
	ctrl_out.d <= reg_r(sel);
	ctrl_out.ack <= cyc;

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				reg_w <= (others => X"00");
			elsif cyc = '1' and ctrl_in.rw = '1' then
				reg_w(sel) <= ctrl_in.d;
			end if;
		end if;
	end process;

-- Ctrl reg (0x70; wo)

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				txen <= '0';
				adone <= '0';
				ddone <= '0';
				addri <= X"0000";
				reset <= '0';
				resync <= '0';
			elsif cyc = '1' and ctrl_in.rw = '1' and sel = 0 then
				if ctrl_in.d = X"00" then -- cmd 0, disable tx
					txen <= '0';
				elsif ctrl_in.d = X"01" then -- cmd 1, enable tx
					txen <= '1';
				elsif ctrl_in.d = X"02" then -- cmd 2, set address
					addri <= reg_w(5) & reg_w(4);
					adone <= '1';
				elsif ctrl_in.d = X"03" then -- cmd 3, set delay-done flag
					ddone <= '1';
				elsif ctrl_in.d = X"04" then -- cmd 4, resync
					delay <= reg_w(2)(3 downto 0);
					resync <= '1';
				elsif ctrl_in.d = X"05" then -- cmd 5, reset
					reset <= '1';
				end if;
			else
				resync <= '0';
			end if;
		end if;
	end process;

	txenb <= '0' when txen = '1' or FORCE_TX else '1';
	addr <= sys_addr when EXT_ADDR else addri;
	addr_done <= '1' when adone = '1' or EXT_ADDR else '0';
	deskew_done <= '1' when ddone = '1' or SKIP_DESKEW else '0';

	reg_r(0) <= X"00";

-- Stat reg (0x71; ro)

	reg_r(1) <= "00" & txen & phase_done & stat;
	
-- Deskew reg (0x72 to 0x73; rw)

	phase <= reg_w(3) & reg_w(2)(7 downto 4);
	reg_r(2) <= reg_w(2);
	reg_r(3) <= reg_w(3);
	
-- Addr reg (0x74 to 0x75; rw)

	reg_r(4) <= reg_w(4);
	reg_r(5) <= reg_w(5);
	
-- Err_cnt reg (0x76; rw)

	reg_r(6) <= X"00"; -- To be implemented later
	
-- Tstamp reg (0x77; wo FIFO)

	ts_cyc <= '1' when cyc = '1' and ctrl_in.rw = '1' and sel = 7 else '0';

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				tstamp_i <= (others => '0');
				tctr <= (others => '0');
			elsif ts_cyc = '1' then
				tstamp_i <= ctrl_in.d & tstamp_i(63 downto 8);
				tctr <= tctr + 1;
			end if;
		end if;
	end process;
	
	tstamp <= tstamp_i;
	ts_stb <= and_reduce(std_logic_vector(tctr)) and ts_cyc when rising_edge(clk);
	reg_r(7) <= X"00";
	
-- Version reg (0x78 to 0x7b; ro)

	reg_r(8) <= PDTS_VERSION(7 downto 0);
	reg_r(9) <= PDTS_VERSION(15 downto 8);
	reg_r(10) <= PDTS_VERSION(23 downto 16);
	reg_r(11) <= PDTS_VERSION(31 downto 24);

end rtl;
