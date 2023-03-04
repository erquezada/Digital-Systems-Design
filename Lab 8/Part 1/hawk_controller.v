`timescale 1ns / 1ps

module hawk_controller(
    input clk, input YP, input NS, output reg [3:0] lights, output reg [3:0] present_state, output reg [3:0] next_state
);

parameter S0  = 4'b0000, S1  = 4'b0001, S2  = 4'b0010, S3  = 4'b0011, S4  = 4'b0100, S5  = 4'b0101, S6  = 4'b0110, S7  = 4'b0111, S8  = 4'b1000,
S9  = 4'b1001, S10 = 4'b1010, S11 = 4'b1011, S12 = 4'b1100;

always @(posedge clk)
    present_state <= next_state;
   
//Defining the next state
always @(present_state or YP or NS)
 
    case(present_state)
    S0: if(YP) next_state = S1;
          else next_state = S0;
    S1: next_state = S2;
    S2: next_state = S3;
    S3: next_state = S4;
    S4: next_state = S5;
    S5: next_state = S6;
    S6: next_state = S7;
    S7: next_state = S8;
    S8: if(NS)next_state = S9;
          else next_state = S8;
    S9: next_state = S10;
    S10: next_state = S11;
    S11: next_state = S12;
    S12: next_state = S0;
    default: next_state = S0;
  endcase
  
 
always @(present_state)
    case(present_state)
        S0:     lights <= 12'h00;
        S1:     lights <= 12'h2A;
        S2:     lights <= 12'h32;
        S3:     lights <= 12'h4A;
        S4:     lights <= 12'h52;
        S5:     lights <= 12'h6A;
        S6:     lights <= 12'h7A;
        S7:     lights <= 12'h86;
        S8:     lights <= 12'h95;
        S9:     lights <= 12'hA4;
        S10:    lights <= 12'hB2;
        S11:    lights <= 12'hC4;
        S12:    lights <= 12'h02;
     
        default: lights <= 12'h0000;
        endcase
endmodule
