`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 02:29:40 PM
// Design Name: 
// Module Name: bin2led7_2ledtb
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


module bin2led7_2led_tb;

// Inputs
reg clk;
reg enable;
reg [5:0] bin_in;

// Outputs
wire [6:0] led_out1_n;
wire [6:0] led_out2_n;

// Instantiate the Unit Under Test (UUT)
bin2led7_2led uut (
    .clk(clk), 
    .enable(enable), 
    .bin_in(bin_in), 
    .led_out1_n(led_out1_n), 
    .led_out2_n(led_out2_n)
);

initial begin
    // Initialize Inputs
    clk = 0;
    enable = 1;
    bin_in = 0;

    // Wait 100 ns for global reset to finish
    #100;
    
    // Add stimulus here
    // Case 1: One digit (e.g., 5)
    bin_in = 5;
    #10; // Wait for the output to stabilize
    $display("Input: %d, LED1: %b, LED2: %b", bin_in, led_out1_n, led_out2_n);

    // Case 2: Two digits (e.g., 12)
    bin_in = 12;
    #10; // Wait for the output to stabilize
    $display("Input: %d, LED1: %b, LED2: %b", bin_in, led_out1_n, led_out2_n);

    // Case 3: Number 59
    bin_in = 59;
    #10; // Wait for the output to stabilize
    $display("Input: %d, LED1: %b, LED2: %b", bin_in, led_out1_n, led_out2_n);
    
    // Finish the simulation
    $finish;
end

always #5 clk = ~clk; // Generate clock with period of 10 ns

endmodule