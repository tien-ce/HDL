`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 01:42:15 PM
// Design Name: 
// Module Name: add
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


module add(
clk,add1min,add1hour,control,
out_add1hour_normal,out_add1min_normal,out_add1hour_alarm,out_add1min_alarm,pause_counter
    );
input wire clk,add1hour,add1min;
input wire [1:0] control;
output reg out_add1hour_normal,out_add1min_normal,out_add1hour_alarm,out_add1min_alarm,pause_counter;
wire add1_hour_btn,add1_min_btn;
RisingEdgeDetector risingadd1hour(.clk(clk),.in(add1hour),.out(add1hour_btn));
RisingEdgeDetector risingadd1min(.clk(clk),.in(add1min),.out(add1min_btn));
always @(posedge clk) begin
if(add1hour_btn == 1) begin
if(control==0) begin // normal
out_add1hour_normal = 1;
out_add1min_normal = 0;
out_add1hour_alarm = 0;
out_add1min_alarm = 0;
pause_counter = 0;end
else if (control ==1) begin // alarm 
out_add1hour_normal = 0;
out_add1min_normal = 0;
out_add1hour_alarm = 1;
out_add1min_alarm = 0;
pause_counter = 0; end
else begin  //counter
out_add1hour_normal = 0;
out_add1min_normal = 0;
out_add1hour_alarm = 0;
out_add1min_alarm = 0;
pause_counter = 1;end
end
else if(add1min_btn==1) begin
if(control==0) begin // normal
out_add1hour_normal = 0;
out_add1min_normal = 1;
out_add1hour_alarm = 0;
out_add1min_alarm = 0;
pause_counter = 0;end
else if (control ==1) begin // alarm 
out_add1hour_normal = 0;
out_add1min_normal = 0;
out_add1hour_alarm = 0;
out_add1min_alarm = 1;
pause_counter = 0; end
else begin  //counter
out_add1hour_normal = 0;
out_add1min_normal = 0;
out_add1hour_alarm = 0;
out_add1min_alarm = 0;
pause_counter = 0;end
end
else begin 
out_add1hour_normal = 0;
out_add1min_normal = 0;
out_add1hour_alarm = 0;
out_add1min_alarm = 0;
pause_counter = 0;end
end
endmodule
