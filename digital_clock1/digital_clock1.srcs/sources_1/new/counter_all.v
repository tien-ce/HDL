`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 04:31:24 PM
// Design Name: 
// Module Name: function
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


module counter_all(
input wire add1hour_normal,add1min_normal,add1hour_alarm,add1min_alarm,pause_counter,clk_1hz,rst_normal,rst_alarm,rst_counter,clk,
output wire[4:0] out_normal_hour,out_alarm_hour,out_counter_hour,   
output wire[5:0] out_normal_min, out_normal_second,out_alarm_min,out_counter_min,out_counter_second
 );
counter counter1(.clk(clk),.rst(rst_counter),.clk_1hz(clk_1hz),.pause(pause_counter),.out_counter_hour(out_counter_hour),.out_counter_min(out_counter_min),.out_counter_second(out_counter_second));
normal normal1(.clk(clk),.rst(rst_normal),.clk_1hz(clk_1hz),.add1_hour(add1hour_normal),.add1_min(add1min_normal),.out_normal_hour(out_normal_hour),.out_normal_min(out_normal_min),.out_normal_second(out_normal_second));
alarm alarm1(.clk(clk),.add1hour(add1hour_alarm),.add1min(add1min_alarm),.rst(rst_alarm),.out_alarm_hour(out_alarm_hour),.out_alarm_min(out_alarm_min));
endmodule

