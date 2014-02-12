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


### Full-Adder Testbench Waveform 
![waveform] (https://raw2.github.com/C15Agnolutto/ECE281_Lab2/master/Full_Adder_ISim.PNG)


### Pre-Lab Analysis

While creating my truth table I initially made the mistake in the last row and last column; I had put a 0 instead of
a 1 and didn't immediately catch it until I was writing my equations out. I simplified my boolean equations down and drew out my schematic without any issues. I created my Full_Adder.vhd using a behavioral style. I made a parse error by using just a "=" as opposed to "<=" when programming out the circuit. I made my Full_Adder_Testbench file without any errors. When I ran the ISimulation the first time the results did not match my truth table. I went back and double checked my circuit design in the Full_Adder.vhd file. I found that when I incorrectly assigned the or3 as an and3 and fixed it (G<= D or E or F). 
I found no further issues and got the expected results when I reran the ISimulation. 
