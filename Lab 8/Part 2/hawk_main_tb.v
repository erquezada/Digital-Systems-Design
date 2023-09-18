module hawk_main_tb;
reg clk;
reg NS;
reg YP;

wire [3:0] lights;
wire [3:0] present_state;
wire [3:0] next_state;
wire set_count;
wire act_count;
wire [3:0] C;

hawk_main uut(

.clk(clk),
.NS(NS),
.YP(YP),
.C(C),
.lights(lights),
.present_state(present_state),
.next_state(next_state),
.set_count(set_count),
.act_count(act_count)
);

initial begin

clk = 0;
NS = 0;
YP = 0;
#120;

YP = 1;
#50;

YP = 0;
#200;

NS = 1;
#200;

$stop;

end

always #10 clk = ~clk;

endmodule