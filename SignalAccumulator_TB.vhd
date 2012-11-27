--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:27:27 11/20/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/ISE/ClockDevice/SignalAccumulator_TB.vhd
-- Project Name:  ClockDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SignalAccumulator
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
 
ENTITY SignalAccumulator_TB IS
END SignalAccumulator_TB;
 
ARCHITECTURE behavior OF SignalAccumulator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SignalAccumulator
    PORT(
         sig_high : IN  std_logic;
			  vout : out Integer;
         counted : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sig_high : std_logic := '0';

 	--Outputs
   signal counted : std_logic;
   signal vout : Integer;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant sig_high_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SignalAccumulator PORT MAP (
          sig_high => sig_high,
          vout => vout,
          counted => counted
        );

   -- Clock process definitions
   sig_high_process :process
   begin
		sig_high  <= '0';
		wait for sig_high_period/2;
		sig_high  <= '1';
		wait for sig_high_period/2;
   end process;
 

END;
