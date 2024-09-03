`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2024 03:09:31 PM
// Design Name: 
// Module Name: bin2led7
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

module bin2led7 (clk,enable,bin_in,led_out_n);
input wire clk;
input wire enable;  // Tín hi?u ??u vào enable xác ??nh có hi?n th? không
input wire[3:0] bin_in; // Ti?n hi?u ??u vào xác ??nh s? c?n hi?n th?
output reg [6:0] led_out_n;  // Tín hi?u ??u ra led 7 ?o?n
always @(posedge clk) begin   
if(enable== 0) begin//  T?t c? ??u t?t
led_out_n <= 7'b1111111; 
end
else begin
case (bin_in)
4'b0000: led_out_n<= 7'b0000001;   // Tr??ng h?p 0
4'b0001: led_out_n<= 7'b1001111;   // Tr??ng h?p 1
4'b0010: led_out_n<= 7'b0010010;   // Tr??ng h?p 2
4'b0011: led_out_n<= 7'b0000110;   // Tr??ng h?p 3
4'b0100: led_out_n<= 7'b1001100;   // Tr??ng h?p 4
4'b0101: led_out_n<= 7'b0100100;   // Tr??ng h?p 5
4'b0110: led_out_n<= 7'b0100000;   // Tr??ng h?p 6
4'b0111: led_out_n<= 7'b0001111;   // Tr??ng h?p 7
4'b1000: led_out_n<= 7'b0000000;   // Tr??ng h?p 8
4'b1001: led_out_n<= 7'b0000100;   // Tr??ng h?p 9
default: led_out_n<= 7'b0000001;   //  Tr??ng h?p còn l?i hi?n th? 0
endcase
end
end
endmodule
