`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2024 06:05:31 PM
// Design Name: 
// Module Name: digital_clock_tb
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


module digital_clock_tb(
    );
reg select,add1hour_pause,add1min,rst,clk;
wire [6:0] led_out_hour1_n,led_out_hour2_n,led_out_min1_n,led_out_min2_n,led_out_second1_n,led_out_second2_n;
wire led_alarm;
digital_clock uut(.select(select),.rst(rst),.clk(clk),.add1hour_pause(add1hour_pause),.add1min(add1min),
.led_out_hour1_n(led_out_hour1_n),.led_out_hour2_n(led_out_hour2_n),.led_out_min1_n(led_out_min1_n),.led_out_min2_n(led_out_min2_n),
.led_out_second1_n(led_out_second1_n),.led_out_second2_n(led_out_second2_n),.led_alarm(led_alarm));
initial begin 
select = 0; add1hour_pause=0;add1min=0;rst = 0; clk = 0;
#100; rst = 1;#10; rst = 0;
#10000; select = 1;#10; select =0;
#1000; rst =1; #10; rst = 0; 
#1000; add1hour_pause= 1; #10;add1hour_pause = 0;
#1000; add1min=1;#10; add1min=0;
#1000; add1min=1;#10; add1min=0;
#1000; select = 1;#10; select =0;
#100; rst = 1; #10 rst = 0;
#1000; add1hour_pause= 1; #10;add1hour_pause = 0;
#10000; add1hour_pause= 1; #10;add1hour_pause = 0;
#1000; select = 1;#10; select =0;
#1000; rst =1; #10; rst = 0; 
#1000; add1min=1;#10; add1min=0;
#1000; add1hour_pause= 1; #10;add1hour_pause = 0;
#90000; $finish ; 
end
always #5 clk = ~clk;
endmodule
