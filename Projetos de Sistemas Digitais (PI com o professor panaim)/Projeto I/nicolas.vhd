library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    port(
        a         : in  std_logic_vector(3 downto 0);
        b         : in  std_logic_vector(3 downto 0);
        alu_op    : in  std_logic_vector(2 downto 0);
        result    : out std_logic_vector(3 downto 0);
        carry_out : out std_logic;
        zero      : out std_logic;
        overflow  : out std_logic;
        equ       : out std_logic;
        grt       : out std_logic;
        lst       : out std_logic
    );
end alu;

architecture rtl of alu is
    -- Sinais internos de cada operação
    signal add_sub_result : std_logic_vector(3 downto 0);
    signal add_sub_cout   : std_logic;
    signal add_sub_ovfl   : std_logic;
    signal mult_result    : std_logic_vector(3 downto 0);
    signal and_result     : std_logic_vector(3 downto 0);
    signal or_result      : std_logic_vector(3 downto 0);
    signal not_result     : std_logic_vector(3 downto 0);
    signal nop_result     : std_logic_vector(3 downto 0);
    
    -- Sinal para determinar o modo da operação de soma/subtração:
    -- '0' para ADD e '1' para SUB.
    signal adder_mode : std_logic;
    
    -- Sinal interno para armazenar o resultado final, permitindo
    -- ser lido dentro do process.
    signal result_int : std_logic_vector(3 downto 0);
    
begin
    -- Operações lógicas simples
    and_result <= a and b;
    or_result  <= a or b;
    not_result <= not b;
    nop_result <= "0000";

    -- Determina o modo add/sub com base no ALUOp: "101" indica SUB
    adder_mode <= '1' when alu_op = "101" else '0';
    
    -- Instanciação do somador/subtrator de 4 bits  
    ADD_SUB: entity work.adder_4bit port map(
        a        => a,
        b        => b,
        mode     => adder_mode,
        sum      => add_sub_result,
        cout     => add_sub_cout,
        overflow => add_sub_ovfl
    );

    -- Instanciação do multiplicador de 2 bits  
    -- Utilizando os 2 bits menos significativos de "a" e "b"
    MULT: entity work.multiplier_2bit port map(
        a       => a(1 downto 0),
        b       => b(1 downto 0),
        product => mult_result
    );
    
    -- Instanciação do comparador de 4 bits  
    COMP: entity work.comparator_4bit port map(
        a   => a,
        b   => b,
        equ => equ,
        grt => grt,
        lst => lst
    );

    -- Seleção da operação a ser executada (mux)
    process(a, b, alu_op, add_sub_result, mult_result, and_result, or_result, not_result, nop_result)
    begin
        case alu_op is
            when "000" =>  -- NOP
                result_int <= nop_result;
                carry_out  <= '0';
                overflow   <= '0';
            when "001" =>  -- AND
                result_int <= and_result;
                carry_out  <= '0';
                overflow   <= '0';
            when "010" =>  -- OR
                result_int <= or_result;
                carry_out  <= '0';
                overflow   <= '0';
            when "011" =>  -- NOT
                result_int <= not_result;
                carry_out  <= '0';
                overflow   <= '0';
            when "100" =>  -- ADD
                result_int <= add_sub_result;
                carry_out  <= add_sub_cout;
                overflow   <= add_sub_ovfl;
            when "101" =>  -- SUB
                result_int <= add_sub_result;
                carry_out  <= add_sub_cout;
                overflow   <= add_sub_ovfl;
            when "110" =>  -- MUL (Multiplicação de 2 bits)
                result_int <= mult_result;
                carry_out  <= '0';
                overflow   <= '0';
            when "111" =>  -- COMP (Comparação: os sinais EQU, GRT e LST já estão gerados)
                result_int <= "0000";
                carry_out  <= '0';
                overflow   <= '0';
            when others =>
                result_int <= "0000";
                carry_out  <= '0';
                overflow   <= '0';
        end case;
    end process;
    
    -- Atribuição do sinal interno para a saída
    result <= result_int;
    
    -- Sinal zero: '0' se o resultado for "0000", '1' caso contrário.
    zero <= '0' when result_int = "0000" else '1';

end rtl;
