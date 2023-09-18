module hawk_datapath_tb;

reg clk;
reg set_count;
reg act_count;
wire [3:0] C;

hawk_datapath uut(
    .clk(clk),
    .set_count(set_count),
    .act_count(act_count),
    .C(C)
    );
   
    initial begin
   
    clk = 0;
    set_count = 0;
    act_count = 0;
    #120;
   
    set_count = 1;
    #50;
   
    set_count = 0;
    #200;
   
    act_count = 1;
    #50;
   
    $stop;
   
    end
   
    always #10 clk = ~clk;
   
endmodule