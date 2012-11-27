----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:35 11/20/2012 
-- Design Name: 
-- Module Name:    HourCounter - Behavioral 
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

entity HourCounter is
    Port ( en : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           sig_out : out  STD_LOGIC;
           rst_out : out  STD_LOGIC);
end HourCounter;

architecture Behavioral of HourCounter is
    COMPONENT counterN
    PORT(
         clk_in : IN  std_logic;
         signal_out : OUT  std_logic
        );
    END COMPONENT;

	 COMPONENT SignalAccumulator24 is
    Port ( sig_high24 : in  STD_LOGIC;
           counted24 : out  STD_LOGIC);
	 END COMPONENT;
	 
signal comm : STD_LOGIC := '0';
signal usig : STD_LOGIC := '0';

begin

sig_out <= usig;
C3: counterN port map(clk,comm);
C4: SignalAccumulator24 port map(comm,usig);


end Behavioral;

