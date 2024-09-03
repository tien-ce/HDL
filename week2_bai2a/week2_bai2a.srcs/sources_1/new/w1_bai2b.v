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
wire a1,a2;
wire n1;
not(n1,sel);
and(a1,in1,n1);
and(a2,in2,sel);
or(out,a1,a2);
endmodule

module testben;
reg in1,in2,sel;
wire out;
mux2_to1 u1(in1,in2,sel,out);
initial begin
$monitor ("intput in1 = %b,input in2 = %b,input sel = %b, output out = %b",in1,in2,sel,out);
#5 in1=1;in2=0;sel=0;
#5 in1=1;in2=0;sel=1;
#5 $finish;
end
endmodule
