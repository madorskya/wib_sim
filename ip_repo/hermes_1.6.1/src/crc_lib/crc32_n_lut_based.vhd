-- Copyright(c) 2022 UNITED KINGDOM RESEARCH AND INNOVATION
-- Electronic System Design Group, Technology Department,
-- Science and Technology Facilities Council
-- Licensed under the BSD 3-Clause license. See LICENSE file in the project root for details.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library crc_lib;
use crc_lib.crc32_64_pkg.all;

entity crc32_n_lut_based is
    generic(
        INIT     : std_logic_vector(31 downto 0) := X"FFFFFFFF";
        LL_WIDTH : integer                       := 64
    );
    port(
        clk     : in  std_logic;
        rst_s_n : in  std_logic;
        width   : in  std_logic_vector(5 downto 0);
        enable  : in  std_logic;
        data    : in  std_logic_vector(LL_WIDTH - 1 downto 0);
        crc     : out std_logic_vector(31 downto 0)
    );
end entity crc32_n_lut_based;

architecture behavioral of crc32_n_lut_based is
    -- Signal Declarations
    signal data_r    : std_logic_vector(LL_WIDTH - 1 downto 0) := (others => '0');
    signal width_r   : std_logic_vector(5 downto 0)            := (others => '1');
    signal enable_r  : std_logic                               := '0';
    signal crc_out_r : std_logic_vector(31 downto 0)           := INIT;

    signal prev_crc_s     : std_logic_vector(LL_WIDTH - 1 + (3 * 8) downto 0) := (others => '0');
    signal data_aligned_s : std_logic_vector(LL_WIDTH - 1 downto 0)           := (others => '0');
    signal lut_data_in    : std_logic_vector(LL_WIDTH - 1 downto 0);
    signal lut_crc_out    : std_logic_vector(31 downto 0)                     := INIT;
    signal CRC_out        : std_logic_vector(31 downto 0)                     := INIT;

