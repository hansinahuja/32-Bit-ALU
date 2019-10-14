`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 23:57:03
// Design Name: 
// Module Name: ariRightShift
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


module ariRightShift(

           input [31:0]A,
        input [31:0]B,
        output [31:0]S
        
    );
    wire [31:0] S0,S1,S2,S3,S4,S5;
    mux2 st0(S0, A, {1'b1,A[31:1]},B[0]);
    mux2 st1(S1, S0, {2'b1,S0[31:2]},B[1]);
    mux2 st2(S2, S1, {4'b1,S1[31:4]},B[2]);
    mux2 st3(S3, S2, {8'b1,S2[31:8]},B[3]);
    mux2 st4(S4, S3, {16'b1,S3[31:16]},B[4]);
    rightShift uut(A,B,S5);
    assign S=A[31]? S4:S5;
endmodule
