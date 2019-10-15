`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2019 19:20:36
// Design Name: 
// Module Name: logicalLeftShift
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


module logicalLeftShift(
    input [31:0]A,
    output [31:0]B
    );
    assign B[0]=0;
    generate for(genvar i=1;i<32;i=i+1)
    begin
        assign B[i]=A[i-1];
    end
    endgenerate
endmodule
