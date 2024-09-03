`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2024 02:37:32 PM
// Design Name: 
// Module Name: bin2led7_tb
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


module bin2led7_tb;
reg enable;
reg [3:0] bin_in;
wire [6:0] led_out;
bin2led7 uut(.enable(enable),.bin_in(bin_in),.led_out(led_out));
initial begin
#10
enable =0;
bin_in = 4'b0100;
#10;
enable = 1;
bin_in = 4'b0100;
#10
bin_in = 4'b0000;
#10
bin_in = 4'b0011;
#10
bin_in = 4'b1100;
$finish;    /// Ket thúc mô phong
end
always @(led_out)  begin
$display ("At the time %t, enable = %b,bin_in = %b,led_out = %b",$time,enable,bin_in,led_out);
end
endmodule
