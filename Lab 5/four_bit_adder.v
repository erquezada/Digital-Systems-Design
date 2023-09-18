`timescale 1ns / 1ps

module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output Cout,
    output [3:0] SUM
    );
    wire c1, c2, c3;
    
full_adder FA0(.A(A[0]),.B(B[0]),.Cin(Cin),.Cout(c1),.SUM(SUM[0])); 
full_adder FA1(.A(A[1]),.B(B[1]),.Cin(c1),.Cout(c2),.SUM(SUM[1]));
full_adder FA2(.A(A[2]),.B(B[2]),.Cin(c2),.Cout(c3),.SUM(SUM[2]));   
full_adder FA3(.A(A[3]),.B(B[3]),.Cin(c3),.Cout(Cout),.SUM(SUM[3]));
    
endmodule
