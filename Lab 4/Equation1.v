`timescale 1ns / 1ps

module Equation1(
    input A, B, C, D,
    output F, G, Y, Z
);

    assign F = ~B&~C&~D|~A&D|C;
    assign G = ~A&B&~D|~A&~C&D|A&~B&~C;
    assign Y = C&~D|~A&B&~D|~A&~B&D;
    assign Z = A&D|C&D|~A&B;
endmodule
