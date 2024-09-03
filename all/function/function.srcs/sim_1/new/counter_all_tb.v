`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 05:24:44 PM
// Design Name: 
// Module Name: counter_all_tb
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


module tb_counter_all;

// Inputs
reg add1hour_normal;
reg add1min_normal;
reg add1hour_alarm;
reg addmin_alarm;
reg pause_counter;
reg clk_1hz;
reg rst_normal;
reg rst_alarm;
reg rst_counter;
reg clk;

// Outputs
wire [4:0] out_normal_hour;
wire [4:0] out_alarm_hour;
wire [4:0] out_counter_hour;
wire [5:0] out_normal_min;
wire [5:0] out_normal_second;
wire [5:0] out_alarm_min;
wire [5:0] out_counter_min;
wire [5:0] out_counter_second;

// Instantiate the Unit Under Test (UUT)
counter_all uut (
    .add1hour_normal(add1hour_normal), 
    .add1min_normal(add1min_normal), 
    .add1hour_alarm(add1hour_alarm), 
    .addmin_alarm(addmin_alarm), 
    .pause_counter(pause_counter), 
    .clk_1hz(clk_1hz), 
    .rst_normal(rst_normal), 
    .rst_alarm(rst_alarm), 
    .rst_counter(rst_counter), 
    .clk(clk), 
    .out_normal_hour(out_normal_hour), 
    .out_alarm_hour(out_alarm_hour), 
    .out_counter_hour(out_counter_hour), 
    .out_normal_min(out_normal_min), 
    .out_normal_second(out_normal_second), 
    .out_alarm_min(out_alarm_min), 
    .out_counter_min(out_counter_min), 
    .out_counter_second(out_counter_second)
);

initial begin
    // Initialize Inputs
    add1hour_normal = 0;
    add1min_normal = 0;
    add1hour_alarm = 0;
    addmin_alarm = 0;
    pause_counter = 0;
    clk_1hz = 0;
    rst_normal = 0;
    rst_alarm = 0;
    rst_counter = 0;
    clk = 0;

    // Wait 100 ns for global reset to finish
    #50;
    
    // Add stimulus here
    // Example: Set reset to high and then low
    rst_normal = 1;
    rst_alarm = 1;
    rst_counter= 1;
    
    #10;
    rst_normal = 0;
     rst_alarm = 0;
    rst_counter= 0;
    #50 ;
    add1hour_alarm = 1; #10; add1hour_alarm = 0;
    #50;
    add1hour_normal = 1;#10;add1hour_normal=0;
    #50;
    pause_counter = 1;#10;pause_counter = 0;
    #50;
    pause_counter=1;rst_normal=1; #10;pause_counter=0;rst_normal=0;
    #50;
    addmin_alarm =1;rst_counter = 1; #10; addmin_alarm =0 ;rst_counter=0;
    #50;
    add1min_normal=1;#10; add1min_normal=0;
    #400;
    $finish;
    // Example: Simulate a clock signal
   
end

// Generate a 1Hz clock signal
always #5 clk = ~clk;
always #50 clk_1hz=~clk_1hz;

// Add more test vectors here

endmodule
