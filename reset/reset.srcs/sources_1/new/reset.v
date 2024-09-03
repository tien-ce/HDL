`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2024 03:26:49 PM
// Design Name: 
// Module Name: reset
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


module reset(
input wire clk,rst,
input wire[1:0]control,
output reg rst_normal,rst_alarm,rst_counter
    );
    wire rst_btn;
    RisingEdgeDetector rising_reset(.clk(clk),.in(rst),.out(rst_btn));
    always @(posedge clk ) begin 
    if(rst_btn ==1) begin
    if(control ==0 ) begin //normal
    rst_normal = 1;
    rst_alarm = 0;
    rst_counter = 0;
    end
    else if (control ==1) begin // alarm
    rst_normal = 0;
    rst_alarm = 1;
    rst_counter = 0;
    end
    else begin // counter
    rst_normal = 0;
    rst_alarm = 0;
    rst_counter = 1;
    end
    end
    else begin
    rst_normal = 0;
    rst_alarm = 0;
    rst_counter = 0;
    end
    end
endmodule
