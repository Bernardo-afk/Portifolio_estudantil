library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult2x2 is
    port (
        a : in  STD_LOGIC_VECTOR(1 downto 0);
        b : in  STD_LOGIC_VECTOR(1 downto 0);
        p : out STD_LOGIC_VECTOR(3 downto 0)
    );
end mult2x2;

architecture rtl of mult2x2 is
begin
    p <= std_logic_vector(unsigned(a) * unsigned(b));
end rtl;
