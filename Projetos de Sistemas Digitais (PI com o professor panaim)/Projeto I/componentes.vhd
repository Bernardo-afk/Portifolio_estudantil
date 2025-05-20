library ieee;
use ieee.std_logic_1164.all;

package componentes is

    -- Declaração do componente full_adder (somador completo de 1 bit)
    component full_adder
        port(
            a    : in  std_logic;
            b    : in  std_logic;
            cin  : in  std_logic;
            sum  : out std_logic;
            cout : out std_logic
        );
    end component;

    -- Declaração do componente adder4 (somador de 4 bits em cascata)
    component adder4
        port(
            Cin           : in  std_logic;           -- carry in inicial
            x3, x2, x1, x0 : in  std_logic;           -- bits de A
            y3, y2, y1, y0 : in  std_logic;           -- bits de B
            s3, s2, s1, s0 : out std_logic;           -- bits da soma
            Cout          : out std_logic            -- carry out final
        );
    end component;

    -- Declaração do componente subtractor4 (subtrator de 4 bits em complement de dois)
    component subtractor4
        port(
            x3, x2, x1, x0 : in  std_logic;           -- bits de A
            y3, y2, y1, y0 : in  std_logic;           -- bits de B
            d3, d2, d1, d0 : out std_logic;           -- bits da diferença
            Bout           : out std_logic            -- "pega um"
        );
    end component;

	     -- Declaração do componente multiplicador_de_2bits (multiplicador de 2 bits)
    component multiplicador_de_2bits
        port(
            a       : in  std_logic_vector(1 downto 0);
            b       : in  std_logic_vector(1 downto 0);
            produto : out std_logic_vector(3 downto 0)
        );
    end component;

	 
	 

	 
	 
	 
	 
	 
end package componentes;

