----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:09:29 11/28/2012 
-- Design Name: 
-- Module Name:    Clock - Behavioral 
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

entity Clock is
    Port ( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           out1 : out  STD_LOGIC_VECTOR (3 downto 0);
           out2 : out  STD_LOGIC_VECTOR (3 downto 0);
           out4 : out  STD_LOGIC_VECTOR (3 downto 0);
           out5 : out  STD_LOGIC_VECTOR (3 downto 0);
           out3 : out  STD_LOGIC);
end Clock;

architecture Behavioral of Clock is
    COMPONENT SecondsCounter
    PORT(
         en : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         value_out : OUT  integer;
         sig_out : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT HourMin_Accumulator
    GENERIC(N1: Integer := 6; N2: Integer := 10);
    PORT(
         en : IN  std_logic;
         reset : IN  std_logic;
         sig_in : IN  std_logic;
         o1 : OUT  std_logic_vector(3 downto 0);
         o2 : OUT  std_logic_vector(3 downto 0);
         sig_out : OUT  std_logic
        );
    END COMPONENT;

signal comm,comm2,comm3: STD_LOGIC;
signal o1,o2,o3,o4 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal secs : Integer := 0;
begin

out1 <= o1;
out2 <= o2;
out4 <= o3;
out5 <= o4;
out3 <= comm3;

S: SecondsCounter port map(en,reset,clk,secs,comm);
M: HourMin_Accumulator port map(en,reset,comm,o1,o2,comm2);
H: HourMin_Accumulator GENERIC MAP (24,1) port map(en,reset,comm2,o3,o4,comm3);

end Behavioral;

