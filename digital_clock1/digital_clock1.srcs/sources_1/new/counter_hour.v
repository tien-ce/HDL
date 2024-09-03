`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:28:19 PM
// Design Name: 
// Module Name: counter_hour
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


module counter_hour(
clk,counter,counter_sum
    );
input wire clk;
output reg [4:0] counter;
input wire [16:0] counter_sum;
always @(posedge clk) begin
counter <= counter_sum/3600;
end
endmodule

