---------------------------------------------------------------------------------
-- Address decode logic for IPbus fabric.
--
-- This file has been AUTOGENERATED from the address table - do not
-- hand edit.
--
-- We assume the synthesis tool is clever enough to recognise
-- exclusive conditions in the if statement.
---------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package ipbus_decode_wib_eth_readout is

-- START automatically generated VHDL (Thu Oct 12 14:54:30 2023)
  constant IPBUS_SEL_WIDTH: positive := 3;
-- END automatically generated VHDL

  subtype ipbus_sel_t is std_logic_vector(IPBUS_SEL_WIDTH - 1 downto 0);
  function ipbus_sel_wib_eth_readout(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t;

-- START automatically generated VHDL (Thu Oct 12 14:54:30 2023)
  constant N_SLV_INFO: integer := 0;
  constant N_SLV_CSR: integer := 1;
  constant N_SLV_SAMP: integer := 2;
  constant N_SLV_PCS_PMA: integer := 3;
  constant N_SLV_TX_PATH: integer := 4;
  constant N_SLAVES: integer := 5;
-- END automatically generated VHDL

end ipbus_decode_wib_eth_readout;

package body ipbus_decode_wib_eth_readout is

  function ipbus_sel_wib_eth_readout(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t is
    variable sel: ipbus_sel_t;
  begin

-- START automatically generated VHDL (Thu Oct 12 14:54:30 2023)
    if    std_match(addr, "-------------------0-------000--") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_INFO, IPBUS_SEL_WIDTH)); -- info / base 0x00000000 / mask 0x0000101c
    elsif std_match(addr, "-------------------0-------001--") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_CSR, IPBUS_SEL_WIDTH)); -- csr / base 0x00000004 / mask 0x0000101c
    elsif std_match(addr, "-------------------0-------010--") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_SAMP, IPBUS_SEL_WIDTH)); -- samp / base 0x00000008 / mask 0x0000101c
    elsif std_match(addr, "-------------------0-------100--") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_PCS_PMA, IPBUS_SEL_WIDTH)); -- pcs_pma / base 0x00000010 / mask 0x0000101c
    elsif std_match(addr, "-------------------1------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_TX_PATH, IPBUS_SEL_WIDTH)); -- tx_path / base 0x00001000 / mask 0x00001000
    else
        sel := ipbus_sel_t(to_unsigned(N_SLAVES, IPBUS_SEL_WIDTH));
    end if;
-- END automatically generated VHDL

    return sel;

  end function ipbus_sel_wib_eth_readout;

end ipbus_decode_wib_eth_readout;

---------------------------------------------------------------------------------