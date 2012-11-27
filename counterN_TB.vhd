--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:26:50 11/19/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/ISE/ClockDevice/counterN_TB.vhd
-- Project Name:  ClockDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counterN
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
 
ENTITY counterN_TB IS
END counterN_TB;
 
ARCHITECTURE behavior OF counterN_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counterN
    PORT(en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
         clk_in : IN  std_logic;
         signal_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
	signal en :   STD_LOGIC := '0';
   signal reset :   STD_LOGIC := '0';

 	--Outputs
   signal signal_out : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 1000000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counterN PORT MAP (
          en => en,
          reset => reset,
          clk_in => clk_in,
          signal_out => signal_out
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;


END;
