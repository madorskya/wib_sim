-- tx_mux_tb_rx
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- Testbench design for tx_mux - receive data checker
--
-- Dave Newbold, 26/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;
use work.ipbus_decode_tx_mux_tb_rx.all;

use work.tx_mux_decl.all;

entity tx_mux_tb_rx is
    generic(
        N_SRC: positive
    );
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;
        eth_clk: in std_logic;
        eth_rst: in std_logic;
        eth_ready: out std_logic;
        d: in src_d
    );

end entity tx_mux_tb_rx;

architecture rtl of tx_mux_tb_rx is

    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
	signal stat: ipb_reg_v(0 downto 0);
    signal inc: std_logic_vector(1 downto 0);
    signal hdr, err, btype: std_logic;
    signal bseq, bctr, hbseq: unsigned(11 downto 0);
    type seq_t is array(N_SRC - 1 downto 0) of unsigned(11 downto 0);
    signal seq: seq_t;
    signal ictr: unsigned(2 downto 0);
    signal gap: std_logic;

begin

    fabric: entity ipbus.ipbus_fabric_sel
        generic map(
            NSLV => N_SLAVES,
            SEL_WIDTH => IPBUS_SEL_WIDTH
        )
        port map(
            ipb_in => ipb_in,
            ipb_out => ipb_out,
            sel => ipbus_sel_tx_mux_tb_rx(ipb_in.ipb_addr),
            ipb_to_slaves => ipbw,
            ipb_from_slaves => ipbr
        );

    csr: entity ipbus.ipbus_syncreg_v
		generic map(
			N_CTRL => 0,
			N_STAT => 1
		)
		port map(
			clk => ipb_clk,
			rst => ipb_rst,
			ipb_in => ipbw(N_SLV_STAT),
			ipb_out => ipbr(N_SLV_STAT),
            slv_clk => eth_clk,
			d => stat
		);

    stat(0) <= X"0000000" & "000" & err;

    ctrs: entity ipbus.ipbus_ctrs_v
        generic map(
            N_CTRS => 2
        )
        port map(
            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbw(N_SLV_CTRS),
            ipb_out => ipbr(N_SLV_CTRS),
            clk => eth_clk,
            rst => eth_rst,
            inc => inc
        );

    bseq <= unsigned(d.d(51 downto 40)); -- Block sequence number
    btype <= d.d(34);

    process(eth_clk)

        variable src: integer range N_SRC - 1 downto 0 := 0;
    
    begin
        if rising_edge(eth_clk) then
            if eth_rst = '1' then
                bctr <= (others => '0');
                hbseq <= (others => '0');
                seq <= (others => (others => '0'));
                err <= '0';
            elsif d.valid = '1' then
                if hdr = '1' then
                    src := to_integer(unsigned(d.d(31 downto 26)));
                    bctr <= unsigned(d.d(63 downto 52));
                    if btype = '0' then
                        seq(src) <= seq(src) + 1;
                        if seq(src) /= bseq then
                            err <= '1';
                        end if;
                    else
                        hbseq <= hbseq + 1;
                        if hbseq /= bseq then
                            err <= '1';
                        end if;
                    end if;
                else
                    bctr <= bctr - 1;
                end if;
            end if;
        end if;
    end process;

    hdr <= '1' when bctr = 0 else '0';
    inc(0) <= d.valid and hdr and not btype; -- Normal block
    inc(1) <= d.valid and hdr and btype; -- HB block

    process(eth_clk)
    begin
        if rising_edge(eth_clk) then
            if eth_rst = '1' or d.last = '1' then
                ictr <= (others => '0');
            elsif gap = '1' then
                ictr <= ictr + 1;
            end if;
        end if;
    end process;

    gap <= not and_reduce(std_logic_vector(ictr));
    eth_ready <= not gap;

end architecture rtl;
