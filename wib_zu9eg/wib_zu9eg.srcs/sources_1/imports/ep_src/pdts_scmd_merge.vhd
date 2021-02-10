-- pdts_scmd_merge
--
-- Merge sync cmd streams from multiple sources, and send to tx block
--
-- To send a scmd request:
--   Put your data onto the cmd_w.d, raise cmd_w.req
--   When command is accepted, you receive cmd_r.ack on the same cycle and you must lower cmd_w.req
--   You can then play the scmd in one word at a time, with cmd_r.ren indicating need for next word
--   The last word must be accompanied by cmd_w.last
--
-- It's guaranteed that you get a cmd_r.ren on same cycle as cmd_r.ack, so if you just want
--   to issue a single-word command, you just set cmd_w.last and 'fire and forget'.
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_scmd_merge is
	generic(
		N_SRC: positive := 1;
		N_PART: integer
	);
	port(
		clk: in std_logic;
		rst: in std_logic;
		scmd_in_v: in cmd_w_array(N_SRC - 1 downto 0);
		scmd_out_v: out cmd_r_array(N_SRC - 1 downto 0);
		typ: out std_logic_vector(SCMD_W - 1 downto 0);
		tv: out std_logic;
		tgrp: in std_logic_vector(N_PART - 1 downto 0);
		scmd_out: out cmd_w;
		scmd_in: in cmd_r
	);

end pdts_scmd_merge;

architecture rtl of pdts_scmd_merge is

	signal req: std_logic_vector(N_SRC - 1 downto 0);
	signal p: std_logic_vector(3 downto 0);
	signal ip, ipa: integer range 15 downto 0 := 0;
	signal w: std_logic_vector(7 downto 0);
	signal go, goq, last, active, src, wl: std_logic;
	
begin

	process(scmd_in_v)
	begin
		for i in N_SRC - 1 downto 0 loop
			req(i) <= scmd_in_v(i).req;
		end loop;
	end process;
	
	prio: entity work.pdts_prio_enc
		generic map(
			WIDTH => N_SRC
		)
		port map(
			d => req,
			sel => p
		);

	ip <= to_integer(unsigned(p));
	ipa <= ip when go = '1' and rising_edge(clk);
	w <= scmd_in_v(ip).d when (go = '1' or (src and scmd_in.ren) = '1') and rising_edge(clk);
	wl <= scmd_in_v(ip).last when (go = '1' or (src and scmd_in.ren) = '1') and rising_edge(clk);
		
	go <= or_reduce(req) and not active;
	goq <= go and scmd_in.ack;
	last <= src and scmd_in_v(ipa).last and scmd_in.ren;

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				active <= '0';
				src <= '0';
			else
				active <= ((active and not (wl and src and scmd_in.ren)) or goq);
				if scmd_in.ren = '1' then
					src <= (src or (active or goq)) and not (src and wl);
				end if;
			end if;
		end if;
	end process;
			
	scmd_out.d <= (3 downto N_PART => '0') & tgrp & X"0" when src = '0' else w; -- Insert grp / timeslot hdr
	scmd_out.req <= go or active;
	scmd_out.last <= src and wl;
	typ <= scmd_in_v(ip).d(SCMD_W - 1 downto 0);
	tv <= go;
	
	ogen: for i in N_SRC - 1 downto 0 generate
		scmd_out_v(i).ack <= goq when ip = i else '0';
		scmd_out_v(i).ren <= (scmd_in.ren and src and not wl) or go when ip = i else '0';
	end generate;
	
end rtl;
