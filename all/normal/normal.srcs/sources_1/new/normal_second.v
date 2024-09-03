`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 05:54:44 PM
// Design Name: 
// Module Name: normal_second
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


module normal_second(clk,counter_sum,counter
    );
input wire clk;
input wire [16:0] counter_sum;
output reg [5:0] counter;
always @(posedge clk) begin
counter<=counter_sum%60;
end
endmodule
