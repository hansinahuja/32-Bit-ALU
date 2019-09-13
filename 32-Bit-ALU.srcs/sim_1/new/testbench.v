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
    wire [31:0] S;
    wire Cout;
    fastAdder32 unit(Cin,A,B,S,Cout);
    initial begin
    
    A = 50;
    B=4500;
    Cin=0;
    #200
    $display("A=%d B=%d  S=%d",A,B,S);
    A=500;
    B=8000;
    Cin=0;
    #200
    $display("A=%d B=%d  S=%d",A,B,S);
    
    end
    
    
endmodule
