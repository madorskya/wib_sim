-- txmux_decl
--
-- Declarations for txmux block
--
-- Dave Newbold, 6/10/22

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package tx_mux_decl is

-- Data path types

    type src_d is
        record
            d: std_logic_vector(63 downto 0);
            valid: std_logic;
            last: std_logic;
        end record;

    type src_d_array is array(natural range <>) of src_d;
    type array_of_src_d_arrays is array(natural range <>) of src_d_array;
    
    constant SRC_D_NULL: src_d := ((others => '0'), '0', '0');

-- Constants

    constant PROTO_VERSION: std_logic_vector(5 downto 0) := "000000";
    constant DBUF_DEPTH: integer := 2048; -- Depth (in 64b words) of source data FIFO
    constant LBUF_DEPTH: integer := 32; -- Depth (in entries) of block length FIFO
    constant LBUF_C_W: integer := 5; -- Width of block length FIFO read counter
    constant TIMESLICE_RADIX: integer := 8; -- Divider for 62.5MHz clock to define a timeslice (8 = 4.1us)
    constant MAX_BLK_SIZE: integer := 1024; -- Maximum block size in 64b words
    constant MAX_PKT_SIZE: integer := 1025; -- Maximum packet payload size in 64b words
    constant MAX_LAT_RDX: integer := 8; -- Maximum packet dwell time, t_max = t_timeslice * 2 ^ max_lat_rdx
    constant HBEAT_RDX: integer := 16; -- Heartbeat interval, t_hb = t_timeslice * 2 ^ hb_period_rdx
    constant RATE_D: integer := 0; -- Parameter D for rate control; 0 disables rate control
    constant RATE_M: integer := 0; -- Parameter M for rate control

end tx_mux_decl;


