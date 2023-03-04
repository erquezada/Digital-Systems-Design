`timescale 1ns / 1ps

module hawk_controller_tb;
reg clk; 
reg YP;
reg NS;
wire [3:0] lights;
wire [3:0] present_state;
wire [3:0] next_state;

hawk_controller uut (
.clk(clk),
.YP(YP),
.NS(NS),
.lights(lights),
.present_state(present_state),
.next_state(next_state)
);

initial begin
clk = 0;
YP = 0;
NS = 0;
#120;
YP = 1;
NS = 0;
#50;
#200;
YP = 0;
NS =1;
#200;

$stop;
end

always #10 clk = ~clk;
endmodule

