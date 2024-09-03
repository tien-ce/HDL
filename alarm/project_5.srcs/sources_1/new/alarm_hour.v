`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 01:03:06 PM
// Design Name: 
// Module Name: alarm_hour
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


module alarm_hour(
clk,rst,add1hour,out_alarm_hour
    );
input wire clk,rst,add1hour;
output  reg[4:0] out_alarm_hour;
wire add1hour_btn;
RisingEdgeDetector alarm_add1hour_rising(.clk(clk),.in(add1hour),.out(add1hour_btn));
always @(posedge clk)begin
if(rst == 1) begin
out_alarm_hour <=0;
end
else if(add1hour_btn==1) begin
if(out_alarm_hour==23) begin
out_alarm_hour <=0;
end
else begin
out_alarm_hour <= out_alarm_hour+1;
end
end

end
endmodule
