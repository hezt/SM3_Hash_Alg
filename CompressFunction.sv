`ifndef _CompressFunction
`define _CompressFunction
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2016 04:31:15 PM
// Design Name: 
// Module Name: CompressFunction
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


// 5.3.3 compress function
module CompressFunction(
	input wire clk,
	input wire enable,
	input wire [0:255] inputV,
	input wire [0:511] messageBlock,
	input wire [0:31] extendedWord [0:67],
	input wire [0:31] extendedWordPrime [0:63],
	output reg [0:255] outputV
    );

reg [0:6] j;
reg [0:31] A, B, C, D, E, F, G, H;
reg [0:31] SS1, SS2, TT1, TT2, SS1_temp;

reg [0:31] booleanFF_output_result [0:63];
reg [0:31] booleanGG_output_result [0:63];

reg [0:31] T [0:63];
reg [0:31] originT [0:1];

reg [0:31] permutation0_output_result;

initial begin
	// j = 0;
	originT[0] = 32'h79cc4519;
	originT[1] = 32'h7a879d8a;
end

assign T[0] = originT[0];
assign T[1] = {originT[0][1:31], originT[0][0:0]};
assign T[2] = {originT[0][2:31], originT[0][0:1]};
assign T[3] = {originT[0][3:31], originT[0][0:2]};
assign T[4] = {originT[0][4:31], originT[0][0:3]};
assign T[5] = {originT[0][5:31], originT[0][0:4]};
assign T[6] = {originT[0][6:31], originT[0][0:5]};
assign T[7] = {originT[0][7:31], originT[0][0:6]};
assign T[8] = {originT[0][8:31], originT[0][0:7]};
assign T[9] = {originT[0][9:31], originT[0][0:8]};
assign T[10] = {originT[0][10:31], originT[0][0:9]};
assign T[11] = {originT[0][11:31], originT[0][0:10]};
assign T[12] = {originT[0][12:31], originT[0][0:11]};
assign T[13] = {originT[0][13:31], originT[0][0:12]};
assign T[14] = {originT[0][14:31], originT[0][0:13]};
assign T[15] = {originT[0][15:31], originT[0][0:14]};
assign T[16] = {originT[1][16:31], originT[1][0:15]};
assign T[17] = {originT[1][17:31], originT[1][0:16]};
assign T[18] = {originT[1][18:31], originT[1][0:17]};
assign T[19] = {originT[1][19:31], originT[1][0:18]};
assign T[20] = {originT[1][20:31], originT[1][0:19]};
assign T[21] = {originT[1][21:31], originT[1][0:20]};
assign T[22] = {originT[1][22:31], originT[1][0:21]};
assign T[23] = {originT[1][23:31], originT[1][0:22]};
assign T[24] = {originT[1][24:31], originT[1][0:23]};
assign T[25] = {originT[1][25:31], originT[1][0:24]};
assign T[26] = {originT[1][26:31], originT[1][0:25]};
assign T[27] = {originT[1][27:31], originT[1][0:26]};
assign T[28] = {originT[1][28:31], originT[1][0:27]};
assign T[29] = {originT[1][29:31], originT[1][0:28]};
assign T[30] = {originT[1][30:31], originT[1][0:29]};
assign T[31] = {originT[1][31:31], originT[1][0:30]};
assign T[32] = originT[1];
assign T[33] = {originT[1][1:31], originT[1][0:0]};
assign T[34] = {originT[1][2:31], originT[1][0:1]};
assign T[35] = {originT[1][3:31], originT[1][0:2]};
assign T[36] = {originT[1][4:31], originT[1][0:3]};
assign T[37] = {originT[1][5:31], originT[1][0:4]};
assign T[38] = {originT[1][6:31], originT[1][0:5]};
assign T[39] = {originT[1][7:31], originT[1][0:6]};
assign T[40] = {originT[1][8:31], originT[1][0:7]};
assign T[41] = {originT[1][9:31], originT[1][0:8]};
assign T[42] = {originT[1][10:31], originT[1][0:9]};
assign T[43] = {originT[1][11:31], originT[1][0:10]};
assign T[44] = {originT[1][12:31], originT[1][0:11]};
assign T[45] = {originT[1][13:31], originT[1][0:12]};
assign T[46] = {originT[1][14:31], originT[1][0:13]};
assign T[47] = {originT[1][15:31], originT[1][0:14]};
assign T[48] = {originT[1][16:31], originT[1][0:15]};
assign T[49] = {originT[1][17:31], originT[1][0:16]};
assign T[50] = {originT[1][18:31], originT[1][0:17]};
assign T[51] = {originT[1][19:31], originT[1][0:18]};
assign T[52] = {originT[1][20:31], originT[1][0:19]};
assign T[53] = {originT[1][21:31], originT[1][0:20]};
assign T[54] = {originT[1][22:31], originT[1][0:21]};
assign T[55] = {originT[1][23:31], originT[1][0:22]};
assign T[56] = {originT[1][24:31], originT[1][0:23]};
assign T[57] = {originT[1][25:31], originT[1][0:24]};
assign T[58] = {originT[1][26:31], originT[1][0:25]};
assign T[59] = {originT[1][27:31], originT[1][0:26]};
assign T[60] = {originT[1][28:31], originT[1][0:27]};
assign T[61] = {originT[1][29:31], originT[1][0:28]};
assign T[62] = {originT[1][30:31], originT[1][0:29]};
assign T[63] = {originT[1][31:31], originT[1][0:30]};

