`timescale 1ns / 1ps


module four_bit_reg(
output [3:0] q,
input [3:0] d,
input clk
);

d_flipflop D0(.d(d[0]),.q(q[0]),.clk(clk));
d_flipflop D1(.d(d[1]),.q(q[1]),.clk(clk));
d_flipflop D2(.d(d[2]),.q(q[2]),.clk(clk));
d_flipflop D3(.d(d[3]),.q(q[3]),.clk(clk));

endmodule
