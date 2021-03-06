--harjutustunni kodut�� loogikafunktsioon (MDNK), v�ljundis funktsiooni v��rtus k�ige madalamas j�rgus

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity func4 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0);
			func4_out : out  STD_LOGIC_VECTOR (3 downto 0));
end func4;

architecture dataflow of func4 is
signal temp : std_logic;
begin
temp <= (NOT a(0) AND a(1) AND NOT a(2) AND a(3)) OR
             (a(0) AND NOT a(3)) OR
             (a(0) AND NOT a(1)) OR
             (a(2) AND NOT a(3));
func4_out <= "XXX" & temp;
end dataflow;