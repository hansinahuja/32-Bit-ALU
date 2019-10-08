`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2019 19:44:50
// Design Name: 
// Module Name: lessThan
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


module lessThan(
    input[31:0] A, B,
    output lt
    );
    
    wire [31:0] S;
    wire Cout;
    subtractor32 unit(A, B, S, Cout);
    assign lt = !Cout;
    
endmodule
