library ieee;
use ieee.std_logic_1164.all;

package alu_pkg is
    component ula_projeto   -- ULA de 4 bits
        port (
            -- ------ Entradas ------
            a      : in  std_logic_vector(3 downto 0);  -- operando A
            b      : in  std_logic_vector(3 downto 0);  -- operando B
            AluOp  : in  std_logic_vector(2 downto 0);  -- código da operação

            -- ------ Saídas ------
            result : out std_logic_vector(3 downto 0);  -- resultado
            cout   : out std_logic;  -- carry-out
            zero   : out std_logic;  -- resultado é zero?
            ovf    : out std_logic;  -- overflow
            equ    : out std_logic;  -- a = b
            grt    : out std_logic;  -- a > b
            lst    : out std_logic   -- a < b
        );
    end component;
end package alu_pkg;
