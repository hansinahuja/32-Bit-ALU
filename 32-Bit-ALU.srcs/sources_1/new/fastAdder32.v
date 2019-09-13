`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2019 10:01:54
// Design Name: 
// Module Name: fastAdder32
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


module fastAdder32(
        input Cin,
        input [31:0] A, B,
        output [31:0] S,
        output Cout
    );
    genvar i;
    
    wire [8:0] C;
    wire [7:0] Gs,Ps;
    assign C[0]=Cin;
//    generate
//    for(i=0;i<8;i=i+1)begin
//    fastAdder4 U(C[i],
//                A[4*i:(4*i+3)],
//                B[4*i:(4*i+3)],
//                S[4*i:(4*i+3)],
//                C[i+1],
//                Gs[i],
//                Ps[i]
//                );
//    end
//    endgenerate
    generate
    for(i=0;i<8;i=i+1)begin
        fastAdder4 U(C[i],A[4*i+3:(4*i)],B[4*i+3:(4*i)],S[4*i+3:4*i],C[i+1]); 
    end
    endgenerate
    
    assign Cout=C[8];
    
endmodule
