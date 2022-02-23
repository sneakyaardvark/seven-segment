/*
  ECE 171 Project 1
  February 2022
  Andrew Stanton

  BCD to seven segment display code (Dataflow code)
*/

module SevenSegment(W, X, Y, Z, A, B, C, D, E, F, G);
input W, X, Y, Z; //BCD
output A, B, C, D, E, F, G; //7-Segment outputs


//assign outputs to equations, delay of 8 time units
assign #8 A = ~X & ~Z | W | Y | X & Z;
assign #8 B = ~Y & ~Z | Y & Z | ~X;
assign #8 C = X | Z | ~Y;
assign #8 D = ~W & ~X & ~Z | X & ~Y & Z | Y & ~Z | W;
assign #8 E = ~Z;
assign #8 F = ~Y & ~Z | X & ~Z | X & ~Y | W;
assign #8 G = ~X & Y | X & ~Z | X & ~Y | W;
endmodule
