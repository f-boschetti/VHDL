--Usamos o editor Scriptum (20.0)
--daqui parece tudo bonito

library IEEE;
use IEEE.std_logic_1164.all;

--Declara todas as entradas e saidas do circuto
entity mux_1 is
	port(
    	in1, in1, sel: in std_logic;
        s: out std_logic
    );
end mux_1;

architecture arch of mux_1 is
--PRIMEIRA AND
	component and1
		port(x, y : in std_logic;
			 z : out std_logic
        );
        end component;
        
--SEGUNDA AND
--não sei se daria pra usar a and1 e negar no portmap
--provavelmente daria, fica ai a ideia
    component and2
		port((not x), y : in std_logic;
			 z : out std_logic
        );
        end component;
        
--Declara a OR
    component or1
    	port(x, y: in std_logic;
        	 z : out std_logic
		);
	end component;


--Declara as linhas entre as and e a or
signal lin1, lin2 : std_logic;

	begin
    
--Port map mostrando onde tudo conecta com tudo
	func_a : and1 port map(in1, sel, lin1);
    func_b : and2 port map(sel, in1, lin2);
    func_c : or1  port map(lin1, lin2, s);
    
end arch;