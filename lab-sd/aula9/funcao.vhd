library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- f(x)=r*x*not(x) sendo r=2

entity funcao is
   port
   (
      x: in std_logic_vector(3 downto 0);
      resultado: out std_logic_vector(7 downto 0)
   );
end entity funcao;

architecture Behavioral of funcao is

signal aux: std_logic_vector(7 downto 0);
signal aux1: unsigned(7 downto 0);

begin
	aux <= std_logic_vector((unsigned(x)) * unsigned(not x));
	aux1 <= shift_left(unsigned(aux),1); -- multiplica x*not(x) por 2 (r = 2)
	resultado <= std_logic_vector(aux1);

end architecture Behavioral;