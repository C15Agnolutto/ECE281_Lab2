----------------------------------------------------------------------------------
-- Company: ECE 281 
-- Engineer: Scott Agnolutto
-- 
-- Create Date:    13:46:32 02/11/2014 
-- Design Name: Lab 2
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: Lab 2
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

--internal signals declared
signal D,E,F,G,H: std_logic;

begin

--behavioral assignments that follows my schematic
D <= A and B;
E <= A and Cin;
F <= B and Cin;
G <= D or E or F;
H <= A xor B xor Cin;
--two outs Cout and S
Cout <= G;
S <= H;


end Behavioral;

