library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi4_lib;

package axi4_conversion_pkg is
    function bolToStr(b: boolean; outTrue: string; outFalse: string) return string;
end package axi4_conversion_pkg;

package body axi4_conversion_pkg is

function bolToStr(b: boolean; outTrue: string; outFalse: string) return string is
    begin
       if b then
          return outTrue;
      else
        return outFalse;
       end if;
    end bolToStr;
    
end package body axi4_conversion_pkg;  