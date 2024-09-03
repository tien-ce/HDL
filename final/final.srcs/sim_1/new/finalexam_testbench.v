`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2024 09:58:01 AM
// Design Name: 
// Module Name: finalexam_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder4b_tb;
reg [3:0] in_a, in_b; // inputs to UUT are regs
reg c_in; // inputs to UUT are regs
wire [3:0] sum; // outputs of UUT are wires
wire c_out; // outputs of UUT are wires
// instantiate UUT
adder4b UUT(sum, c_out, in_a, in_b, c_in);
// monitor statement
initial $monitor("time %t: cout=%b,sum=%h, in_a=%h, in_b=%h, cin=%b\n", $time, c_out, sum, in_a, in_b, c_in);
// stimulus generation
initial begin
{in_a, in_b, c_in} = 9'b0000_0000_0; // at 0 ns
#10 {in_a, in_b, c_in} = 9'b1100_0100_1; // at 10 ns
#10 {in_a, in_b, c_in} = 9'b0011_0110_1; // at 20 ns
#10 {in_a, in_b, c_in} = 9'b1111_0001_0; // at 30 ns
#10 {in_a, in_b, c_in} = 9'b0001_1111_0; // at 40 ns
#10 $stop; // at 50 ns, stops simulation
end
endmodule