library ieee;
use ieee.std_logic_1164.all;
use work.components_pkg.all;

entity somador is
    port ( a, b      : in  std_logic_vector(3 downto 0);
           cin       : in  std_logic;
           s         : out std_logic_vector(3 downto 0);
           cout, ovf : out std_logic );
end entity;

architecture logica of somador is
    signal c : std_logic_vector(0 to 4);
begin
    c(0) <= cin;

    gen_add : for i in 0 to 3 generate
        FA : full_adder
            port map ( a(i), b(i), c(i), s(i), c(i+1) );
    end generate;

    cout <= c(4);
    ovf  <= c(4) xor c(3);
end logica;
