`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2024 12:55:50 PM
// Design Name: 
// Module Name: rgb_led
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

module rgb_led(input wire clk, output reg [1:0] led);
  reg [26:0] counter;
  reg temp;
  always @(posedge clk) begin
    if (counter == 62500000) begin
      counter <=0;
      temp <= !temp;
      led[0] <= temp;
      led[1] <= !temp;
    end else begin
    counter <= counter + 1;
    end
  end
endmodule
