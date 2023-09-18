`timescale 1ns / 1ps

module TestBench1;
reg A;
reg B;
reg C;
reg D;
wire F;
wire G;
wire Y;
wire Z;

Equation1 uut (
.A(A),
.B(B),
.C(C),
.D(D),
.F(F),
.G(G),
.Y(Y),
.Z(Z)
);
initial begin
A = 0; B = 0; C = 0; D = 0;
#20; 
A = 0; B = 0; C = 0; D = 1;
#20; 
A = 0; B = 0; C = 1; D = 0;
#20; 
A = 0; B = 0; C = 1; D = 1;
#20; 
A = 0; B = 1; C = 0; D = 0;
#20; 
A = 0; B = 1; C = 0; D = 1;
#20; 
A = 0; B = 1; C = 1; D = 0;
#20; 
A = 0; B = 1; C = 1; D = 1;
#20;
A = 1; B = 0; C = 0; D = 0;
#20; 
A = 1; B = 0; C = 0; D = 1;
#20;  
$stop;
end
endmodule
