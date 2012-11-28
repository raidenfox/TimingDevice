----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:40:25 11/20/2012 
-- Design Name: 
-- Module Name:    SignalAccumulator - Behavioral 
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

entity SignalAccumulator is
    GENERIC(N: Integer := 60);
    Port ( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  sig_high : in  STD_LOGIC;
			  second_out : out integer;
           counted : out  STD_LOGIC);
end SignalAccumulator;

architecture Behavioral of SignalAccumulator is
    signal counter : Integer := 0;
	 signal count : Integer := 0;
	 signal h : STD_LOGIC := '0';
begin
counted <= not(en or reset) and h;
process(sig_high)
begin
second_out <= count;
if rising_edge(sig_high) then counter <= counter +1;
	count <= count + 1;
	if count = N-1 then
	count <= 0;
	end if;
	if counter = N-1 then
	h <= '1';
	elsif counter = N then
	h <= '0';
	counter <= 1;
	end if;
end if;
end process;
end Behavioral;