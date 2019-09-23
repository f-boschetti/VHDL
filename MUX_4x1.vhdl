library IEEE;
use IEEE.std_logic_1164.all;

--Declara todas as entradas e saidas do circuto
entity mux_4 is
	port(in0, in1, in2, in3, sel0, sel1: in std_logic;
        s: out std_logic
		);
        
end mux_4;



architecture arch of mux_4 is
--Declara as linhas entre as and e a or
	signal lin1Mux1, lin2Mux1 : std_logic;
	signal lin1Mux2, lin2Mux2 : std_logic;
    signal lin1Mux3, lin2Mux3 : std_logic;
	signal s1, s2 :std_logic;       
        begin
		
        
        lin1Mux1 <= in0 and sel0;
        lin2Mux1 <= (not sel0) and in1;
        s1 <= lin1Mux1 or lin2Mux1;
        
        
        lin1Mux2 <= in2 and sel0;
        lin2Mux2 <= (not sel0) and in3;
        s2 <= lin1Mux2 or lin2Mux2;
        
        lin1Mux3 <= s1 and sel1;
        lin2Mux3 <= (not sel1) and s2;
        s <= s1 or s2;
end arch;