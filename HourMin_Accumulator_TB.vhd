--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:56:49 11/27/2012
-- Design Name:   
-- Module Name:   C:/Users/Raidenfox/ISE/DigitalClock/HourMin_Accumulator_TB.vhd
-- Project Name:  DigitalClock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HourMin_Accumulator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY HourMin_Accumulator_TB IS
END HourMin_Accumulator_TB;
 
ARCHITECTURE behavior OF HourMin_Accumulator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HourMin_Accumulator
    PORT(
         en : IN  std_logic;
         reset : IN  std_logic;
         sig_in : IN  std_logic;
         o1 : OUT  std_logic_vector(3 downto 0);
         o2 : OUT  std_logic_vector(3 downto 0);
         sig_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal reset : std_logic := '0';
   signal sig_in : std_logic := '0';

 	--Outputs
   signal o1 : std_logic_vector(3 downto 0);
   signal o2 : std_logic_vector(3 downto 0);
   signal sig_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HourMin_Accumulator PORT MAP (
          en => en,
          reset => reset,
          sig_in => sig_in,
          o1 => o1,
          o2 => o2,
          sig_out => sig_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		sig_in <= '0';
		wait for clock_period/2;
		sig_in <= '1';
		wait for clock_period/2;
   end process;


END;
