library ieee;
use ieee.std_logic_1164.all;

package components_pkg is
    -- Somador completo 1 bit
    component full_adder
        port ( x, y, cin : in  std_logic;
               s, cout   : out std_logic );
    end component;

    -- Somador ripple-carry 4 bits
    component somador
        port ( a, b      : in  std_logic_vector(3 downto 0);
               cin       : in  std_logic;
               s         : out std_logic_vector(3 downto 0);
               cout, ovf : out std_logic );
    end component;

    -- Multiplicador 2 × 2 bits
    component mult2bits
        port ( a, b : in  std_logic_vector(1 downto 0);
               p    : out std_logic_vector(3 downto 0) );
    end component;

    -- Comparador 4 bits
    component comparador
        port ( a, b        : in  std_logic_vector(3 downto 0);
               equ, grt,
               lst         : out std_logic );
    end component;
end package;