Permutation0 permutation0(.input_X(TT2), .output_result(permutation0_output_result));

BooleanFF booleanFF_0(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[0]));
BooleanFF booleanFF_1(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[1]));
BooleanFF booleanFF_2(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[2]));
BooleanFF booleanFF_3(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[3]));
BooleanFF booleanFF_4(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[4]));
BooleanFF booleanFF_5(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[5]));
BooleanFF booleanFF_6(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[6]));
BooleanFF booleanFF_7(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[7]));
BooleanFF booleanFF_8(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[8]));
BooleanFF booleanFF_9(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[9]));
BooleanFF booleanFF_10(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[10]));
BooleanFF booleanFF_11(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[11]));
BooleanFF booleanFF_12(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[12]));
BooleanFF booleanFF_13(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[13]));
BooleanFF booleanFF_14(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[14]));
BooleanFF booleanFF_15(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[15]));
BooleanFF booleanFF_16(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[16]));
BooleanFF booleanFF_17(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[17]));
BooleanFF booleanFF_18(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[18]));
BooleanFF booleanFF_19(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[19]));
BooleanFF booleanFF_20(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[20]));
BooleanFF booleanFF_21(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[21]));
BooleanFF booleanFF_22(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[22]));
BooleanFF booleanFF_23(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[23]));
BooleanFF booleanFF_24(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[24]));
BooleanFF booleanFF_25(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[25]));
BooleanFF booleanFF_26(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[26]));
BooleanFF booleanFF_27(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[27]));
BooleanFF booleanFF_28(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[28]));
BooleanFF booleanFF_29(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[29]));
BooleanFF booleanFF_30(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[30]));
BooleanFF booleanFF_31(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[31]));
BooleanFF booleanFF_32(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[32]));
BooleanFF booleanFF_33(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[33]));
BooleanFF booleanFF_34(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[34]));
BooleanFF booleanFF_35(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[35]));
BooleanFF booleanFF_36(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[36]));
BooleanFF booleanFF_37(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[37]));
BooleanFF booleanFF_38(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[38]));
BooleanFF booleanFF_39(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[39]));
BooleanFF booleanFF_40(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[40]));
BooleanFF booleanFF_41(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[41]));
BooleanFF booleanFF_42(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[42]));
BooleanFF booleanFF_43(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[43]));
BooleanFF booleanFF_44(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[44]));
BooleanFF booleanFF_45(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[45]));
BooleanFF booleanFF_46(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[46]));
BooleanFF booleanFF_47(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[47]));
BooleanFF booleanFF_48(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[48]));
BooleanFF booleanFF_49(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[49]));
BooleanFF booleanFF_50(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[50]));
BooleanFF booleanFF_51(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[51]));
BooleanFF booleanFF_52(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[52]));
BooleanFF booleanFF_53(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[53]));
BooleanFF booleanFF_54(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[54]));
BooleanFF booleanFF_55(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[55]));
BooleanFF booleanFF_56(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[56]));
BooleanFF booleanFF_57(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[57]));
BooleanFF booleanFF_58(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[58]));
BooleanFF booleanFF_59(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[59]));
BooleanFF booleanFF_60(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[60]));
BooleanFF booleanFF_61(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[61]));
BooleanFF booleanFF_62(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[62]));
BooleanFF booleanFF_63(.input_X(A), .input_Y(B), .input_Z(C), .input_j(j), .output_result(booleanFF_output_result[63]));

