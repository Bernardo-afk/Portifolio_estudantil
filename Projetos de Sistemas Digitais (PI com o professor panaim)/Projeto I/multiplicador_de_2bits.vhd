
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.componentes.all;  

entity multiplicador_de_2bits is
    port(
        a       : in  std_logic_vector(1 downto 0);
        b       : in  std_logic_vector(1 downto 0);
        produto : out std_logic_vector(3 downto 0)
    );
end entity multiplicador_de_2bits;

architecture arquitetura_Do_Multiplicador of multiplicador_de_2bits is
    -- Parciais temporários
    signal pp0, pp1, pp2, pp3 : std_logic;
    -- carrys temporários
    signal cin1, cin2   : std_logic;
begin


    -- Operações para obter as parciais
    pp0 <= a(0) and b(0);
    pp1 <= a(1) and b(0);
    pp2 <= a(0) and b(1);
    pp3 <= a(1) and b(1);

    -- Bit 0 do produto
	 
    produto(0) <= pp0;

	 
    -- Estágio 1: soma de pp1 + pp2 = produto(1) + cout
    stage1: full_adder
        port map(
            a    => pp1,
            b    => pp2,
            cin  => '0',
            sum  => produto(1),
            cout => cin1
        );
		  

    -- Estágio 2: soma de pp3 + carry1 = produto(2) + cout
    stage2: full_adder
        port map(
            a    => pp3,
            b    => cin1,
            cin  => '0',
            sum  => produto(2),
            cout => cin2
        );

    -- Bit 3 do produto = carry2
    produto(3) <= cin2;
end architecture arquitetura_Do_Multiplicador;




-- arquivo destinado ao multiplicador
-- está mencionado no componentes.vhd
-- Utiliza a lógica de do multiplicador mostrada nos slides da aula , com full adders e temporários


-- lógica que utilizei : 
--    a0 ─┐
--         AND ─── pp0 ───► produto(0)
--    b0 ─┘

--    a1 ─┐
--         AND ─── pp1 ──┐
--    b0 ─┘              │
--                           full_adder stage1 (cin = '0')
--    a0 ─┐                            ┌──► produto(1)
--         AND ─── pp2 ─┘              │
--    b1 ─┘                            └──► carry1

--    a1 ─┐
--         AND ─── pp3 ──┐
--    b1 ─┘              ├─► full_adder stage2 (cin = '0') ──┐
--                        └─► carry1 ────────────────────────┘   ├──► produto(2)
--                                                            │
--                                                            └──► carry2 ───► produto(3)

	