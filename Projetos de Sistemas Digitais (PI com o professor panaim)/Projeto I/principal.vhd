library ieee;
use ieee.std_logic_1164.all;
use work.components_pkg.all;
use work.display7.all;

entity principal is
    port (
        SW   : in  std_logic_vector(10 downto 0);
        LEDR : out std_logic_vector(17 downto 0);
        HEX0, HEX1, HEX2, HEX3,
        HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
    );
end;

architecture logica of principal is
    signal a, b   : std_logic_vector(3 downto 0);
    signal AluOp  : std_logic_vector(2 downto 0);
    signal result : std_logic_vector(3 downto 0);
    signal cout, zero, ovf, equ, grt, lst : std_logic;
begin
    a     <= SW(10 downto 7);
    b     <= SW(6  downto 3);
    AluOp <= SW(2  downto 0);

    ULA0 : aluPredefinido
        port map (
            a      => a,
            b      => b,
            AluOp  => AluOp,
            result => result,
            cout   => cout,
            zero   => zero,
            ovf    => ovf,
            equ    => equ,
            grt    => grt,
            lst    => lst
        );

    HEX0 <= segmentos7('0' & AluOp);
    HEX2 <= segmentos7(b);
    HEX4 <= segmentos7(a);
    HEX6 <= segmentos7(result);
    HEX1 <= (others=>'1'); HEX3 <= (others=>'1');
    HEX5 <= (others=>'1'); HEX7 <= (others=>'1');

    LEDR(0) <= cout;
    LEDR(1) <= zero;
    LEDR(2) <= ovf;
    LEDR(3) <= equ;
    LEDR(4) <= grt;
    LEDR(5) <= lst;
    LEDR(17 downto 6) <= (others=>'0');
end logica;
