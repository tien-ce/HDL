`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 01:03:06 PM
// Design Name: 
// Module Name: alarm
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


module alarm(
clk,rst,add1min,add1hour,out_alarm_hour,out_alarm_min
    );
input wire clk,rst,add1min,add1hour;
output wire[5:0] out_alarm_min;
output wire[4:0] out_alarm_hour;
alarm_hour ah1(.clk(clk),.rst(rst),.add1hour(add1hour),.out_alarm_hour(out_alarm_hour));
alarm_min am1(.clk(clk),.rst(rst),.add1min(add1min),.out_alarm_min(out_alarm_min));
endmodule
