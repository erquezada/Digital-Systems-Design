`timescale 1ns / 1ps

module hawk_datapath(
    input clk, set_count, act_count,
    output reg [3:0] count
    );
   
    always @(posedge clk) begin
        if (set_count)
           count <= 4'b1010;
        else if (act_count)
           count <= count - 1;
       
end
endmodule
