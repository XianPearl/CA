//Design
module mux4(
  input [3:0]i,
  input [1:0]s,
  output o
);
  assign o = (~s[0] & ~s[1] & i[0]) | (~s[0] & s[1] & i[1]) | (s[0] & ~s[1] & i[2]) | (s[0] & s[1] & i[3]);
endmodule

//Testbench
module mux4_tb;
  reg [3:0]i;
  reg [1:0]s;
  wire o;
  mux4 uut (.i(i), .s(s), .o(o));
  initial
    begin
      i = 4'b1011; s = 2'b00; #10;
      i = 4'b1011; s = 2'b01; #10;
      i = 4'b1011; s = 2'b10; #10;
      i = 4'b1011; s = 2'b11; #10;
    end
  initial
    begin
      $dumpfile ("dump.vcd");
      $dumpvars (0, mux4_tb);
    end
endmodule

//Theory
A 4 x 1 multiplexer, also known as a 4-to-1 multiplexer, is a digital circuit that selects one of four input signals and forwards it to the output based on the
value of the select inputs. It is commonly denoted as 4:1 MUX. Here's a theory on how a 4 x 1 multiplexer works:

1. Inputs: A 4 x 1 multiplexer has four data inputs, denoted as D[3], D[2], D[1], and D[0]. These inputs carry the data signals that need to be selected.

2. Select Inputs: The multiplexer has two select inputs, denoted as S[1] and S[0]. These select inputs determine which data input will be routed to the output. 
The number of select inputs is determined by the number of input lines, with N select inputs for a 2^N:1 multiplexer.

3. Truth Table: The truth table of a 4 x 1 multiplexer lists all possible combinations of select inputs and the corresponding output. For a 4 x 1 multiplexer, 
the truth table has 4 rows and 1 output column. The output column represents the selected input that will be forwarded to the output.
S[1] | S[0] || Output
-----|------||-------
0 | 0 || D[0]
0 | 1 || D[1]
1 | 0 || D[2]
1 | 1 || D[3]

4. Implementation: The 4 x 1 multiplexer can be implemented using logic gates such as AND gates, OR gates, and NOT gates. The specific implementation depends on
the available gates and the desired circuit complexity.
(i) One possible implementation uses three AND gates, one OR gate, and one NOT gate:
Output = (S[1]' AND S[0]' AND D[0]) OR (S[1]' AND S[0] AND D[1]) OR (S[1] AND S[0]' AND D[2]) OR (S[1] AND S[0] AND D[3])
In this implementation, the select inputs are combined with the data inputs using AND gates, and the outputs of the AND gates are combined using OR gate. The 
complement (NOT) of the select inputs is used to enable or disable the corresponding AND gates.

5. Output: The output of the 4 x 1 multiplexer is the selected input signal based on the values of the select inputs. The selected input is forwarded to the output
line.

6. Applications: Multiplexers are commonly used in digital systems for various purposes such as data routing, data selection, bus switching, and addressing in 
memory systems. The 4 x 1 multiplexer is a versatile component that enables efficient data manipulation and control in such systems.

By selecting one of the four input signals based on the select inputs, the 4 x 1 multiplexer provides flexibility in data routing and selection. It plays a crucial
role in designing complex digital systems and allows for efficient and compact circuit implementations.
