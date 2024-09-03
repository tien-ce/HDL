`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 05:53:15 PM
// Design Name: 
// Module Name: normal_min
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


module normal_min(clk,counter,counter_sum);
input wire [16:0] counter_sum;
input wire clk;
output reg [5:0] counter;
always @(posedge clk) begin
counter<=(counter_sum%3600)/60;
end
endmodule
