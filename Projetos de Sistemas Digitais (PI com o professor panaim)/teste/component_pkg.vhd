library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package component_pkg is

    -- Somador completo (1 bit)
    component full_adder
        port (
            a    : in  STD_LOGIC;
            b    : in  STD_LOGIC;
            cin  : in  STD_LOGIC;
            s    : out STD_LOGIC;
            cout : out STD_LOGIC
        );
    end component;

    -- Somador de dois números de 4 bits
    component adder4
        port (
            a      : in  STD_LOGIC_VECTOR(3 downto 0);
            b      : in  STD_LOGIC_VECTOR(3 downto 0);
            cin    : in  STD_LOGIC;
            s      : out STD_LOGIC_VECTOR(3 downto 0);
            cout   : out STD_LOGIC
        );
    end component;

    -- Multiplicador de dois números de 2 bits
    component mult2x2
        port (
            a  : in  STD_LOGIC_VECTOR(1 downto 0);
            b  : in  STD_LOGIC_VECTOR(1 downto 0);
            p  : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Comparador de 4 bits (saída codificada)
    component comparator4
        port (
            a    : in  STD_LOGIC_VECTOR(3 downto 0);
            b    : in  STD_LOGIC_VECTOR(3 downto 0);
            res  : out STD_LOGIC_VECTOR(3 downto 0) -- 0001=EQ, 0010>, 0100<
        );
    end component;

end package;
