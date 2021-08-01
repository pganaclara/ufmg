library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mean_4_clocks is
end tb_mean_4_clocks;

architecture test of tb_mean_4_clocks is

component mean_4_clocks is
generic (
	W : integer := 4
);
port (
	CLK : in std_logic;
	RESET : in std_logic;
	INPUT : in std_logic_vector(W - 1 downto 0);
	OUTPUT : out std_logic_vector(W - 1 downto 0)
);
end component;

	signal W: integer := 4;
	signal input,ou: std_logic_vector(W-1 downto 0);
	signal clk, reset: std_logic;
	
begin
instancia_mean_4_clocks: mean_4_clocks port
map(CLK=>clk,RESET=>reset,INPUT=>input,OUTPUT=>ou);

	clk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns,
'1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after
65 ns, '0' after 70 ns;
	reset <= '1', '0' after 3 ns;
	input <= x"1", x"2" after 12 ns, x"3" after 27 ns, x"4" after 42 ns, x"5" after 57 ns;

end test;