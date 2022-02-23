/*
  ECE 171 Project 1
  February 2022
  Andrew Stanton

  BCD to seven segment display code (Structural code)
*/

module SevenSegment(W, X, Y, Z, A, B, C, D, E, F, G);
input W, X, Y, Z; //BCD
output A, B, C, D, E, F, G; //7-Segment outputs

//wires for NOT'd inputs
wire Wbar, Xbar, Ybar, Zbar;

//wires designated by which output they "flow" to
wire AT1, AT2, AT3, AT4;
wire BT1, BT2, BT3;
wire CT1;
wire DT1, DT2, DT3, DT4, DT5, DT6, DT7;
wire FT1, FT2, FT3, FT4, FT5;
wire GT1, GT2, GT3, GT4, GT5;

//NOT for all inputs
not #14
  U1a(Wbar, W),
  U1b(Xbar, X),
  U1c(Ybar, Y),
  U1d(Zbar, E, Z); //E is ~Z

//function A
and #15
  U2a(AT1, Xbar, Zbar),
  U2b(AT2, X, Z);
or #15
  U3a(AT3, W, AT1),
  U3b(AT4, AT3, Y),
  U3c(A, AT4, AT2);

//function B
and #15
  U2c(BT1, Ybar, Zbar),
  U2d(BT2, Y, Z);
or #15
  U3d(BT3, Xbar, BT1),
  U7a(B, BT3, BT2);

//function C
or #15
  U7b(CT1, X, Ybar),
  U7c(C, CT1, Z);

//function D
and #15
  U4a(DT1, Wbar, Xbar),
  U4b(DT2, DT1, Zbar),
  U4c(DT5, Y, Zbar),
  U4d(DT3, X, Ybar),
  U5a(DT4, DT3, Z);
or #15
  U7d(DT6, W, DT2),
  U8a(DT7, DT6, DT4),
  U8b(D, DT7, DT5);

//function E
//@see U1d

//function F
and #15
  U5b(FT1, X, Ybar),
  U5c(FT2, X, Zbar),
  U5d(FT3, Ybar, Zbar);
or #15
  U8c(FT4, W, FT1),
  U8d(FT5, FT4, FT2),
  U9a(F, FT5, FT3);

//function G
and #15
  U6a(GT1, Xbar, Y),
  U6b(GT2, X, Ybar),
  U6c(GT3, X, Zbar);
or #15
  U9b(GT4, W, GT1),
  U9c(GT5, GT4, GT2),
  U9d(G, GT5, GT3);
endmodule
