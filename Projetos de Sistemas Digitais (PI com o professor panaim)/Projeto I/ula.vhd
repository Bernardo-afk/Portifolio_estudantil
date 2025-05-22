library ieee;
use work.componentes.all;
use ieee.std_logic_1164.all;


-- o entity Ula é destinado á declaração das entradas e saídas
    entity ula is
        port(
            SW            : in  std_logic_vector(10 downto 0); -- entradas
            HEX6: OUT std_logic_vector(0 to 6);
            HEX4: OUT std_logic_vector(0 to 6);
            HEX2: OUT std_logic_vector(0 to 6);
            HEX0: OUT std_logic_vector(0 to 6);
            LEDR : OUT std_logic_vector(0 to 6)
        );
    end entity ula;

architecture estrutura_da_ula of ula is


		-- área destinada á declaração dos signals 

    signal a,b : std_logic_vector(3 downto 0); -- Signal destinado á receber os valores de entrada A e B
	signal resultado : std_logic_vector(3 downto 0); -- resultado da operação X que irá para o display HEX 6 


			--signals destinados á receber a saida das operações ( na órdem da ULA)

			signal nop,andab,orab,notb : std_logic_vector(3 downto 0); -- sinais para operações lógicas (nop, and, or, not)
			signal somador : std_logic_vector(3 downto 0) ;   -- saída do somador
			signal subtracao : std_logic_vector(3 downto 0); -- saída do subtrator
			signal prod : std_logic_vector(3 downto 0);	-- saída do multiplicador

    		

			-- SIGNALS que conversam com a placa ( led , switch)
	signal seletor : std_logic_vector(2 downto 0); 	-- sinal para os seletor SW0 SW1 SW2
	signal Aluop : std_logic_vector(2 downto 0);		-- sinal de controle da ULA
    signal Cout,zero,overflow,Equ,Grt,Lst : std_logic; -- sinais dos led's
	



    begin 


-- MAPEAMENTOS


    a(3 downto 0) <= SW(10 downto 7); -- mapeamento do switch 10,9,8,7 para A

    b(3 downto 0) <= SW(6 downto 3); -- mapemaneto do switch 6,5,4,3 para B


	-- testar se eu substituir no programa  o seletor por Aluop funciona e não dá bug

	seletor <= SW(2 downto 0);
		
    Aluop <= SW(2 downto 0);   -- A variável Aluop recebe 000 de Sw0-SW1-SW1
	




-- Instanciação do projeto

-- o que está na esquerda da instancia é a variavel que está no componente (ex : x)
        --e o da direita é a variavel/signal que está no arquivo principal ( ex : a)

    soma4bit : somador_de_4bits port map(
        Cin => '0',
        x => a,    
        y => b,
        s => somador,
        Cout => Cout
		zero => zero
    );

    subtracao4bit : subtracao_De_4bits port map(
        x => a,
        y => b,
        d => subtracao,
         overflow => overflow
		 zero => zero
    );

    mult2bit : multiplicador_de_2bits port map(
        a => a(1 downto 0),
        b => b(1 downto 0),
        produto => prod
    );

    comparador4bit : comparador port map(
        x => a,
        y => b,
        Equ => Equ,
        Grt => Grt,
        Lst => Lst
		zero => zero

    );

-- Operações lógicas Que devem estar no programa principal ( nop,and, or , not)	 
	nop <= "0000"; 
	andab <= a and b;
	orab <= a or b;
	notb <= not b;
	

	 
	with seletor select 
	HEX0 <=     "0000001" when "000",
				"1001111" when "001",
				"0010010" when "010",
				"0000110" when "011",
				"1001100" when "100",
				"0100100" when "101",
				"0100000" when "110",
				"0001111" when "111";
	 
	-- o with select utilizando o Aluop é utilizado para selecionar a operação que o usuário quer fazer ( ex : receber de SW2,SW1,SW0 -> 000 fará com que o signal "resultado" receba o valor 0000)
   with Aluop select 
				resultado	<= nop when "000",
            					Andab     when "001",		-- seletor para A and B
            					orab      when "010",		-- seletor para A or B
           						notb      when "011",       -- seletor para not B
          					   somador    when "100", 		-- seletor para A + B
          					   subtracao  when "101",		-- seletor para A - B
           						prod      when "110",			-- seletor para A * B
								"0000" when "111";		-- seletor para A comparado com B ( tal que a saída será sempre 0, e os leds q irão acusar o resultado da comparação dos 2 números)
								

   
	-- o with select utilizando o resultado é utilizado para mostrar o resultado da operação que o usuário escolheu ( ex : se o resultado for 0000, o display HEX6 mostrará 0)
	with resultado select
		HEX6 <=  "0000001" when "0000", -- 0
				"1001111" when "0001", -- 1
				"0010010" when "0010",	-- 2
				"0000110" when "0011",-- 3
				"1001100" when "0100", -- 4
				"0100100" when "0101",-- 5
				"0100000" when "0110", -- 6 
				"0001111" when "0111", -- 7
				"0000000" when "1000", -- 8 
				"0000100" when "1001", -- 9 
				"0001000" when "1010", -- 10 
				"1100000" when "1011", -- A 
				"0110001" when "1100", -- B
				"1000010" when "1101", -- C 
				"0110000" when "1110", -- D
				"0111000" when "1111", -- E
				"1111111" when others; -- "F" / 16 
					 		
	
-- o with select utilizando o b é utilizado para mostrar o valor de a
	with a select
	HEX4 <=  "0000001" when "0000",
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
					 	
-- o with select utilizando o b é utilizado para mostrar o valor de b	
	with b select
	HEX2 <=  "0000001" when "0000",
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
					 
					 

		
		
		-- Área destinada ao mapeamento dos led's

		-- Lógica para que o led 0 somente acenda na operação de soma ( Que pode ocorrer carry out)
		with SW(2 downto 0) select
		LED(0) <= Cout when "100",
				'0'  when others;

				LEDR(1) <= zero;

		-- Lógica para que o led 2 somente acenda quando a operação de subtração ocorrer overflow
				with SW(2 downto 0) select
				LED(2) <= overflow when "100",
						'0'  when others;
      
		
		
	
	-- Lógica para os led's do comparador somente aparecerem quando ele for selecionado na Ula	

		with SW(2 downto 0) select
		LEDR(3) <= Equ  when "111",
				   '0'  when others;
	  
	  with SW(2 downto 0) select
		LEDR(4) <= Grt  when "111",
				   '0'  when others;
	  
	  with SW(2 downto 0) select
		LEDR(5) <= Lst  when "111",
				   '0'  when others;
		
		
		
		
		
   end estrutura_da_ula;
    
    