`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 02:14:48 PM
// Design Name: 
// Module Name: control_all_tb
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


module tb_main_module;

// Inputs
reg clk;
reg add1hour;
reg add1min;
reg rst;
reg select;

// Outputs
wire add1hour_normal;
wire add1min_normal;
wire add1hour_alarm;
wire add1min_alarm;
wire pause_counter;
wire clk_1hz;
wire rst_normal;
wire rst_alarm;
wire rst_counter;

// Instantiate the Unit Under Test (UUT)
control_all uut (
    .clk(clk), 
    .add1hour(add1hour), 
    .add1min(add1min), 
    .rst(rst), 
    .select(select), 
    .add1hour_normal(add1hour_normal), 
    .add1min_normal(add1min_normal), 
    .add1hour_alarm(add1hour_alarm), 
    .add1min_alarm(add1min_alarm), 
    .pause_counter(pause_counter), 
    .clk_1hz(clk_1hz), 
    .rst_normal(rst_normal), 
    .rst_alarm(rst_alarm), 
    .rst_counter(rst_counter)
    
);

initial begin
    // Initialize Inputs
    clk = 0;
    add1hour = 0;
    add1min = 0;
    rst = 0;
    select = 0;

    // Wait for 100 ns for global reset to finish
    #100;
    add1hour = 1;
    
    #10; add1hour = 0; 
    // Add stimulus here
    #50;
    rst = 1; // Assert reset
    #10;     rst = 0; // Deassert reset
    #20;
    select = 1; // Change select signal
    #10;select = 0;
    #50;
 
    add1min = 1;
    #10; add1min =0;
    #50;
    select = 1; 
    #10 select = 0;
    add1hour = 1;
 
    #10 add1hour=0;
    #50;
    rst =1;
    #10; rst = 0 ;
    #400; $finish;
end

// Clock generation
always #5 clk = ~clk; // Generate a clock with a period of 10ns

// 1Hz Clock generation (160ns period for simulation purposes)

endmodule
