//Design
module bus(
  input [3:0]b,
  input c,
  output [3:0]o
);
  assign o[3] = (b[3] & c) | (~c & 1'bz);
  assign o[2] = (b[2] & c) | (~c & 1'bz);
  assign o[1] = (b[1] & c) | (~c & 1'bz);
  assign o[0] = (b[0] & c) | (~c & 1'bz);
endmodule

//Testbench
module bus_tb;
  reg [3:0]b, c;
  wire [3:0]o;
  bus uut (.b(b), .c(c), .o(o));
  initial
    begin
      b[3] = 0; b[2] = 0; b[1] = 0; b[0] = 0; c = 0; #10;
      b[3] = 0; b[2] = 0; b[1] = 0; b[0] = 1; c = 0; #10;
      b[3] = 0; b[2] = 0; b[1] = 1; b[0] = 0; c = 0; #10;
      b[3] = 0; b[2] = 0; b[1] = 1; b[0] = 1; c = 0; #10;
      b[3] = 0; b[2] = 1; b[1] = 0; b[0] = 0; c = 0; #10;
      b[3] = 0; b[2] = 1; b[1] = 0; b[0] = 1; c = 0; #10;
      b[3] = 0; b[2] = 1; b[1] = 1; b[0] = 0; c = 0; #10;
      b[3] = 0; b[2] = 1; b[1] = 1; b[0] = 1; c = 0; #10;
      b[3] = 1; b[2] = 0; b[1] = 0; b[0] = 0; c = 0; #10;
      b[3] = 1; b[2] = 0; b[1] = 0; b[0] = 1; c = 0; #10;
      b[3] = 1; b[2] = 0; b[1] = 1; b[0] = 0; c = 0; #10;
      b[3] = 1; b[2] = 0; b[1] = 1; b[0] = 1; c = 0; #10;
      b[3] = 1; b[2] = 1; b[1] = 0; b[0] = 0; c = 0; #10;
      b[3] = 1; b[2] = 1; b[1] = 0; b[0] = 1; c = 0; #10;
      b[3] = 1; b[2] = 1; b[1] = 1; b[0] = 0; c = 0; #10;
      b[3] = 1; b[2] = 1; b[1] = 1; b[0] = 1; c = 0; #10;
      b[3] = 0; b[2] = 0; b[1] = 0; b[0] = 0; c = 1; #10;
      b[3] = 0; b[2] = 0; b[1] = 0; b[0] = 1; c = 1; #10;
      b[3] = 0; b[2] = 0; b[1] = 1; b[0] = 0; c = 1; #10;
      b[3] = 0; b[2] = 0; b[1] = 1; b[0] = 1; c = 1; #10;
      b[3] = 0; b[2] = 1; b[1] = 0; b[0] = 0; c = 1; #10;
      b[3] = 0; b[2] = 1; b[1] = 0; b[0] = 1; c = 1; #10;
      b[3] = 0; b[2] = 1; b[1] = 1; b[0] = 0; c = 1; #10;
      b[3] = 0; b[2] = 1; b[1] = 1; b[0] = 1; c = 1; #10;
      b[3] = 1; b[2] = 0; b[1] = 0; b[0] = 0; c = 1; #10;
      b[3] = 1; b[2] = 0; b[1] = 0; b[0] = 1; c = 1; #10;
      b[3] = 1; b[2] = 0; b[1] = 1; b[0] = 0; c = 1; #10;
      b[3] = 1; b[2] = 0; b[1] = 1; b[0] = 1; c = 1; #10;
      b[3] = 1; b[2] = 1; b[1] = 0; b[0] = 0; c = 1; #10;
      b[3] = 1; b[2] = 1; b[1] = 0; b[0] = 1; c = 1; #10;
      b[3] = 1; b[2] = 1; b[1] = 1; b[0] = 0; c = 1; #10;
      b[3] = 1; b[2] = 1; b[1] = 1; b[0] = 1; c = 1; #10;
    end
  initial
    begin
      $dumpfile ("dump.vcd");
      $dumpvars (0, bus_tb);
    end
endmodule

//Theory
A 4-bit unidirectional bus is a data transfer mechanism that can transmit 4 bits of information in a single direction. It consists of four separate lines, each 
capable of carrying one bit of data. Here's a theory on how a 4-bit unidirectional bus could work:

1. Physical Connections: The bus requires four physical connections (lines or wires) to transmit the 4 bits of data. Each line is dedicated to transmitting one 
bit of information.

2. Data Transfer: To transfer data on the bus, the sender places the desired 4-bit value on the four lines. Each line can either be high (logic 1) or low (logic 0)
to represent the corresponding bit of the value.

3. Clock Signal: The bus may require a clock signal to synchronize the data transfer. The sender and receiver must agree on the clock speed and timing to ensure
reliable communication. The clock signal triggers the receiver to read the data on the bus.

4. Unidirectional Nature: The bus is unidirectional, meaning data flows in one direction only, typically from the sender to the receiver. The sender places the
data on the bus, and the receiver reads it. There might be separate lines for control signals to indicate the direction of data flow or other communication
protocols.

5. Parallelism: The advantage of a 4-bit bus is that it can transfer 4 bits simultaneously, allowing for faster data transfer compared to a single-bit serial bus.
However, it can transmit data in only one direction at a time.

6. Limitations: A 4-bit bus has limited capacity compared to wider buses (e.g., 8-bit, 16-bit, or 32-bit). It can represent values from 0 to 15 (2^4 - 1). If 
higher precision is required, multiple transfers or wider buses can be used.

Overall, a 4-bit unidirectional bus provides a simple and efficient means of transmitting small amounts of data in a specific direction. It finds applications in 
various digital systems, such as microcontrollers, low-power devices, or communication protocols where a smaller bus width is sufficient.
