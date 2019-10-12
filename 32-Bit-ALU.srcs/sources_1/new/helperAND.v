`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2019 15:00:09
// Design Name: 
// Module Name: helperAND
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


module helperAND(
    input [31:0] A,
    input B,
    output [31:0] S
    );
    
    generate for(genvar i=0; i<32; i=i+1) begin
        assign #3 S[i] = A[i] & B; 
    end
    endgenerate
    
endmodule
