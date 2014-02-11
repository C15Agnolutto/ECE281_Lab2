--------------------------------------------------------------------------------
-- Company: ECE 281
-- Engineer: Scott Agnolutto
--
-- Create Date:   13:53:47 02/11/2014
-- Design Name:   Lab 2
-- Module Name:   C:/Users/C15Joseph.Agnolutto/Documents/Spring 2014/ECE 281/Lab2/Lab2/Full_Adder_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
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
 
ENTITY Full_Adder_Testbench IS
END Full_Adder_Testbench;
 
ARCHITECTURE behavior OF Full_Adder_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          S => S
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Cin <= '0';
		A <= '0';
		B <= '0';
		wait for 100 ns;	
		
		Cin <= '0';
		A <= '0';
		B <= '1';
		wait for 100 ns;
		
		Cin <= '0';
		A <= '1';
		B <= '0';
		wait for 100 ns;
		
		Cin <= '0';
		A <= '1';
		B <= '1';
		wait for 100 ns;
		
		Cin <= '1';
		A <= '0';
		B <= '0';
		wait for 100 ns;
		
		Cin <= '1';
		A <= '0';
		B <= '1';
		wait for 100 ns;

		Cin <= '1';
		A <= '1';
		B <= '0';
		wait for 100 ns;
		
		Cin <= '1';
		A <= '1';
		B <= '1';
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
