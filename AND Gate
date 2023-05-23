//Design Module
module and2(
  input A,
  input B,
  output C
);
  assign C = A & B;
endmodule

//Testbench
module and2_tb;
  reg A,B;
  wire C;
  and2 uut (.A(A), .B(B), .C(C));
  initial
    begin
      A = 0; B = 0; #100;
      A = 0; B = 1; #100;
      A = 1; B = 0; #100;
      A = 1; B = 1; #100;
    end
initial 
  begin
    $dumpfile ("dump.vcd");
    $dumpvars (0, and2_tb);
  end
endmodule
      
//Theory
An AND gate is a logic gate having two or more inputs and a single output. An AND gate operates on logical multiplication rules. In this gate, if either of the inputs is low (0), then the output is also low. If all 
of the inputs are high (1), then the output will also be high. An AND gate can have any number of inputs, although 2 input and 3 input AND gates are the most common.
