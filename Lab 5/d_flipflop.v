`timescale 1ns / 1ps

module d_flipflop(
    input d,
    input clk,
    output reg q,qbar
    );
    
always @(posedge clk)
 begin
 q <= d;
 qbar <= ~d;
 end
endmodule
