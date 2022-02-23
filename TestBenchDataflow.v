/*
  ECE 171 Project 1
  February 2022
  Andrew Stanton

  BCD to seven segment display code (Dataflow Test Bench)
*/
`timescale 1ns/1ns
module TestBenchDataflow();
reg W, X, Y, Z; //inputs
wire A, B, C, D, E, F, G; //outputs
SevenSegment SS0(W, X, Y, Z, A, B, C, D, E, F, G);

initial
begin
  //dump data for use with GTKWave
  $dumpfile("TestBenchDataflow.vcd");
  $dumpvars(0,TestBenchDataflow);
W=0; X=0; Y=0; Z=0;
#16 W=0; X=0; Y=0; Z=1;
#16 W=0; X=0; Y=1; Z=0;
#16 W=0; X=0; Y=1; Z=1;
#16 W=0; X=1; Y=0; Z=0;
#16 W=0; X=1; Y=0; Z=1;
#16 W=0; X=1; Y=1; Z=0;
#16 W=0; X=1; Y=1; Z=1;
#16 W=1; X=0; Y=0; Z=0;
#16 W=1; X=0; Y=0; Z=1;
#16
$finish();
end
endmodule
