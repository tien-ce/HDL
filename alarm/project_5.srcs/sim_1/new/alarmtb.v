`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 01:28:53 PM
// Design Name: 
// Module Name: alarmtb
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

module alarm_tb;

// Inputs
reg clk;
reg rst;
reg add1min;
reg add1hour;

// Outputs
wire [5:0] out_alarm_min;
wire [4:0] out_alarm_hour;

// Instantiate the Unit Under Test (UUT)
alarm uut (
    .clk(clk), 
    .rst(rst), 
    .add1min(add1min), 
    .add1hour(add1hour), 
    .out_alarm_hour(out_alarm_hour), 
    .out_alarm_min(out_alarm_min)
);

initial begin
    // Initialize Inputs
    clk = 0;
    rst = 1;
    add1min = 0;
    add1hour = 0;

    // Wait 100 ns for global reset to finish
    #100;
    rst = 0;

    // Add stimulus here
    // Test minute increment
    #50 add1min = 1; #10 add1min = 0;
    #50 add1min = 1; #10 add1min = 0;

    // Test hour increment
    #50 add1hour = 1; #10 add1hour = 0;
    #50 add1hour = 1; #10 add1hour = 0;

    // Wait for 100 ns to see the changes
    #100;
    
    // Finish the simulation
    $finish;
end

always #5 clk = ~clk; // Toggle clock every 5 ns

endmodule
