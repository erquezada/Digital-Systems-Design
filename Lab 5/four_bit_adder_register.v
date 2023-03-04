`timescale 1ns / 1ps

module four_bit_adder_register(
input [3:0] A,B,
input Cin,
input Clk,
output [3:0] SUM, Q,
output Cout
);

four_bit_adder adder(.A(A),.B(B),.Cin(Cin),.SUM(SUM),.Cout(Cout));
four_bit_reg register(.d(SUM),.q(Q),.clk(Clk));

endmodule
