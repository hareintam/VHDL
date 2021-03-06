--Multipleksor, mis teostab ALU operatsiooni valikut

library IEEE;
use IEEE.std_logic_1164.all;
  
entity Mux is
  port ( func1_out     : in STD_LOGIC_VECTOR (3 downto 0);
         func2_out     : in STD_LOGIC_VECTOR (3 downto 0);
         func3_out     : in STD_LOGIC_VECTOR (3 downto 0);
         func4_out     : in STD_LOGIC_VECTOR (3 downto 0);
         cntr : in  STD_LOGIC_VECTOR (1 downto 0);
         out_sig_beh  : out STD_LOGIC_VECTOR (3 downto 0));
end Mux;
  
architecture RTL of Mux is
begin

--behavioural
MUX: process ( func1_out, func2_out, func3_out, func4_out, cntr )
begin
    if cntr = "00" then
       out_sig_beh <= func1_out;
    elsif cntr = "01" then
       out_sig_beh <= func2_out;
    elsif cntr = "10" then
       out_sig_beh <= func3_out;
    elsif cntr = "11" then
       out_sig_beh <= func4_out;
    else
       out_sig_beh <= "XXXX";
    end if;
end process MUX;

end RTL;