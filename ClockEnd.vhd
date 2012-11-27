----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:37 11/20/2012 
-- Design Name: 
-- Module Name:    ClockEnd - Behavioral 
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

entity ClockEnd is
	 GENERIC(N: Integer := 5);
    Port ( en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           hour_out : out  integer;
           min_out : out  integer;
			  sec_out : OUT  integer;
			  minv: out STD_LOGIC_VECTOR (7 downto 0);
			  minv2: out STD_LOGIC_VECTOR (7 downto 0);
			  hourv: out STD_LOGIC_VECTOR (7 downto 0);
			  hourv2: out STD_LOGIC_VECTOR (7 downto 0)
			  );
end ClockEnd;

architecture Behavioral of ClockEnd is
    COMPONENT SecondsCounter
    PORT( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           value_out : out  integer;
           sig_out : out  STD_LOGIC
        );
    END COMPONENT;
	 
	 COMPONENT SignalAccumulator is
    GENERIC(N: Integer := 60);
    Port ( en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  sig_high : in  STD_LOGIC;
			  second_out : out integer;
           counted : out  STD_LOGIC);
	 END COMPONENT SignalAccumulator;
	 
	 COMPONENT DigitCoder is
    Port ( num_in : in  Integer;
           num_out : out  STD_LOGIC_VECTOR (7 downto 0);
           num_out2 : out  STD_LOGIC_VECTOR (7 downto 0));
	 END COMPONENT DigitCoder;
	 
	 signal comm : STD_LOGIC_VECTOR (3 downto 0) ;
	 signal sec_out2,mins_out2,hours_out2 : Integer := 0 ;
	 signal sec,mins,hours : Integer := 0 ;
begin

comm(3) <= clk;
hour_out <= hours;
min_out <= mins;
sec_out <= sec;
S: SecondsCounter port map(en,rst,comm(3),sec,comm(2));
M: SignalAccumulator port map(en,rst,comm(2),mins,comm(1));	
H: SignalAccumulator generic map (24) port map(en,rst,comm(1),hours,comm(0));	

EN1: DigitCoder port map(mins,minv,minv2);
EN2: DigitCoder port map(hours,hourv,hourv2);

end Behavioral;

