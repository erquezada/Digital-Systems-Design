module hawk_main(
input clk, NS, YP,
output [3:0] lights, [3:0] present_state,
output [3:0] next_state, [3:0] C, set_count, act_count
    );
   

hawk_controller C1(clk, YP, NS, C, lights, present_state, next_state, set_count, act_count);
hawk_datapath D1(clk, set_count, act_count, C);

endmodule