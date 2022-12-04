-- tx_src_sel
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- Selects next source to be used, currently (roughly) based on FIFO fullness
--
-- Dave Newbold, 24/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ipbus;
use work.ipbus.all;

use work.tx_mux_decl.all;

entity tx_src_sel is
    generic(
        N_SRC: positive
    );    
    port(
        clk: in std_logic; -- Sink clock and reset
        rst: in std_logic;
        d: in src_d_array(N_SRC - 1 downto 0); -- Data input
        src: out std_logic_vector(5 downto 0); -- Selected source ID
        valid: out std_logic; -- Valid source found
        req: in std_logic -- Source ID is held while asserted
    );

end entity tx_src_sel;

architecture rtl of tx_src_sel is

    signal ctr, cur, src_i: unsigned(5 downto 0);
    signal c, hwm: unsigned(7 downto 0);
    signal v, cur_v, pend, disp, valid_i: std_logic;

begin

    c <= unsigned(d(to_integer(ctr)).d(31 downto 24));
    v <= d(to_integer(ctr)).valid;

    pend <= (pend or req or rst) and not disp when rising_edge(clk);
    disp <= (pend or req) and cur_v;

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                ctr <= (others => '0');
                cur <= (others => '0');
                hwm <= (others => '0');
                cur_v <= '0';
                src_i <= (others => '0');
                valid_i <= '0';
            else
                if disp = '1' then
                    hwm <= (others => '0');
                    cur_v <= '0';
                else
                    if c > hwm and v = '1' and not (pend = '0' and ctr = src_i) then
                        cur <= ctr;
                        cur_v <= '1';
                        hwm <= c;
                    end if;
                    if ctr = N_SRC - 1 then
                        ctr <= (others => '0');
                    else
                        ctr <= ctr + 1;
                    end if;
                end if;
                if disp = '1' then
                    src_i <= cur;
                end if;
            end if;
        end if;
    end process;

    src <= std_logic_vector(src_i);
    valid <= not pend;

end architecture rtl;
