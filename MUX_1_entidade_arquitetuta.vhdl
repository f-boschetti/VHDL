--Usamos o Scriptum (20.0) como editor

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
		--Opera�oes que s�o feitas
        lin1 <= in2 and sel;
        lin2 <= (not sel) and in1;
        
        s <= lin1 or lin2;
end arch;