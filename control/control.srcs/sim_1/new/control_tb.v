`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 03:01:52 PM
// Design Name: 
// Module Name: control_tb
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


module control_tb();
reg select,clk;
wire [1:0] out;
control uut(.clk(clk),.out(out),.select(select));
initial begin 
clk = 0;
select = 0;

#100 
select = 1;
#10; select = 0; // test select
#50; select = 1;
#10; select = 0;
#50; select = 1;
#10; select = 0;
#100; $finish;
end
always #5 clk = ~clk;
endmodule
