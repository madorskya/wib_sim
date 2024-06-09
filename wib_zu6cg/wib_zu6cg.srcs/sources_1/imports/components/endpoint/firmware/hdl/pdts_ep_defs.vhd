-- pdts_ep_defs
--
-- Constants and types for PDTS endpoint
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package pdts_ep_defs is
	
-- Types

	type pdts_cmo is
	record
		a: std_logic_vector(6 downto 0);
		d: std_logic_vector(7 downto 0);
		rw: std_logic;
		stb: std_logic;
	end record;

	type pdts_cmo_array is array(natural range <>) of pdts_cmo;
	constant PDTS_CMO_NULL: pdts_cmo := ((others => '0'), (others => '0'), '0', '0');

	type pdts_cmi is
    record
		d: std_logic_vector(7 downto 0);
		ack: std_logic;
    end record;

	type pdts_cmi_array is array(natural range <>) of pdts_cmi;
	constant PDTS_CMI_NULL: pdts_cmi := ((others => '0'), '0');

end pdts_ep_defs;
