`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 02:16:52 PM
// Design Name: 
// Module Name: debug2
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


module debug2(
input wire  add1hour_normal,clk,add1min_normal,add1hour_alarm,add1min_alarm,pause_counter,clk_1hz,rst_normal,rst_alarm,rst_counter,
input wire [1:0] control,
output wire [6:0] led_out_hour1_n,led_out_hour2_n,led_out_min1_n,led_out_min2_n,led_out_second1_n,led_out_second2_n,
output wire led_alarm
    );
wire[4:0] out_normal_hour,out_alarm_hour,out_counter_hour;
wire[5:0] out_normal_min, out_normal_second,out_alarm_min,out_counter_min,out_counter_second;
counter_all counter_all3(.clk(clk),.add1hour_normal(add1hour_normal),.add1min_normal(add1min_normal),.add1hour_alarm(add1hour_alarm),.add1min_alarm(add1min_alarm),
.pause_counter(pause_counter),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter),.clk_1hz(clk_1hz),
.out_normal_hour(out_normal_hour),.out_alarm_hour(out_alarm_hour),.out_counter_hour(out_counter_hour),
.out_normal_min(out_normal_min),.out_normal_second(out_normal_second),.out_alarm_min(out_alarm_min),
.out_counter_min(out_counter_min),.out_counter_second(out_counter_second));

screen_display screen_display1(.clk(clk),.control(control),.normal_hour(out_normal_hour),.normal_min(out_normal_min),.normal_second(out_normal_second),
.alarm_hour(out_alarm_hour),.alarm_min(out_alarm_min),.counter_hour(out_counter_hour),.counter_min(out_counter_min),.counter_second(out_counter_second),
.led_out_hour1_n(led_out_hour1_n),.led_out_hour2_n(led_out_hour2_n),.led_out_min1_n(led_out_min1_n),.led_out_min2_n(led_out_min2_n),.led_out_second1_n(led_out_second1_n),.led_out_second2_n(led_out_second2_n));
 led_alarm led_alarm1(.clk(clk),.rst(rst_alarm),.normal_hour(out_normal_hour),.normal_min(out_normal_min),.alarm_hour(out_alarm_hour),.alarm_min(out_alarm_min),.out(led_alarm));
endmodule
