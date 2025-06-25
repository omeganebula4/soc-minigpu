# Week 1
Week 1 consisted of learning the basics of VHDL and an introduction to digital design, as well as installation of Quartus for simulation.

# Week 2
Implemented the following combinational components as well as their testbenches in VHDL:
- Full Adder
- Multiplexer
- Decoder

The testbench implemented took a text file input of the form
`INPUT OUTPUT` in each line (where `OUTPUT` is the expected output of the component to the input).

For example, the `inputs.txt` file read by the testbench for the Full Adder is as follows:
```
000 00
001 10
010 10
011 01
100 10
101 01
110 01
111 11
```
Where the input is A, B, C<sub>in</sub> and output is sum, carry, in that order.

All implementations were successful, with no errors in the simulation as desired.

# Week 3
Went through the theory of process of addressing and implementing instruction sets, as well as single-cycle and multi-cycle datapaths.

# Week 4
Implemented ALU and Register File (Sequential Components) and tested them using the testbenches provided by the mentor (with a few tweaks).
