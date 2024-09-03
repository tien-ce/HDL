`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2024 01:38:21 PM
// Design Name: 
// Module Name: ex_tb
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


module testbench;
    // Khai b�o ??u v�o v� ??u ra
    reg a, b, c;
    wire y_final;

    // Kh?i t?o module complex_logic_gates_with_delay
    complex_logic_gates_with_delay uut (
        .y_final(y_final),
        .a(a),
        .b(b),
        .c(c)
    );

    // Kh?i initial ?? thi?t l?p c�c gi� tr? ??u v�o v� quan s�t ??u ra
    initial begin
        // Thi?t l?p gi� tr? ban ??u cho ??u v�o
        a = 0; b = 0; c = 0;
        #10; // ??i 10 time units

        // Thay ??i gi� tr? ??u v�o
        a = 1; b = 0; c = 1;
        #10; // ??i 10 time units

        a = 0; b = 1; c = 0;
        #10; // ??i 10 time units

        a = 1; b = 1; c = 1;
        #20; // ??i 20 time units
    end

    // Kh?i always ?? hi?n th? gi� tr? ??u ra m?i khi ch�ng thay ??i
    always @(y_final) begin
        $display("Time: %t, FINAL OUTPUT: %b", $time, y_final);
    end
endmodule
