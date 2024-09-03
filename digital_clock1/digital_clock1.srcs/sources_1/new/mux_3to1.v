`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 03:07:53 PM
// Design Name: 
// Module Name: mux_3to1
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


module mux_3to1(clk,
normal,alarm,counter,control,out
    );
input wire clk;
input wire[5:0] normal,alarm,counter;
input wire [1:0]control;
output reg[5:0] out;
always@(posedge clk)
begin
if(control==0)begin //normal
out = normal;
end
else if(control==1) begin // alarm
out = alarm;
end
else begin  // counter
out = counter;
end
end
endmodule
