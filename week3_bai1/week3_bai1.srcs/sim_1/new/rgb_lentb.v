`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2024 01:28:20 PM
// Design Name: 
// Module Name: rgb_lentb
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

module rgb_lentb();
reg clk;
wire [1:0] led;
rgb_led uut (.clk(clk),.led(led));
initial begin
  clk = 0;
  #10;
  forever #4 clk = ~clk;
end
initial begin
  #100;  // Wait for some time
  $finish;  // Finish the simulation
end
endmodule