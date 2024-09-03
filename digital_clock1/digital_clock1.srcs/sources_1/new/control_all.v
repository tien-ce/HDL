`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 01:32:08 PM
// Design Name: 
// Module Name: control_all
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


module control_all(
clk,add1hour,add1min,rst,select,add1hour_normal,add1min_normal,add1hour_alarm,add1min_alarm,pause_counter,clk_1hz,rst_normal,rst_alarm,rst_counter,control_out
    );
input wire  clk,add1hour,add1min,rst,select;
output wire add1hour_normal,add1min_normal,add1hour_alarm,add1min_alarm,pause_counter,clk_1hz,rst_normal,rst_alarm,rst_counter;
control c1 (.clk(clk),.select(select),.out(control_out));
output wire [1:0]control_out;
add a1(.clk(clk),.add1hour(add1hour),.add1min(add1min),.control(control_out),
.out_add1hour_normal(add1hour_normal),.out_add1min_normal(add1min_normal),.out_add1hour_alarm(add1hour_alarm),.out_add1min_alarm(add1min_alarm),.pause_counter(pause_counter));
reset r1(.clk(clk), .rst(rst),.control(control_out),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter));
create1hz cr1(.clk(clk),.rst(rst),.clk_1hz(clk_1hz));
endmodule
