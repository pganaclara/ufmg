library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_alu is
end tb_alu;

architecture teste of tb_alu is

component alu is
port (	CONTROL : in std_logic_vector(3 downto 0);
			SRC1, SRC2 : in std_logic_vector(31 downto 0);
			RESULT : out std_logic_vector(31 downto 0);
			ZERO : out std_logic
		);
end component;

signal CONTROL: std_logic_vector(3 downto 0);
signal SRC1, SRC2 : std_logic_vector(31 downto 0);
signal RESULT : std_logic_vector(31 downto 0);
signal ZERO : std_logic;

begin
instancia_alu: alu port map(CONTROL=>CONTROL, SRC1=>SRC1, SRC2=>SRC2, RESULT=>RESULT, ZERO=>ZERO);
CONTROL <= x"0", x"0" after 20 ns, x"1" after 40 ns, x"2" after 60 ns, x"6" after 80 ns, x"7" after 100 ns, x"c" after 120 ns, x"c" after 140 ns;

SRC1 <= x"00000000", x"00000004" after 20 ns, x"00000008" after 40 ns, x"0000000C" after 60 ns, x"0000000C" after 80 ns, x"00000002" after 100 ns, x"00000008" after 120 ns, x"00000000" after 140 ns;

SRC2 <= x"00000000", x"00000005" after 20 ns, x"00000009" after 40 ns, x"0000000E" after 60 ns, x"0000000E" after 80 ns, x"00000007" after 100 ns, x"00000009" after 120 ns, x"00000000" after 140 ns;

end teste;