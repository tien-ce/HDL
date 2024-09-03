`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 05:35:40 PM
// Design Name: 
// Module Name: normal
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


module normal(
clk,add1_hour,add1_min,rst,out_normal_hour,out_normal_min,out_normal_second,clk_1hz
    );
input wire clk,add1_hour,add1_min,rst,clk_1hz;
wire add1_hour_bn,add1_min_bn;
RisingEdgeDetector rising1(.clk(clk),.in(add1_hour),.out(add1_hour_bn));
RisingEdgeDetector rising2(.clk(clk),.in(add1_min),.out(add1_min_bn));
output wire[5:0]out_normal_min,out_normal_second;
output wire[4:0]  out_normal_hour;
wire [16:0] counter_sum;
normal_sum sum1(.clk(clk_1hz),.add1hour(add1_hour_bn),.add1min(add1_min_bn),.rst(rst),.counter_sum(counter_sum));
normal_hour h1(.clk(clk),.counter(out_normal_hour),.counter_sum(counter_sum));
normal_min m1(.clk(clk),.counter(out_normal_min),.counter_sum(counter_sum));
normal_second s1(.clk(clk),.counter(out_normal_second),.counter_sum(counter_sum));
endmodule
