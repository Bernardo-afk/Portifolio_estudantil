library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.component_pkg.all;

entity ula is
    port (
        a     : in  STD_LOGIC_VECTOR(3 downto 0);
        b     : in  STD_LOGIC_VECTOR(3 downto 0);
        sel   : in  STD_LOGIC_VECTOR(2 downto 0);
        res   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end ula;

architecture rtl of ula is
    signal sum4, diff4, and4, or4, not4, mul4, cmp4 : STD_LOGIC_VECTOR(3 downto 0);
begin
    and4 <= a and b;
    or4  <= a or b;
    not4 <= not a;

    U_ADD4: adder4 port map (a=>a, b=>b, cin=>'0', s=>sum4, cout=>open);
    U_SUB4: adder4 port map (a=>a, b=>not b, cin=>'1', s=>diff4, cout=>open);
    U_MUL:  mult2x2 port map (a=>a(1 downto 0), b=>b(1 downto 0), p=>mul4);
    U_CMP:  comparator4 port map (a=>a, b=>b, res=>cmp4);

    with sel select
        res <= and4  when "000",
               sum4  when "001",
               or4   when "010",
               diff4 when "011",
               not4  when "100",
               mul4  when "101",
               cmp4  when "110",
               (others=>'0') when others;
end rtl;
