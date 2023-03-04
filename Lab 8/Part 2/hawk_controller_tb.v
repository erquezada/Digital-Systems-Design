module hawk_controller_tb;

reg clk;
reg YP;
reg NS;
reg [3:0] C;
wire [3:0] present_state;
wire [3:0] next_state;
wire [3:0] lights;
wire set_count;
wire act_count;

hawk_controller uut(
    .clk(clk),
    .YP(YP),
    .NS(NS),
    .C(C),
    .present_state(present_state),
    .next_state(next_state),
    .lights(lights),
    .set_count(set_count),
    .act_count(act_count)
    );
   
initial clk = 1;
always #5 clk = ~clk;
   
initial begin

C = 4'b1010;
YP = 0;
NS = 0;
#120;

YP = 1;
#50;

YP = 0;
#200;

NS = 1;
#200;

NS = 0;
#200;

C = 0;


$stop;

end

endmodule