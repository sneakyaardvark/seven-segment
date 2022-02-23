/*
  ECE 171 Project 1
  February 2022
  Andrew Stanton

  BCD to seven segment display code (Structural Test Bench)
*/

module TestBenchStructural();
reg W, X, Y, Z; //inputs
wire A, B, C, D, E, F, G; //outputs
SevenSegment SS0(W, X, Y, Z, A, B, C, D, E, F, G);

initial
begin
W=0; X=0; Y=0; Z=0;
#89 W=0; X=0; Y=0; Z=1;
#89 W=0; X=0; Y=1; Z=0;
#89 W=0; X=0; Y=1; Z=1;
#89 W=0; X=1; Y=0; Z=0;
#89 W=0; X=1; Y=0; Z=1;
#89 W=0; X=1; Y=1; Z=0;
#89 W=0; X=1; Y=1; Z=1;
#89 W=1; X=0; Y=0; Z=0;
#89 W=1; X=0; Y=0; Z=1;
#89
$finish();
end
endmodule