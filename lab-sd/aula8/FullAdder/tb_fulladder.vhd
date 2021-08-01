library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_fulladder is
end tb_fulladder;

architecture teste of tb_fulladder is

component fulladder is
port (	x,y, Cin 	: in std_logic;
		s, Cout 		: out std_logic);
end component;

signal A, B, Cin: std_logic := '0';
signal S, Cout: std_logic;

begin
instancia_fulladder: fulladder port map(x=>A,y=>B,Cin=>Cin,s=>S,Cout=>Cout);
A <= '1', '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '1' after 95 ns;
B <= '0', '1' after 10 ns, '1' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '1' after 95 ns;
Cin <= '1', '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '1' after 95 ns;
end teste;