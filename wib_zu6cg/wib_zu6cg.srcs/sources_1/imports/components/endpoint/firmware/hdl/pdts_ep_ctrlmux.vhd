-- pdts_ep_ctrlmux
--
-- Multiplexer for multiple control buses
--
-- Dave Newbold, March 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_ep_defs.all;

entity pdts_ep_ctrlmux is
	generic(
		N: positive := 2
	);
	port(
		ctrl_in: in pdts_cmo;
		ctrl_out: out pdts_cmi;
		ctrl_out_v: out pdts_cmo_array(N - 1 downto 0);
		ctrl_in_v: in pdts_cmi_array(N - 1 downto 0)
	);

end pdts_ep_ctrlmux;

architecture rtl of pdts_ep_ctrlmux is

begin

	ctrl_out_v <= (others => ctrl_in);
	
	process(ctrl_in_v)
	
		variable ack: std_logic := '0';
		variable d: std_logic_vector(7 downto 0) := X"00";
	
	begin

        d := ctrl_in_v(0).d;
        ack := ctrl_in_v(0).ack;

		for i in N - 1 downto 1 loop
			if ctrl_in_v(i).ack = '1' then
				ack := '1';
				d := ctrl_in_v(i).d;
			end if;
		end loop;
		
		ctrl_out.ack <= ack;
		ctrl_out.d <= d;
		
	end process;

end rtl;
