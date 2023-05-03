---------------------------------------------------------------------------------
--
--   Copyright 2017 - Rutherford Appleton Laboratory and University of Bristol
--
--   Licensed under the Apache License, Version 2.0 (the "License");
--   you may not use this file except in compliance with the License.
--   You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--   Unless required by applicable law or agreed to in writing, software
--   distributed under the License is distributed on an "AS IS" BASIS,
--   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--   See the License for the specific language governing permissions and
--   limitations under the License.
--
--                                     - - -
--
--   Additional information about ipbus-firmare and the list of ipbus-firmware
--   contacts are available at
--
--       https://ipbus.web.cern.ch/ipbus
--
---------------------------------------------------------------------------------


-- ipbus_transactor_axi_if
--
-- Bridges AXI interface for IPbus 'pages' to the IPbus transactor interface
--
-- Tom Williams, April 2018


library ieee;
use ieee.std_logic_1164.all;

library ipbus;
use ipbus.ipbus_trans_decl.all;
use ipbus.ipbus_axi4lite_decl.all;


entity ipbus_transport_axi4_lite_if is
  generic(
    -- Number of address bits to select RX or TX buffer
    -- Number of RX and TX buffers is 2 ** INTERNALWIDTH
    BUFWIDTH: natural := 2;

    -- Number of address bits within each buffer
    -- Size of each buffer is 2**ADDRWIDTH
    ADDRWIDTH: natural := 11
  );
  port(
    ipb_clk      : in  std_logic;
    rst_ipb      : in  std_logic;

    axi_clk      : in std_logic;
    axi_rstn     : in std_logic;
    axi_in       : in  ipb_axi4lite_mosi;
    axi_out      : out ipb_axi4lite_miso;

    pkt_done     : out std_logic;

    -- IPbus (from / to slaves)
    ipb_trans_rx : out ipbus_trans_in;
    ipb_trans_tx : in  ipbus_trans_out
  );

end ipbus_transport_axi4_lite_if;

architecture rtl of ipbus_transport_axi4_lite_if is

  component axi4_lite_bram_ctrl_0
    port (
      s_axi_aclk    : in std_logic;
      s_axi_aresetn : in std_logic;
      s_axi_awaddr  : in std_logic_vector(15 downto 0);
      s_axi_awprot  : in std_logic_vector(2 downto 0);
      s_axi_awvalid : in std_logic;
      s_axi_awready : out std_logic;
      s_axi_wdata   : in std_logic_vector(31 downto 0);
      s_axi_wstrb   : in std_logic_vector(3 downto 0);
      s_axi_wvalid  : in std_logic;
      s_axi_wready  : out std_logic;
      s_axi_bresp   : out std_logic_vector(1 downto 0);
      s_axi_bvalid  : out std_logic;
      s_axi_bready  : in std_logic;
      s_axi_araddr  : in std_logic_vector(15 downto 0);
      s_axi_arprot  : in std_logic_vector(2 downto 0);
      s_axi_arvalid : in std_logic;
      s_axi_arready : out std_logic;
      s_axi_rdata   : out std_logic_vector(31 downto 0);
      s_axi_rresp   : out std_logic_vector(1 downto 0);
      s_axi_rvalid  : out std_logic;
      s_axi_rready  : in std_logic;
      bram_rst_a    : out std_logic;
      bram_clk_a    : out std_logic;
      bram_en_a     : out std_logic;
      bram_we_a     : out std_logic_vector(3 downto 0);
      bram_addr_a   : out std_logic_vector(15 downto 0);
      bram_wrdata_a : out std_logic_vector(31 downto 0);
      bram_rddata_a : in std_logic_vector(31 downto 0);
      bram_rst_b    : out std_logic;
      bram_clk_b    : out std_logic;
      bram_en_b     : out std_logic;
      bram_we_b     : out std_logic_vector(3 downto 0);
      bram_addr_b   : out std_logic_vector(15 downto 0);
      bram_wrdata_b : out std_logic_vector(31 downto 0);
      bram_rddata_b : in std_logic_vector(31 downto 0)
    );
  end component;

  signal bram_wr_addr, bram_rd_addr : std_logic_vector(BUFWIDTH+ADDRWIDTH+2 downto 0);
  signal bram_wr_en, bram_we, ram_rd_en : std_logic;
  signal bram_wr_we : std_logic_vector(3 downto 0);
  signal bram_wr_data, bram_rd_data : std_logic_vector(31 downto 0);


begin

  axi_bram_ctrl: axi4_lite_bram_ctrl_0
    port map (
      s_axi_aclk    => axi_clk,
      s_axi_aresetn => axi_rstn,
      s_axi_awaddr  => axi_in.awaddr(15 downto 0),
      s_axi_awprot  => axi_in.awprot,
      s_axi_awvalid => axi_in.awvalid,
      s_axi_awready => axi_out.awready,
      s_axi_wdata   => axi_in.wdata,
      s_axi_wstrb   => axi_in.wstrb,
      s_axi_wvalid  => axi_in.wvalid,
      s_axi_wready  => axi_out.wready,
      s_axi_bresp   => axi_out.bresp,
      s_axi_bvalid  => axi_out.bvalid,
      s_axi_bready  => axi_in.bready,
      s_axi_araddr  => axi_in.araddr(15 downto 0),
      s_axi_arprot  => axi_in.arprot,
      s_axi_arvalid => axi_in.arvalid,
      s_axi_arready => axi_out.arready,
      s_axi_rdata   => axi_out.rdata,
      s_axi_rresp   => axi_out.rresp,
      s_axi_rvalid  => axi_out.rvalid,
      s_axi_rready  => axi_in.rready,

      bram_rst_a    => open,
      bram_clk_a    => open,
      bram_en_a     => bram_wr_en,
      bram_we_a     => bram_wr_we,
      bram_addr_a   => bram_wr_addr,
      bram_wrdata_a => bram_wr_data,
      bram_rddata_a => X"00000000",

      bram_rst_b    => open,
      bram_clk_b    => open,
      bram_en_b     => ram_rd_en,
      bram_we_b     => open,
      bram_addr_b   => bram_rd_addr,
      bram_wrdata_b => open,
      bram_rddata_b => bram_rd_data
    );

--  bram_rd_data_masked <= (Others => '0') when (bram_rd_addr(12 downto BUFWIDTH + ADDRWIDTH + 3) = bram_addr_zero) else bram_rd_data;

  bram_we <= axi_rstn and bram_wr_en and bram_wr_we(0);

  ram_to_trans : entity ipbus.ipbus_transport_ram_if
    generic map (
      BUFWIDTH => BUFWIDTH,
      ADDRWIDTH => ADDRWIDTH
    )
    port map (
      ram_clk   => axi_clk,
      ipb_clk   => ipb_clk,
      rst_ipb   => rst_ipb,
      wr_addr   => bram_wr_addr (BUFWIDTH + ADDRWIDTH + 1 downto 2),
      wr_data   => bram_wr_data,
      wr_en     => bram_we,

      rd_addr   => bram_rd_addr (BUFWIDTH + ADDRWIDTH + 1 downto 2),
      rd_data   => bram_rd_data,

      pkt_done  => pkt_done,

      trans_in  => ipb_trans_rx,
      trans_out => ipb_trans_tx
    );

end rtl;
