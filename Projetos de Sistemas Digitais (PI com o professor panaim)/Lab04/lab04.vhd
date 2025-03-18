library ieee;
use ieee.std_logic_1164.all;

entity lab04 is
    port (
        SW   : in  std_logic_vector(2 downto 0);  -- SW(0) = A, SW(1) = B, SW(2) = Carry-In
        LEDR : out std_logic_vector(1 downto 0)   -- LEDR(0) = SUM, LEDR(1) = Carry-Out
    );
end entity lab04;

architecture bhv of lab04 is
begin
    -- Sinal da soma
    LEDR(0) <= SW(0) xor SW(1) xor SW(2);

    -- Sinal do Carry-Out
    LEDR(1) <= (SW(0) and SW(1)) or
               (SW(0) and SW(2)) or
               (SW(1) and SW(2));
end architecture bhv;
