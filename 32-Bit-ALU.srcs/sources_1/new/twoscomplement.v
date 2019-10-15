`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2019 18:28:47
// Design Name: 
// Module Name: twoscomplement
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


module twoscomplement(
    input [31:0]A,
    output [31:0]B
    );
    wire [31:0] Acomp;
    bitwiseNOT U1(A, Acomp);
    wire [31:0]addum;
    assign addum=32'b1;
    wire cout;
    fastAdder32 unit(1'b0,Acomp,addum,B,cout);
endmodule
