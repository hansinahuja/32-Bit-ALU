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
//       input Cin,
       output [31:0]S,
       output Cout
       
    );
        wire [31:0] Bcomp;
        assign #3 Bcomp=~B;
        wire [31:0]Sin,Scomp;
        fastAdder32 unit(1'b1,A,Bcomp,Sin,Cout);
        twoscomplement U(Sin,Scomp);
        wire [31:0]Ctest;
        generate for(genvar i=0;i<32;i=i+1)begin
        assign Ctest[i]=Cout;
        end
        endgenerate
        
        assign #6 S= (~Ctest)&Scomp | (Ctest)&Sin;
//        initial begin
//        #500
//        $display("A= %b  B=%b S=%b",(~Ctest&Scomp),(Ctest)&Sin, S );
//        end
         
endmodule
