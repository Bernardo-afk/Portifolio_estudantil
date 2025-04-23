library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity Lab07 is
port(
	SW: IN std_logic_vector(8 downto 0);
	HEX7: OUT std_logic_vector(0 to 6);
	HEX5: OUT std_logic_vector(0 to 6);
	HEX3: OUT std_logic_vector(0 to 6);
	HEX1: OUT std_logic_vector(0 to 6);
	HEX0: OUT std_logic_vector(0 to 6)
	);

END Lab07;

architecture lgc of Lab07 is

signal soma: std_logic_vector (3 downto 0);
signal c: std_logic_vector (4 downto 1);
signal a: std_logic_vector (3 downto 0);
signal b: std_logic_vector (3 downto 0);


begin

	a(0) <= SW(5);
	b(0) <= SW(1);
	
	a(1) <= SW(6);
	b(1) <= SW(2);
	
	a(2) <= SW(7);
	b(2) <= SW(3);	
	
	a(3) <= SW(8);
	b(3) <= SW(4);	
	
	soma(0) <= SW(5) XOR SW(1) XOR SW(0);
	c(1) <= (SW(5) AND SW(1)) OR (SW(5) AND SW(0)) OR (SW(1) AND SW(0));
	
	soma(1) <= SW(6) XOR SW(2) XOR c(1);
	c(2) <= (SW(6) AND SW(2)) OR (SW(6) AND c(1)) OR (SW(2) AND c(1));

	soma(2) <= SW(7) XOR SW(3) XOR c(2);
	c(3) <= (SW(7) AND SW(3)) OR (SW(7) AND c(2)) OR (SW(3) AND c(2));
	
	soma(3) <= SW(8) XOR SW(4) XOR c(3);
	c(4) <= (SW(8) AND SW(4)) OR (SW(7) AND c(3)) OR (SW(4) AND c(3));
	

with c(4) select
	HEX7 <=  "0000001" when '0',
				"1001111" when '1',
				"1111111" when others;


with soma select
	HEX5 <=  "0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0000100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;


with a select
	HEX3 <=  "0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0000100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;
	
with b select
	HEX1 <=  "0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0000100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;

with SW(0) select
	HEX0 <=  "0000001" when '0',
				"1001111" when '1',
				"1111111" when others;

end lgc;