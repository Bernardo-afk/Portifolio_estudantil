library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.component_pkg.all;

entity main is
    port (
        SW   : in  STD_LOGIC_VECTOR(10 downto 0);
        HEX0 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX2 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX4 : out STD_LOGIC_VECTOR(6 downto 0);
        HEX6 : out STD_LOGIC_VECTOR(6 downto 0)
    );
end main;

architecture rtl of main is
    signal a, b, result : STD_LOGIC_VECTOR(3 downto 0);
begin
    a <= SW(10 downto 7);
    b <= SW(6 downto 3);

    ULA_INST: entity work.ula(rtl) port map (
        a=>a, b=>b, sel=>SW(2 downto 0), res=>result
    );

    HEX4_SEG: entity work.hex7seg(rtl) port map (hex=>a,     seg=>HEX4);
    HEX2_SEG: entity work.hex7seg(rtl) port map (hex=>b,     seg=>HEX2);
    HEX6_SEG: entity work.hex7seg(rtl) port map (hex=>result, seg=>HEX6);
    HEX0_SEG: entity work.hex7seg(rtl) port map (hex=>SW(2 downto 0) & '0', seg=>HEX0);
end rtl;
