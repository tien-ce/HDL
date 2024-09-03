`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 05:04:56 PM
// Design Name: 
// Module Name: counter1_tb
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

`timescale 1ns / 1ps

module counter2_tb;

// Inputs
reg clk;
reg clk_1hz;
reg rst;
reg pause;

// Outputs
wire [4:0] out_counter_hour;
wire [5:0] out_counter_min;
wire [5:0] out_counter_second;

// Instantiate the Unit Under Test (UUT)
counter uut (
    .clk(clk), 
    .clk_1hz(clk_1hz), 
    .rst(rst), 
    .pause(pause), 
    .out_counter_hour(out_counter_hour), 
    .out_counter_min(out_counter_min), 
    .out_counter_second(out_counter_second)
);

initial begin
    // Initialize Inputs
    clk = 0;
    clk_1hz = 0;
    rst = 0;
    pause = 0;

    // Wait 100 ns for global reset to finish
    #10;
    rst = 1;
    #10
    rst =0 ;
    #10
    pause =1;
    #10
    pause =0;
    #200 
    pause = 1;
    #10
    pause = 0;
    #200
    rst = 1;
    #10 
    rst =0;
    // Add stimulus here
    #1000; // Run simulation for 1ms
end

// Clock generation
always #5 clk = ~clk; // Generate a clock with a period of 10ns
always #50 clk_1hz = ~clk_1hz; // Generate a 1Hz clock with a period of 1s

endmodule
