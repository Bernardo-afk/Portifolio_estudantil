library ieee;
use ieee.std_logic_1164.all;
-- Se necessário, incluir o package para referência
use work.full_adder_pkg.all;

entity lab08 is
    port(
        SW   : in  std_logic_vector(3 downto 0);  -- SW3-SW2: entrada m; SW1-SW0: entrada n
        HEX7 : out std_logic_vector(6 downto 0);    -- Exibe o produto
        HEX5 : out std_logic_vector(6 downto 0);    -- Exibe o número "a" (entrada m)
        HEX3 : out std_logic_vector(6 downto 0)     -- Exibe o número "b" (entrada n)
    );
end lab08;

architecture rtl of lab08 is
    signal prod   : std_logic_vector(3 downto 0);
    signal a_num, b_num : std_logic_vector(3 downto 0);
begin

    -- Instanciação do módulo multiplicador
    U1: entity work.multiplier_logic port map(
        m    => SW(3 downto 2),
        n    => SW(1 downto 0),
        prod => prod
    );
    
    -- Conversão das entradas de 2 bits para 4 bits para o decodificador dos displays:
    a_num <= "00" & SW(3 downto 2);
    b_num <= "00" & SW(1 downto 0);
    
    --------------------------------------------------------------------
    -- Decodificador para o display do produto (0 a 9)
    -- Os padrões abaixo estão definidos para displays de 7 segmentos (ajuste se necessário)
    with prod select
        HEX7 <= "1000000" when "0000", -- 0
                "1111001" when "0001", -- 1
                "0100100" when "0010", -- 2
                "0110000" when "0011", -- 3
                "0011001" when "0100", -- 4
                "0010010" when "0101", -- 5
                "0000010" when "0110", -- 6
                "1111000" when "0111", -- 7
                "0000000" when "1000", -- 8
                "0010000" when "1001", -- 9
                "1111111" when others; -- Caso inválido
    
    --------------------------------------------------------------------
    -- Decodificador para o display do primeiro número (a) – (0 a 3)
    with a_num select
        HEX5 <= "1000000" when "0000", -- 0
                "1111001" when "0001", -- 1
                "0100100" when "0010", -- 2
                "0110000" when "0011", -- 3
                "1111111" when others;
    
    --------------------------------------------------------------------
    -- Decodificador para o display do segundo número (b) – (0 a 3)
    with b_num select
        HEX3 <= "1000000" when "0000", -- 0
                "1111001" when "0001", -- 1
                "0100100" when "0010", -- 2
                "0110000" when "0011", -- 3
                "1111111" when others;
    
end rtl;
