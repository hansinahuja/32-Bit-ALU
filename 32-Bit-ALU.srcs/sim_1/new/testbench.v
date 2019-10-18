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
    reg [3:0] control;
    wire [31:0] S;
    wire carry, overflow, lessthan, equalto, zero;
    main unit(A, B, control, S, carry, overflow, lessthan, equalto, zero);
//    subtractor32 U()
//    multiplier32 unit(A,B,S,overflow);
    initial begin
    
    A = 8965523;
    B=785122;
    control = 1;
    #400
    $display("A=%d B=%d control=%d S=%d carry=%b overflow=%b lessthan=%b equalto=%b zero=%b",A,B,control,S,carry, overflow, lessthan, equalto, zero);
    A = -5;
    B=-5;
    control = 1;
    #400
    $display("A=%d B=%d control=%d S=%d carry=%b overflow=%b lessthan=%b equalto=%b zero=%b",A,B,control,S,carry, overflow, lessthan, equalto, zero);
    
    end
    
    
endmodule
