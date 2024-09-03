`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 06:03:02 PM
// Design Name: 
// Module Name: compare59
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


module compare59(
input wire clk,input wire [5:0] in,output reg out
    );
always @(posedge clk) begin
if(in == 59) begin
out = 1;
end
else begin
out = 0;
end
end
endmodule
