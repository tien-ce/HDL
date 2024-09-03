`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2024 12:14:05 PM
// Design Name: 
// Module Name: debug_tb
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


module debug_tb(
    );
    reg select,add1hour_pause,add1min,rst,clk;
  wire[4:0] out_normal_hour,out_alarm_hour,out_counter_hour;
  wire[5:0] out_normal_min, out_normal_second,out_alarm_min,out_counter_min,out_counter_second;
debug uut(
    .select(select),
    .add1hour_pause(add1hour_pause),
    .add1min(add1min),
    .rst(rst),
    .clk(clk),
    .out_normal_hour(out_normal_hour),
    .out_alarm_hour(out_alarm_hour),
    .out_counter_hour(out_counter_hour),
    .out_normal_min(out_normal_min),
    .out_normal_second(out_normal_second),
    .out_alarm_min(out_alarm_min),
    .out_counter_min(out_counter_min),
    .out_counter_second(out_counter_second)
);
initial begin 
select = 0; add1hour_pause=0;add1min=0;rst = 0; clk = 0;
#20 ;
rst = 1; #10 rst =0;
#200; select = 1;#10 select = 0;
#20; rst = 1; #10;rst =0;
#200; add1hour_pause=1;#10;add1hour_pause =0;
#400 select  = 1;#10 select = 0;
#20; rst = 1; #10;rst =0;
#200; add1hour_pause=1;#10; add1hour_pause =0;
#3000; $finish ; 
end
always #5 clk = ~clk;
endmodule
