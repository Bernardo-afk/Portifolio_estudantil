
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.componentes.all;   
		


entity somador_de_4bits is
  port(
    Cin           : in  std_logic;           -- carry in inicial
    x3, x2, x1, x0 : in  std_logic;           -- bits de A
    y3, y2, y1, y0 : in  std_logic;           -- bits de B
    s3, s2, s1, s0 : out std_logic;           -- bits da soma
    Cout          : out std_logic            -- carry out final
  );
end entity somador_de_4bits;

architecture estrutura_do_somador_de_4bits of somador_de_4bits is
  signal c1, c2, c3 : std_logic;              -- sinais de carry interno
begin


-- stagios para somar os bits de A e B

  -- Bit 0
  stage0: full_adder
    port map(
      a    => x0,
      b    => y0,
      cin  => Cin,
      sum  => s0,
      cout => c1
    );

  -- Bit 1
  stage1: full_adder
    port map(
      a    => x1,
      b    => y1,
      cin  => c1,
      sum  => s1,
      cout => c2
    );

  -- Bit 2
  stage2: full_adder
    port map(
      a    => x2,
      b    => y2,
      cin  => c2,
      sum  => s2,
      cout => c3
    );

  -- Bit 3
  stage3: full_adder
    port map(
      a    => x3,
      b    => y3,
      cin  => c3,
      sum  => s3,
      cout => Cout
    );

end architecture estrutura_do_somador_de_4bits;



-- Para a lógica do somador de 4 bits, utilizer o full adder mencionado no componentes.vhd
-- arquivo destinado a soma de 2 numeros de 4 bits 
-- também mencionado em componentes.vhd
