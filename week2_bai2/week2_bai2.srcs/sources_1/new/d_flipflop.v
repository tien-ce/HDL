`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2024 02:44:17 PM
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop (
    input clk,
    input rst,
    output reg [1:0]led
);
    reg [25:0] cnt;
    reg Q;
    always @(posedge clk ) begin
        if (cnt == 62499999) begin
            led[0] = Q;
            led[1] = !Q;
            cnt <= 0;
            Q <= ~Q;
        end
        else begin
            cnt <= cnt + 1;
        end
    end
endmodule 
