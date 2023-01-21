library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library axi4_lib;
use axi4_lib.axi4s_pkg.all;
use axi4_lib.axi4_conversion_pkg.all;

library common_stfc_lib;
use common_stfc_lib.common_stfc_pkg.all;

library xpm;
use xpm.vcomponents.all;

entity axi4s_fifo is
     generic (
          g_fpga_vendor        : string        := "xilinx";      --For xpm doesnt affect anything
          g_fpga_family        : string        := "all";         --For xpm doesnt affect anything
          g_implementation     : string        := "distributed"; --For xpm doesnt affect anything
          g_dual_clock         : boolean       := true;
          g_wr_adr_width       : integer       := 5;
          g_prog_full_val      : positive      := 20;
          g_sanity_check       : boolean       := true;  --TODO not implemented yet
          g_in_endianess_swap  : boolean       := false; --TODO not implemented yet
          g_out_endianess_swap : boolean       := false; --TODO not implemented yet
          g_axi4s_descr        : t_axi4s_descr := (tdata_nof_bytes => 4,
          tid_width                                                => 32,
          tuser_width                                              => 32,
          has_tlast                                                => 1,
          has_tkeep                                                => 1,
          has_tid                                                  => 0,
          has_tuser                                                => 0);
          g_in_tdata_nof_bytes       : integer := 4;
          g_out_tdata_nof_bytes      : integer := 4;
          g_bram_partition_width     : integer := 0;    --TODO not implemented yet
          g_hold_last_read           : boolean := true; --TODO not implemented yet
          g_full_packet              : boolean := false;
          g_packet_fifo_wr_adr_width : integer := 4 --TODO not implemented yet
     );
     port (
          s_axi_clk    : in std_logic;
          s_axi_rst_n  : in std_logic;
          m_axi_clk    : in std_logic;
          m_axi_rst_n  : in std_logic;
          axi4s_s_mosi : in t_axi4s_mosi;
          axi4s_s_miso : out t_axi4s_miso;
          axi4s_m_mosi : out t_axi4s_mosi;
          axi4s_m_miso : in t_axi4s_miso
     );
end entity;
architecture rtl of axi4s_fifo is

    constant fifo_write_depth          : natural := common_min(common_max(2 ** g_wr_adr_width, 16), 4194304);
    constant RD_DATA_COUNT_WIDTH       : natural := common_max(integer(floor(log2(real(fifo_write_depth)))) + 1, 23);
    
    signal s_axis_tid       : std_logic_vector(g_axi4s_descr.tid_width-1 downto 0);
    signal s_axis_tuser     : std_logic_vector(g_axi4s_descr.tuser_width-1 downto 0);
    signal s_axis_tkeep     : std_logic_vector(g_in_tdata_nof_bytes-1 downto 0);
    signal s_axis_tlast     : std_logic;
    
    signal m_axis_tid       : std_logic_vector(g_axi4s_descr.tid_width-1 downto 0);
    signal m_axis_tuser     : std_logic_vector(g_axi4s_descr.tuser_width-1 downto 0);
    signal m_axis_tkeep     : std_logic_vector(g_in_tdata_nof_bytes-1 downto 0);
    signal m_axis_tlast     : std_logic;

