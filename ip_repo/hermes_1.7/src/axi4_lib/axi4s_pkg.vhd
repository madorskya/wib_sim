library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package axi4s_pkg is

	constant c_axi4s_max_tdata_nof_bytes : integer := 16 * 4 * 2;
	constant c_axi4s_max_tid_width       : integer := 32;
	constant c_axi4s_max_tuser_width     : integer := 32;

	type t_axi4s_mosi is record
		tdata  : std_logic_vector(c_axi4s_max_tdata_nof_bytes * 8 - 1 downto 0);
		tid    : std_logic_vector(c_axi4s_max_tid_width - 1 downto 0);
		tuser  : std_logic_vector(c_axi4s_max_tuser_width - 1 downto 0);
		tkeep  : std_logic_vector(c_axi4s_max_tdata_nof_bytes - 1 downto 0);
		tlast  : std_logic;
		tvalid : std_logic;
	end record;

	type t_axi4s_miso is record
		tready    : std_logic;
		prog_full : std_logic;
	end record;

	type t_axi4s_mosi_arr is array (natural range <>) of t_axi4s_mosi;
	type t_axi4s_miso_arr is array (natural range <>) of t_axi4s_miso;

	constant c_axi4s_mosi_default : t_axi4s_mosi := (tdata  => (others => '0'),
	                                                 tid    => (others => '0'),
	                                                 tuser  => (others => '0'),
	                                                 tkeep  => (others => '0'),
	                                                 tlast  => '0',
	                                                 tvalid => '0');

	constant c_axi4s_mosi_undefined : t_axi4s_mosi := (tdata  => (others => 'X'),
	                                                   tid    => (others => 'X'),
	                                                   tuser  => (others => 'X'),
	                                                   tkeep  => (others => 'X'),
	                                                   tlast  => 'X',
	                                                   tvalid => 'X');

	constant c_axi4s_miso_default : t_axi4s_miso := (tready    => '1',
	                                                 prog_full => '0');

	constant c_axi4s_miso_undefined : t_axi4s_miso := (tready    => 'X',
	                                                   prog_full => 'X');

	type t_axi4s_descr is record
		tdata_nof_bytes : positive;
		tid_width       : positive;
		tuser_width     : positive;
		has_tlast       : integer range 0 to 1;
		has_tkeep       : integer range 0 to 1;
		has_tid         : integer range 0 to 1;
		has_tuser       : integer range 0 to 1;
	end record;

	type t_axi4s_descr_arr is array (natural range <>) of t_axi4s_descr;

	function clocking_mode(dual_clock : boolean) return string;

end package;

package body axi4s_pkg is

	function clocking_mode(dual_clock : boolean) return string is

	begin

		if (dual_clock = true) then
			return "independent_clock";
		else
			return "common_clock";
		end if;

	end function;

end package body;
