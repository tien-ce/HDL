`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 05:36:09 PM
// Design Name: 
// Module Name: normal_hour
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


module normal_hour(clk,counter,counter_sum
    );
input wire clk;
output reg [4:0] counter;
input wire [16:0] counter_sum;
always @(posedge clk) begin
counter <= counter_sum/3600;
end
endmodule
