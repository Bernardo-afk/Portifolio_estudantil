library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador is
    port ( a, b        : in  std_logic_vector(3 downto 0);
           equ, grt,
           lst         : out std_logic );
end entity;

architecture logica of comparador is
begin
    equ <= '1' when a =  b else '0';
    grt <= '1' when unsigned(a) > unsigned(b) else '0';
    lst <= '1' when unsigned(a) < unsigned(b) else '0';
end logica;
