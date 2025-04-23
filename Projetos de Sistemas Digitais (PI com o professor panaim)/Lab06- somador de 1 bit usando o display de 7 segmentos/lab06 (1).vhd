library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity lab06 is


port(
	
	SW: in std_logic_vector(2 downto 0);
	HEX7: out std_logic_vector(0 to 6);
	HEX5: out std_logic_vector(0 to 6);
	HEX3: out std_logic_vector(0 to 6);
	HEX1: out std_logic_vector(0 to 6)
	);

	
end lab06;

architecture logica of lab06 is

signal soma: std_logic_vector (1 downto 0);

begin

	soma (0) <= SW(0) XOR SW(1) XOR SW(2);
	soma (1) <= (SW(0) AND SW(1)) OR (SW(0) AND SW(2)) OR (SW(1) AND SW(2));
	
with SW (0) select
	HEX7 <= "0000001" when '0',
			  "1001111" when '1',
			  "1111111" when others;

with SW(1) select
	HEX5 <= "0000001" when '0',
			  "1001111" when '1',
			  "1111111" when others;
			  
with SW(2) select
	HEX3 <= "0000001" when '0',
			  "1001111" when '1',
			  "1111111" when others;

with soma select
	HEX1 <= "0000001" when "00",
			  "1001111" when "01",
			  "0010010" when "10",
			  "0000110" when "11",
			  "1111111" when others;

end logica;