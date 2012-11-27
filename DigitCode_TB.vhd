--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:01:47 11/21/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/ISE/ClockDevice/DigitCode_TB.vhd
-- Project Name:  ClockDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DigitCoder
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
 
ENTITY DigitCode_TB IS
END DigitCode_TB;
 
ARCHITECTURE behavior OF DigitCode_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DigitCoder
    PORT(
         num_in : IN  integer;
         num_out : OUT  std_logic_vector(7 downto 0);
         num_out2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal num_in : integer := 47;

 	--Outputs
   signal num_out : std_logic_vector(7 downto 0);
   signal num_out2 : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DigitCoder PORT MAP (
          num_in => num_in,
          num_out => num_out,
          num_out2 => num_out2
        );


END;
