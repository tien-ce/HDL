`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:28:19 PM
// Design Name: 
// Module Name: pause
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


module pause(
    input wire rst,
    input wire clk,
    input wire in,
    output reg out
);
    wire in_btn;
    RisingEdgeDetector rising1(.clk(clk), .in(in), .out(in_btn));

    always @(posedge clk or posedge rst) begin
        if (rst==1) begin
            out <= 0;
        end else if (in_btn==1) begin
            out <= !out;
        end
    end
endmodule
