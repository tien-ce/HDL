`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 02:53:24 PM
// Design Name: 
// Module Name: mux2_to1
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
module mux2_to1(input in1,in2,sel,output out);
wire out1,out2,a1,a2;
w1 a(sel,out1,out2);
and(a1,in1,out1);
and(a2,in2,out2);
or(out,a1,a2);
endmodule
