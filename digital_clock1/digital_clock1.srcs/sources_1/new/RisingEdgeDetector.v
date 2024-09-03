`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 14:56:27
// Design Name: 
// Module Name: sourcecode_ex2_lab3
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


module RisingEdgeDetector (
  input wire clk,
  input wire in,
  output wire out
);

  reg ff1, ff2;

  always @(posedge clk) begin
    ff1 <= in;
    ff2 <= ff1;
  end

  assign out = ff1 & ~ff2;

endmodule
