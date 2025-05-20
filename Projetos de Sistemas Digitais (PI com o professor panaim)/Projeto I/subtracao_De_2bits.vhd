
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.componentes.all;

entity subtracao_De_2bits is
  port(
    x3, x2, x1, x0 : in  std_logic;           -- bits de A
    y3, y2, y1, y0 : in  std_logic;           -- bits de B
    d3, d2, d1, d0 : out std_logic;           -- bits da diferença
    Pout           : out std_logic            -- "pega um"
  );
end entity subtracao_De_2bits;

architecture arquitetura_do_subtrator of subtracao_De_2bits is
  signal c1, c2, c3, c4 : std_logic;          -- sinais de carry interno
  signal b0, b1, b2, b3 : std_logic;          -- bits de B invertidos
begin
  -- Gera o complemento de 1 de cada bit de B (segundo numero) 
  b0 <= not y0;
  b1 <= not y1;
  b2 <= not y2;
  b3 <= not y3;

  
  
  -- Inicio da operações 
  
 -- Panaim , separei os stages conforme o modelo abaixo pois fica mais facil de visualizar o portmap.
		-- ou seja, não utilizei : stage0: fulladd PORT MAP ( x(0), b(0), '1', d(0), C(1) ) 
  
  
  -- Stage 0: A(0) + ( not B(0) ) + 1
  
  stage0: full_adder
    port map(
      a    => x0,
      b    => b0,
      cin  => '1',
      sum  => d0,
      cout => c1
    );

  -- Stage 1
  stage1: full_adder
    port map(
      a    => x1,
      b    => b1,
      cin  => c1,
      sum  => d1,
      cout => c2
    );

  -- Stage 2
  stage2: full_adder
    port map(
      a    => x2,
      b    => b2,
      cin  => c2,
      sum  => d2,
      cout => c3
    );

  -- Stage 3
  stage3: full_adder
    port map(
      a    => x3,
      b    => b3,
      cin  => c3,
      sum  => d3,
      cout => c4
    );

  -- Variável que indica se a subtração A-B resulta em um numero < 0 
  -- Tal que indicará OVERFLOW -- !!! LIGAR LED DE OVERFLOW
  
  Pout <= not c4;

end architecture arquitetura_do_subtrator;



-- arquivo destinado ao subtrator de 4 bits 
-- já mencionado em componentes.vhd


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
