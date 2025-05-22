
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.componentes.all;

entity subtracao_De_4bits is
  port(
    x,y : in  std_logic_vector(3 downto 0);           -- bits de A
    d : out std_logic_vector(3 downto 0);           -- bits da diferença
    overflow           : out std_logic           -- overflow
    zero          : out std_logic                    -- zero
  );
end entity subtracao_De_4bits;

architecture arquitetura_do_subtrator of subtracao_De_4bits is
  signal c,b : std_logic_vector(3 downto 0);          -- sinais de carry interno e bits de b invertidos
begin
  -- Gera o complemento de 1 de cada bit de B (segundo numero) 
  b(0) <= not y(0);
  b(1) <= not y(1);
  b(2) <= not y(2);
  b(3) <= not y(3);

  
  
  -- Inicio da operações 
  
 -- Panaim , separei os stages conforme o modelo abaixo pois fica mais facil de visualizar o portmap.
		-- ou seja, não utilizei : stage0: fulladd PORT MAP ( x(0), b(0), '1', d(0), C(1) ) 
  
  
  -- Stage 0: A(0) + ( not B(0) ) + 1 
  
  stage0: full_adder
    port map(
      a    => x(0),
      b    => b(0),
      cin  => '1',
      sum  => d(0),
      cout => c(0)
    );

  -- Stage 1
  stage1: full_adder
    port map(
      a    => x(1),
      b    => b(1),
      cin  => c(0),
      sum  => d(1),
      cout => c(1)
    );

  -- Stage 2
  stage2: full_adder
    port map(
      a    => x(2),
      b    => b(2),
      cin  => c(1),
      sum  => d(2),
      cout => c(2)
    );

  -- Stage 3
  stage3: full_adder
    port map(
      a    => x(3),
      b    => b(3),
      cin  => c(2),
      sum  => d(3),
      cout => c(3)
    );

  -- Variável que indica se a subtração A-B resulta em um numero < 0 
  -- Tal que indicará OVERFLOW 
  

 overflow <= not c(3);
 

 -- -- Variável que indica se o resultado da subtração é igual a zero ( E atribuirá al led zero o resultado)
 with sum select
 zero <= '1' when "0000",
         '0' when others;

end architecture arquitetura_do_subtrator;



-- Lógica que eu utilizei : 
--    y0 ──┐
--           NOT ── b0 ─┐
--    x0 ──┘            │
--                       ┌──────────────────────────┐
--                       │ full_adder (stage 0)     │
--                       │  a    = x0               │
--                       │  b    = b0               │
--                       │  cin  = '1'              │
--                       │  sum  → d0               │
--                       │  cout → c1               │
--                       └──────────────────────────┘
--                   ┌───┴───┐
--                   │       │
--               d0 ─┘       └─ c1

--    y1 ──┐
--           NOT ── b1 ─┐
--    x1 ──┘            │
--                       ┌──────────────────────────┐
--                       │ full_adder (stage 1)     │
--                       │  a    = x1               │
--                       │  b    = b1               │
--                       │  cin  = c1               │
--                       │  sum  → d1               │
--                       │  cout → c2               │
--                       └──────────────────────────┘
--                   ┌───┴───┐
--                   │       │
--               d1 ─┘       └─ c2

--    y2 ──┐
--           NOT ── b2 ─┐
--    x2 ──┘            │
--                       ┌──────────────────────────┐
--                       │ full_adder (stage 2)     │
--                       │  a    = x2               │
--                       │  b    = b2               │
--                       │  cin  = c2               │
--                       │  sum  → d2               │
--                       │  cout → c3               │
--                       └──────────────────────────┘
--                   ┌───┴───┐
--                   │       │
--               d2 ─┘       └─ c3

--    y3 ──┐
--           NOT ── b3 ─┐
--    x3 ──┘            │
--                       ┌──────────────────────────┐
--                       │ full_adder (stage 3)     │
--                       │  a    = x3               │
--                       │  b    = b3               │
--                       │  cin  = c3               │
--                       │  sum  → d3               │
--                       │  cout → c4               │
--                       └──────────────────────────┘
--                   ┌───┴───┐
--                   │       │
--               d3 ─┘       └─ c4

-- Vai um (Para verificar se tem overflow):
-- Bout <= NOT c4
