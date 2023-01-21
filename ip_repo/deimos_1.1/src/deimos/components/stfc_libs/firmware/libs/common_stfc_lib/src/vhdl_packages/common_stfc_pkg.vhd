-- <h---------------------------------------------------------------------------
--! @file   common_stfc_pkg.vhd
--!
--! ### Brief ###
--! VHDL Package File for lib_stfc Common STFC library
--!
--! ### License ###
--! Copyright(c) 2021 UNITED KINGDOM RESEARCH AND INNOVATION
--! Licensed under the BSD 3-Clause license. See LICENSE file in the project
--! root for details.
-- ---------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package common_stfc_pkg is
    ----------------------------------------------------------------------------
    --! Constants:
    ----------------------------------------------------------------------------
    -- Constant Types for counters:
    constant c_counter_spanning_mode          : std_logic_vector(1 downto 0) := "01";
    constant c_counter_pattern_mode           : std_logic_vector(1 downto 0) := "10";
    --
    constant c_stat_counter_byte_w            : positive                     := 8;
    constant c_stat_counter_subword_nof_bytes : positive                     := 4;
    constant c_max_word_count_bytes           : integer                      := 128;
    constant c_max_subword_bytes              : integer                      := 4;
    --------------------------------------------------------------------------------
    --! Function Declarations:
    --------------------------------------------------------------------------------
    function log_2_ceil(
        count : integer
    ) return integer;

    function vec2int(
        input_vector : std_logic_vector
    ) return integer;

    function int2uvec(
        input_vector : integer;
        size         : integer
    ) return std_logic_vector;

    function byte_reverse(
        input_vector : std_logic_vector
    ) return std_logic_vector;

    function common_min(
        l : integer;
        r : integer
    ) return integer;

    function common_max(
        l : integer;
        r : integer
    ) return integer;

    function common_log2(
        val : integer
    ) return integer;

    function dec2bytemask(
        dec       : std_logic_vector;
        nof_bytes : integer
    ) return std_logic_vector;

    function bytemask2dec(
        bytemask  : std_logic_vector;
        nof_bytes : integer
    ) return std_logic_vector;

    function sel_if_true(
        constant EVALUATE : in boolean;
        constant IF_TRUE  : in integer;
        constant IF_FALSE : in integer
    ) return integer;

    function byte_wrap(
        input_word       : std_logic_vector;
        nof_output_bytes : positive
    ) return std_logic_vector;

    function set_alternating_bits(
        lsb              : std_logic;
        nof_output_bytes : positive
    ) return std_logic_vector;

    --! \TODO move to axi4
    function set_tkeep_from_last_int(
        constant size     : integer;
        signal   last_int : integer) return std_logic_vector;

    --! \TODO move to axi4
    function get_last_int_from_tkeep(
        constant size  : integer;
        signal   tkeep : std_logic_vector) return integer;

    function priority_encoder_int_out(
        constant size      : integer;
        signal   input_vec : std_logic_vector
    ) return integer;

    function set_subword_width(
        constant subword_nof_bytes : positive
    ) return positive;

    function set_counter_width(
        constant counter_width_nof_bytes : positive
    ) return positive;

    function set_nof_counters(
        constant word_nof_bytes    : positive;
        constant subword_nof_bytes : positive
    ) return natural;

end package common_stfc_pkg;

