`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2019 14:29:56
// Design Name: 
// Module Name: bitwiseNOT
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


module bitwiseNOT(
    input [31:0] A,
    output [31:0] S
    );
    
    generate for(genvar i=0; i<32; i=i+1) begin
        assign #3 S[i] = ~A[i];
    end
    endgenerate
endmodule
