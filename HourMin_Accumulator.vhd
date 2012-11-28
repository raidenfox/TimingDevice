----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:40:25 11/27/2012 
-- Design Name: 
-- Module Name:    HourMin_Accumulator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HourMin_Accumulator is
    GENERIC(N1: Integer := 6; N2: Integer := 10);
    Port ( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  sig_in : in  STD_LOGIC;
           o1 : out  STD_LOGIC_VECTOR (3 downto 0);
           o2 : out  STD_LOGIC_VECTOR (3 downto 0);
           sig_out : out  STD_LOGIC);
end HourMin_Accumulator;

architecture Behavioral of HourMin_Accumulator is
signal c1,c2 : Integer := 0;
signal out1,out2 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal h : STD_LOGIC := '0';
begin

COUNT_PROCESS:PROCESS(sig_in)
begin
sig_out <= h;
if rising_edge(sig_in) then c1 <= c1 +1;
   if c1 = N2-1 then
	c2 <= c2 + 1;
	c1 <= 0;
	elsif c2 = N1 then
		c2 <= 0;
	end if; 
end if;

	if c2 = N1 then
	h <= '1';
	elsif c2 = 1 then
	h <= '0';
	end if;
END PROCESS;

out1 <= conv_std_logic_vector(c2, 4);
out2 <= conv_std_logic_vector(c1, 4);

o1 <= out1;
o2 <= out2;
end Behavioral;

