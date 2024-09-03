`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 12:10:43 PM
// Design Name: 
// Module Name: debug
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


module debug(

select,add1hour_pause,add1min,rst,clk,
out_normal_hour,out_alarm_hour,out_counter_hour, out_normal_min, out_normal_second,out_alarm_min,out_counter_min,out_counter_second
    );
input wire select,add1hour_pause,add1min,rst,clk;
wire add1hour_normal,add1min_normal,add1hour_alarm,add1min_alarm,pause_counter,clk_1hz,rst_normal,rst_alarm,rst_counter;
control_all control_all2(.select(select),.add1hour(add1hour_pause),.add1min(add1min),.rst(rst),.clk(clk),.clk_1hz(clk_1hz),
.add1hour_normal(add1hour_normal),.add1min_normal(add1min_normal),.add1hour_alarm(add1hour_alarm),.add1min_alarm(add1min_alarm),
.pause_counter(pause_counter),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter),.control_out(control_out)
);
 output wire[4:0] out_normal_hour,out_alarm_hour,out_counter_hour;
 output wire[5:0] out_normal_min, out_normal_second,out_alarm_min,out_counter_min,out_counter_second;
 wire [1:0] control_out;
 
 
counter_all counter_all2(.clk(clk),.add1hour_normal(add1hour_normal),.add1min_normal(add1min_normal),.add1hour_alarm(add1hour_alarm),.add1min_alarm(add1min_alarm),
.pause_counter(pause_counter),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter),.clk_1hz(clk_1hz),
.out_normal_hour(out_normal_hour),.out_alarm_hour(out_alarm_hour),.out_counter_hour(out_counter_hour),
.out_normal_min(out_normal_min),.out_normal_second(out_normal_second),.out_alarm_min(out_alarm_min),
.out_counter_min(out_counter_min),.out_counter_second(out_counter_second));


endmodule
