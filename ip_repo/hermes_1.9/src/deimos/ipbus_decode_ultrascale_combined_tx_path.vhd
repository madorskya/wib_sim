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

package ipbus_decode_ultrascale_combined_tx_path is

-- START automatically generated VHDL (Wed Aug 23 16:24:19 2023)
  constant IPBUS_SEL_WIDTH: positive := 3;
-- END automatically generated VHDL

  subtype ipbus_sel_t is std_logic_vector(IPBUS_SEL_WIDTH - 1 downto 0);
  function ipbus_sel_ultrascale_combined_tx_path(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t;

-- START automatically generated VHDL (Wed Aug 23 16:24:19 2023)
  constant N_SLV_UDP_CORE: integer := 0;
  constant N_SLV_TX_MUX: integer := 1;
  constant N_SLV_CSR_TX_MUX: integer := 2;
  constant N_SLV_CSR_UDP_CORE: integer := 3;
  constant N_SLAVES: integer := 4;
-- END automatically generated VHDL

end ipbus_decode_ultrascale_combined_tx_path;

package body ipbus_decode_ultrascale_combined_tx_path is

  function ipbus_sel_ultrascale_combined_tx_path(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t is
    variable sel: ipbus_sel_t;
  begin

-- START automatically generated VHDL (Wed Aug 23 16:24:19 2023)
    if    std_match(addr, "--------------------0-----------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_UDP_CORE, IPBUS_SEL_WIDTH)); -- udp_core / base 0x00000000 / mask 0x00000800
    elsif std_match(addr, "--------------------1----0------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_TX_MUX, IPBUS_SEL_WIDTH)); -- tx_mux / base 0x00000800 / mask 0x00000840
    elsif std_match(addr, "--------------------1----1---01-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_CSR_TX_MUX, IPBUS_SEL_WIDTH)); -- csr_tx_mux / base 0x00000842 / mask 0x00000846
    elsif std_match(addr, "--------------------1----1---10-") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_CSR_UDP_CORE, IPBUS_SEL_WIDTH)); -- csr_udp_core / base 0x00000844 / mask 0x00000846
    else
        sel := ipbus_sel_t(to_unsigned(N_SLAVES, IPBUS_SEL_WIDTH));
    end if;
-- END automatically generated VHDL

    return sel;

  end function ipbus_sel_ultrascale_combined_tx_path;

end ipbus_decode_ultrascale_combined_tx_path;

---------------------------------------------------------------------------------