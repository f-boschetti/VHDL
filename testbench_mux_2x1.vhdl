library IEEE;
use IEEE.std_logic_1164.all;

entity TB_mux_1 is
end TB_mux_1;

--Atribui um sinal a cada "variavel" pra poder
--mudar elas
architecture teste of TB_mux_1 is
signal lin1, lin2 : std_logic;
	
    signal TB_in1:  std_logic;
    signal TB_sel:  std_logic;
    signal TB_in2:  std_logic;
	signal TB_lin1: std_logic;
    signal TB_lin2: std_logic;
begin

--Port map dizendo oque recebe oque
MUX_1_bit: entity work.mux_1
port map( in1 => TB_in1, in2 => TB_in2, sel => TB_sel
         );
         
	process
    begin
    	--Nivel do seletor
    	TB_sel <= '0';
        
        --Outras variaveis
        --espera um tempo qualquer
        TB_in1 <= '1';
        TB_in2 <= '1';
        wait for 10 ns;
        
        TB_in1 <= '1';
        TB_in2 <= '0';
        wait for 10 ns;
        
        TB_in1 <= '0';
        TB_in2 <= '1';
        wait for 10 ns;
        
        TB_in1 <= '0';
        TB_in2 <= '0';
        wait for 10 ns;
        
        --Nivel do seletor
    	TB_sel <= '1';
        
        --Outras variaveis
        --espera um tempo qualquer
        TB_in1 <= '1';
        TB_in2 <= '1';
        wait for 10 ns;
        
        TB_in1 <= '1';
        TB_in2 <= '0';
        wait for 10 ns;
        
        TB_in1 <= '0';
        TB_in2 <= '1';
        wait for 10 ns;
        
        TB_in1 <= '0';
        TB_in2 <= '0';
        --realmente nao entendi se no exemplo foi um erro
        --ou aqui é mesmo pra ter um wait sem tempo
        wait;
        
        
	end process;

end teste;