begin

    crc_lut_64_based : if (LL_WIDTH = 64) generate
        crc_lut : entity crc_lib.crc32_64_bytewise_lut_python
            generic map(
                G_NOF_LUTS => LL_WIDTH / 8
            )
            port map(
                data_in => lut_data_in(LL_WIDTH - 1 downto 0),
                crc_out => lut_crc_out
            );
    end generate crc_lut_64_based;

    crc_lut_128_based : if (LL_WIDTH = 128) generate
        crc_lut : entity crc_lib.crc32_128_bytewise_lut_python
            generic map(
                G_NOF_LUTS => LL_WIDTH / 8
            )
            port map(
                data_in => lut_data_in(LL_WIDTH - 1 downto 0),
                crc_out => lut_crc_out
            );
    end generate crc_lut_128_based;

    crc_lut_256_based : if (LL_WIDTH = 256) generate
        crc_lut : entity crc_lib.crc32_256_bytewise_lut_python
            generic map(
                G_NOF_LUTS => LL_WIDTH / 8
            )
            port map(
                data_in => lut_data_in(LL_WIDTH - 1 downto 0),
                crc_out => lut_crc_out
            );
    end generate crc_lut_256_based;

    crc_lut_512_based : if (LL_WIDTH = 512) generate
        crc_lut : entity crc_lib.crc32_512_bytewise_lut_python
            generic map(
                G_NOF_LUTS => LL_WIDTH / 8
            )
            port map(
                data_in => lut_data_in(LL_WIDTH - 1 downto 0),
                crc_out => lut_crc_out
            );
    end generate crc_lut_512_based;

    -- Process to clock inputs and outputs into registers.
    --! @vhdlflow
    update_registers : process(clk)
    begin
        if (rising_edge(clk)) then
            enable_r <= enable;
            data_r   <= data;
            width_r  <= width;
            if enable_r = '1' then
                if rst_s_n = '0' then
                    crc_out_r <= INIT;
                else
                    crc_out_r <= CRC_out;
                end if;
            end if;
        end if;
    end process update_registers;

    -- Process to align data and previous CRC with correct LUT byte
    data_alignment : process(data_r, crc_out_r, width_r)
        variable prev_crc_v     : std_logic_vector(LL_WIDTH - 1 + (3 * 8) downto 0) := (others => '0');
        variable data_aligned_v : std_logic_vector(LL_WIDTH - 1 downto 0)           := (others => '0');

    begin
        -- Ensure variables set to zero
        prev_crc_v     := (others => '0');
        data_aligned_v := (others => '0');

        -- Align data and previous CRC according to data width
        case width_r is
            when "000000" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 8)       := data_r(7 downto 0);
                prev_crc_v(LL_WIDTH - 1 + (3 * 8) downto LL_WIDTH - 8) := crc_out_r; --535
            when "000001" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 16)       := data_r(15 downto 0);
                prev_crc_v(LL_WIDTH - 1 + (2 * 8) downto LL_WIDTH - 16) := crc_out_r; --527
            when "000010" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 24) := data_r(23 downto 0);
                prev_crc_v(LL_WIDTH - 1 + 8 downto LL_WIDTH - 24) := crc_out_r; --519
            when "000011" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 32) := data_r(31 downto 0);
                prev_crc_v(LL_WIDTH - 1 downto LL_WIDTH - 32)     := crc_out_r; --511
            when "000100" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 40) := data_r(39 downto 0);
                prev_crc_v(LL_WIDTH - 1 - 8 downto LL_WIDTH - 40) := crc_out_r; --503
            when "000101" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 48)       := data_r(47 downto 0);
                prev_crc_v(LL_WIDTH - 1 - (2 * 8) downto LL_WIDTH - 48) := crc_out_r; --495 
            when "000110" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 56)       := data_r(55 downto 0);
                prev_crc_v(LL_WIDTH - 1 - (3 * 8) downto LL_WIDTH - 56) := crc_out_r; --487
            when "000111" =>
                data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 64)       := data_r(63 downto 0);
                prev_crc_v(LL_WIDTH - 1 - (4 * 8) downto LL_WIDTH - 64) := crc_out_r; --479
            when others =>
                data_aligned_v := (others => '0');
                prev_crc_v     := (others => '0');
        end case;
        if LL_WIDTH > 64 and LL_WIDTH < 129 then
            --if LL_WIDTH < 129 then
            case width_r is
                when "000000" =>
                    --127 downto 120
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 8)       := data_r(7 downto 0);
                    prev_crc_v(LL_WIDTH - 1 + (3 * 8) downto LL_WIDTH - 8) := crc_out_r; --535
                when "000001" =>
                    --127 downto 112
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 16)       := data_r(15 downto 0);
                    prev_crc_v(LL_WIDTH - 1 + (2 * 8) downto LL_WIDTH - 16) := crc_out_r; --527
                when "000010" =>
                    --127 downto 104
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 24) := data_r(23 downto 0);
                    prev_crc_v(LL_WIDTH - 1 + 8 downto LL_WIDTH - 24) := crc_out_r; --519
                when "000011" =>
                    --127 downto 96
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 32) := data_r(31 downto 0);
                    prev_crc_v(LL_WIDTH - 1 downto LL_WIDTH - 32)     := crc_out_r; --511
                when "000100" =>
                    --127 downto 88
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 40) := data_r(39 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - 8 downto LL_WIDTH - 40) := crc_out_r; --503
                when "000101" =>
                    --127 downto 80
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 48)       := data_r(47 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (2 * 8) downto LL_WIDTH - 48) := crc_out_r; --495 
                when "000110" =>
                    --127 downto 72
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 56)       := data_r(55 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (3 * 8) downto LL_WIDTH - 56) := crc_out_r; --487
                when "000111" =>
                    --127 downto 64
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 64)       := data_r(63 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (4 * 8) downto LL_WIDTH - 64) := crc_out_r; --479
                when "001000" =>
                    --127 downto 56 
                    --prev 87 downto 56
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 72)       := data_r(71 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (5 * 8) downto LL_WIDTH - 72) := crc_out_r; --471
                when "001001" =>
                    --127 downto 48
                    --prev 79 downto 48
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 80)       := data_r(79 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (6 * 8) downto LL_WIDTH - 80) := crc_out_r; --463
                when "001010" =>
                    --127 downto 40
                    --prev 71 downto 40
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 88)       := data_r(87 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (7 * 8) downto LL_WIDTH - 88) := crc_out_r; --455
                when "001011" =>
                    --127 downto 32
                    --prev 63 downto 32
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 96)       := data_r(95 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (8 * 8) downto LL_WIDTH - 96) := crc_out_r; --447
                when "001100" =>
                    --127 downto 24
                    --prev 55 downto 24
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 104)       := data_r(103 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (9 * 8) downto LL_WIDTH - 104) := crc_out_r; --439
                when "001101" =>
                    --127 downto 16
                    --prev 47 downto 16
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 112)        := data_r(111 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (10 * 8) downto LL_WIDTH - 112) := crc_out_r; --431
                when "001110" =>
                    --127 downto 8
                    --prev 39 downto 8
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 120)        := data_r(119 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (11 * 8) downto LL_WIDTH - 120) := crc_out_r; --423
                when "001111" =>
                    --127 downto 0
                    --prev 31 downto 0
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 128)        := data_r(127 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (12 * 8) downto LL_WIDTH - 128) := crc_out_r; --415
                    -- --special case allowing packet header to be stripped but allowing the first 64 bits of data through
                    -- when "010000" =>
                    -- data_aligned_v(LL_WIDTH-64 downto LL_WIDTH-127) := data_r(63 downto 0);
                    -- prev_crc_v(31 downto 0) := crc_out_r; --415
                when others =>
                    data_aligned_v := (others => '0');
                    prev_crc_v     := (others => '0');
            end case;
        elsif LL_WIDTH > 128 and LL_WIDTH < 257 then
            --elsif LL_WIDTH < 257 then
            case width_r is
                when "001001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 80)       := data_r(79 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (6 * 8) downto LL_WIDTH - 80) := crc_out_r; --463
                when "010000" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 136)        := data_r(135 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (13 * 8) downto LL_WIDTH - 136) := crc_out_r; --407
                when "010001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 144)        := data_r(143 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (14 * 8) downto LL_WIDTH - 144) := crc_out_r; --399
                when "010010" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 152)        := data_r(151 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (15 * 8) downto LL_WIDTH - 152) := crc_out_r; --391
                when "010011" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 160)        := data_r(159 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (16 * 8) downto LL_WIDTH - 160) := crc_out_r; --383
                when "010100" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 168)        := data_r(167 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (17 * 8) downto LL_WIDTH - 168) := crc_out_r; --375
                when "010101" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 176)        := data_r(175 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (18 * 8) downto LL_WIDTH - 176) := crc_out_r; --367
                when "010110" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 184)        := data_r(183 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (19 * 8) downto LL_WIDTH - 184) := crc_out_r; --359
                when "010111" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 192)        := data_r(191 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (20 * 8) downto LL_WIDTH - 192) := crc_out_r; --351
                when "011000" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 200)        := data_r(199 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (21 * 8) downto LL_WIDTH - 200) := crc_out_r; --343
                when "011001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 208)        := data_r(207 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (22 * 8) downto LL_WIDTH - 208) := crc_out_r; --335
                when "011010" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 216)        := data_r(215 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (23 * 8) downto LL_WIDTH - 216) := crc_out_r; --327
                when "011011" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 224)        := data_r(223 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (24 * 8) downto LL_WIDTH - 224) := crc_out_r; --319
                when "011100" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 232)        := data_r(231 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (25 * 8) downto LL_WIDTH - 232) := crc_out_r; --311
                when "011101" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 240)        := data_r(239 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (26 * 8) downto LL_WIDTH - 240) := crc_out_r; --303
                when "011110" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 248)        := data_r(247 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (27 * 8) downto LL_WIDTH - 248) := crc_out_r; --295
                when "011111" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 256)        := data_r(255 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (28 * 8) downto LL_WIDTH - 256) := crc_out_r; --287
                when others =>
                    data_aligned_v := (others => '0');
                    prev_crc_v     := (others => '0');
            end case;
        elsif LL_WIDTH > 256 and LL_WIDTH < 513 then
            --elsif LL_WIDTH < 513 then
            case width_r is
                when "100000" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 264)        := data_r(263 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (29 * 8) downto LL_WIDTH - 264) := crc_out_r; --279
                when "100001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 272)        := data_r(271 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (30 * 8) downto LL_WIDTH - 272) := crc_out_r; --271
                when "100010" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 280)        := data_r(279 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (31 * 8) downto LL_WIDTH - 280) := crc_out_r; --263
                when "100011" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 288)        := data_r(287 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (32 * 8) downto LL_WIDTH - 288) := crc_out_r; --255
                when "100100" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 296)        := data_r(295 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (33 * 8) downto LL_WIDTH - 296) := crc_out_r; --247
                when "100101" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 304)        := data_r(303 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (34 * 8) downto LL_WIDTH - 304) := crc_out_r; --239
                when "100110" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 312)        := data_r(311 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (35 * 8) downto LL_WIDTH - 312) := crc_out_r; --231
                when "100111" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 320)        := data_r(319 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (36 * 8) downto LL_WIDTH - 320) := crc_out_r; --223
                when "101000" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 328)        := data_r(327 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (37 * 8) downto LL_WIDTH - 328) := crc_out_r; --215
                when "101001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 336)        := data_r(335 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (38 * 8) downto LL_WIDTH - 336) := crc_out_r; --207
                when "101010" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 344)        := data_r(343 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (39 * 8) downto LL_WIDTH - 344) := crc_out_r; --199
                when "101011" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 352)        := data_r(351 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (40 * 8) downto LL_WIDTH - 352) := crc_out_r; --191
                when "101100" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 360)        := data_r(359 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (41 * 8) downto LL_WIDTH - 360) := crc_out_r; --183
                when "101101" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 368)        := data_r(367 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (42 * 8) downto LL_WIDTH - 368) := crc_out_r; --175
                when "101110" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 376)        := data_r(375 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (43 * 8) downto LL_WIDTH - 376) := crc_out_r; --167
                when "101111" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 384)        := data_r(383 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (44 * 8) downto LL_WIDTH - 384) := crc_out_r; --159
                when "110000" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 392)        := data_r(391 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (45 * 8) downto LL_WIDTH - 392) := crc_out_r; --151
                when "110001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 400)        := data_r(399 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (46 * 8) downto LL_WIDTH - 400) := crc_out_r; --143
                when "110010" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 408)        := data_r(407 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (47 * 8) downto LL_WIDTH - 408) := crc_out_r; --135
                when "110011" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 416)        := data_r(415 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (48 * 8) downto LL_WIDTH - 416) := crc_out_r; --127
                when "110100" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 424)        := data_r(423 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (49 * 8) downto LL_WIDTH - 424) := crc_out_r; --119
                when "110101" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 432)        := data_r(431 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (50 * 8) downto LL_WIDTH - 432) := crc_out_r; --111
                when "110110" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 440)        := data_r(439 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (51 * 8) downto LL_WIDTH - 440) := crc_out_r; --103
                when "110111" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 448)        := data_r(447 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (52 * 8) downto LL_WIDTH - 448) := crc_out_r; --95
                when "111000" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 456)        := data_r(455 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (53 * 8) downto LL_WIDTH - 456) := crc_out_r; --87
                when "111001" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 464)        := data_r(463 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (54 * 8) downto LL_WIDTH - 464) := crc_out_r; --79
                when "111010" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 472)        := data_r(471 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (55 * 8) downto LL_WIDTH - 472) := crc_out_r; --71
                when "111011" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 480)        := data_r(479 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (56 * 8) downto LL_WIDTH - 480) := crc_out_r; --63
                when "111100" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 488)        := data_r(487 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (57 * 8) downto LL_WIDTH - 488) := crc_out_r; --55
                when "111101" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 496)        := data_r(495 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (58 * 8) downto LL_WIDTH - 496) := crc_out_r; --47
                when "111110" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 504)        := data_r(503 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (59 * 8) downto LL_WIDTH - 504) := crc_out_r; --39
                when "111111" =>
                    data_aligned_v(LL_WIDTH - 1 downto LL_WIDTH - 512)        := data_r(511 downto 0);
                    prev_crc_v(LL_WIDTH - 1 - (60 * 8) downto LL_WIDTH - 512) := crc_out_r; --31
                when others =>
                    data_aligned_v := (others => '0');
                    prev_crc_v     := (others => '0');
            end case;
        end if;
        --end case;       
        -- Assign variables to signals
        data_aligned_s <= data_aligned_v;
        prev_crc_s     <= prev_crc_v;
    end process data_alignment;

    -- XOR previous CRC into current data, lut_data_in signal fed to LUTs
    lut_data_in <= data_aligned_s xor prev_crc_s(LL_WIDTH - 1 downto 0);

    -- XOR any remaining bytes of previous CRC into LUT CRC output (i.e. when data width < 3)
    CRC_out <= lut_crc_out xor ("00000000" & prev_crc_s(LL_WIDTH - 1 + (3 * 8) downto LL_WIDTH));

    -- Output CRC
    crc <= (not crc_out_r);

end architecture behavioral;
