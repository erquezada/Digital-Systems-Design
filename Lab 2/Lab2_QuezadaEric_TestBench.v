`timescale 1ps/1ps

module Lab2_Quezada_Eric_TestBench; 
reg A;
reg B;
reg C;

wire G;

Lab2_QuezadaEric uut (
    .A(A), .B(B), .C(C), .G(G));

initial begin
    A = 0; B = 0; C = 0;
    #20;
    A = 0; B = 0; C = 1;
    #20;
    A = 0; B = 1; C = 0;
    #20;
    A = 0; B = 1; C = 1;
    #20;
    A = 1; B = 0; C = 0;
    #20;
    A = 1; B = 0; C = 1;
    #20;
    A = 1; B = 1; C = 0;
    #20;
    A = 1; B = 1; C = 1;
    #20;
    $finish;
end

always @(A or B or C or G) begin
    $display("Input: A=%b, B=%b, C=%b, Output: G=%b", A, B, C, G);
end

endmodule
