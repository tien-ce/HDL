`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2024 01:36:01 PM
// Design Name: 
// Module Name: ex
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

    
// module UUT
module complex_logic_gates_with_delay(
    output y_final,
    input a,
    input b,
    input c
);
    wire y_and;
    wire y_or;
    wire y_xor;
    wire y_nand;

    // Các c?ng logic v?i delay
    and #5 (y_and, a, b);   // Delay 5 time units
    or #3 (y_or, y_and, c);  // Delay 3 time units
    xor #2 (y_xor, y_or, b); // Delay 2 time units
    nand #4 (y_nand, y_xor, a); // Delay 4 time units

    // C?ng cu?i cùng không có delay
    buf (y_final, y_nand);
endmodule
