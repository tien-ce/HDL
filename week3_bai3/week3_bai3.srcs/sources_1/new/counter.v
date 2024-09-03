`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2024 04:13:17 PM
// Design Name: 
// Module Name: counter
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


module counter (
    input wire clk, // Clock signal
    input wire rst, // Reset signal
    input wire btn, // Button signal
    output reg [3:0] count // 4-bit counter
);
wire out;
RisingEdgeDetector(.clk(clk),.in(btn),.out(out));
always @(posedge clk) begin
if(rst)begin
count <= 0;end
else if(out)begin
count<= count+1; end
end
endmodule
