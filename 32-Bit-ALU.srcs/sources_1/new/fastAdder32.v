`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2019 10:01:54
// Design Name: 
// Module Name: fastAdder32
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


module fastAdder32(
        input Cin,
        input [31:0] A, B,
        output [31:0] S,
        output Cout
    );
    wire [31:0] G, P;
    wire [8:0] Cg;
    GenProp GP(A, B, Cin, G, P, Cg);
    generate for(genvar i=0; i<8; i=i+1) begin
        fastAdder4 f4(G[4*i+3 : 4*i], P[4*i+3 : 4*i], Cg[i], S[4*i+3 : 4*i]);
    end
    endgenerate
    
    assign Cout = Cg[8];
    
endmodule
