--Usamos o Scriptum (20.0) como editor
--e no eda online deu done
--porém não apareceu o grafico

library IEEE;
use IEEE.std_logic_1164.all;

--Declara todas as entradas e saidas do circuto
entity mux_1 is
	port(
    	in1, in2, sel: in std_logic;
        s: out std_logic
    );
end mux_1;

architecture arch of mux_1 is


--Declara as linhas entre as and e a or
signal lin1, lin2 : std_logic;
	begin
		--Operaçoes que são feitas
        lin1 <= in2 or sel;
        lin2 <= (not sel) or in1;
        
        s <= lin1 and lin2;
end arch;