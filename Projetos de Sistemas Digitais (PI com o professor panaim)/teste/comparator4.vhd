library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comparator4 is
    port (
        a   : in  STD_LOGIC_VECTOR(3 downto 0);
        b   : in  STD_LOGIC_VECTOR(3 downto 0);
        res : out STD_LOGIC_VECTOR(3 downto 0)
    );
end comparator4;

architecture rtl of comparator4 is
begin
    process(a, b)
    begin
        if unsigned(a) = unsigned(b) then
            res <= "0001";
        elsif unsigned(a) > unsigned(b) then
            res <= "0010";
        else
            res <= "0100";
        end if;
    end process;
end rtl;
