-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Aug 20 16:53:05 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_spi_mux_0_0/design_1_spi_mux_0_0_sim_netlist.vhdl
-- Design      : design_1_spi_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_mux_0_0_spi_mux is
  port (
    sck_i : out STD_LOGIC;
    io0_i : out STD_LOGIC;
    adc_sck : inout STD_LOGIC;
    adc_sdo : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sck_o : in STD_LOGIC;
    sck_t : in STD_LOGIC;
    io0_o : in STD_LOGIC;
    io0_t : in STD_LOGIC;
    ss1_o : in STD_LOGIC;
    ss_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_mux_0_0_spi_mux : entity is "spi_mux";
end design_1_spi_mux_0_0_spi_mux;

architecture STRUCTURE of design_1_spi_mux_0_0_spi_mux is
  signal adc_io0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \iobuf_loop[0].io0_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \iobuf_loop[1].io0_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \iobuf_loop[2].io0_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \iobuf_loop[3].io0_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of sck_iobuf : label is "PRIMITIVE";
begin
\io0_i__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc_io0(3),
      I1 => adc_io0(2),
      I2 => ss1_o,
      I3 => adc_io0(1),
      I4 => ss_o,
      I5 => adc_io0(0),
      O => io0_i
    );
\iobuf_loop[0].io0_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io0_o,
      IO => adc_sdo(0),
      O => adc_io0(0),
      T => io0_t
    );
\iobuf_loop[1].io0_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io0_o,
      IO => adc_sdo(1),
      O => adc_io0(1),
      T => io0_t
    );
\iobuf_loop[2].io0_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io0_o,
      IO => adc_sdo(2),
      O => adc_io0(2),
      T => io0_t
    );
\iobuf_loop[3].io0_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => io0_o,
      IO => adc_sdo(3),
      O => adc_io0(3),
      T => io0_t
    );
sck_iobuf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sck_o,
      IO => adc_sck,
      O => sck_i,
      T => sck_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_mux_0_0 is
  port (
    ss_t : in STD_LOGIC;
    sck_i : out STD_LOGIC;
    sck_o : in STD_LOGIC;
    sck_t : in STD_LOGIC;
    io0_i : out STD_LOGIC;
    io0_o : in STD_LOGIC;
    io0_t : in STD_LOGIC;
    io1_i : out STD_LOGIC;
    io1_o : in STD_LOGIC;
    io1_t : in STD_LOGIC;
    ss_o : in STD_LOGIC;
    ss1_o : in STD_LOGIC;
    adc_sck : inout STD_LOGIC;
    adc_sdo : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    adc_cs : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi_mux_0_0 : entity is "design_1_spi_mux_0_0,spi_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spi_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_spi_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_spi_mux_0_0 : entity is "spi_mux,Vivado 2020.1";
end design_1_spi_mux_0_0;

architecture STRUCTURE of design_1_spi_mux_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ss_t\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of io0_i : signal is "xilinx.com:interface:spi:1.0 adc_spi IO0_I";
  attribute X_INTERFACE_INFO of io0_o : signal is "xilinx.com:interface:spi:1.0 adc_spi IO0_O";
  attribute X_INTERFACE_INFO of io0_t : signal is "xilinx.com:interface:spi:1.0 adc_spi IO0_T";
  attribute X_INTERFACE_INFO of io1_i : signal is "xilinx.com:interface:spi:1.0 adc_spi IO1_I";
  attribute X_INTERFACE_INFO of io1_o : signal is "xilinx.com:interface:spi:1.0 adc_spi IO1_O";
  attribute X_INTERFACE_INFO of io1_t : signal is "xilinx.com:interface:spi:1.0 adc_spi IO1_T";
  attribute X_INTERFACE_INFO of sck_i : signal is "xilinx.com:interface:spi:1.0 adc_spi SCK_I";
  attribute X_INTERFACE_INFO of sck_o : signal is "xilinx.com:interface:spi:1.0 adc_spi SCK_O";
  attribute X_INTERFACE_INFO of sck_t : signal is "xilinx.com:interface:spi:1.0 adc_spi SCK_T";
  attribute X_INTERFACE_INFO of ss1_o : signal is "xilinx.com:interface:spi:1.0 adc_spi SS1_O";
  attribute X_INTERFACE_INFO of ss_o : signal is "xilinx.com:interface:spi:1.0 adc_spi SS_O";
  attribute X_INTERFACE_INFO of ss_t : signal is "xilinx.com:interface:spi:1.0 adc_spi SS_T";
begin
  \^ss_t\ <= ss_t;
  adc_cs <= \^ss_t\;
  io1_i <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_spi_mux_0_0_spi_mux
     port map (
      adc_sck => adc_sck,
      adc_sdo(3 downto 0) => adc_sdo(3 downto 0),
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      ss1_o => ss1_o,
      ss_o => ss_o
    );
end STRUCTURE;
