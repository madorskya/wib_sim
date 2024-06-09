-- pdts_ep_transactor
--
-- Timing endpoint bus controller
--
-- Dave Newbold, June 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;
use work.pdts_ep_defs.all;

entity pdts_ep_transactor is
	port(
		clk: in std_logic; -- Base clock
		rst: in std_logic; -- Base clock reset (clk domain)
		rx_i: in pdts_cmd_w; -- Async command stream in (clk domain)
		rx_o: out pdts_cmd_r;
		tx_o: out pdts_cmd_w; -- Async command stream out (clk domain)
		tx_i: in pdts_cmd_r;
		ctrl_o: out pdts_cmo; -- Control bus (clk domain)
		ctrl_i: in pdts_cmi;
		err: out std_logic -- Error flag
	);

end pdts_ep_transactor;

architecture rtl of pdts_ep_transactor is

	type state_type is (ST_IDLE, ST_RADDR_L, ST_RADDR_H, ST_WADDR_L, ST_WADDR_H, ST_HDR, ST_ADDR, ST_LEN, ST_RD, ST_WR, ST_WRFIN, ST_ERR);
	signal state: state_type;
	
	signal paddr: std_logic_vector(15 downto 0);
	signal addr: std_logic_vector(6 downto 0);
	signal d: std_logic_vector(7 downto 0);
	signal rw, rep, bcast: std_logic;
	signal lctr: unsigned(5 downto 0);
	signal timeout, last: std_logic;
	signal tctr: unsigned(7 downto 0);

--	attribute MARK_DEBUG: string;
--	attribute MARK_DEBUG of state, timeout, rx_i, rx_o, tx_o, tx_i: signal is "TRUE";

begin

	-- State machine

	process(clk)
	begin
		if rising_edge(clk) then
		
			if rst = '1' then
				state <= ST_IDLE;
			else
				case state is

				when ST_IDLE =>  -- Starting state
				
					if rx_i.valid = '1' and tx_i.rdy = '1' then
						state <= ST_RADDR_L;
					end if;
					
				when ST_RADDR_L => -- Strip packet address
				
					if rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_RADDR_H;
					end if;

				when ST_RADDR_H => -- Strip packet address
				
					if rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_WADDR_L;
					end if;

				when ST_WADDR_L => -- Write return packet address
				
					if rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_WADDR_H;
					end if;

				when ST_WADDR_H => -- Write return packet address
				
					if rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_HDR;
					end if;

				when ST_HDR =>  -- Read sequence number
				
					if rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_ADDR;
					end if;

				when ST_ADDR =>  -- Get address
				
					if rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_LEN;
					end if;
					
				when ST_LEN =>  -- Get length
				
					if rw = '0' then
						state <= ST_RD;
					elsif rx_i.last = '1' then
						state <= ST_ERR;
					else
						state <= ST_WR;
					end if;
					
				when ST_RD =>  -- Do bus cycles
				
					if timeout = '1' then
						state <= ST_ERR;				
					elsif ctrl_i.ack = '1' and lctr = 1 then
						if last = '1' then
							state <= ST_IDLE;
						else
							state <= ST_ADDR;
						end if;
					end if;
					
				when ST_WR =>
					
					if timeout = '1' then
						state <= ST_ERR;				
					elsif ctrl_i.ack = '1' and lctr = 1 then
						if rx_i.last = '1' then
							state <= ST_WRFIN;
						else
							state <= ST_ADDR;
						end if;
					end if;
					
				when ST_WRFIN =>
				
					state <= ST_IDLE;
					
				when ST_ERR =>
				
				end case;
			end if;

		end if;
	end process;
	
-- Broadcast detection

	paddr(7 downto 0) <= rx_i.d when state = ST_RADDR_L and rising_edge(clk);
	paddr(15 downto 8) <= rx_i.d when state = ST_RADDR_H and rising_edge(clk);
	bcast <= '1' when paddr = BCAST_ADDR else '0';
	
-- Address register and length counter

	process(clk)
	begin
		if rising_edge(clk) then
			if state = ST_ADDR then
				addr <= rx_i.d(6 downto 0);
				rw <= rx_i.d(7);
			end if;
			if state = ST_LEN then
				lctr <= unsigned(rx_i.d(5 downto 0));
				rep <= rx_i.d(7);
			elsif (state = ST_WR or state = ST_RD) and ctrl_i.ack = '1' then
				lctr <= lctr - 1;
				if rep = '0' then
					addr <= std_logic_vector(unsigned(addr) + 1);
				end if;
			end if;
		end if;
	end process;
	
-- Timeout counter

	process(clk)
	begin
		if rising_edge(clk) then
			if (state = ST_RD or state = ST_WR) and ctrl_i.ack = '0' then
				tctr <= tctr + 1;
			else
				tctr <= (others => '0');
			end if;
		end if;
	end process;
	
	timeout <= and_reduce(std_logic_vector(tctr));

-- Last read word logic
	
	process(clk)
	begin
		if rising_edge(clk) then
			if state = ST_LEN and rw = '0' then
				last <= rx_i.last;
			end if;
		end if;
	end process;
	
-- Rx interface

	rx_o.rdy <= '1' when state = ST_RADDR_L or state = ST_RADDR_H or state = ST_HDR or state = ST_ADDR or state = ST_LEN or (state = ST_WR and ctrl_i.ack = '1') else '0';

-- Control bus

	ctrl_o.a <= addr;
	ctrl_o.d <= rx_i.d;
	ctrl_o.rw <= '1' when state = ST_WR else '0';
	ctrl_o.stb <= '1' when state = ST_RD or state = ST_WR else '0';
	
-- Tx interface
	
	tx_o.d <= rx_i.d when state = ST_HDR else BCAST_ADDR(7 downto 0) when state = ST_WADDR_L else BCAST_ADDR(15 downto 8) when state = ST_WADDR_H else ctrl_i.d;
	tx_o.valid <= '1' when (state = ST_WADDR_L or state = ST_WADDR_H or state = ST_HDR or (state = ST_RD and ctrl_i.ack = '1') or state = ST_WRFIN) and bcast = '0' else '0';
	tx_o.last <= '1' when (state = ST_RD and last = '1' and lctr = 1 and ctrl_i.ack = '1') or state = ST_WRFIN else '0';
	tx_o.err <= '0';

-- Error flag

	err <= '1' when state = ST_ERR else '0';
	
end rtl;
