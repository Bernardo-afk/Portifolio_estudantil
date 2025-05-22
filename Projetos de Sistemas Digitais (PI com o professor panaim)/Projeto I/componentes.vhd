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

    -- Declaração do componente somador_de_4bits (somador de 4 bits em cascata)
    component somador_de_4bits
        port(
            Cin           : in  std_logic;                      -- carry in inicial
            x,y : in  std_logic_vector(3 downto 0);
            s : out  std_logic_vector(3 downto 0);            -- bits de A, B e soma
            Cout          : out std_logic                       -- carry out final
            zero          : out std_logic                    -- zero
        );
    end component;

    -- Declaração do componente subtracao_de_4bits (subtrator de 4 bits em complemento de dois)
    component subtracao_De_4bits
        port(
            x,y : in  std_logic_vector(3 downto 0);           -- bits de A
            d : out std_logic_vector(3 downto 0);           -- bits da diferença
            overflow           : out std_logic           -- overflow
            zero          : out std_logic                    -- zero
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


        -- Declaração do componente comparador (comparador de 4 bits)
	component comparador
        port(
            x,y : in  std_logic_vector(3 downto 0);           -- bits de A e B
            Equ             : out std_logic;           -- igual
            Grt             : out std_logic;           -- maior que
            Lst             : out std_logic             -- menor que
 
        );
    end component;
        
	 

	 
	 
	 
end package componentes;

