----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:32 11/19/2012 
-- Design Name: 
-- Module Name:    counterN - Behavioral 
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

entity counterN is
    GENERIC(N: Integer := 1000);
    Port ( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk_in : in  STD_LOGIC;
           signal_out : out STD_LOGIC);
end counterN;

architecture Behavioral of counterN is

signal counter : integer range 0 to N-1 := 0;
signal clock_o : std_logic := '0';

begin

signal_out <= not(en or reset) and clock_o;
clock_divider: process(clk_in)
begin

if rising_edge(clk_in) then 
	if counter < N-1 then
		counter <= counter + 1;
		clock_o <= '0';
	elsif counter = N-1 then
		clock_o <= '1';
		counter <= 0;
	end if;
end if;

end process;

end Behavioral;