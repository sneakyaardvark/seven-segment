/*
This file is part of SevenSegment.

SevenSegment is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

SevenSegment is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with SevenSegment. If not, see <https://www.gnu.org/licenses/>.
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
