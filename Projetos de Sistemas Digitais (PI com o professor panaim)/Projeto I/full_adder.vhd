
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.componentes.all;

entity full_adder is
    port(
        a    : in  std_logic;   -- entrada do bit a(n)
        b    : in  std_logic;   -- entrada do bit b(n)
        cin  : in  std_logic;   -- Carry in
        sum  : out std_logic;   -- Soma
        cout : out std_logic    -- Carry out
    );
end entity full_adder;

architecture arquitetura_do_fulladder of full_adder is
begin
    sum  <= a xor b xor cin;
    cout <= (a and b) or (b and cin) or (cin and a);


end architecture arquitetura_do_fulladder;



-- Código para um somador básico ( feito em aula )
-- Arquivo destinado ao somador completo de 1 bit 
-- está mencionado no componentes.vhd