BooleanGG booleanGG_0(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[0]));
BooleanGG booleanGG_1(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[1]));
BooleanGG booleanGG_2(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[2]));
BooleanGG booleanGG_3(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[3]));
BooleanGG booleanGG_4(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[4]));
BooleanGG booleanGG_5(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[5]));
BooleanGG booleanGG_6(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[6]));
BooleanGG booleanGG_7(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[7]));
BooleanGG booleanGG_8(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[8]));
BooleanGG booleanGG_9(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[9]));
BooleanGG booleanGG_10(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[10]));
BooleanGG booleanGG_11(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[11]));
BooleanGG booleanGG_12(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[12]));
BooleanGG booleanGG_13(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[13]));
BooleanGG booleanGG_14(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[14]));
BooleanGG booleanGG_15(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[15]));
BooleanGG booleanGG_16(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[16]));
BooleanGG booleanGG_17(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[17]));
BooleanGG booleanGG_18(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[18]));
BooleanGG booleanGG_19(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[19]));
BooleanGG booleanGG_20(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[20]));
BooleanGG booleanGG_21(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[21]));
BooleanGG booleanGG_22(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[22]));
BooleanGG booleanGG_23(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[23]));
BooleanGG booleanGG_24(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[24]));
BooleanGG booleanGG_25(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[25]));
BooleanGG booleanGG_26(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[26]));
BooleanGG booleanGG_27(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[27]));
BooleanGG booleanGG_28(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[28]));
BooleanGG booleanGG_29(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[29]));
BooleanGG booleanGG_30(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[30]));
BooleanGG booleanGG_31(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[31]));
BooleanGG booleanGG_32(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[32]));
BooleanGG booleanGG_33(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[33]));
BooleanGG booleanGG_34(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[34]));
BooleanGG booleanGG_35(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[35]));
BooleanGG booleanGG_36(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[36]));
BooleanGG booleanGG_37(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[37]));
BooleanGG booleanGG_38(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[38]));
BooleanGG booleanGG_39(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[39]));
BooleanGG booleanGG_40(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[40]));
BooleanGG booleanGG_41(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[41]));
BooleanGG booleanGG_42(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[42]));
BooleanGG booleanGG_43(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[43]));
BooleanGG booleanGG_44(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[44]));
BooleanGG booleanGG_45(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[45]));
BooleanGG booleanGG_46(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[46]));
BooleanGG booleanGG_47(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[47]));
BooleanGG booleanGG_48(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[48]));
BooleanGG booleanGG_49(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[49]));
BooleanGG booleanGG_50(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[50]));
BooleanGG booleanGG_51(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[51]));
BooleanGG booleanGG_52(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[52]));
BooleanGG booleanGG_53(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[53]));
BooleanGG booleanGG_54(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[54]));
BooleanGG booleanGG_55(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[55]));
BooleanGG booleanGG_56(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[56]));
BooleanGG booleanGG_57(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[57]));
BooleanGG booleanGG_58(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[58]));
BooleanGG booleanGG_59(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[59]));
BooleanGG booleanGG_60(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[60]));
BooleanGG booleanGG_61(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[61]));
BooleanGG booleanGG_62(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[62]));
BooleanGG booleanGG_63(.input_X(E), .input_Y(F), .input_Z(G), .input_j(j), .output_result(booleanGG_output_result[63]));



always_comb begin
	SS1_temp = {A[12:31], A[0:11]} + E + T[j];
	SS1 = {SS1_temp[7:31], SS1_temp[0:6]};
	SS2 = SS1 ^ {A[12:31], A[0:11]};
	TT1 = booleanFF_output_result[j] + D + SS2 + extendedWordPrime[j];
 	TT2 = booleanGG_output_result[j] + H + SS1 + extendedWord[j];
	
end

always_ff @(posedge clk) begin
	if(j == 7'b1111111) begin
		A <= inputV[0:31];
		B <= inputV[32:63];
		C <= inputV[64:95];
		D <= inputV[96:127];
		E <= inputV[128:159];
		F <= inputV[160:191];
		G <= inputV[192:223];
		H <= inputV[224:255];
	end
	else begin
		D <= C;
		C <= {B[9:31], B[0:8]};
		B <= A;
		A <= TT1;
		H <= G;
		G <= {F[19:31], F[0:18]};
		F <= E;
		E <= permutation0_output_result;
	end
end

// reg rst = 0;
// reg [0:1] rst_count = 0;
// always_ff @(posedge clk or posedge start) begin
// 	if(start == 1 && rst == 0) rst <= 1;
// 	rst_count <= rst_count + 1;
// 	if(rst_count == 3) begin
// 		rst <= 0;
// 	end
// end

reg started = 0;
reg finished = 0;
always_ff @(posedge clk or posedge enable) begin
	if(enable == 1 && started == 0) begin
		j <= 7'b1111111;
		started <= 1;
		finished <= 0;
	end
	if(j >= 0 && j <= 63 && started == 1) j <= j + 1;
	if(j == 7'b1111111 && started == 1) j <= 0;
	// if(j == 7'b1000000) outputV <= {A, B, C, D, E, F, G, H } ^ inputV;
	// else outputV <= 256'bz;
	if(j == 7'b1000000 && finished == 0) begin
		finished <= 1;
		outputV <= {A, B, C, D, E, F, G, H} ^ inputV;
	end
end

endmodule // CompressFunction

`endif