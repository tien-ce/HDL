`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 04:58:07 PM
// Design Name: 
// Module Name: digital_clock
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


module digital_clock(
select,add1hour_pause,add1min,rst,clk,
led_out_hour1_n,led_out_hour2_n,led_out_min1_n,led_out_min2_n,led_out_second1_n,led_out_second2_n,led_alarm
    );
input wire select,add1hour_pause,add1min,rst,clk;
output wire [6:0] led_out_hour1_n,led_out_hour2_n,led_out_min1_n,led_out_min2_n,led_out_second1_n,led_out_second2_n;
output wire led_alarm;
wire add1hour_normal,add1min_normal,add1hour_alarm,add1min_alarm,pause_counter,clk_1hz,rst_normal,rst_alarm,rst_counter;
control_all control_all1(.select(select),.add1hour(add1hour_pause),.add1min(add1min),.rst(rst),.clk(clk),.clk_1hz(clk_1hz),
.add1hour_normal(add1hour_normal),.add1min_normal(add1min_normal),.add1hour_alarm(add1hour_alarm),.add1min_alarm(add1min_alarm),
.pause_counter(pause_counter),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter),.control_out(control_out)
);
wire[4:0] out_normal_hour,out_alarm_hour,out_counter_hour;
 wire[5:0] out_normal_min, out_normal_second,out_alarm_min,out_counter_min,out_counter_second;
 wire [1:0] control_out;
 
counter_all counter_all1(.clk(clk),.add1hour_normal(add1hour_normal),.add1min_normal(add1min_normal),.add1hour_alarm(add1hour_alarm),.add1min_alarm(add1min_alarm),
.pause_counter(pause_counter),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter),.clk_1hz(clk_1hz),
.out_normal_hour(out_normal_hour),.out_alarm_hour(out_alarm_hour),.out_counter_hour(out_counter_hour),
.out_normal_min(out_normal_min),.out_normal_second(out_normal_second),.out_alarm_min(out_alarm_min),
.out_counter_min(out_counter_min),.out_counter_second(out_counter_second));

screen_display screen_display1(.clk(clk),.control(control_out),.normal_hour(out_normal_hour),.normal_min(out_normal_min),.normal_second(out_normal_second),
.alarm_hour(out_alarm_hour),.alarm_min(out_alarm_min),.counter_hour(out_counter_hour),.counter_min(out_counter_min),.counter_second(out_counter_second),
.led_out_hour1_n(led_out_hour1_n),.led_out_hour2_n(led_out_hour2_n),.led_out_min1_n(led_out_min1_n),.led_out_min2_n(led_out_min2_n),.led_out_second1_n(led_out_second1_n),.led_out_second2_n(led_out_second2_n));
 led_alarm led_alarm1(.clk(clk),.rst(rst_alarm),.normal_hour(out_normal_hour),.normal_min(out_normal_min),.alarm_hour(out_alarm_hour),.alarm_min(out_alarm_min),.out(led_alarm));
endmodule
