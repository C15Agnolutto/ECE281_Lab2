----------------------------------------------------------------------------------
-- Company: USAFA ECE 281
-- Engineer: Scott Agnolutto
-- 
-- Create Date:    13:00:00 02/18/2014 
-- Design Name: Lab 2
-- Module Name:    Four_Bit_Adder - Structural 
-- Project Name: 
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

entity Four_Bit_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
					Overflow : out STD_LOGIC;
					Button : in STD_LOGIC);
end Four_Bit_Adder;

architecture Structural of Four_Bit_Adder is

signal C : std_logic;
signal Carry, X : STD_LOGIC_VECTOR(3 downto 0);

	component Full_Adder
		port(
			A:in std_logic;
			B:in std_logic;
			Cin:in std_logic;
			Cout:out std_logic;
			S:out std_logic
			);
	end component;

begin

	 X <= not B when (Button = '1') else B;
	 Carry(0) <= ('1') when (Button = '1') else ('0');
	 

	 Bit0: Full_Adder Port Map(
		A(0),X(0),Carry(0),Carry(1),S(0));

	 Bit1: Full_Adder Port Map(
		A(1),X(1),Carry(1),Carry(2),S(1));

	 Bit2: Full_Adder Port Map(
		A(2),X(2),Carry(2),Carry(3),S(2));

	 Bit3: Full_Adder Port Map(
		A(3),X(3),Carry(3),C,S(3));

Overflow <= C xor Carry(3);

end Structural;

