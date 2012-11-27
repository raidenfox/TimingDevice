--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:05:41 11/20/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/ISE/ClockDevice/HourCounter_TB.vhd
-- Project Name:  ClockDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HourCounter
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
 
ENTITY HourCounter_TB IS
END HourCounter_TB;
 
ARCHITECTURE behavior OF HourCounter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HourCounter
    PORT(
         en : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         sig_out : OUT  std_logic;
         rst_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal sig_out : std_logic;
   signal rst_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1000000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HourCounter PORT MAP (
          en => en,
          rst => rst,
          clk => clk,
          sig_out => sig_out,
          rst_out => rst_out
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
