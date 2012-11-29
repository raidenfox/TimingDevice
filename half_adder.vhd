----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:30:52 11/29/2012 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
    Port ( s1 : in  STD_LOGIC;
           s2 : in  STD_LOGIC;
           r : out  STD_LOGIC;
           c : out  STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

begin

r <= s1 xor s2;
c <= s1 and s2;

end Behavioral;

