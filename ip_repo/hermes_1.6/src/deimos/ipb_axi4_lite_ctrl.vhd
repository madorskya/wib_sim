--------------------------------------------------------------------------------
--
-- Title    : ipb_axi4_lite_ctrl.vhd
-- Project  : DUNE DAQ
-- Author   : Alessandro Thea
-- Date     : 05/April/2023
--------------------------------------------------------------------------------
--
-- Utitlity block including ipbus transcactor, axi4_lite transport ans simple reset logic
-- 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_trans_decl.all;
use ipbus.ipbus_axi4lite_decl.all;

entity ipb_axi4_lite_ctrl is
  generic(
    -- Number of address bits to select RX or TX buffer
    -- Number of RX and TX buffers is 2 ** INTERNALWIDTH
    BUFWIDTH: natural := 2;

    -- Number of address bits within each buffer
    -- Size of each buffer is 2**ADDRWIDTH
    ADDRWIDTH: natural := 11
  );
    port (
        aclk : in std_logic;
        aresetn : in std_logic;
        axi_in : in  ipb_axi4lite_mosi;
        axi_out : out ipb_axi4lite_miso;
        ipb_clk : out std_logic;
        ipb_rst : out std_logic;
        ipb_in  : in ipb_rbus;
        ipb_out : out ipb_wbus;
        -- logic reset signals
        nuke : in std_logic;
        soft_rst : in std_logic
    );
end ipb_axi4_lite_ctrl;

architecture rtl of ipb_axi4_lite_ctrl is


    signal rst_ipb_ctrl : std_logic;
    signal ipb_pkt_done : std_logic;
    signal trans_in     : ipbus_trans_in;
    signal trans_out    : ipbus_trans_out;

begin

  --  DCM clock generation for internal bus, ethernet
    ipb_rsts : entity work.ipb_rsts
        port map(
            clki_fr       => aclk,
            rsti_fr       => not aresetn,
            clko_ipb      => ipb_clk,
            nuke          => nuke,
            soft_rst      => soft_rst,
            rsto_ipb      => ipb_rst,
            rsto_ipb_ctrl => rst_ipb_ctrl
        );
    ipb_clk <= aclk;

    ipbus_transport_axil : entity ipbus.ipbus_transport_axi4_lite_if
        generic map (
            BUFWIDTH => BUFWIDTH,
            ADDRWIDTH => ADDRWIDTH
        )
        port map(
            ipb_clk      => ipb_clk,
            rst_ipb      => rst_ipb_ctrl,
            axi_clk      => aclk,
            axi_rstn     => aresetn,
            axi_in       => axi_in,
            axi_out      => axi_out,

            pkt_done     => ipb_pkt_done,

            ipb_trans_rx => trans_in,
            ipb_trans_tx => trans_out
        );

    ipbus_transactor_axil : entity ipbus.transactor
        port map(
            clk            => ipb_clk,
            rst            => rst_ipb_ctrl,
            ipb_out        => ipb_out,
            ipb_in         => ipb_in,
            ipb_req        => open,
            ipb_grant      => '1',
            trans_in       => trans_in,
            trans_out      => trans_out,
            cfg_vector_in => (others => '0'),
            cfg_vector_out => open
        );

end rtl;