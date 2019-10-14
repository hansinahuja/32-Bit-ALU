`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2019 10:39:53
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg [31:0] A,B;
    reg Cin;
//    wire [31:0]t;
    wire [31:0] S;
    wire Cout;
//    twoscomplement unit(A,S);
//assign S=1'b1 & 8'b01100111;
//    logicalRightShift unit(A,S);
    multiplier32 unit(A, B, S,Cout );
//    ariRightShift unit(A,1,S);
    initial begin
    
    A = 2147483648;
    B=1;
    Cin=0;
    #400
    $display("A=%d B=%d  S=%d Cout= %b ",A,B,S,Cout);
    A=2;
    B=5;
    Cin=0;
    #400
    $display("A=%d B=%d  S=%d Cout =%b  ",A,B,S,Cout);
    
    end
    
    
endmodule
