--------------------------------------------------------------------------------
-- Company: USAFA ECE 281
-- Engineer: Scott Agnolutto
--
-- Create Date:   15:01:05 02/18/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Joseph.Agnolutto/Documents/Spring 2014/ECE 281/Lab2/Lab2/Four_Bit_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Four_Bit_Adder
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
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY Four_Bit_Testbench IS
END Four_Bit_Testbench;
 
ARCHITECTURE behavior OF Four_Bit_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         Overflow : OUT  std_logic;
         Button : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Button : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit_Adder PORT MAP (
          A => A,
          B => B,
          S => S,
          Overflow => Overflow,
          Button => Button
        );


   -- Stimulus process
   stim_proc: process
   begin		
   -- hold reset state for 100 ns.
   wait for 100 ns;	
	
		--Addition Test Bench Section
		A <= "0000";
		B <= "0000";
		Button <= '0';

		--loop through A values
		for X in 0 to 15 loop
			--loop through B values
			for Y in 0 to 15 loop
				wait for 15ns;
				--perform addition
				assert S = A + B;

			--Increment B by 1
			B <= B + "0001"; 
			end loop;
		--Increment A by 1
		A <= A + "0001";
		end loop;

		report "Adder complete";


-- Subtraction Test Bench Section
--similar functionality as the above testbench		
		A <= "0000";
		B <= "0000";
		Button <= '1';

		
		for Z in 0 to 15 loop
			for W in 0 to 15 loop
				wait for 15ns;
				--perform subtraction
				assert S = A - B;

			B <= B + "0001";
			end loop;

		A <= A + "0001";
		end loop;

		report "Subtractor complete";

		report " Test Complete! ";
		wait for 100 ns;
			
			wait;
		end process;

END;
