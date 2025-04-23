library ieee;
use ieee.std_logic_1164.all;
use work.full_adder_pkg.all;

entity multiplier_logic is
    port(
        m    : in  std_logic_vector(1 downto 0);
        n    : in  std_logic_vector(1 downto 0);
        prod : out std_logic_vector(3 downto 0)
    );
end multiplier_logic;

architecture rtl of multiplier_logic is
    -- Sinais para os produtos parciais gerados pelas portas AND
    signal pp0, pp1, pp2, pp3 : std_logic;
    -- Sinais para as somas e carries dos full adders
    signal sum1, carry1, sum2, carry2 : std_logic;
begin
    -- Produto parcial direto
    pp0 <= m(0) and n(0);  -- Bit menos significativo
    
    -- Demais produtos parciais
    pp1 <= m(0) and n(1);
    pp2 <= m(1) and n(0);
    pp3 <= m(1) and n(1);
    
    -- Instância do primeiro full adder para somar pp1 e pp2
    FA1: full_adder port map(
        a   => pp1,
        b   => pp2,
        cin => '0',      -- Conforme enunciado, cin fixado em '0'
        sum => sum1,
        cout=> carry1
    );
    
    -- Instância do segundo full adder para somar pp3 e o carry do primeiro
    FA2: full_adder port map(
        a   => pp3,
        b   => carry1,
        cin => '0',
        sum => sum2,
        cout=> carry2
    );
    
    -- Atribuição dos bits do produto
    prod(0) <= pp0;
    prod(1) <= sum1;
    prod(2) <= sum2;
    prod(3) <= carry2;
    
end rtl;
