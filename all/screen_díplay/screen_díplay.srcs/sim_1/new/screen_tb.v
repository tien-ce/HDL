`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 11:23:50 AM
// Design Name: 
// Module Name: screen_tb
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


module tb_screen_display;

  // Inputs
  reg clk;
  reg [1:0] control;
  reg [4:0] normal_hour, alarm_hour, counter_hour;
  reg [5:0] normal_min, normal_second, alarm_min, counter_min, counter_second;

  // Outputs
  wire [6:0] led_out_hour1_n, led_out_hour2_n, led_out_min1_n, led_out_min2_n, led_out_second1_n, led_out_second2_n;

  // Instantiate the Unit Under Test (UUT)
  screen_display uut (
    .clk(clk), 
    .control(control), 
    .normal_hour(normal_hour), 
    .normal_min(normal_min), 
    .normal_second(normal_second), 
    .alarm_hour(alarm_hour), 
    .alarm_min(alarm_min), 
    .counter_hour(counter_hour), 
    .counter_min(counter_min), 
    .counter_second(counter_second), 
    .led_out_hour1_n(led_out_hour1_n), 
    .led_out_hour2_n(led_out_hour2_n), 
    .led_out_min1_n(led_out_min1_n), 
    .led_out_min2_n(led_out_min2_n), 
    .led_out_second1_n(led_out_second1_n), 
    .led_out_second2_n(led_out_second2_n)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #10 clk = ~clk; // Generate a clock with 100MHz frequency
  end
  initial begin 
  control = 0;
  control = 0;
    normal_hour = 0;
    normal_min = 0;
    normal_second = 0;
    alarm_hour = 0;
    alarm_min = 0;
    counter_hour = 0;
    counter_min = 0;
    counter_second = 0;
    #50;
    alarm_min=1;
    #50;
    control =1;
    #1000;
    $finish;
  end
endmodule
