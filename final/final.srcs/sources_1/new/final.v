assign c = `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2024 09:57:15 AM
// Design Name: 
// Module Name: final
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


module adder4b_delay (sum, c_out, a, b, c_in);
input [3:0] a, b;
input c_in;
output [3:0] sum;
output c_out;
assign #5 {c_out, sum} = a + b + c_in;
endmodule
