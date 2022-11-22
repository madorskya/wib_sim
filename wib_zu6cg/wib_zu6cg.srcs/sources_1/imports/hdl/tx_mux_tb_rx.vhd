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

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;
use work.ipbus_decode_tx_mux_tb_rx.all;


use work.tx_mux_decl.all;

entity tx_mux_tb_rx is
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
    signal hdr, err: std_logic;
    signal bctr, hbseq: unsigned(11 downto 0);
    signal seq: std_logic_vector(11 downto 0);

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

    stat(0) <= X"0000" & seq & "000" & err;

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

    process(eth_clk)
    begin
        if rising_edge(eth_clk) then
            if eth_rst = '1' then
                bctr <= (others => '0');
                hbseq <= (others => '0');
                seq <= (others => '0');
                err <= '0';
            elsif d.valid = '1' then
                if hdr = '1' then
                    bctr <= unsigned(d.d(63 downto 52));
                    seq <= d.d(51 downto 40);
                    hbseq <= hbseq + 1;
                    if hbseq /= unsigned(d.d(51 downto 40)) then
                        err <= '1';
                    end if;
                else
                    bctr <= bctr - 1;
                end if;
            end if;
        end if;
    end process;

    hdr <= '1' when bctr = 0 else '0';
    inc(0) <= d.valid and hdr and not d.d(34); -- Normal block
    inc(1) <= d.valid and hdr and d.d(34); -- HB block

    eth_ready <= '1';

end architecture rtl;
