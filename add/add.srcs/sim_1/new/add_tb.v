`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 02:35:56 PM
// Design Name: 
// Module Name: add_tb
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


module add_tb;

// Inputs
reg clk;
reg add1hour;
reg add1min;
reg [1:0]control;

// Outputs
wire out_add1hour_normal;
wire out_add1min_normal;
wire out_add1hour_alarm;
wire out_add1min_alarm;
wire pause_counter;

// Instantiate the Unit Under Test (UUT)
add uut (
    .clk(clk), 
    .add1hour(add1hour), 
    .add1min(add1min), 
    .control(control), 
    .out_add1hour_normal(out_add1hour_normal), 
    .out_add1min_normal(out_add1min_normal), 
    .out_add1hour_alarm(out_add1hour_alarm), 
    .out_add1min_alarm(out_add1min_alarm), 
    .pause_counter(pause_counter)
);

initial begin
    // Initialize Inputs
    clk = 0;
    add1hour = 0;
    add1min = 0;
    control = 0;

    // Wait for 100 ns for global reset to finish
    #100;
    
    // Add stimulus here
    // Test the normal mode
    control = 0; // Set to normal mode
    #10; add1hour = 1; #10; add1hour = 0; // Trigger add1hour
    #10; add1min = 1; #10; add1min = 0; // Trigger add1min
    
    // Test the alarm mode
    #100; control = 1; // Set to alarm mode
    #10; add1hour = 1; #10; add1hour = 0; // Trigger add1hour
    #10; add1min = 1; #10; add1min = 0; // Trigger add1min
    
    // Test the counter mode
    #100; control = 2; // Set to counter mode
    #10; add1hour = 1; #10; add1hour = 0; // Trigger add1hour
    #10; add1min = 1; #10; add1min = 0; // Trigger add1min
    
    // Finish the simulation
    #100; $finish;
end

// Clock generation
always #5 clk = ~clk; // Generate a clock with a period of 10ns

endmodule
