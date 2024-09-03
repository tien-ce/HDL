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
    // Khai báo ??u vào và ??u ra
    reg a, b, c;
    wire y_final;

    // Kh?i t?o module complex_logic_gates_with_delay
    complex_logic_gates_with_delay uut (
        .y_final(y_final),
        .a(a),
        .b(b),
        .c(c)
    );

    // Kh?i initial ?? thi?t l?p các giá tr? ??u vào và quan sát ??u ra
    initial begin
        // Thi?t l?p giá tr? ban ??u cho ??u vào
        a = 0; b = 0; c = 0;
        #10; // ??i 10 time units

        // Thay ??i giá tr? ??u vào
        a = 1; b = 0; c = 1;
        #10; // ??i 10 time units

        a = 0; b = 1; c = 0;
        #10; // ??i 10 time units

        a = 1; b = 1; c = 1;
        #20; // ??i 20 time units
    end

    // Kh?i always ?? hi?n th? giá tr? ??u ra m?i khi chúng thay ??i
    always @(y_final) begin
        $display("Time: %t, FINAL OUTPUT: %b", $time, y_final);
    end
endmodule
