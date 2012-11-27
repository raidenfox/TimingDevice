----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:23:58 11/21/2012 
-- Design Name: 
-- Module Name:    DigitCoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DigitCoder is
    Port ( num_in : in  Integer;
           num_out : out  STD_LOGIC_VECTOR (7 downto 0);
           num_out2 : out  STD_LOGIC_VECTOR (7 downto 0));
end DigitCoder;

architecture Behavioral of DigitCoder is
constant base: integer := 10;
signal div,resto : integer := 0;
signal digit1,digit2 : std_logic_vector (7 downto 0);
begin

div <= num_in/base;
resto <= num_in - div*base;
num_out <= digit1;
num_out2 <= digit2;
with div select
	  digit1 <= "11111100" when 0,
				   "01100000" when 1,
					"11011010" when 2,
					"11110010" when 3,
					"01100110" when 4,
					"10110110" when 5,
					"00000001" when others;
	  
with resto select
	  digit2 <= "11111100" when 0,
					"01100000" when 1,
					"11011010" when 2,
					"11110010" when 3,
					"01100110" when 4,
					"10110110" when 5,
					"10111110" when 6,
					"11100000" when 7,
					"11111110" when 8,
					"11110110" when 9,
					"00000001" when others;
	  
end Behavioral;

