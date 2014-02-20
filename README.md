ECE281_Lab2
===========

### Truth Table
| Cin | A | B | Cout | S |
|-----|---|---|------|---|
|  0  | 0 | 0 |   0  | 0 | 
|  0  | 0 | 1 |   0  | 1 | 
|  0  | 1 | 0 |   0  | 1 | 
|  0  | 1 | 1 |   1  | 0 | 
|  1  | 0 | 0 |   0  | 1 | 
|  1  | 0 | 1 |   1  | 0 | 
|  1  | 1 | 0 |   1  | 0 |
|  1  | 1 | 1 |   1  | 1 |


### Full-Adder Schematic
![schem] (https://raw2.github.com/C15Agnolutto/ECE281_Lab2/master/Schematic.JPG)


### Full-Adder Simulation 
![waveform] (https://raw2.github.com/C15Agnolutto/ECE281_Lab2/master/Full_Adder_ISim.PNG)


### Pre-Lab Analysis
While creating my truth table I initially made the mistake in the last row and last column; I had put a 0 instead of
a 1 and didn't immediately catch it until I was writing my equations out. I simplified my boolean equations down and drew out my schematic without any issues. I created my Full_Adder.vhd using a behavioral style. I made a parse error by using just a "=" as opposed to "<=" when programming out the circuit. I made my Full_Adder_Testbench file without any errors. When I ran the ISimulation the first time the results did not match my truth table. I went back and double checked my circuit design in the Full_Adder.vhd file. I found that when I incorrectly assigned the or3 as an and3 and fixed it (G<= D or E or F). I found no further issues and got the expected results when I reran the ISimulation. 



### Four Bit Adder/Subtractor Final Schematic
![schem2] (https://raw2.github.com/C15Agnolutto/ECE281_Lab2/master/final_schematic.JPG)


### Four Bit Adder Simulation
![add] (https://raw2.github.com/C15Agnolutto/ECE281_Lab2/master/Adder_Testbench.PNG)


### Four Bit Subtractor Simulation
![sub] (https://raw2.github.com/C15Agnolutto/ECE281_Lab2/master/Subtractor_Testbench.PNG)



### Post-Lab Analysis

Initially no problems creating my component and initializing my assignment statements. Then ran into multiple parsing errors: missing semi colons in component declaration, wrong variables used in assignments statements, needed internal variable to make the carry work properly. Started to create my constraints for my 4 bit adder in a seperate .ucf file but that didn't work; it wouldnt read to the correct file for some reason. Moved my new constraints over to my initial constraints file and commented out the full adder constraints from the prelab. This worked. Overflow was not working so that's what I worked on next. Initialized new variable 'Overflow' as an output. Altered assignment statements to work with overflow. Minor errors here debugging the assignments so I got proper overflow output. I made changes to my Bit3, couldn't have a Carry(4) because it's outside the scope of the variable. Tested functionality at this point. Adder was working properly; got that signed off. Next worked on subtraction. Created a button to use to indicate subtraction. No problems there. Initialized new internal vairable 'X' to be the opposite of B when button is pressed. Altered constraints file for the button. Got functionality on addition, subtraction, and overflow; had that signed off. Started working on the testbench. Immediately ran into the problem of how do I make it loop through each iteration and do arthimetic. Googled around a bit and found some stuff on how to import arthimetic functionality and how to loop through different stages of my 4 bit adder. Created nested for loop to iterate through all possible combinations of A and B values. Initially failed to increment A and B because I thought it would do that automatically, fixed that issue. Ran the simulation and got the adder testbench to work properly. If you move through the testbench slowly you can see the output is correct for each combination including the overflow. Tried to copy the same idea for the subtraction simulation by just altering my assert statement to do subtraction and adding an assignment to indicated that the button has been pressed now. For some reason it wouldn't show up in the testbench simulation with the addition testbench stuff still in there. So in order to see the subtraction I commented out the addition testbench stuff and reran the simulation which worked. 

In conclusion, successfully created an adder and subtractor with a couple headaches here and there. The testbench and overflow functionality were probably the worst of the lab. 



