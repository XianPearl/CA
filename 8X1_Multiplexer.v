//Design
module mux8(
  input c,
  input [3:0]i1,
  input [3:0]i2,
  input [2:0]s,
  output o1,
  output o2,
  output o
);
  assign o1 = (~c & ((~s[0] & ~s[1] & i1[0]) | (~s[0] & s[1] & i1[1]) | (s[0] & ~s[1] & i1[2]) | (s[0] & s[1] & i1[3])));
  assign o2 = (c & ((~s[0] & ~s[1] & i2[0]) | (~s[0] & s[1] & i2[1]) | (s[0] & ~s[1] & i2[2]) | (s[0] & s[1] & i2[3])));
  assign o = o1 | o2;
endmodule

//Testbench
module mux8_tb;
  reg [3:0]i1;
  reg [3:0]i2;
  reg [2:0]s;
  reg c;
  wire o1;
  wire o2;
  wire o;
  mux8 uut (.i1(i1), .i2(i2), .s(s), .c(c), .o1(o1), .o2(o2), .o(o));
  initial
    begin
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b00; c = 0; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b01; c = 0; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b10; c = 0; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b11; c = 0; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b00; c = 1; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b01; c = 1; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b10; c = 1; #10;
      i2 = 4'b1001; i1 = 4'b1111; s = 2'b11; c = 1; #10;
    end
  initial
    begin
      $dumpfile ("dump.vcd");
      $dumpvars (0, mux8_tb);
    end
endmodule

//Theory
An 8 x 1 multiplexer, also known as an 8-to-1 multiplexer, is a digital logic circuit that selects one of eight input signals and forwards it to the output based 
on the select lines. It is commonly used for data routing and selection in digital systems. Here's a theory on how an 8 x 1 multiplexer works:

1. Inputs: An 8 x 1 multiplexer has eight input lines, denoted as D[7], D[6], D[5], D[4], D[3], D[2], D[1], and D[0]. Each input line carries a binary value (0 or
1) or a digital signal.

2. Select Lines: The multiplexer has three select lines, denoted as S[2], S[1], and S[0]. These select lines determine which input signal is selected and forwarded
to the output. The number of select lines corresponds to the logarithm base 2 of the number of input lines.

3. Truth Table: The behavior of the 8 x 1 multiplexer can be defined using a truth table that specifies the output for each possible combination of select lines 
and input lines. The truth table has eight rows (2^3 select line combinations) and eight columns (one for each input line).

S[2] | S[1] | S[0] | D[7] | D[6] | D[5] | D[4] | D[3] | D[2] | D[1] | D[0] | Output
0 | 0 | 0 | - | - | - | - | - | - | - | - | -
... (all possible combinations)

4. Logic Circuit: The 8 x 1 multiplexer can be implemented using logic gates such as AND gates, OR gates, and NOT gates. The specific implementation depends on the
desired behavior of the multiplexer.
(i) Basic Implementation: The basic implementation of an 8 x 1 multiplexer involves using a combination of logic gates to connect the input lines to the output 
line based on the select lines. The select lines control which input line is connected to the output. The unused input lines are typically left unconnected or 
connected to a default value (0 or 1) depending on the application.

5. Output: The output of the 8 x 1 multiplexer is the selected input line, which is determined by the select lines. The selected input signal is forwarded to the 
output line.

6. Applications: The 8 x 1 multiplexer is commonly used in various applications that require data routing, signal selection, and data multiplexing. It allows for
efficient selection and routing of data signals based on the control inputs.

By using select lines to control the input selection, an 8 x 1 multiplexer provides a flexible and efficient means of selecting and forwarding one of eight input 
signals to the output. It is a fundamental component in digital systems and finds applications in areas such as data communication, memory addressing, and control
circuitry.
