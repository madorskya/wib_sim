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
        N_SRC: positive
    );
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;
        src_clk: in std_logic; -- DUNE base clock (62.5MHz)
        src_rst: in std_logic; -- DUNE base clock sync reset (src_clk)
        d: in src_d_array(N_SRC - 1 downto 0); -- Data from sources (src_clk)
        eth_clk: in std_logic; -- Ethernet clock (156.25MHz / 250MHz)
        eth_rst: in std_logic; -- Sync reset (eth_clk)
        eth_q: out src_d; -- Multiplexed data output (eth_clk)
        eth_ready: in std_logic -- Ready flag from destination (eth_clk)
    );

end entity tx_mux;

architecture rtl of tx_mux is

    signal ipbw: ipb_wbus_array(N_SLAVES - 1 downto 0);
	signal ipbr: ipb_rbus_array(N_SLAVES - 1 downto 0);
	signal ctrl: ipb_reg_v(0 downto 0);
    signal stat: ipb_reg_v(1 downto 0);
    signal ctrl_en, ctrl_en_buf, ctrl_sample: std_logic;
    signal err, en, en_buf_i, en_buf, rst, rst_buf: std_logic;
    signal samp_req, samp_req_d, req, mark, mark_d, mark_r, mark_rd, mark_eth, samp, done, done_i: std_logic;
    signal ctrl_sel: std_logic_vector(5 downto 0);
    signal sctr: unsigned(TIMESLICE_RADIX - 1 downto 0);
    signal ctr: unsigned(31 downto 0);
    signal ctr_samp: std_logic_vector(31 downto 0);
    signal ipbw_buf: ipb_wbus_array(N_SRC - 1 downto 0);
    signal ipbr_buf: ipb_rbus_array(N_SRC - 1 downto 0);
    signal q: src_d_array(N_SRC - 1 downto 0);
    signal re, ierr: std_logic_vector(N_SRC - 1 downto 0);
    -- Maq: reclock register for rst
--    signal rst_sh: std_logic_vector(3 downto 0);
--    attribute ASYNC_REG : string;
--    attribute ASYNC_REG of rst_sh : signal is "TRUE";     

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
    ctrl_sample <= ctrl(0)(2);
    ctrl_sel <= ctrl(0)(13 downto 8);
    stat(0) <= X"0000000" & done & not src_rst & not eth_rst & err ; -- CDC
    stat(1) <= ctr_samp;

    err <= or_reduce(ierr);

-- CDC logic

    sync_en: entity work.tx_syncreg
        port map(
            clks => ipb_clk,
            d(0) => ctrl_en,
            clk => eth_clk,
            q(0) => en
        );

    rst <= eth_rst or not en; -- eth_clk domain reset

    en_buf_i <= ctrl_en and ctrl_en_buf;

    sync_en_buf: entity work.tx_syncreg
        generic map(
            N => 2
        )
        port map(
            clks => ipb_clk,
            d(0) => en_buf_i,
            d(1) => ctrl_sample,
            clk => src_clk,
            q(0) => en_buf,
            q(1) => samp_req
        );

    rst_buf <= src_rst or not en_buf; -- src_clk domain reset

    sync_done: entity work.tx_syncreg
        port map(
            clks => src_clk,
            d(0) => done_i,
            clk => ipb_clk,
            q(0) => done
        );

-- Timeslice control

    process(src_clk)
    begin
        if rising_edge(src_clk) then
            if rst = '1' then
-- Maq: using reclocked rst
--            if rst_sh(rst_sh'high) = '1' then
                sctr <= (others => '0');
                ctr <= (others => '0');
            else
                sctr <= sctr + 1;
                if samp = '1' then
                    ctr_samp <= std_logic_vector(ctr);
                    ctr <= (others => '0');
                elsif mark = '1' and mark_d = '0' then
                    ctr <= ctr + 1;
                end if;
            end if;
            
-- Maq: reclocking rst            
--            rst_sh <= rst_sh(rst_sh'high - 1 downto rst_sh'low) & rst;
            
        end if;
    end process;

    mark <= sctr(TIMESLICE_RADIX - 1);
    mark_d <= mark when rising_edge(src_clk);
    samp_req_d <= samp_req when rising_edge(src_clk);
    req <= (req or (samp_req and not samp_req_d)) and not (rst or samp) when rising_edge(src_clk);
    done_i <= (done_i or samp) and not ((samp_req and not samp_req_d) or rst) when rising_edge(src_clk);
    samp <= (mark and not mark_d) and req;

    sync: entity work.tx_syncreg
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
			SEL_WIDTH => 6
		)
		port map(
			ipb_in => ipbw(N_SLV_BUF),
			ipb_out => ipbr(N_SLV_BUF),
			sel => ctrl_sel,
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
                d => d(i),
                eth_clk => eth_clk,
                eth_rst => rst,
                re => re(i),
                q => q(i),
                samp => samp,
                err => ierr(i)
            );

    end generate;

-- Multiplexer

    mux: entity work.tx_mux_out
        generic map(
            N_SRC => N_SRC
        )
        port map(
            ipb_clk => ipb_clk,
            ipb_rst => ipb_rst,
            ipb_in => ipbw(N_SLV_MUX),
            ipb_out => ipbr(N_SLV_MUX),
            clk => eth_clk,
            rst => rst,
            d => q,
            re => re,
            q => eth_q,
            ready => eth_ready,
            mark => mark_eth
        );

end architecture rtl;
