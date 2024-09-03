`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:41:12 PM
// Design Name: 
// Module Name: counter
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


module counter(
clk,clk_1hz,rst,pause,out_counter_hour,out_counter_min,out_counter_second
    );
 input wire clk,clk_1hz,rst,pause;
 output wire [4:0] out_counter_hour;
 output wire [5:0] out_counter_min,out_counter_second;
 wire pause_out;
 pause p1(.in(pause),.clk(clk),.rst(rst),.out(pause_out));
 wire [16:0] counter_sum_out;
 counter_sum counter_sum1(.clk(clk_1hz),.pause(pause_out),.rst(rst),.counter(counter_sum_out));
 counter_hour counter_h1(.clk(clk),.counter_sum(counter_sum_out),.counter(out_counter_hour));
 counter_min counter_m1(.clk(clk),.counter_sum(counter_sum_out),.counter(out_counter_min));
  counter_second counter_s1(.clk(clk),.counter_sum(counter_sum_out),.counter(out_counter_second));

endmodule
