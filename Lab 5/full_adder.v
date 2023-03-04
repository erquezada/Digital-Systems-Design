`timescale 1ns / 1ps


module full_adder(
    input A, B, Cin,
    output Cout,
    output SUM
    );
    
assign {Cout, SUM} = A + B + Cin;

endmodule
