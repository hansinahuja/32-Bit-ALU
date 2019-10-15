`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 23:43:45
// Design Name: 
// Module Name: mux2
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

module mux2(
 output [31:0] S,
 input [31:0] A0,A1,
 input sel
);
wire [31:0] selector;

generate for(genvar i=0;i<32;i=i+1)
begin
    assign selector[i]=sel;
end
endgenerate
//assign S = sel? A1 : A0;
assign S=selector&A1 | (~selector)&A0;
endmodule
