--A cmp B (võrdlustehe), nt kui A > B väljund 0010, A < B väljund 0001, A = B väljund 0000

LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--4-bit inputs and output
entity func1 is 
    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0);
			b : in  STD_LOGIC_VECTOR (3 downto 0);
			func1_out : out  STD_LOGIC_VECTOR (3 downto 0)); 
end func1;

architecture design of func1 is
begin

--process is triggered by input change
process(a, b)
begin
    
    if a > b then
    func1_out <= "0010";
    elsif a < b then
    func1_out <= "0001";
    elsif a = b then 
    func1_out <= "0000";
    else
    func1_out <= "XXXX";
    end if;   

end process;
end design;