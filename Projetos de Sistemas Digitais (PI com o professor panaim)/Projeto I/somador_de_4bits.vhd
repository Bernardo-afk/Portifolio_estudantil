
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.componentes.all;   
		


entity somador_de_4bits is
  port(
    Cin           : in  std_logic;                      -- carry in inicial
    x,y : in  std_logic_vector(3 downto 0);
    s : out  std_logic_vector(3 downto 0);            -- bits de A, B e soma
    Cout          : out std_logic                       -- carry out final
    zero          : out std_logic                    -- zero

  );
end entity somador_de_4bits;

architecture estrutura_do_somador_de_4bits of somador_de_4bits is
  signal c : std_logic_vector(3 downto 0);              -- sinal de carry interno
begin


-- stagios para somar os bits de A e B

  -- Bit 0
  stage0: full_adder
    port map(
      a    => x(0),
      b    => y(0),
      cin  => Cin,
      sum  => s(0),
      cout => c(1)
    );

  -- Bit 1
  stage1: full_adder
    port map(
      a    => x(1),
      b    => y(1),
      cin  => c(1),
      sum  => s(1),
      cout => c(2)
    );

  -- Bit 2
  stage2: full_adder
    port map(
      a    => x(2),
      b    => y(2),
      cin  => c(2),
      sum  => s(2),
      cout => c(3)
    );

  -- Bit 3
  stage3: full_adder
    port map(
      a    => x(3),
      b    => y(3),
      cin  => c(3),
      sum  => s(3),
      cout => Cout
    );


    -- demonstra se o resultado da soma é 0 e acende o led conforme for 
    with sum select
  zero <= '1' when "0000",
          '0' when others;

end architecture estrutura_do_somador_de_4bits;

