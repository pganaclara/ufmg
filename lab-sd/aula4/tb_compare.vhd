library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_compare is
end tb_compare;

architecture behavior of tb_compare is

component compare is
port (a, b : in std_logic_vector(3 downto 0);
	maior, menor, igual : out std_logic);
end component;

signal a,b : std_logic_vector(3 downto 0);
signal maior, menor, igual :  std_logic;

begin

instancia_comparador: compare port map(a=>a,b=>b,maior=>maior, menor=>menor, igual=>igual);

a <= x"0", x"3" after 20 ns, x"2" after 40 ns, x"4" after 60 ns;
b <= x"0", x"4" after 10 ns, x"2" after 30 ns, x"1" after 50 ns;

end behavior;