--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:37:00 11/20/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/ISE/ClockDevice/ClockEnd_TB.vhd
-- Project Name:  ClockDevice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ClockEnd
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
 
ENTITY ClockEnd_TB IS
END ClockEnd_TB;
 
ARCHITECTURE behavior OF ClockEnd_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ClockEnd
    PORT(
         en : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
           hour_out : out  integer;
           min_out : out  integer;
			  sec_out : OUT  integer;
			  minv: out STD_LOGIC_VECTOR (7 downto 0);
			  minv2: out STD_LOGIC_VECTOR (7 downto 0);
			  hourv: out STD_LOGIC_VECTOR (7 downto 0);
			  hourv2: out STD_LOGIC_VECTOR (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal hour_out : integer;
   signal min_out : integer;
   signal sec_out : integer;
	signal minv:  STD_LOGIC_VECTOR (7 downto 0);
	signal minv2:  STD_LOGIC_VECTOR (7 downto 0);
	signal hourv:  STD_LOGIC_VECTOR (7 downto 0);
	signal hourv2:  STD_LOGIC_VECTOR (7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1000000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ClockEnd PORT MAP (
          en => en,
          clk => clk,
          rst => rst,
          hour_out => hour_out,
          min_out => min_out,
          sec_out => sec_out,
          minv => minv,
          minv2 => minv2,
          hourv => hourv,
          hourv2 => hourv2
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
