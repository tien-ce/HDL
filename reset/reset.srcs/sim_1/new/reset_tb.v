`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 03:41:20 PM
// Design Name: 
// Module Name: reset_tb
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


module reset_tb(
    );
reg clk,rst;
reg [1:0] control;
wire rst_normal,rst_alarm,rst_counter;
reset uut(.clk(clk),.rst(rst),.control(control),.rst_normal(rst_normal),.rst_alarm(rst_alarm),.rst_counter(rst_counter));
initial begin 
clk = 0;
rst = 0;
control = 0;
#100; rst = 1; 
#10; rst =0;
#100; control = 1; rst = 1; #10 rst =0;
#100; control = 2; rst =1; #10 rst = 0;
#100; $finish;
end
always #5 clk = ~clk;
endmodule
