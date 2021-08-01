library ieee;
use ieee.std_logic_1164.all;

entity tb_pseudo_mux is
end tb_pseudo_mux;

architecture test of tb_pseudo_mux is

component pseudo_mux is
    port (
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
		  RESET   : in		std_logic; -- reset
        Q       : out   std_logic -- data output
    );
end component;


signal CLOCK, RESET, caso_a, caso_b, caso_c,caso_d, S, Q: std_logic;

begin

instancia_pseudo_mux: pseudo_mux port map(CLOCK=>CLOCK, RESET=>RESET, A=>caso_a, B=>caso_b, C=>caso_c, D=>caso_d, S=>S, Q=>Q);

CLOCK<='0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns, '1' after 75 ns, '0' after 80 ns, '1' after 85 ns, '0' after 90 ns, '1' after 95 ns, '0' after 100 ns, '1' after 105 ns, '0' after 110 ns;
RESET<='1', '0' after 10 ns;
caso_a<='1', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns;
caso_b<='0', '1' after 25 ns, '0' after 45 ns, '1' after 75 ns, '0' after 90 ns;
caso_c<='1', '0' after 35 ns, '1' after 60 ns, '0' after 95 ns;
caso_d<='0', '1' after 65 ns, '0' after  85 ns;
S<='0', '1' after 33 ns, '0' after 38 ns, '1' after 53 ns, '0' after 58 ns, '1' after 72 ns, '0' after 77 ns, '1' after 93 ns, '0' after 98 ns;

end test;