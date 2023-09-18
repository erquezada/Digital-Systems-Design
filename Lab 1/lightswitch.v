module LightSwitch (
    input wire clk,  // Clock signal
    input wire rst,  // Reset signal
    output wire light  // Light output signal (0 for off, 1 for on)
);

reg light_state;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        light_state <= 0;  // Initialize the light state to off (0) on reset
    end else begin
        // Toggle the light state on each rising edge of the clock
        light_state <= ~light_state;
    end
end

assign light = light_state;

endmodule
