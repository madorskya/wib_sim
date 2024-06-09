-- pdts_pktbuf
--
-- Packet FIFO; holds only one packet
--
-- Dave Newbold, August 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_pktbuf is
	generic(
		BUF_RADIX: positive
	);
	port(
		clk: in std_logic; -- Base sample clock
		rst: in std_logic;
		rx_i: in pdts_cmd_w; -- data connection to source
		rx_o: out pdts_cmd_r;
		tx_o: out pdts_cmd_w; -- data connection to sink
		tx_i: in pdts_cmd_r;
		err: out std_logic -- Error flag
	);

end pdts_pktbuf;

architecture rtl of pdts_pktbuf is

	signal s, rxdone, txdone, wen, ren, last, err_i: std_logic;
	signal p: std_logic_vector(BUF_RADIX - 1 downto 0);

begin
	
-- State machine

	rxdone <= rx_i.valid and (rx_i.last or rx_i.err) and not s;
	txdone <= last and tx_i.rdy and s;
	s <= (s or (rx_i.valid and rx_i.last)) and not (rst or txdone) when rising_edge(clk); -- rx or tx state
	
-- Address pointers
	
	wen <= rx_i.valid and not s;
	ren <= tx_i.rdy and s;

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or ((rxdone = '1' or txdone = '1') and err_i = '0') then
				p <= (others => '0');
				err_i <= '0';
			elsif wen = '1' or ren = '1' then
				if and_reduce(p) = '1' then
					err_i <= '1';
				else
					p <= std_logic_vector(unsigned(p) + 1);
				end if;
			end if;
		end if;
	end process;
	
	err <= err_i;
	
-- RAM

	ram: entity work.pdts_lutram
		generic map(
			BUF_RADIX => BUF_RADIX,
			W => 9
		)
		port map(
			clk => clk,
			rst => rst,
			a => p,
			d(8) => rx_i.last,
			d(7 downto 0) => rx_i.d,
			q(8) => last,
			q(7 downto 0) => tx_o.d,
			wen => wen
		);

-- Link handshake

	rx_o.rdy <= not s;
	tx_o.valid <= s;
	tx_o.last <= last;
	tx_o.err <= '0';
	
end rtl;

