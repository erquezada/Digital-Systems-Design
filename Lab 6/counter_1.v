`timescale 1ns / 1ps

module counter_1(
    input clk,
    input reset,
    output [2:0] ps,
    output reg [2:0] ns
    );
        
d_flipflop df2(ns[2], clk, reset, ps[2]);
d_flipflop df1(ns[1], clk, reset, ps[1]);
d_flipflop df0(ns[0], clk, reset, ps[0]);

always @(ps) begin
    ns[2] = (~ps[2]&~ps[1]);
    ns[1] = ps[2]|(~ps[1]&~ps[0]);
    ns[0] = (~ps[2]&~ps[1])|(ps[1]&ps[1]&ps[0]);

end
endmodule
