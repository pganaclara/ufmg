-- pseudo_mux - A Finite State Machine that mimics the behavior of mux
-- Copyright (C) 2018  Digital Systems Group - UFMG
-- 
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <https://www.gnu.org/licenses/>.
--

library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
    port (
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
		  RESET	 : in 	std_logic; -- reset 
        Q       : out   std_logic  -- data output
    );
end pseudo_mux;

architecture arch of pseudo_mux is
	type st is (caso_a, caso_b, caso_c, caso_d);
	signal estado : st; -- sinal associado ao tipo st
begin
	my_process : process(CLOCK, RESET) -- roda em logica sequencial após o my_process
	
	begin
		if RESET = '1' then -- estado inicial
			estado <= caso_a;
		elsif(CLOCK'event and CLOCK = '1') then -- borda de subida
			case estado is
				when caso_a =>
				if S = '1' then estado <= caso_b; -- recebe o proximo estado se controle igual a 1
				else 				 estado <= caso_a; -- se o controle é igual a zero mantemos a entrada selecionada
				end if;
				when caso_b =>
				if S = '1' then estado <= caso_c;
				else 				 estado <= caso_b;
				end if;
				when caso_c =>
				if S = '1' then estado <= caso_d;
				else 				 estado <= caso_c;
				end if;
				when caso_d =>
				if S = '1' then estado <= caso_a;
				else 				 estado <= caso_d;
				end if;
			end case;
		end if;
	end process my_process;
	
	with estado select Q <= -- decodificador de estados
		A when caso_a,
		B when caso_b,
		C when caso_c,
		D when caso_d;
	
    
end arch;