package body common_stfc_pkg is

    function log_2_ceil(count : integer) return integer is -- COUNT should be >0
        variable tmp, count_tmp : INTEGER;
    begin
        tmp       := 0;
        count_tmp := count;

        while count_tmp > 1 loop
            tmp       := tmp + 1;
            count_tmp := count_tmp / 2;
        end loop;

        if count > 2 ** tmp then
            tmp := tmp + 1;
        end if;

        return tmp;
    end;

    function vec2int(
        input_vector : std_logic_vector
    ) return integer is
        variable int_tmp : integer range 0 to 2 ** input_vector'length;
    begin
        int_tmp := to_integer(unsigned(input_vector));
        return int_tmp;
    end function;

    function int2uvec(
        input_vector : integer;
        size         : integer
    ) return std_logic_vector is
        variable vec_tmp : std_logic_vector(size - 1 downto 0);
    begin
        vec_tmp := std_logic_vector(to_unsigned(input_vector, size));
        return vec_tmp;
    end function;

    --! @brief        Reverses each of the Bytes from LSB to MSB of a std_logic_vector
    --! @param[in]    input_vector        std_loigc_vector to perform the byte reverse on
    --! @return                           Returns a std_logic_vector where each byte from LSB to MSB has been reversed
    function byte_reverse(
        input_vector : std_logic_vector
    ) return std_logic_vector is

        variable output_vector : std_logic_vector(input_vector'high downto 0);
        variable a             : integer;
        variable b             : integer;
        variable c             : integer;
        variable d             : integer;
        constant NUM_BYTES     : integer := input_vector'length / 8;

    begin
        for i in 0 to (NUM_BYTES - 1) loop
            d                         := 8 * NUM_BYTES - i * 8 - 1;
            c                         := 8 * NUM_BYTES - i * 8 - 8;
            b                         := i * 8 + 7;
            a                         := i * 8;
            output_vector(d downto c) := input_vector(b downto a);
        end loop;
        return output_vector;
    end function byte_reverse;
    --------------------------------------------------------------------------------
    --! @brief        Takes two integers and returns the greater integer
    --! @param[in]    l        left-side integer
    --! @param[in]    r        right-side integer
    --! @return                Returns the greater integer of either l or r
    function common_max(
        l : integer;
        r : integer
    ) return integer is

    begin
        if (l > r) then
            return l;
        else
            return r;
        end if;
    end function common_max;
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    --! @brief        Takes two integers and returns the lesser integer
    --! @param[in]    l        left-side integer
    --! @param[in]    r        right-side integer
    --! @return                Returns the lesser integer of either l or r
    function common_min(
        l : integer;
        r : integer
    ) return integer is

    begin
        if (l < r) then
            return l;
        else
            return r;
        end if;
    end function common_min;
    --------------------------------------------------------------------------------
    --! @brief        Calculates the Binary Logarithm \f$log_2(val)\f$
    --! @param[in]    val      typically the integer std_vector_logic'length (max 32 bit wide)
    --! @return                Log base 2 of val
    -- function common_log2(
    -- val                             : integer
    -- ) return natural is

    -- variable res : natural;
    -- begin
    -- for i in 0 to 31 loop
    -- if(val <= (2**i)) then
    -- RES := i;
    -- exit;
    -- end if;
    -- end loop;
    -- return res;
    -- end function common_log2;

    function common_log2(
        val : integer
    ) return integer is

        variable temp, res : integer;
    begin
        temp := val;
        res  := 0;
        while (temp /= 0) loop
            temp := temp / 2;
            res  := res + 1;
        end loop;
        return res;
    end function common_log2;
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    function dec2bytemask(
        dec       : std_logic_vector;
        nof_bytes : integer
    ) return std_logic_vector is

        variable index           : integer                                  := to_integer(unsigned(dec));
        variable mask_0          : std_logic_vector(nof_bytes - 1 downto 0) := (others => '0');
        variable mask_1          : std_logic_vector(nof_bytes - 1 downto 0) := (others => '1');
        variable calculated_mask : std_logic_vector(nof_bytes - 1 downto 0) := (others => '0');
    begin
        if index > nof_bytes - 1 then
            report "dec2bytemask Error: dec > nof_bytes" severity error;
            calculated_mask := mask_1;
        elsif index = 0 then
            calculated_mask := mask_0;
        else
            calc_loop : for i in 1 to nof_bytes - 1 loop
                if index = i then
                    calculated_mask := mask_0(nof_bytes - 1 downto i) & mask_1(i - 1 downto 0);
                end if;
            end loop calc_loop;
        end if;

        return calculated_mask;

    end function dec2bytemask;
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    function bytemask2dec(
        bytemask  : std_logic_vector;
        nof_bytes : integer
    ) return std_logic_vector is

    begin

        return std_logic_vector(to_unsigned(common_log2(to_integer(unsigned(bytemask))), nof_bytes));

    end function bytemask2dec;

    --------------------------------------------------------------------------------

    function sel_if_true(
        constant EVALUATE : in boolean;
        constant IF_TRUE  : in integer;
        constant IF_FALSE : in integer
    ) return integer is
    begin
        if EVALUATE then
            return IF_TRUE;
        else
            return IF_FALSE;
        end if;
    end function;

    --------------------------------------------------------------------------------
    --! @brief     byte_wrap takes an input word and copies the bytes from LSB to MSB
    --!            onto the output word. If the output word is wider than the input
    --!            word the function wraps back around to the least significant byte(s)
    --!            of the input word and continues to copy the bytes to the next 
    --!            significant byte of the output word, until all bytes on the outputl
    --!            word have been given a corresponding byte from the input word.
    --!            If the input word is wider than the output word the least significant bytes
    --!            of the input word are copied to the output word.
    --!            input_word'length and nof_output_bytes MUST be a 2^N number
    --! @param[in] input_word       std_logic_vector
    --! @param[in] nof_output_bytes natural
    --! @return                     std_logic_vector
    function byte_wrap(
        input_word       : std_logic_vector;
        nof_output_bytes : positive
    ) return std_logic_vector is

        variable output_word     : std_logic_vector(nof_output_bytes * 8 - 1 downto 0);
        variable nof_input_bytes : positive := input_word'length / 8;

        variable input_vector_index  : positive := (((nof_input_bytes - 1) * 8) + 8);
        variable output_vector_index : positive := (((nof_output_bytes - 1) * 8) + 8);

    begin
        if (nof_input_bytes = nof_output_bytes) then
            -- Widths are the same - just copy;
            output_word := input_word;
        elsif (nof_input_bytes > nof_output_bytes) then
            -- Copy the Least Significant Bytes from input_word to output_word:
            output_word(output_vector_index - 1 downto 0) := input_word(output_vector_index - 1 downto 0);
        else
            for n in 0 to ((nof_output_bytes / nof_input_bytes) - 1) loop
                output_word(((n * nof_input_bytes * 8) + (nof_input_bytes * 8) - 1) downto (n * nof_input_bytes * 8)) := input_word;
            end loop;
        end if;

        return output_word;

    end function byte_wrap;

    --! @brief     set_alternating_bits takes a std_logic value for the Least Significant Bit
    --!            sets the output word to the corresponding bit pattern of nof_output_bytes
    --!            wide
    --! @param[in] lsb              std_logic
    --! @param[in] nof_output_bytes natural
    --! @return                     std_logic_vector
    function set_alternating_bits(
        lsb              : std_logic;
        nof_output_bytes : positive
    ) return std_logic_vector is

        variable output_word : std_logic_vector(nof_output_bytes * 8 - 1 downto 0);

    begin
        for byte_index in 0 to nof_output_bytes - 1 loop
            if (lsb = '1') then
                output_word(((byte_index * 8) + 8) - 1 downto (byte_index * 8)) := X"55";
            else
                output_word(((byte_index * 8) + 8) - 1 downto (byte_index * 8)) := X"AA";
            end if;
        end loop;

        return output_word;

    end function set_alternating_bits;

    function set_tkeep_from_last_int(
        constant size     : integer;
        signal   last_int : integer
    ) return std_logic_vector is
        variable tkeep_out : std_logic_vector(size - 1 downto 0);
    begin
        for i in 0 to size - 1 loop
            if last_int >= size then
                tkeep_out(i) := '1';
            else
                tkeep_out(i) := '0';
            end if;
        end loop;
        return tkeep_out;
    end function;

    function get_last_int_from_tkeep(
        constant size  : integer;
        signal   tkeep : std_logic_vector
    ) return integer is
        variable last_int : integer range 0 to size - 1;
    begin
        last_int := 0;
        for i in 1 to size - 1 loop
            if tkeep(i) = '1' then
                last_int := last_int + 1;
            end if;
        end loop;
        return last_int;
    end function;

    function priority_encoder_int_out(
        constant size      : integer;
        signal   input_vec : std_logic_vector
    ) return integer is
        variable int_out : integer range 0 to size;
    begin
        int_out := 0;
        for i in 0 to size - 1 loop
            if input_vec(i) = '1' then
                int_out := i + 1;
            end if;
        end loop;
        return int_out;
    end function;

    function set_subword_width(
        constant subword_nof_bytes : positive
    ) return positive is

        variable subword_bytes : positive;

    begin
        -- report "Setting Subword Width... Using: " & positive'image(subword_nof_bytes);
        case subword_nof_bytes is
            when 1 =>
                subword_bytes := 1;
            when 2 =>
                subword_bytes := 2;
            when 3 =>
                subword_bytes := 2;
                assert false report "Invalid Subword Value: " & integer'image(subword_nof_bytes) & " Settings to: 2" severity warning;
            when 4 =>
                subword_bytes := 4;
            when others =>
                assert false report "Invalid Subword Value: " & integer'image(subword_nof_bytes) & " Settings to: 4" severity warning;
                subword_bytes := 4;
        end case;

        return subword_bytes;

    end function set_subword_width;

    function set_counter_width(
        constant counter_width_nof_bytes : positive
    ) return positive is

        variable error_flag : boolean := false;

    begin
        -- report "Setting Counter Width... Using: " & positive'image(counter_width_nof_bytes);
        if counter_width_nof_bytes > c_max_word_count_bytes then
            assert false report "Counter Bytes Exceeded: " & positive'image(counter_width_nof_bytes) & " Must Not Exceed: " & positive'image(c_max_word_count_bytes) severity failure;
            error_flag := true;
        else
            if (c_max_word_count_bytes mod counter_width_nof_bytes) /= 0 then
                -- Verified for values 1-1024 in python.
                assert false report "Counter Bytes Not a 2^N Value: " & integer'image(counter_width_nof_bytes) severity failure;
                error_flag := true;
            end if;
        end if;

        if error_flag then
            return 4;
        else
            return counter_width_nof_bytes;
        end if;
    end function set_counter_width;

    function set_nof_counters(
        constant word_nof_bytes    : positive;
        constant subword_nof_bytes : positive
    ) return natural is

        variable nof_counters : natural;

    begin
        -- At This point these should be 2^N Numbers...
        if subword_nof_bytes > word_nof_bytes then
            assert false report "Sub-Word Nof Bytes: " & positive'image(subword_nof_bytes) & " > Word Nof Bytes: " & positive'image(word_nof_bytes) severity warning;
            nof_counters := word_nof_bytes;
        else
            -- Pattern
            nof_counters := word_nof_bytes / subword_nof_bytes;
        end if;

        return nof_counters;

    end function set_nof_counters;

end package body common_stfc_pkg;
