library ieee;
use ieee.std_logic_1164.all;

entity mux is
    generic(
        WIDTH:  naural
    );
    port(   
        in0, in1:   in  std_logic_vector(WIDTH-1 downto 0);
        sel:        in  std_logic;
        y:          out std_logic_vector(WIDTH-1 downto 0)
    );
end mux;

architecture beh of mux is
begin
    y <= in0 when sel='0' else in1;
end beh;
