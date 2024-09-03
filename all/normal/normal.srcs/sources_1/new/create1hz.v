`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 06:07:20 PM
// Design Name: 
// Module Name: create1hz
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


module create1hz(
input wire clk,rst ,output reg clk_1hz
    );
reg [25:0] counter;
always @(posedge clk or posedge rst) begin 
if(rst == 1) begin
counter<=0;
clk_1hz = 0;
end
// else if(counter== 62499999) begin
else if (counter == 1) begin
counter<=0;
clk_1hz = ~clk_1hz; end
else begin
counter<=counter+1; end
end
endmodule
