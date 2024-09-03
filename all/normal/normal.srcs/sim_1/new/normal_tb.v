`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 07:05:15 PM
// Design Name: 
// Module Name: normal_tb
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




module normal_tb;

// Inputs
reg clk;
reg add1_hour;
reg add1_min;
reg rst;
reg clk_1hz;

// Outputs
wire [5:0] out_normal_min;
wire [5:0] out_normal_second;
wire [4:0] out_normal_hour;

// Instantiate the Unit Under Test (UUT)
normal uut (
    .clk(clk), 
    .add1_hour(add1_hour), 
    .add1_min(add1_min), 
    .rst(rst), 
    .out_normal_hour(out_normal_hour), 
    .out_normal_min(out_normal_min), 
    .out_normal_second(out_normal_second), 
    .clk_1hz(clk_1hz)
);

initial begin
    // Initialize Inputs
    clk = 0;
    add1_hour = 0;
    add1_min = 0;
    rst = 0;
    clk_1hz = 0;

    // Wait 100 ns for global reset to finish
    #100;
    rst = 1;
    #10;
    rst = 0;
    
    // Add stimulus here
    #100; add1_hour = 1;
    #10; add1_hour = 0;
    #100; add1_min = 1;
    #10; add1_min = 0;
    #100 rst = 1;
    #10; rst = 0;
end

always #5 clk = ~clk; // Generate a clock with period of 10ns

always #50 clk_1hz = ~clk_1hz; // Generate a 1Hz clock with period of 100ns

endmodule