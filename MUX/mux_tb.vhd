--Multipleksori testpink
library IEEE;
use IEEE.std_logic_1164.all;

--Testbench entity is always empty
entity MuxTestBench is
end MuxTestbench;

architecture Bench of MuxTestBench is

 --MUXi komponent
 component Mux is
  port ( D0, D1, D2, D3     : in STD_LOGIC_VECTOR (5 downto 0);        
         CONT_SIG : in STD_LOGIC_VECTOR (1 downto 0);
         OUT_SIG_BEH  : out STD_LOGIC_VECTOR (5 downto 0);
         OUT_SIG_FLOW  : out STD_LOGIC_VECTOR (5 downto 0);
         OUT_SIG_STRUCT  : out STD_LOGIC_VECTOR (5 downto 0));
  end component;

  --Local signal declarations
  signal D0TB, D1TB, D2TB, D3TB : STD_LOGIC_VECTOR (5 downto 0);
  signal ContSigTB : STD_LOGIC_VECTOR (1 downto 0);
  signal OutSigBehTB, OutSigFlowTB, OutSigStruct  : STD_LOGIC_VECTOR (5 downto 0);
   
begin

--Component instantiation of MUX
Mux_comp: MUX port map (D0 => D0TB, 
                        D1 => D1TB, 
                        D2 => D2TB, 
                        D3 => D3TB, 
                        CONT_SIG => ContSigTB, 
                        OUT_SIG_BEH => OutSigBehTB, 
                        OUT_SIG_FLOW => OutSigFlowTB, 
                        OUT_SIG_STRUCT => OutSigStruct );
 
process
begin

    report "Test 1";
    D0TB <= "000001";
    D1TB <= "000011";
    D2TB <= "000111";
    D3TB <= "001111";
   
   	ContSigTB <= "00";
	wait for 10ns;
	ContSigTB <= "01";
	wait for 10ns;
	ContSigTB <= "10";
	wait for 10ns;
	ContSigTB <= "11";
	wait for 10ns;
	
	report "Test 2";
    D0TB <= "011110";
    D1TB <= "001110";
    D2TB <= "000110";
    D3TB <= "000010";
   
   	ContSigTB <= "00";
	wait for 10ns;
	ContSigTB <= "01";
	wait for 10ns;
	ContSigTB <= "10";
	wait for 10ns;
	ContSigTB <= "11";
	wait for 10ns;
   
end process;

end Bench;
