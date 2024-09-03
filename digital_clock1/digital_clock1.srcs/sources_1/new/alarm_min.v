`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 01:03:06 PM
// Design Name: 
// Module Name: alarm_min
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


module alarm_min(
clk,rst,add1min,out_alarm_min
    );
input wire clk,rst,add1min;
output reg [5:0] out_alarm_min;
wire add1min_btn;
RisingEdgeDetector  alarm_add1min_rising(.clk(clk),.in(add1min),.out(add1min_btn));    
always @(posedge clk) begin
if(rst == 1) begin
out_alarm_min <= 0;
end
else if (add1min_btn==1) begin
if(out_alarm_min == 59) begin
out_alarm_min<= 0; end
else begin
out_alarm_min<= out_alarm_min+1;end
end
end
endmodule
