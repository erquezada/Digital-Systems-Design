// LightSwitch_tb.v
module LightSwitch_tb;

reg clk;
reg rst;
wire light;

// Instantiate the LightSwitch module
LightSwitch uut (
    .clk(clk),
    .rst(rst),
    .light(light)
);

// Clock generation
always begin
    #5 clk = ~clk;  // Toggle the clock every 5 time units
end

// Reset generation
initial begin
    rst = 1;       // Assert reset
    clk = 0;       // Initialize clock
    #10 rst = 0;   // Deassert reset after 10 time units
    #100 $finish;  // Finish simulation after 100 time units
end

// Monitor and display the light state
always @(posedge clk) begin
    $display("Time=%0t: Light=%b", $time, light);
end

endmodule
