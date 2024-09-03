`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 02:21:00 PM
// Design Name: 
// Module Name: debug2_tb
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


module debug2_tb;

// Inputs
reg add1hour_normal;
reg add1min_normal;
reg add1hour_alarm;
reg add1min_alarm;
reg pause_counter;
reg clk_1hz;
reg rst_normal;
reg rst_alarm;
reg rst_counter;
reg clk;
reg [1:0]control;
// Outputs
wire [6:0] led_out_hour1_n;
wire [6:0] led_out_hour2_n;
wire [6:0] led_out_min1_n;
wire [6:0] led_out_min2_n;
wire [6:0] led_out_second1_n;
wire [6:0] led_out_second2_n;

// Instantiate the Unit Under Test (UUT)
debug2 uut (
    .clk(clk),
    .add1hour_normal(add1hour_normal),
    .add1min_normal(add1min_normal),
    .add1hour_alarm(add1hour_alarm),
    .add1min_alarm(add1min_alarm),
    .pause_counter(pause_counter),
    .clk_1hz(clk_1hz),
    .rst_normal(rst_normal),
    .rst_alarm(rst_alarm),
    .rst_counter(rst_counter),
    .led_out_hour1_n(led_out_hour1_n),
    .led_out_hour2_n(led_out_hour2_n),
    .led_out_min1_n(led_out_min1_n),
    .led_out_min2_n(led_out_min2_n),
    .led_out_second1_n(led_out_second1_n),
    .led_out_second2_n(led_out_second2_n),
    .control(control)
);

// Initialize Inputs and add stimulus here
initial begin
    control = 0;
    add1hour_normal = 0;
    add1min_normal = 0;
    add1hour_alarm = 0;
    add1min_alarm = 0;
    pause_counter = 0;
    clk_1hz = 0;
    clk = 0;
    rst_normal = 0;
    rst_alarm = 0;
    rst_counter = 0;
    #50; rst_normal = 1; #10; rst_normal = 0;
    #5; add1hour_normal =1; #10;add1hour_normal=0;
    #50; control =1; #20; add1hour_alarm = 1;#10;add1hour_alarm=0; 
end
always #5 clk = ~clk;
always #20 clk_1hz = ~clk_1hz;
endmodule
