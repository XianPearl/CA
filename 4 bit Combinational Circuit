//Design
module comb(input[3:0]imp, output [3:0]toop, output[3:0]xorop);
  assign toop = -imp;
  assign xorop = ~imp + 1'b1;
endmodule

//Testbench
module comb_tb;
  reg [3:0]imp = 0;
  wire [3:0]toop, xorop;
  integer i;
  comb uut (.imp(imp), .toop(toop), .xorop(xorop));
  initial
    begin
      for (i = 0; i < 15; i = i+1) begin
        #10;
        imp = imp + 1'b1;
      end
    end
  initial
    begin
      $dumpfile ("dump.vcd");
      $dumpvars (0, comb_tb);
    end
endmodule

//Theory
A 4-bit combinational circuit is a digital logic circuit that operates on 4 input bits and produces an output based on the combination of those input bits. It
performs a specific function without the presence of memory elements like flip-flops or latches. Here's a theory on how a 4-bit combinational circuit works:

1. Inputs: A 4-bit combinational circuit takes four input bits, denoted as A[3], A[2], A[1], and A[0]. Each input bit can be either 0 or 1.

2. Logic Function: The 4-bit combinational circuit performs a specific logic function on the input bits to generate the desired output. The logic function can be
expressed using Boolean algebra, truth tables, or logic gate diagrams.

3. Combinational Logic Gates: The circuit is constructed using various combinational logic gates, such as AND gates, OR gates, XOR gates, NAND gates, NOR gates,
etc. These gates manipulate the input bits according to the desired logic function.

4. Gate-level Implementation: The specific gate-level implementation of the circuit depends on the logic function being performed. Different combinations of logic
gates can be used to achieve the desired functionality. The choice of gates depends on factors such as speed, power consumption, and area requirements.

5. Outputs: The 4-bit combinational circuit produces one or more output bits based on the logic function. The output bits are typically denoted as Y[3], Y[2], 
Y[1], and Y[0], corresponding to the four output lines.

6. Applications: Combinational circuits are used in various applications, such as arithmetic circuits (adders, subtractors), multiplexers, demultiplexers, 
encoders, decoders, and logic functions like AND, OR, XOR, etc. They are fundamental building blocks in digital systems and play a crucial role in performing 
specific operations.

By combining different logic gates and designing the circuit based on the desired logic function, a 4-bit combinational circuit can perform a wide range of 
operations and generate outputs based on the combination of input bits. These circuits are essential components in digital systems, providing the foundation for 
complex logic operations and data manipulation.
