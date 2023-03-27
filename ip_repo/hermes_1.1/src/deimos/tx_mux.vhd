-- tx_mux
--
-- Multiplexes data blocks from multiple sources onto single output stream
--
-- Dave Newbold, 6/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;
use work.ipbus_decode_tx_mux.all;

use work.tx_mux_decl.all;

entity tx_mux is
    generic(
        N_SRC: positive;
        IFACE_ID: integer
    );
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;
        src_clk: in std_logic; -- DUNE base clock (62.5MHz)
        src_rst: in std_logic; -- DUNE base clock sync reset (src_clk)
        ts: in std_logic_vector(63 downto 0);
        d: in src_d_array(N_SRC - 1 downto 0); -- Data from sources (src_clk)
        samp: in std_logic; -- Sample flag
        mark: in std_logic; -- Timeslice marker
        eth_clk: in std_logic; -- Ethernet clock (156.25MHz / 250MHz)
        eth_rst: in std_logic; -- Sync reset (eth_clk)
        eth_q: out src_d; -- Multiplexed data output (eth_clk)
        eth_ready: in std_logic; -- Ready flag from destination (eth_clk)
        udp_ready: in std_logic
    );

end entity tx_mux;

architecture rtl of tx_mux is

    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
	signal ctrl: ipb_reg_v(0 downto 0);
    signal stat: ipb_reg_v(1 downto 0);
    signal ctrl_en, ctrl_en_buf, ctrl_tx_en: std_logic;
    signal ctrl_id: std_logic_vector(19 downto 0);
    signal err, en, en_buf_i, en_buf, rst, rst_buf, tx_en, tx_en_u: std_logic;
    signal mark_r, mark_rd, mark_eth: std_logic;
    signal ctrl_sel_buf: std_logic_vector(7 downto 0);
    signal ctrl_sel_mux: std_logic_vector(1 downto 0);
    signal sctr: unsigned(TIMESLICE_RADIX - 1 downto 0);
    signal ctr: unsigned(31 downto 0);
    signal ctr_samp: std_logic_vector(31 downto 0);
    signal ipbw_buf: ipb_wbus_array(N_SRC - 1 downto 0);
    signal ipbr_buf: ipb_rbus_array(N_SRC - 1 downto 0);
    signal q: src_d_array(N_SRC - 1 downto 0);
    signal re, err_buf: std_logic_vector(N_SRC - 1 downto 0);
    signal err_mux: std_logic;

begin

    fabric: entity ipbus.ipbus_fabric_sel
        generic map(
            NSLV => N_SLAVES,
            SEL_WIDTH => IPBUS_SEL_WIDTH
        )
        port map(
            ipb_in => ipb_in,
            ipb_out => ipb_out,
            sel => ipbus_sel_tx_mux(ipb_in.ipb_addr),
            ipb_to_slaves => ipbw,
            ipb_from_slaves => ipbr
        );

-- CSR registers

    csr: entity ipbus.ipbus_ctrlreg_v
		generic map(
			N_CTRL => 1,
			N_STAT => 2
		)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipbw(N_SLV_CSR),
			ipbus_out => ipbr(N_SLV_CSR),
			d => stat,
			q => ctrl
		);

    ctrl_en <= ctrl(0)(0);
    ctrl_en_buf <= ctrl(0)(1);
    ctrl_tx_en <= ctrl(0)(3);
    ctrl_sel_buf <= ctrl(0)(15 downto 8);
    stat(0) <= X"0000000" & udp_ready & not src_rst & not eth_rst & err ; -- CDC
    stat(1) <= ctr_samp;

    err <= or_reduce(err_buf) or err_mux;

-- CDC logic

    sync_en: entity work.tx_syncreg
        generic map(
            N => 2
        )
        port map(
            clks => ipb_clk,
            d(0) => ctrl_en,
            d(1) => ctrl_tx_en,
            clk => eth_clk,
            q(0) => en,
            q(1) => tx_en_u
        );

    rst <= eth_rst or not en; -- eth_clk domain reset

    en_buf_i <= ctrl_en and ctrl_en_buf;

    sync_en_buf: entity work.tx_syncreg
        port map(
            clks => ipb_clk,
            d(0) => en_buf_i,
            clk => src_clk,
            q(0) => en_buf
        );

    rst_buf <= src_rst or not en_buf; -- src_clk domain reset

    sync_mark: entity work.tx_syncreg
        port map(
            clks => src_clk,
            d(0) => mark,
            clk => eth_clk,
            q(0) => mark_r
        );
    
    mark_rd <= mark_r when rising_edge(eth_clk);
    mark_eth <= mark_r and not mark_rd;

-- Input buffers

	fabric_buf: entity ipbus.ipbus_fabric_sel
		generic map(
			NSLV => N_SRC,
			SEL_WIDTH => 8
		)
		port map(
			ipb_in => ipbw(N_SLV_BUF),
			ipb_out => ipbr(N_SLV_BUF),
			sel => ctrl_sel_buf,
			ipb_to_slaves => ipbw_buf,
			ipb_from_slaves => ipbr_buf
		);

    buf_gen: for i in N_SRC - 1 downto 0 generate

        ibuf: entity work.tx_mux_ibuf
            port map(
                ipb_clk => ipb_clk,
                ipb_rst => ipb_rst,
                ipb_in => ipbw_buf(i),
                ipb_out => ipbr_buf(i),
                src_clk => src_clk,
                src_rst => rst_buf,
                ts => ts,
                d => d(i),
                eth_clk => eth_clk,
                eth_rst => rst,
                re => re(i),
                q => q(i),
                samp => samp,
                err => err_buf(i)
            );

    end generate;

-- Multiplexer

    tx_en <= tx_en_u and udp_ready;

    mux: entity work.tx_mux_out
        generic map(
            N_SRC => N_SRC,
            IFACE_ID => IFACE_ID
        )
        port map(
            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbw(N_SLV_MUX),
            ipb_out => ipbr(N_SLV_MUX),
            clk => eth_clk,
            rst => rst,
            en => tx_en,
            d => q,
            re => re,
            q => eth_q,
            ready => eth_ready,
            mark => mark_eth,
            err => err_mux
        );

end architecture rtl;
