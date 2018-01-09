--clr A, B (seada sına A B-nda biti v‰‰rtuseks '0'), nt. A = 1111, B = xx10, clr A, B = 1011.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity func3 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0);
			b : in  STD_LOGIC_VECTOR (3 downto 0);
			func3_out : out  STD_LOGIC_VECTOR (3 downto 0));
end func3;

architecture design of func3 is 
begin

--signaali a ning ıiges j‰rgus 0-ga signaali JA tehe vıi signaali v‰‰ruseks XXXX
process(a, b)
begin
	if b(0) = '0' AND b(1) = '0' then -- b = xx00  
	    func3_out <= a AND "1110";
	elsif b(0) = '1' AND b(1) = '0' then -- b = xx01
	    func3_out <= a AND "1101";
	elsif b(0) = '0' AND b(1) = '1' then -- b = xx10
	    func3_out <= a AND "1011"; 
	elsif b(0) = '1' AND b(1) = '1' then -- b = xx11
	    func3_out <= a AND "0111";
	else -- b = xxxx
		func3_out <= "XXXX";
	end if;
end process;

end design;