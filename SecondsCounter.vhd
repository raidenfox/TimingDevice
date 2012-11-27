----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:52 11/20/2012 
-- Design Name: 
-- Module Name:    SecondsCounter - Behavioral 
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

entity SecondsCounter is
    Port ( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           value_out : out  integer;
           sig_out : out  STD_LOGIC);
end SecondsCounter;

architecture Behavioral of SecondsCounter is
    COMPONENT counterN
    PORT(
	      en : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         clk_in : IN  std_logic;
         signal_out : OUT  std_logic
        );
    END COMPONENT;

COMPONENT SignalAccumulator is
    Port ( 
	        en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  sig_high : in  STD_LOGIC;
			  second_out : out integer;
           counted : out  STD_LOGIC);
END COMPONENT SignalAccumulator;

signal comm : STD_LOGIC := '0';
signal usig : STD_LOGIC := '0';
signal seconds : integer := 0;
begin
sig_out <= usig;
value_out <= seconds;
C1: counterN port map(en,reset,clk,comm);
C2: SignalAccumulator port map(en,reset,comm,seconds,usig);

end Behavioral;

