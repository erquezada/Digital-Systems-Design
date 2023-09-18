`timescale 1ns / 1ps

module traffic_lights_fsm(input clk, input V, output reg [11:0] lights, output reg [2:0] present_state, output reg [2:0] next_state);
    
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;
          
always @(posedge clk)
    present_state <= next_state;

always @(present_state or V)
    case(present_state)
        S0: next_state = S1;
        S1: next_state = S2;
        S2: next_state = S3;
        S3: if(V) next_state = S4; else next_state = S0;
        S4: next_state = S5;
        S5: next_state = S0;
        default: next_state = S0;
    endcase
    
always @(present_state)
    case(present_state)
       S0: lights <= 12'h109;
       S1: lights <= 12'h089;
       S2: lights <= 12'h061;
       S3: lights <= 12'h051;
       S4: lights <= 12'h04C;
       S5: lights <= 12'h04A;
       default: lights <= 12'h000;
   endcase
    
endmodule
