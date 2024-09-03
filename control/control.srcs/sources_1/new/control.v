`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 02:51:21 PM
// Design Name: 
// Module Name: control
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


module control(
clk,select,out
    );
input wire clk,select;
output reg[1:0] out;
wire select_btn;
initial begin 
out = 0;
end
RisingEdgeDetector risingcontrol(.clk(clk),.in(select),.out(select_btn));
always @(posedge clk) begin
if(select_btn == 1) begin
if(out == 2) begin 
out<=0;end
else begin
out<=out+1;end
end
end
endmodule