begin

   -- xpm_fifo_axis: AXI Stream FIFO
   -- Xilinx Parameterized Macro, version 2021.axi4_lib
   
   s_axis_tid       <= axi4s_s_mosi.tid(g_axi4s_descr.tid_width-1 downto 0) when g_axi4s_descr.has_tid=1 else (others=>'0');
   s_axis_tuser     <= axi4s_s_mosi.tuser(g_axi4s_descr.tuser_width-1 downto 0) when g_axi4s_descr.has_tuser=1 else (others=>'0');
   
   axi4s_m_mosi.tid(g_axi4s_descr.tid_width-1 downto 0)     <= m_axis_tid when g_axi4s_descr.has_tid=1 else (others=>'0');
   axi4s_m_mosi.tuser(g_axi4s_descr.tuser_width-1 downto 0) <= m_axis_tuser when g_axi4s_descr.has_tuser=1 else (others=>'0');
   
   s_axis_tkeep <= axi4s_s_mosi.tkeep(g_in_tdata_nof_bytes-1 downto 0) when g_axi4s_descr.has_tkeep=1 else (others=>'1');
   s_axis_tlast <= axi4s_s_mosi.tlast when g_axi4s_descr.has_tlast=1 else '0';
   
   axi4s_m_mosi.tkeep(g_in_tdata_nof_bytes-1 downto 0)  <= m_axis_tkeep when g_axi4s_descr.has_tkeep=1 else (others=>'1');
   axi4s_m_mosi.tlast <= m_axis_tlast when g_axi4s_descr.has_tlast=1 else '0';
   
   xpm_fifo_axis_inst : xpm_fifo_axis
   generic map (
      --CASCADE_HEIGHT        => 0,
      CDC_SYNC_STAGES       =>  2,
      CLOCKING_MODE         =>  bolToStr(g_dual_clock, "independent_clock", "common_clock"),
      ECC_MODE              =>  "no_ecc",
      FIFO_DEPTH            =>  fifo_write_depth,
      FIFO_MEMORY_TYPE      =>  "block",
      PACKET_FIFO           =>  bolToStr(g_full_packet, "True", "False"),
      PROG_EMPTY_THRESH     =>  3,
      PROG_FULL_THRESH      =>  g_prog_full_val,
      RD_DATA_COUNT_WIDTH   =>  RD_DATA_COUNT_WIDTH,
      RELATED_CLOCKS        =>  0,
      SIM_ASSERT_CHK        =>  0,             -- DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      TDATA_WIDTH           =>  g_in_tdata_nof_bytes*8,
      TDEST_WIDTH           =>  1,
      TID_WIDTH             =>  g_axi4s_descr.tid_width,
      TUSER_WIDTH           =>  g_axi4s_descr.tuser_width,
      USE_ADV_FEATURES      =>  "1000",
      WR_DATA_COUNT_WIDTH   =>  g_wr_adr_width
   )
   port map (
      almost_empty_axis => open,    -- 1-bit output: Almost Empty : When asserted, this signal
                                    -- indicates that only one more read can be performed before
                                    -- the FIFO goes to empty.

      almost_full_axis => open,     -- 1-bit output: Almost Full: When asserted, this signal
                                    -- indicates that only one more write can be performed before
                                    -- the FIFO is full.

      dbiterr_axis => open,         -- 1-bit output: Double Bit Error- Indicates that the ECC
                                    -- decoder detected a double-bit error and data in the FIFO
                                    -- core is corrupted.

      m_axis_tdata => axi4s_m_mosi.tdata((g_in_tdata_nof_bytes*8)-1 downto 0),       -- TDATA_WIDTH-bit output: TDATA: The primary payload that is
                                                -- used to provide the data that is passing across the
                                                -- interface. The width of the data payload is an integer
                                                -- number of bytes.

      m_axis_tdest => open,                     -- TDEST_WIDTH-bit output: TDEST: Provides routing information
                                                -- for the data stream.

      m_axis_tid => m_axis_tid,                 -- TID_WIDTH-bit output: TID: The data stream identifier that
                                                -- indicates different streams of data.

      m_axis_tkeep => m_axis_tkeep,             -- TDATA_WIDTH/8-bit output: TKEEP: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as part of the data stream. Associated
                                                -- bytes that have the TKEEP byte qualifier deasserted are null
                                                -- bytes and can be removed from the data stream. For a 64-bit
                                                -- DATA, bit 0 corresponds to the least significant byte on
                                                -- DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: KEEP[0] = 1b, DATA[7:0] is not a NULL byte
                                                -- KEEP[7] = 0b, DATA[63:56] is a NULL byte

      m_axis_tlast => m_axis_tlast,             -- 1-bit output: TLAST: Indicates the boundary of a packet.
      m_axis_tstrb => open,                     -- TDATA_WIDTH/8-bit output: TSTRB: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as a data byte or a position byte. For a
                                                -- 64-bit DATA, bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: STROBE[0] = 1b, DATA[7:0] is valid STROBE[7] =
                                                -- 0b, DATA[63:56] is not valid

      m_axis_tuser => m_axis_tuser,             -- TUSER_WIDTH-bit output: TUSER: The user-defined sideband
                                                -- information that can be transmitted alongside the data
                                                -- stream.

      m_axis_tvalid => axi4s_m_mosi.tvalid,     -- 1-bit output: TVALID: Indicates that the master is driving a
                                                -- valid transfer. A transfer takes place when both TVALID and
                                                -- TREADY are asserted

      prog_empty_axis => open,                  -- 1-bit output: Programmable Empty- This signal is asserted
                                                -- when the number of words in the FIFO is less than or equal
                                                -- to the programmable empty threshold value. It is de-asserted
                                                -- when the number of words in the FIFO exceeds the
                                                -- programmable empty threshold value.

      prog_full_axis => axi4s_s_miso.prog_full, -- 1-bit output: Programmable Full: This signal is asserted
                                                -- when the number of words in the FIFO is greater than or
                                                -- equal to the programmable full threshold value. It is
                                                -- de-asserted when the number of words in the FIFO is less
                                                -- than the programmable full threshold value.

      rd_data_count_axis => open,               -- RD_DATA_COUNT_WIDTH-bit output: Read Data Count- This bus
                                                -- indicates the number of words available for reading in the
                                                -- FIFO.

      s_axis_tready => axi4s_s_miso.tready,     -- 1-bit output: TREADY: Indicates that the slave can accept a
                                                -- transfer in the current cycle.

      sbiterr_axis => open,                     -- 1-bit output: Single Bit Error- Indicates that the ECC
                                                -- decoder detected and fixed a single-bit error.

      wr_data_count_axis => open,               -- WR_DATA_COUNT_WIDTH-bit output: Write Data Count: This bus
                                                -- indicates the number of words written into the FIFO.

      injectdbiterr_axis => '0',                -- 1-bit input: Double Bit Error Injection- Injects a double
                                                -- bit error if the ECC feature is used.

      injectsbiterr_axis => '0',                -- 1-bit input: Single Bit Error Injection- Injects a single
                                                -- bit error if the ECC feature is used.

      m_aclk => m_axi_clk,                      -- 1-bit input: Master Interface Clock: All signals on master
                                                -- interface are sampled on the rising edge of this clock.

      m_axis_tready => axi4s_m_miso.tready,     -- 1-bit input: TREADY: Indicates that the slave can accept a
                                                -- transfer in the current cycle.

      s_aclk => s_axi_clk,                      -- 1-bit input: Slave Interface Clock: All signals on slave
                                                -- interface are sampled on the rising edge of this clock.

      s_aresetn => s_axi_rst_n,                 -- 1-bit input: Active low asynchronous reset.
      s_axis_tdata => axi4s_s_mosi.tdata((g_in_tdata_nof_bytes*8)-1 downto 0),       -- TDATA_WIDTH-bit input: TDATA: The primary payload that is
                                                -- used to provide the data that is passing across the
                                                -- interface. The width of the data payload is an integer
                                                -- number of bytes.

      s_axis_tdest => (others=>'0'),            -- TDEST_WIDTH-bit input: TDEST: Provides routing information
                                                -- for the data stream.

      s_axis_tid => s_axis_tid ,                -- TID_WIDTH-bit input: TID: The data stream identifier that
                                                -- indicates different streams of data.

      s_axis_tkeep => s_axis_tkeep,             -- TDATA_WIDTH/8-bit input: TKEEP: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as part of the data stream. Associated
                                                -- bytes that have the TKEEP byte qualifier deasserted are null
                                                -- bytes and can be removed from the data stream. For a 64-bit
                                                -- DATA, bit 0 corresponds to the least significant byte on
                                                -- DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: KEEP[0] = 1b, DATA[7:0] is not a NULL byte
                                                -- KEEP[7] = 0b, DATA[63:56] is a NULL byte

      s_axis_tlast => s_axis_tlast,             -- 1-bit input: TLAST: Indicates the boundary of a packet.
      s_axis_tstrb => (others => '1'),          -- TDATA_WIDTH/8-bit input: TSTRB: The byte qualifier that
                                                -- indicates whether the content of the associated byte of
                                                -- TDATA is processed as a data byte or a position byte. For a
                                                -- 64-bit DATA, bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 0 corresponds to the least significant byte
                                                -- on DATA, and bit 7 corresponds to the most significant byte.
                                                -- For example: STROBE[0] = 1b, DATA[7:0] is valid STROBE[7] =
                                                -- 0b, DATA[63:56] is not valid

      s_axis_tuser => s_axis_tuser,             -- TUSER_WIDTH-bit input: TUSER: The user-defined sideband
                                                -- information that can be transmitted alongside the data
                                                -- stream.

      s_axis_tvalid => axi4s_s_mosi.tvalid      -- 1-bit input: TVALID: Indicates that the master is driving a
                                                -- valid transfer. A transfer takes place when both TVALID and
                                                -- TREADY are asserted

   );
end architecture rtl;