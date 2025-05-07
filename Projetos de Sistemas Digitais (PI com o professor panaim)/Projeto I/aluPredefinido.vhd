library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.components_pkg.all;


-- Define as entradas e saidas

entity aluPredefinido is
    port ( a, b   : in  std_logic_vector(3 downto 0);
           AluOp  : in  std_logic_vector(2 downto 0);
           result : out std_logic_vector(3 downto 0);
           cout, zero, ovf,
           equ, grt, lst : out std_logic );
end;





architecture logica of aluPredefinido is

    signal sum4, sub4 : std_logic_vector(3 downto 0);
    signal sum_cout, sum_ovf, sub_cout, sub_ovf : std_logic;
    signal prod2 : std_logic_vector(3 downto 0);
	 
begin
    -- Soma ( A partir do Componente Somador, dentro do pkg Components_pkg) ele pega
	 -- 			o port map de entradas e saidas ( tal que a soma inicia com carry in 0 ) 
	 
    ADD_U : somador   port map ( a,     b,      '0', sum4, sum_cout, sum_ovf );
	 
	 --Sub( A partir do Componente Somador ( dei esse nome para ficar mais facil), dentro do pkg Components_pkg) ele pega
	 -- 			o port map de entradas e saidas ( tal que a subtração inicia com carry in 1 )
	 
    SUB_U : somador   port map ( a,  b,      '1', sub4, sub_cout, sub_ovf );
    
	 
	 
	 -- Mult   ( A partir do Componente Mullt2bits, dentro do pkg Components_pkg ) 
				-- ele pega o port map das entradas e saidas , assim a , b , p 
	 
    MUL_U : mult2bits port map ( a(1 downto 0), b(1 downto 0), prod2 ); -- prod2 já declarado como vetor de 0 até 3
    
	 
	 -- Comparador
				-- pega o compoennte comparador no pkg de componentes
				-- entrada sendo a,b
				-- saida equ grt lst 
	 
	 
    CMP_U : comparador port map ( a, b, equ, grt, lst );

	 
	 
	 
    -- Seleção do resultado
    with AluOp select
        result <=
            (others=>'0') when "000",
            (a and b)     when "001",
            (a or  b)     when "010",
            (not b)       when "011",
            sum4          when "100",
            sub4          when "101",
            prod2         when "110",
            (others=>'0') when others;

    -- Flags
    cout <= sum_cout when AluOp="100" else
            sub_cout when AluOp="101" else '0';

    ovf  <= sum_ovf  when AluOp="100" else
            sub_ovf  when AluOp="101" else '0';

    zero <= '1' when result = "0000" else '0';
end logica;
