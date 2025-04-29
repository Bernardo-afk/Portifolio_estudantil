library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2bits is
    port ( a, b : in  std_logic_vector(1 downto 0);
           p    : out std_logic_vector(3 downto 0) );
end entity;

architecture logica of mult2bits is
begin
    p <= std_logic_vector(unsigned(a) * unsigned(b));
end logica;
