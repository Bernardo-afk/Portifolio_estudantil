library ieee;
use ieee.std_logic_1164.all;
use work.components_pkg.all;   -- somador, mult2bits, comparador, ...
use work.display7.all;         -- função segmentos7

--==============================================================
--  Top-Level  : principal
--  Liga switches, LEDs e displays da DE2-115 à ULA aluPredefinido
--==============================================================


entity principal is
    port (
        ---- Entradas da placa
        SW   : in  std_logic_vector(10 downto 0);      -- SW10..SW0

        ---- Saídas da placa
        LEDR : out std_logic_vector(17 downto 0);      -- LEDs vermelhos
        HEX0, HEX1, HEX2, HEX3,
        HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
    );
end entity; 

architecture logica of principal is
    -- Sinais internos
    signal a, b   : std_logic_vector(3 downto 0);
    signal AluOp  : std_logic_vector(2 downto 0);
    signal result : std_logic_vector(3 downto 0);
    signal cout, zero, ovf, equ, grt, lst : std_logic;
begin
    ----------------------------------------------------------------
    -- 1. Mapear switches para operandos e código da operação
    ----------------------------------------------------------------
    a     <= SW(10 downto 7);   -- operando A (4 bits)
    b     <= SW(6  downto 3);   -- operando B (4 bits)
    AluOp <= SW(2  downto 0);   -- código da operação (3 bits)

    ----------------------------------------------------------------
    -- 2. Instanciar a ULA de 4 bits
    ----------------------------------------------------------------
    ULA0 : entity work.aluPredefinido
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

    ----------------------------------------------------------------
    -- 3. Mostrar operandos, operação e resultado nos displays
    ----------------------------------------------------------------
    HEX0 <= segmentos7('0' & AluOp);  -- AluOp (3 bits)
    HEX2 <= segmentos7(b);            -- operando B
    HEX4 <= segmentos7(a);            -- operando A
    HEX6 <= segmentos7(result);       -- resultado

    -- Demais displays apagados
    HEX1 <= (others => '1');
    HEX3 <= (others => '1');
    HEX5 <= (others => '1');
    HEX7 <= (others => '1');

    ----------------------------------------------------------------
    -- 4. Sinalizar flags nos LEDs
    ----------------------------------------------------------------
    LEDR(0) <= cout;
    LEDR(1) <= zero;
    LEDR(2) <= ovf;
    LEDR(3) <= equ;
    LEDR(4) <= grt;
    LEDR(5) <= lst;
    LEDR(17 downto 6) <= (others => '0');  -- LEDs não usados apagados
end logica;
