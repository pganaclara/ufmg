library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity compare is
port( a, b : in std_logic_vector(3 downto 0);  
            maior, menor, igual : out std_logic  );
end compare;

architecture Behavioral of compare is

begin  
	maior <= '1' when a > b else '0';
	igual <= '1' when a = b else '0';
	menor <= '1' when a < b else '0';
end Behavioral;
