`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2024 06:56:42 PM
// Design Name: 
// Module Name: bin2led7_2led_hour
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


module bin2led7_2led_hour(clk,bin_in,led_out1_n,led_out2_n );
input wire clk;
input wire [4:0] bin_in;
output wire[6:0] led_out1_n;
output wire[6:0] led_out2_n;
 wire enable;
 assign enable = 1;
wire [3:0] bin_in1 = bin_in/10;
wire [3:0] bin_in2 = bin_in%10;
bin2led7 b1(.clk(clk),.enable(enable),.bin_in(bin_in1),.led_out_n(led_out1_n));
bin2led7 b2(.clk(clk),.enable(enable),.bin_in(bin_in2),.led_out_n(led_out2_n));
endmodule
