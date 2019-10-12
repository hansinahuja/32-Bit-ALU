`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2019 14:46:40
// Design Name: 
// Module Name: multiplier32
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


module multiplier32(
    input [31:0] A, B,
    output [31:0] S,
    output overflow
    );
    
    wire [31:0] Cout, prev_S, add1, add2;
    wire [31:0] temp [31:0];
    wire [31:0] partials [31:0];
    
    generate for(genvar i=0; i<32; i=i+1) begin
        assign prev_S[i]= 0;
    end
    endgenerate
    
    generate for(genvar i=0; i<32; i=i+1) begin
//        helperAND(A, B[i], prev_partials[i]);
        helperAND DUT(A, B[i], partials[i]);
    end
    endgenerate
    
    generate for(genvar i=0; i<32; i=i+1) begin
        fastAdder32 U(0, prev_S, partials[i], S, Cout[i]);
        assign #50 prev_S = S;
//        logicalLeftShift D0(partials[0], temp[0]);
        logicalLeftShift D0(partials[0], temp[0]);
        logicalLeftShift D1(partials[1], temp[1]);
        logicalLeftShift D2(partials[2], temp[2]);
        logicalLeftShift D3(partials[3], temp[3]);
        logicalLeftShift D4(partials[4], temp[4]);
        logicalLeftShift D5(partials[5], temp[5]);
        logicalLeftShift D6(partials[6], temp[6]);
        logicalLeftShift D7(partials[7], temp[7]);
        logicalLeftShift D8(partials[8], temp[8]);
        logicalLeftShift D9(partials[9], temp[9]);
        logicalLeftShift D10(partials[10], temp[10]);
        logicalLeftShift D11(partials[11], temp[11]);
        logicalLeftShift D12(partials[12], temp[12]);
        logicalLeftShift D13(partials[13], temp[13]);
        logicalLeftShift D14(partials[14], temp[14]);
        logicalLeftShift D15(partials[15], temp[15]);
        logicalLeftShift D16(partials[16], temp[16]);
        logicalLeftShift D17(partials[17], temp[17]);
        logicalLeftShift D18(partials[18], temp[18]);
        logicalLeftShift D19(partials[19], temp[19]);
        logicalLeftShift D20(partials[20], temp[20]);
        logicalLeftShift D21(partials[21], temp[21]);
        logicalLeftShift D22(partials[22], temp[22]);
        logicalLeftShift D23(partials[23], temp[23]);
        logicalLeftShift D24(partials[24], temp[24]);
        logicalLeftShift D25(partials[25], temp[25]);
        logicalLeftShift D26(partials[26], temp[26]);
        logicalLeftShift D27(partials[27], temp[27]);
        logicalLeftShift D28(partials[28], temp[28]);
        logicalLeftShift D29(partials[29], temp[29]);
        logicalLeftShift D30(partials[30], temp[30]);
        logicalLeftShift D31(partials[31], temp[31]);
        assign #50 partials[0] = temp[0];
assign #50 partials[1] = temp[1];
assign #50 partials[2] = temp[2];
assign #50 partials[3] = temp[3];
assign #50 partials[4] = temp[4];
assign #50 partials[5] = temp[5];
assign #50 partials[6] = temp[6];
assign #50 partials[7] = temp[7];
assign #50 partials[8] = temp[8];
assign #50 partials[9] = temp[9];
assign #50 partials[10] = temp[10];
assign #50 partials[11] = temp[11];
assign #50 partials[12] = temp[12];
assign #50 partials[13] = temp[13];
assign #50 partials[14] = temp[14];
assign #50 partials[15] = temp[15];
assign #50 partials[16] = temp[16];
assign #50 partials[17] = temp[17];
assign #50 partials[18] = temp[18];
assign #50 partials[19] = temp[19];
assign #50 partials[20] = temp[20];
assign #50 partials[21] = temp[21];
assign #50 partials[22] = temp[22];
assign #50 partials[23] = temp[23];
assign #50 partials[24] = temp[24];
assign #50 partials[25] = temp[25];
assign #50 partials[26] = temp[26];
assign #50 partials[27] = temp[27];
assign #50 partials[28] = temp[28];
assign #50 partials[29] = temp[29];
assign #50 partials[30] = temp[30];
assign #50 partials[31] = temp[31];
    end
    endgenerate
    
    
endmodule
