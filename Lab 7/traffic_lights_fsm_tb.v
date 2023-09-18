`timescale 1ns / 1ps


module traffic_lights_fsm_tb;
reg clk;
reg V;
wire [2:0] present_state;
wire [2:0] next_state;
wire [11:0] lights;

traffic_lights_fsm uut (
.clk(clk),
.V(V),
.present_state(present_state),
.next_state(next_state),
.lights(lights)
);

initial begin
clk = 0;
V = 0;
#220;
V = 1;
#50;
V = 0;
#200;

$stop;
end

always #10 clk = ~clk;
endmodule
