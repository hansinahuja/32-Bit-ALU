`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 15:01:26
// Design Name: 
// Module Name: leftShift
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module leftShift(
        input [31:0]A,
        input [31:0]B,
        output [31:0]S
        
    );
    wire [31:0] S0,S1,S2,S3;
    mux2 st0(S0, A, {A[30:0],1'b0},B[0]);
    mux2 st1(S1, S0, {S0[29:0],2'b0},B[1]);
    mux2 st2(S2, S1, {S1[27:0],4'b0},B[2]);
    mux2 st3(S3, S2, {S2[23:0],8'b0},B[3]);
    mux2 st4(S, S3, {S3[15:0],16'b0},B[4]);
endmodule

module mux2(
 output [31:0] S,
 input [31:0] A0,A1,
 input sel
);
assign S = sel? A1 : A0;
endmodule