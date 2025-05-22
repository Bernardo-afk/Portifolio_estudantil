library ieee;
use work.componentes.all;
use ieee.std_logic_1164.all;


entity comparador is
port(
    x,y : in  std_logic_vector(3 downto 0);           -- bits de A e B
    Equ             : out std_logic;           -- igual
    Grt             : out std_logic;           -- maior que
    Lst             : out std_logic             -- menor que
    zero            : out std_logic            -- zero

);
end comparador; 

architecture arquitetura_Do_Comparador of comparador is
    signal i : std_logic_vector(3 downto 0); -- saidas dos xnor 
begin
    -- Lógica de implementação de um comparador de 4 bits
    i(3) <= x(3) xnor y(3);
    i(2) <= x(2) xnor y(2);
    i(1) <= x(1) xnor y(1);
    i(0) <= x(0) xnor y(0);
    Equ <= i(3) and i(2) and i(1) and i(0);
    Grt <= (x(3) and not y(3)) or (i(3) and x(2) and not y(2)) or (i(3) and i(2) and x(1) and not y(1)) or (i(3) and i(2) and i(1) and x(0) and not y(0));
    Lst <= Equ nor Grt;
  

-- testar se funciona
	with Equ & Grt & Lst select
  zero <= '1' when "0000",   -- só zero=1 se Equ=Grt=Lst='0'
          '0' when others;
	

end arquitetura_Do_Comparador;



