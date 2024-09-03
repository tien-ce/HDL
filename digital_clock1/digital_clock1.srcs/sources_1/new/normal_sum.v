`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2024 08:27:05 PM
// Design Name: 
// Module Name: normal_sum
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


module normal_sum(
clk, add1hour,add1min,rst,counter_sum
    );
input add1hour,add1min,rst,clk;
output reg [16:0] counter_sum;
always @(add1min or add1hour) begin 
if(add1hour==1)begin
if(counter_sum < 86400-3600) begin
counter_sum=counter_sum+3600;
end 
else begin 
counter_sum=0;
end
end
else if(add1min==1) begin

if(counter_sum < 86400-60) begin
counter_sum=counter_sum+60;
end 
else begin 
counter_sum=0;
end

end
else begin
end
end
always @(posedge clk or posedge rst) begin
if(rst==1) begin
counter_sum <= 0;end
else if(counter_sum < 86400) begin
counter_sum<= counter_sum+1;
end
else begin
counter_sum<=0;
end
end
endmodule
