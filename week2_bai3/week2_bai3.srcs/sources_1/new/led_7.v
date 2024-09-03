`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2024 01:47:32 PM
// Design Name: 
// Module Name: led_7
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


module bin2led7 (enable,bin_in,led_out);
input wire enable;  // ??u vào tín hi?u enable
input wire[3:0] bin_in; // Tín hi?u ??u vào xác ??nh s? t? 0 - 9
output reg [6:0] led_out;  // ??u ra c?a led 7 ?o?n
always @(*) begin   
if(enable== 0) begin//  T?t c? các led ??u t?t
led_out = 7'b0000000; 
end
else begin
case (bin_in)
4'b0000: led_out= 7'b0111111;   // Tr??ng h?p 0
4'b0001: led_out= 7'b0110000;   // Tr??ng h?p 1
4'b0010: led_out= 7'b1101101;   // Tr??ng h?p 2
4'b0011: led_out= 7'b1111001;   // Tr??ng h?p 3
4'b0100: led_out= 7'b0110011;   // Tr??ng h?p 4
4'b0101: led_out= 7'b1011011;   // Tr??ng h?p 5
4'b0110: led_out= 7'b1011111;   // Tr??ng h?p 6
4'b0111: led_out= 7'b1110000;   // Tr??ng h?p 7
4'b1000: led_out= 7'b1111111;   // Tr??ng h?p 8
4'b1001: led_out= 7'b1111011;   // Tr??ng h?p 9
default: led_out= 7'b0111111;   // T?t c? các tr??ng h?p còn l?i hi?n th? 0
endcase
end
end
endmodule
