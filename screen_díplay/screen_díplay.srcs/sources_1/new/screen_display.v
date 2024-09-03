`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 03:45:26 PM
// Design Name: 
// Module Name: screen_display
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


module screen_display(clk,control,normal_hour,normal_min,normal_second,alarm_hour,alarm_min,counter_hour,counter_min,counter_second,
led_out_hour1_n,led_out_hour2_n,led_out_min1_n,led_out_min2_n,led_out_second1_n,led_out_second2_n);
output wire[6:0] led_out_hour1_n,led_out_hour2_n,led_out_min1_n,led_out_min2_n,led_out_second1_n,led_out_second2_n;
input wire clk;
input wire [1:0] control;
input wire[5:0] normal_min,normal_second,alarm_min,counter_min,counter_second;
input wire [4:0] normal_hour,alarm_hour,counter_hour;
wire [5:0] alarm_second;
wire [4:0] out_hour;
wire [5:0] out_min,out_second;
assign alarm_second =0;
mux_3to1_hour mux1(.clk(clk),.normal(normal_hour),.alarm(alarm_hour),.counter(counter_hour),.control(control),.out(out_hour));
mux_3to1 mux2(.clk(clk),.normal(normal_min),.alarm(alarm_min),.counter(counter_min),.control(control),.out(out_min));
mux_3to1 mux3(.clk(clk),.normal(normal_second),.alarm(alarm_second),.counter(counter_second),.control(control),.out(out_second));
bin2led7_2led_hour led1(.clk(clk),.bin_in(out_hour),.led_out1_n(led_out_hour1_n),.led_out2_n(led_out_hour2_n));
bin2led7_2led led2(.clk(clk),.bin_in(out_min),.led_out1_n(led_out_min1_n),.led_out2_n(led_out_min2_n));
bin2led7_2led led3(.clk(clk),.bin_in(out_second),.led_out1_n(led_out_second1_n),.led_out2_n(led_out_second2_n));

endmodule
