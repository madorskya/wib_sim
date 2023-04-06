-- <h---------------------------------------------------------------------------
--! @file   udp_proj_pkg.vhd
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! Package containing modifiable parameters for the UDP Core.
--!
--! ### License ###
--! Copyright(c) 2021 UNITED KINGDOM RESEARCH AND INNOVATION
--! Licensed under the BSD 3-Clause license. See LICENSE file in the project
--! root for details.
-- ---------------------------------------------------------------------------h>
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package udp_proj_pkg is
     constant C_MIN_IFG_BYTES    : integer := 12; -- 1x 0xFD, 11x 0x07
     constant C_FIFO_MIN_WIDTH   : integer := 5;
     constant C_MAX_PAYLOAD_SIZE : integer := 8192;

     -- Set the Number of Bytes from the Xilinx/Altera PHYs for DATA/CTRL:
     constant C_XIL_10G_NOF_BYTES : integer := 8;
     constant C_ALT_10G_NOF_BYTES : integer := 8;
     constant C_XIL_40G_NOF_BYTES : integer := 16;
     constant C_ALT_40G_NOF_BYTES : integer := 32;
end package udp_proj_pkg;
