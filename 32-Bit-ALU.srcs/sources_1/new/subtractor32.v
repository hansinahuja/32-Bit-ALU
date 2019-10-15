`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2019 18:39:40
// Design Name: 
// Module Name: subtractor32
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


module subtractor32(
       input [31:0]A,B,
       output [31:0]S,
       output Cout
       
    );
        wire [31:0] Bcomp;
        bitwiseNOT D1(B, Bcomp);
        wire [31:0]Sin,Scomp;
        fastAdder32 unit(1'b1,A,Bcomp,Sin,Cout);
        twoscomplement U(Sin,Scomp);
        wire [31:0]Ctest;
        generate for(genvar i=0;i<32;i=i+1)begin
            assign Ctest[i]=Cout;
        end
        endgenerate
        
        wire [31:0] o1, o2, o3;
        
        bitwiseNOT U1(Ctest, o1);
        bitwiseAND U2(o1, Scomp, o2);
        bitwiseAND U3(Ctest, Sin, o3);
        bitwiseOR U4(o2, o3, S);
       
endmodule
