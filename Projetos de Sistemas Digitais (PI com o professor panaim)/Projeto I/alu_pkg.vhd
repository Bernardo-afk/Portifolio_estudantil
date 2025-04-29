	library ieee;
	use iee.std_logic_1164.all;
	
	package alu_pkg is
		component ula_projeto     -- nome da ula
	
-- espaço que declara as portas que dizem ao compilador  quais sinais entram e quais saem da ULA de 4 bits, e a largura e o tipo dos sinais 
		
	port ( 
		
		-- portas que vao aparecer na placa 
			a,b : std_logic_vector(3 down 0) ;	-- Porta 'a' e 'b' em que cada um é um vetor de 4 posições ( bits ) a = nnnn b = nnnn 
			AluOP : std_logic_vector(2 down 0 ) ;  -- Porta pro aluiOP 
			result : out std_logic_vector(2 down 0) ; -- Porta pra saida 
		
			-- portas de operações 
			count : out std_logic; -- porta de carry out 
			zero : out std_logic;  -- porta de zero
			ovf : out std_logic;	-- porta para overflow
			equ : out std_logic; -- porta para equal ( igual ) 
			grt : out std_logic; -- porta para grather ( maior ) 
			lst : out std_logic; -- porta para lowest ( menor )
			
			);
			end compontent;
			end alu_pkg;