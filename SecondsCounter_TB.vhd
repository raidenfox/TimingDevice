--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:25:52 11/27/2012
-- Design Name:   
-- Module Name:   C:/Users/Raidenfox/ISE/DigitalClock/SecondsCounter_TB.vhd
-- Project Name:  DigitalClock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SecondsCounter
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
 
ENTITY SecondsCounter_TB IS
END SecondsCounter_TB;
 
ARCHITECTURE behavior OF SecondsCounter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SecondsCounter
    PORT(
         en : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         value_out : OUT  integer;
         sig_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal value_out : integer;
   signal sig_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1000000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SecondsCounter PORT MAP (
          en => en,
          reset => reset,
          clk => clk,
          value_out => value_out,
          sig_out => sig_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
END;