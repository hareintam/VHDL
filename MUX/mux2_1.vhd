--2-to-1 multiplexer
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2_1 is 
port (a, b : in STD_LOGIC_VECTOR (5 downto 0);
	  cont : in STD_LOGIC;
	  o : out STD_LOGIC_VECTOR (5 downto 0));
end mux2_1;

architecture behavioral of mux2_1 is

begin

process (a,b,cont) is
begin
if (cont ='0') then
o <= a;
else
o <= b;
end if;
end process;
 
end behavioral;