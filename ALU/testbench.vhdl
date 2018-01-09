--testpink ALU-le erinevate sisendite andmiseks ja väljundi testimiseks

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;

ARCHITECTURE testbench OF ALU_TB IS 
 
	component ALU is
	    Port ( 	a : in  STD_LOGIC_VECTOR (3 downto 0);
				b : in  STD_LOGIC_VECTOR (3 downto 0);
				op : in STD_LOGIC_VECTOR (1 downto 0);
				o : out  STD_LOGIC_VECTOR (3 downto 0));				
	end component;
    
   signal a_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal b_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal cntr_tb : std_logic_vector(1 downto 0) := (others => '0');
   signal o_tb : std_logic_vector(3 downto 0);

begin
alu_comp: ALU port map ( a => a_tb,
                         b => b_tb,
                         op => cntr_tb,
                         o => o_tb); 
process
begin

	report "Test A=1111 B=0000";
	a_tb <= "1111";
	b_tb <= "0000";
	
	cntr_tb <= "00"; --A cmp B
	wait for 10ns;
	cntr_tb <= "01"; --rol A
	wait for 10ns;
	cntr_tb <= "10"; --clr A, B
	wait for 10ns;
	cntr_tb <= "11"; --loogikafunktsioon
	wait for 10ns;
	
	report "Test A=1011 B=0001";
	a_tb <= "1011";
	b_tb <= "0001";
	
	cntr_tb <= "00";
	wait for 10ns;
	cntr_tb <= "01";
	wait for 10ns;
	cntr_tb <= "10";
	wait for 10ns;
	cntr_tb <= "11";
	wait for 10ns;
	
	report "Test A=1111 B=0011";
	a_tb <= "1111";
	b_tb <= "0011";
	
	cntr_tb <= "00";
	wait for 10ns;
	cntr_tb <= "01";
	wait for 10ns;
	cntr_tb <= "10";
	wait for 10ns;
	cntr_tb <= "11";
	wait for 10ns;
	
	report "Test A=0011 B=0110";
	a_tb <= "0011";
	b_tb <= "0111";
	
	cntr_tb <= "00";
	wait for 10ns;
	cntr_tb <= "01";
	wait for 10ns;
	cntr_tb <= "10";
	wait for 10ns;
	cntr_tb <= "11";
	wait for 10ns;
	
	report "Test A=0000 B=0000";
	a_tb <= "0000";
	b_tb <= "0000";
	
	cntr_tb <= "00";
	wait for 10ns;
	cntr_tb <= "01";
	wait for 10ns;
	cntr_tb <= "10";
	wait for 10ns;
	cntr_tb <= "11";
	wait for 10ns;
		
	wait;
end process;

end testbench;