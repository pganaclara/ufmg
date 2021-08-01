LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_FlipFlopD IS
END tb_FlipFlopD;

ARCHITECTURE teste OF tb_FlipFlopD IS 

    COMPONENT FlipFlopD is
    PORT(
         D : IN  std_logic;
         clock : IN  std_logic;
         Q : OUT  std_logic
        ); 
    END COMPONENT;
    
   signal din : std_logic := '0';
   signal clock : std_logic := '0';
   signal dout : std_logic;

   constant clock_period : time := 5 ns;

BEGIN

 uut: FlipFlopD PORT MAP (
          D => din,
          clock => clock,
          Q => dout
        );

  clock_process :process
  begin
  clock <= '0';
  wait for clock_period/2;
  clock <= '1';
  wait for clock_period/2;
  end process;

  stim_proc: process
  begin  

  wait for clock_period/2;
  wait for 1 ns; 

  din <= '0';
  wait for 5 ns;
  
  din <= '1';  
  wait for 5 ns;
  
  din <= '0';
  wait for 4 ns;
  
  din <= '1';
  wait for 7 ns;
  
  din <= '0';
  wait for 5 ns;
  
  din <= '1';
  wait for 7 ns;
  
  din <= '0';
  wait;
  
  end process;

END teste;