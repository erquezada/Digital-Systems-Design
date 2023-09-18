`timescale 1ns / 1ps

module counter_testbench;
    reg clk;
    reg reset;
    wire [2:0] ns;
    wire [2:0] ps;

counter_1 uut (
    .clk(clk),
    .reset(reset),
    .ns(ns),
    .ps(ps)
);

initial begin
clk = 0;
reset = 1;
#150;    

reset = 0;
#400;
$stop;
end

always #25 clk = ~clk;

endmodule
