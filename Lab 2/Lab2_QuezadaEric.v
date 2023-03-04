`timescale 1ps/1ps

module  Lab2_QuezadaEric (
    input A, input B, input C, output G
);
assign G = (~A&B&~C) | (~B&~C) | (A&B);
    
endmodule