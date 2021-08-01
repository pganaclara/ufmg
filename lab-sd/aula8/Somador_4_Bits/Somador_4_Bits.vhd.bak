LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end fulladder;
architecture RTL OF fulladder is
begin
--    s <= x XOR y XOR Cin;
--    Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);

process (Cin, x,y)
	begin
		if Cin = '0' then
			if x = '0' then
				s <= y;
				Cout <= '0';
			else
				s <= not y;
				Cout <= y;
			end if;
		elsif x = '0' then
			s <= not y;
			Cout <= y;
		else
			s <= y;
			Cout <= '1';
		end if;
	end process;
end RTL ;