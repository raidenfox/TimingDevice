--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:18:39 11/28/2012
-- Design Name:   
-- Module Name:   C:/Users/Raidenfox/ISE/DigitalClock/Clock_TB.vhd
-- Project Name:  DigitalClock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Clock
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
 
ENTITY Clock_TB IS
END Clock_TB;
 
ARCHITECTURE behavior OF Clock_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Clock
    PORT(
         en : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         out1 : OUT  std_logic_vector(3 downto 0);
         out2 : OUT  std_logic_vector(3 downto 0);
         out4 : OUT  std_logic_vector(3 downto 0);
         out5 : OUT  std_logic_vector(3 downto 0);
         out3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal out1 : std_logic_vector(3 downto 0);
   signal out2 : std_logic_vector(3 downto 0);
   signal out4 : std_logic_vector(3 downto 0);
   signal out5 : std_logic_vector(3 downto 0);
   signal out3 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1000000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Clock PORT MAP (
          en => en,
          reset => reset,
          clk => clk,
          out1 => out1,
          out2 => out2,
          out4 => out4,
          out5 => out5,
          out3 => out3
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
