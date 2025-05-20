library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.component_pkg.all;

entity adder4 is
    port (
        a      : in  STD_LOGIC_VECTOR(3 downto 0);
        b      : in  STD_LOGIC_VECTOR(3 downto 0);
        cin    : in  STD_LOGIC;
        s      : out STD_LOGIC_VECTOR(3 downto 0);
        cout   : out STD_LOGIC
    );
end adder4;

architecture rtl of adder4 is
    signal c : STD_LOGIC_VECTOR(4 downto 0);
begin
    c(0) <= cin;

    FA0: full_adder port map (a=>a(0), b=>b(0), cin=>c(0), s=>s(0), cout=>c(1));
    FA1: full_adder port map (a=>a(1), b=>b(1), cin=>c(1), s=>s(1), cout=>c(2));
    FA2: full_adder port map (a=>a(2), b=>b(2), cin=>c(2), s=>s(2), cout=>c(3));
    FA3: full_adder port map (a=>a(3), b=>b(3), cin=>c(3), s=>s(3), cout=>c(4));

    cout <= c(4);
end rtl;
