
library ieee;
use ieee.std_logic_1164.all;

entity lab03_tb is
end entity lab03_tb;

architecture tb of lab03_tb is
    signal sw: std_logic_vector(1 downto 0);
    signal ledr: std_logic_vector(0 downto 0);
begin
    uut: entity work.lab03 port map(SW => sw, LEDR => ledr);
end architecture tb;