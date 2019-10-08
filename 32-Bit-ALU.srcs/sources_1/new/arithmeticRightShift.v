`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2019 19:37:23
// Design Name: 
// Module Name: arithmeticRightShift
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


module arithmeticRightShift(
    input [31:0] A,
    output [31:0] B
    );
    
    assign B[31] = A[31];
    generate for(genvar i=0; i<31; i=i+1) begin
        assign B[i] = A[i+1];
    end
    endgenerate
endmodule
