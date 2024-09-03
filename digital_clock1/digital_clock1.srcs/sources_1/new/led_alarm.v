`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 03:19:51 PM
// Design Name: 
// Module Name: led_alarm
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


module led_alarm(
clk,rst,normal_hour,normal_min,alarm_hour,alarm_min,out
    );
input wire clk,rst;
input wire [4:0] normal_hour,alarm_hour;
input wire [5:0] normal_min,alarm_min;
output reg out;
reg on;
reg[31:0] counter;
always @(posedge clk) begin 
if(rst == 1) begin 
on <=0;end
else begin
if(alarm_hour !=0||alarm_min!=0)
on <=1;
if(on == 1) begin
if(normal_hour==alarm_hour && normal_min==alarm_min) begin
out<=1; end 

if(out == 1) begin
//if(counter==125000000) begin  // 10s 
if(counter>=750) begin
counter<=0; out<=0;end
else begin
counter<=counter+1;end
end
else begin
counter<=0;
end 
end 
else begin
out<=0;
end
end
end
endmodule
