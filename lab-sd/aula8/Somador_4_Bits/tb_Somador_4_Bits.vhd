library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Somador_4_Bits is
end tb_Somador_4_Bits;

architecture teste of tb_Somador_4_Bits is

component Somador_4_Bits is
port (	Cin: in  std_logic;
			x, y: in  std_logic_vector;
			s: out std_logic_vector;
			Cout: out std_logic);
end component;

signal A, B, S: std_logic_vector(3 downto 0);
signal Entrada, Cout: std_logic;

begin
instancia_Somador_4_Bits: Somador_4_Bits port map(Cin=>Entrada,x=>A,y=>B,s=>S,Cout=>Cout );
A <= x"0", x"5" after 10 ns, x"2" after 20 ns, x"1" after 30 ns, x"3" after 40 ns;
B <= x"0", x"2" after 10 ns ,x"3" after 20 ns, x"2" after 30 ns, x"1" after 40 ns;
Entrada <= '0';

end teste;