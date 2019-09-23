library IEEE;
use IEEE.std_logic_1164.all;

entity TB_mux_4 is
end TB_mux_4;

--Atribui um sinal a cada entrada pra poder
--mudar elas
architecture teste of TB_mux_4 is
	
    signal TB_in0:  std_logic;
    signal TB_in1:  std_logic;
    signal TB_in2:  std_logic;
    signal TB_in3:  std_logic;
    signal TB_sel0:  std_logic;
    signal TB_sel1:  std_logic;
begin

--Port map dizendo oque recebe oque
MUX_1_bit: entity work.mux_4
port map( in0 => TB_in0, in1 => TB_in1, in2 => TB_in2,
		 in3 => TB_in3, sel0 => TB_sel0, sel1 => TB_sel1
         );
         
	process
    begin
    	--a ideia é que se aparecer 1 na saida
        --significa que fincionou


        --Nivel do seletor
    	TB_sel0 <= '0';
        TB_sel1 <= '0';
        --Outras variaveis
        --espera um tempo qualquer
        TB_in0 <= '0';
        TB_in1 <= '0';
        TB_in2 <= '0';
        TB_in3 <= '1';
        wait for 3 ns;
        
        
        --Nivel do seletor
    	TB_sel0 <= '0';
        TB_sel1 <= '1';
        --Outras variaveis
        --espera um tempo qualquer
        TB_in0 <= '0';
        TB_in1 <= '1';
        TB_in2 <= '0';
        TB_in3 <= '0';
        wait for 3 ns;
        
        
        --Nivel do seletor
    	TB_sel0 <= '1';
        TB_sel1 <= '0';
        --Outras variaveis
        --espera um tempo qualquer
        TB_in0 <= '0';
        TB_in1 <= '0';
        TB_in2 <= '1';
        TB_in3 <= '0';
        wait for 3 ns;
        
        
        --Nivel do seletor
    	TB_sel0 <= '1';
        TB_sel1 <= '1';
        --Outras variaveis
        --espera um tempo qualquer
        TB_in0 <= '1';
        TB_in1 <= '0';
        TB_in2 <= '0';
        TB_in3 <= '0';
        --realmente nao entendi se no exemplo foi um erro
        --ou aqui é mesmo pra ter um wait sem tempo
        wait for 3 ns;
        
        --esse tete foi para aparecer a waveform
        --sem ele ficava faltando o ultimo teste dela 
        TB_sel0 <= '1';
        TB_sel1 <= '1';
        --Outras variaveis
        --espera um tempo qualquer
        TB_in0 <= '0';
        TB_in1 <= '0';
        TB_in2 <= '0';
        TB_in3 <= '1';
        wait;
	end process;

end teste;