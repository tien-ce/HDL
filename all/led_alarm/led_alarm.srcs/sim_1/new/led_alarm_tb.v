`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 04:06:05 PM
// Design Name: 
// Module Name: led_alarm_tb
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


module led_alarm_tb;

    // Inputs
    reg clk;
    reg rst;
    reg [4:0] normal_hour;
    reg [5:0] normal_min;
    reg [4:0] alarm_hour;
    reg [5:0] alarm_min;

    // Output
    wire out;

    // Instantiate the Unit Under Test (UUT)
    led_alarm uut (
        .clk(clk), 
        .rst(rst), 
        .normal_hour(normal_hour), 
        .normal_min(normal_min), 
        .alarm_hour(alarm_hour), 
        .alarm_min(alarm_min), 
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock
    end

    // Test sequence
    initial begin
        // Initialize Inputs
        rst = 0;
        normal_hour = 1;
        normal_min = 0;
        alarm_hour = 0;
        alarm_min = 0;

        // Wait for global reset
        #100;
        rst = 1; #10 rst = 0;

        // Set alarm time
        alarm_hour = 5'd12; // 12 hours
        alarm_min = 6'd30;  // 30 minutes

        // Simulate normal time passing
        #100;
        normal_hour = 5'd12; // 12 hours
        normal_min = 6'd29;  // 29 minutes
        #10;
        normal_min = 6'd30;  // 30 minutes - LED should turn on
          #10;
        normal_min = 6'd31;  // 30 minutes - LED should turn on
        // Wait to see if LED stays on for the duration of the counter
        #1000; // Adjust this delay based on your counter value and clock frequency

        // Add more test cases as needed

        // Finish the simulation
        $finish;
    end
      
endmodule
