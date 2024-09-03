`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:28:19 PM
// Design Name: 
// Module Name: counter_sum
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


module counter_sum(
clk,,rst,counter,pause
    );
input wire clk,rst,pause;
output reg[16:0] counter;

always @(posedge clk or posedge rst) begin
if(rst ==1) begin 
counter<=0;end
else begin
if(pause == 1) begin
end
else begin
if(counter == 86399) begin
counter<=0; end
else begin
counter<=counter+1;end
end
end
end
endmodule
