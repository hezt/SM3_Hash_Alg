// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MessageExtend(
    input wire [0:511] messageBlock,
    output reg [0:31] extendedWord [0:67],
    output reg [0:31] extendedWordPrime [0:63]
    );
    reg [0 : 31] permutation1_16_input_X, permutation1_16_output_result;
    reg [0 : 31] permutation1_17_input_X, permutation1_17_output_result;
    reg [0 : 31] permutation1_18_input_X, permutation1_18_output_result;
    reg [0 : 31] permutation1_19_input_X, permutation1_19_output_result;
    reg [0 : 31] permutation1_20_input_X, permutation1_20_output_result;
    reg [0 : 31] permutation1_21_input_X, permutation1_21_output_result;
    reg [0 : 31] permutation1_22_input_X, permutation1_22_output_result;
    reg [0 : 31] permutation1_23_input_X, permutation1_23_output_result;
    reg [0 : 31] permutation1_24_input_X, permutation1_24_output_result;
    reg [0 : 31] permutation1_25_input_X, permutation1_25_output_result;
    reg [0 : 31] permutation1_26_input_X, permutation1_26_output_result;
    reg [0 : 31] permutation1_27_input_X, permutation1_27_output_result;
    reg [0 : 31] permutation1_28_input_X, permutation1_28_output_result;
    reg [0 : 31] permutation1_29_input_X, permutation1_29_output_result;
    reg [0 : 31] permutation1_30_input_X, permutation1_30_output_result;
    reg [0 : 31] permutation1_31_input_X, permutation1_31_output_result;
    reg [0 : 31] permutation1_32_input_X, permutation1_32_output_result;
    reg [0 : 31] permutation1_33_input_X, permutation1_33_output_result;
    reg [0 : 31] permutation1_34_input_X, permutation1_34_output_result;
    reg [0 : 31] permutation1_35_input_X, permutation1_35_output_result;
    reg [0 : 31] permutation1_36_input_X, permutation1_36_output_result;
    reg [0 : 31] permutation1_37_input_X, permutation1_37_output_result;
    reg [0 : 31] permutation1_38_input_X, permutation1_38_output_result;
    reg [0 : 31] permutation1_39_input_X, permutation1_39_output_result;
    reg [0 : 31] permutation1_40_input_X, permutation1_40_output_result;
    reg [0 : 31] permutation1_41_input_X, permutation1_41_output_result;
    reg [0 : 31] permutation1_42_input_X, permutation1_42_output_result;
    reg [0 : 31] permutation1_43_input_X, permutation1_43_output_result;
    reg [0 : 31] permutation1_44_input_X, permutation1_44_output_result;
    reg [0 : 31] permutation1_45_input_X, permutation1_45_output_result;
    reg [0 : 31] permutation1_46_input_X, permutation1_46_output_result;
    reg [0 : 31] permutation1_47_input_X, permutation1_47_output_result;
    reg [0 : 31] permutation1_48_input_X, permutation1_48_output_result;
    reg [0 : 31] permutation1_49_input_X, permutation1_49_output_result;
    reg [0 : 31] permutation1_50_input_X, permutation1_50_output_result;
    reg [0 : 31] permutation1_51_input_X, permutation1_51_output_result;
    reg [0 : 31] permutation1_52_input_X, permutation1_52_output_result;
    reg [0 : 31] permutation1_53_input_X, permutation1_53_output_result;
    reg [0 : 31] permutation1_54_input_X, permutation1_54_output_result;
    reg [0 : 31] permutation1_55_input_X, permutation1_55_output_result;
    reg [0 : 31] permutation1_56_input_X, permutation1_56_output_result;
    reg [0 : 31] permutation1_57_input_X, permutation1_57_output_result;
    reg [0 : 31] permutation1_58_input_X, permutation1_58_output_result;
    reg [0 : 31] permutation1_59_input_X, permutation1_59_output_result;
    reg [0 : 31] permutation1_60_input_X, permutation1_60_output_result;
    reg [0 : 31] permutation1_61_input_X, permutation1_61_output_result;
    reg [0 : 31] permutation1_62_input_X, permutation1_62_output_result;
    reg [0 : 31] permutation1_63_input_X, permutation1_63_output_result;
    reg [0 : 31] permutation1_64_input_X, permutation1_64_output_result;
    reg [0 : 31] permutation1_65_input_X, permutation1_65_output_result;
    reg [0 : 31] permutation1_66_input_X, permutation1_66_output_result;
    reg [0 : 31] permutation1_67_input_X, permutation1_67_output_result;
    Permutation1 permutation1_16(.input_X(permutation1_16_input_X), .output_result(permutation1_16_output_result));
    Permutation1 permutation1_17(.input_X(permutation1_17_input_X), .output_result(permutation1_17_output_result));
    Permutation1 permutation1_18(.input_X(permutation1_18_input_X), .output_result(permutation1_18_output_result));
    Permutation1 permutation1_19(.input_X(permutation1_19_input_X), .output_result(permutation1_19_output_result));
    Permutation1 permutation1_20(.input_X(permutation1_20_input_X), .output_result(permutation1_20_output_result));
    Permutation1 permutation1_21(.input_X(permutation1_21_input_X), .output_result(permutation1_21_output_result));
    Permutation1 permutation1_22(.input_X(permutation1_22_input_X), .output_result(permutation1_22_output_result));
    Permutation1 permutation1_23(.input_X(permutation1_23_input_X), .output_result(permutation1_23_output_result));
    Permutation1 permutation1_24(.input_X(permutation1_24_input_X), .output_result(permutation1_24_output_result));
    Permutation1 permutation1_25(.input_X(permutation1_25_input_X), .output_result(permutation1_25_output_result));
    Permutation1 permutation1_26(.input_X(permutation1_26_input_X), .output_result(permutation1_26_output_result));
    Permutation1 permutation1_27(.input_X(permutation1_27_input_X), .output_result(permutation1_27_output_result));
    Permutation1 permutation1_28(.input_X(permutation1_28_input_X), .output_result(permutation1_28_output_result));
    Permutation1 permutation1_29(.input_X(permutation1_29_input_X), .output_result(permutation1_29_output_result));
    Permutation1 permutation1_30(.input_X(permutation1_30_input_X), .output_result(permutation1_30_output_result));
    Permutation1 permutation1_31(.input_X(permutation1_31_input_X), .output_result(permutation1_31_output_result));
    Permutation1 permutation1_32(.input_X(permutation1_32_input_X), .output_result(permutation1_32_output_result));
    Permutation1 permutation1_33(.input_X(permutation1_33_input_X), .output_result(permutation1_33_output_result));
    Permutation1 permutation1_34(.input_X(permutation1_34_input_X), .output_result(permutation1_34_output_result));
    Permutation1 permutation1_35(.input_X(permutation1_35_input_X), .output_result(permutation1_35_output_result));
    Permutation1 permutation1_36(.input_X(permutation1_36_input_X), .output_result(permutation1_36_output_result));
    Permutation1 permutation1_37(.input_X(permutation1_37_input_X), .output_result(permutation1_37_output_result));
    Permutation1 permutation1_38(.input_X(permutation1_38_input_X), .output_result(permutation1_38_output_result));
    Permutation1 permutation1_39(.input_X(permutation1_39_input_X), .output_result(permutation1_39_output_result));
    Permutation1 permutation1_40(.input_X(permutation1_40_input_X), .output_result(permutation1_40_output_result));
    Permutation1 permutation1_41(.input_X(permutation1_41_input_X), .output_result(permutation1_41_output_result));
    Permutation1 permutation1_42(.input_X(permutation1_42_input_X), .output_result(permutation1_42_output_result));
    Permutation1 permutation1_43(.input_X(permutation1_43_input_X), .output_result(permutation1_43_output_result));
    Permutation1 permutation1_44(.input_X(permutation1_44_input_X), .output_result(permutation1_44_output_result));
    Permutation1 permutation1_45(.input_X(permutation1_45_input_X), .output_result(permutation1_45_output_result));
    Permutation1 permutation1_46(.input_X(permutation1_46_input_X), .output_result(permutation1_46_output_result));
    Permutation1 permutation1_47(.input_X(permutation1_47_input_X), .output_result(permutation1_47_output_result));
    Permutation1 permutation1_48(.input_X(permutation1_48_input_X), .output_result(permutation1_48_output_result));
    Permutation1 permutation1_49(.input_X(permutation1_49_input_X), .output_result(permutation1_49_output_result));
    Permutation1 permutation1_50(.input_X(permutation1_50_input_X), .output_result(permutation1_50_output_result));
    Permutation1 permutation1_51(.input_X(permutation1_51_input_X), .output_result(permutation1_51_output_result));
    Permutation1 permutation1_52(.input_X(permutation1_52_input_X), .output_result(permutation1_52_output_result));
    Permutation1 permutation1_53(.input_X(permutation1_53_input_X), .output_result(permutation1_53_output_result));
    Permutation1 permutation1_54(.input_X(permutation1_54_input_X), .output_result(permutation1_54_output_result));
    Permutation1 permutation1_55(.input_X(permutation1_55_input_X), .output_result(permutation1_55_output_result));
    Permutation1 permutation1_56(.input_X(permutation1_56_input_X), .output_result(permutation1_56_output_result));
    Permutation1 permutation1_57(.input_X(permutation1_57_input_X), .output_result(permutation1_57_output_result));
    Permutation1 permutation1_58(.input_X(permutation1_58_input_X), .output_result(permutation1_58_output_result));
    Permutation1 permutation1_59(.input_X(permutation1_59_input_X), .output_result(permutation1_59_output_result));
    Permutation1 permutation1_60(.input_X(permutation1_60_input_X), .output_result(permutation1_60_output_result));
    Permutation1 permutation1_61(.input_X(permutation1_61_input_X), .output_result(permutation1_61_output_result));
    Permutation1 permutation1_62(.input_X(permutation1_62_input_X), .output_result(permutation1_62_output_result));
    Permutation1 permutation1_63(.input_X(permutation1_63_input_X), .output_result(permutation1_63_output_result));
    Permutation1 permutation1_64(.input_X(permutation1_64_input_X), .output_result(permutation1_64_output_result));
    Permutation1 permutation1_65(.input_X(permutation1_65_input_X), .output_result(permutation1_65_output_result));
    Permutation1 permutation1_66(.input_X(permutation1_66_input_X), .output_result(permutation1_66_output_result));
    Permutation1 permutation1_67(.input_X(permutation1_67_input_X), .output_result(permutation1_67_output_result));
    always_comb begin
        // 5.3.2 part a
        // extendedWord[j] = messageBlock[j * 32:j * 32 + 31];
        extendedWord[0] = messageBlock[0:31];
        extendedWord[1] = messageBlock[32:63];
        extendedWord[2] = messageBlock[64:95];
        extendedWord[3] = messageBlock[96:127];
        extendedWord[4] = messageBlock[128:159];
        extendedWord[5] = messageBlock[160:191];
        extendedWord[6] = messageBlock[192:223];
        extendedWord[7] = messageBlock[224:255];
        extendedWord[8] = messageBlock[256:287];
        extendedWord[9] = messageBlock[288:319];
        extendedWord[10] = messageBlock[320:351];
        extendedWord[11] = messageBlock[352:383];
        extendedWord[12] = messageBlock[384:415];
        extendedWord[13] = messageBlock[416:447];
        extendedWord[14] = messageBlock[448:479];
        extendedWord[15] = messageBlock[480:511];
    end

    always_comb begin
        // 5.3.2 part b calculate permutation
        permutation1_16_input_X = extendedWord[0] ^ extendedWord[7] ^ {extendedWord[13][15:31], extendedWord[13][0:14]};
        permutation1_17_input_X = extendedWord[1] ^ extendedWord[8] ^ {extendedWord[14][15:31], extendedWord[14][0:14]};
        permutation1_18_input_X = extendedWord[2] ^ extendedWord[9] ^ {extendedWord[15][15:31], extendedWord[15][0:14]};
        permutation1_19_input_X = extendedWord[3] ^ extendedWord[10] ^ {extendedWord[16][15:31], extendedWord[16][0:14]};
        permutation1_20_input_X = extendedWord[4] ^ extendedWord[11] ^ {extendedWord[17][15:31], extendedWord[17][0:14]};
        permutation1_21_input_X = extendedWord[5] ^ extendedWord[12] ^ {extendedWord[18][15:31], extendedWord[18][0:14]};
        permutation1_22_input_X = extendedWord[6] ^ extendedWord[13] ^ {extendedWord[19][15:31], extendedWord[19][0:14]};
        permutation1_23_input_X = extendedWord[7] ^ extendedWord[14] ^ {extendedWord[20][15:31], extendedWord[20][0:14]};
        permutation1_24_input_X = extendedWord[8] ^ extendedWord[15] ^ {extendedWord[21][15:31], extendedWord[21][0:14]};
        permutation1_25_input_X = extendedWord[9] ^ extendedWord[16] ^ {extendedWord[22][15:31], extendedWord[22][0:14]};
        permutation1_26_input_X = extendedWord[10] ^ extendedWord[17] ^ {extendedWord[23][15:31], extendedWord[23][0:14]};
        permutation1_27_input_X = extendedWord[11] ^ extendedWord[18] ^ {extendedWord[24][15:31], extendedWord[24][0:14]};
        permutation1_28_input_X = extendedWord[12] ^ extendedWord[19] ^ {extendedWord[25][15:31], extendedWord[25][0:14]};
        permutation1_29_input_X = extendedWord[13] ^ extendedWord[20] ^ {extendedWord[26][15:31], extendedWord[26][0:14]};
        permutation1_30_input_X = extendedWord[14] ^ extendedWord[21] ^ {extendedWord[27][15:31], extendedWord[27][0:14]};
        permutation1_31_input_X = extendedWord[15] ^ extendedWord[22] ^ {extendedWord[28][15:31], extendedWord[28][0:14]};
        permutation1_32_input_X = extendedWord[16] ^ extendedWord[23] ^ {extendedWord[29][15:31], extendedWord[29][0:14]};
        permutation1_33_input_X = extendedWord[17] ^ extendedWord[24] ^ {extendedWord[30][15:31], extendedWord[30][0:14]};
        permutation1_34_input_X = extendedWord[18] ^ extendedWord[25] ^ {extendedWord[31][15:31], extendedWord[31][0:14]};
        permutation1_35_input_X = extendedWord[19] ^ extendedWord[26] ^ {extendedWord[32][15:31], extendedWord[32][0:14]};
        permutation1_36_input_X = extendedWord[20] ^ extendedWord[27] ^ {extendedWord[33][15:31], extendedWord[33][0:14]};
        permutation1_37_input_X = extendedWord[21] ^ extendedWord[28] ^ {extendedWord[34][15:31], extendedWord[34][0:14]};
        permutation1_38_input_X = extendedWord[22] ^ extendedWord[29] ^ {extendedWord[35][15:31], extendedWord[35][0:14]};
        permutation1_39_input_X = extendedWord[23] ^ extendedWord[30] ^ {extendedWord[36][15:31], extendedWord[36][0:14]};
        permutation1_40_input_X = extendedWord[24] ^ extendedWord[31] ^ {extendedWord[37][15:31], extendedWord[37][0:14]};
        permutation1_41_input_X = extendedWord[25] ^ extendedWord[32] ^ {extendedWord[38][15:31], extendedWord[38][0:14]};
        permutation1_42_input_X = extendedWord[26] ^ extendedWord[33] ^ {extendedWord[39][15:31], extendedWord[39][0:14]};
        permutation1_43_input_X = extendedWord[27] ^ extendedWord[34] ^ {extendedWord[40][15:31], extendedWord[40][0:14]};
        permutation1_44_input_X = extendedWord[28] ^ extendedWord[35] ^ {extendedWord[41][15:31], extendedWord[41][0:14]};
        permutation1_45_input_X = extendedWord[29] ^ extendedWord[36] ^ {extendedWord[42][15:31], extendedWord[42][0:14]};
        permutation1_46_input_X = extendedWord[30] ^ extendedWord[37] ^ {extendedWord[43][15:31], extendedWord[43][0:14]};
        permutation1_47_input_X = extendedWord[31] ^ extendedWord[38] ^ {extendedWord[44][15:31], extendedWord[44][0:14]};
        permutation1_48_input_X = extendedWord[32] ^ extendedWord[39] ^ {extendedWord[45][15:31], extendedWord[45][0:14]};
        permutation1_49_input_X = extendedWord[33] ^ extendedWord[40] ^ {extendedWord[46][15:31], extendedWord[46][0:14]};
        permutation1_50_input_X = extendedWord[34] ^ extendedWord[41] ^ {extendedWord[47][15:31], extendedWord[47][0:14]};
        permutation1_51_input_X = extendedWord[35] ^ extendedWord[42] ^ {extendedWord[48][15:31], extendedWord[48][0:14]};
        permutation1_52_input_X = extendedWord[36] ^ extendedWord[43] ^ {extendedWord[49][15:31], extendedWord[49][0:14]};
        permutation1_53_input_X = extendedWord[37] ^ extendedWord[44] ^ {extendedWord[50][15:31], extendedWord[50][0:14]};
        permutation1_54_input_X = extendedWord[38] ^ extendedWord[45] ^ {extendedWord[51][15:31], extendedWord[51][0:14]};
        permutation1_55_input_X = extendedWord[39] ^ extendedWord[46] ^ {extendedWord[52][15:31], extendedWord[52][0:14]};
        permutation1_56_input_X = extendedWord[40] ^ extendedWord[47] ^ {extendedWord[53][15:31], extendedWord[53][0:14]};
        permutation1_57_input_X = extendedWord[41] ^ extendedWord[48] ^ {extendedWord[54][15:31], extendedWord[54][0:14]};
        permutation1_58_input_X = extendedWord[42] ^ extendedWord[49] ^ {extendedWord[55][15:31], extendedWord[55][0:14]};
        permutation1_59_input_X = extendedWord[43] ^ extendedWord[50] ^ {extendedWord[56][15:31], extendedWord[56][0:14]};
        permutation1_60_input_X = extendedWord[44] ^ extendedWord[51] ^ {extendedWord[57][15:31], extendedWord[57][0:14]};
        permutation1_61_input_X = extendedWord[45] ^ extendedWord[52] ^ {extendedWord[58][15:31], extendedWord[58][0:14]};
        permutation1_62_input_X = extendedWord[46] ^ extendedWord[53] ^ {extendedWord[59][15:31], extendedWord[59][0:14]};
        permutation1_63_input_X = extendedWord[47] ^ extendedWord[54] ^ {extendedWord[60][15:31], extendedWord[60][0:14]};
        permutation1_64_input_X = extendedWord[48] ^ extendedWord[55] ^ {extendedWord[61][15:31], extendedWord[61][0:14]};
        permutation1_65_input_X = extendedWord[49] ^ extendedWord[56] ^ {extendedWord[62][15:31], extendedWord[62][0:14]};
        permutation1_66_input_X = extendedWord[50] ^ extendedWord[57] ^ {extendedWord[63][15:31], extendedWord[63][0:14]};
        permutation1_67_input_X = extendedWord[51] ^ extendedWord[58] ^ {extendedWord[64][15:31], extendedWord[64][0:14]};
    
    end

    always_comb begin
        // 5.3.2 part b calculate whole line
        extendedWord[16] = permutation1_16_output_result ^ {extendedWord[3][7:31], extendedWord[3][0:6]} ^ extendedWord[10];
        extendedWord[17] = permutation1_17_output_result ^ {extendedWord[4][7:31], extendedWord[4][0:6]} ^ extendedWord[11];
        extendedWord[18] = permutation1_18_output_result ^ {extendedWord[5][7:31], extendedWord[5][0:6]} ^ extendedWord[12];
        extendedWord[19] = permutation1_19_output_result ^ {extendedWord[6][7:31], extendedWord[6][0:6]} ^ extendedWord[13];
        extendedWord[20] = permutation1_20_output_result ^ {extendedWord[7][7:31], extendedWord[7][0:6]} ^ extendedWord[14];
        extendedWord[21] = permutation1_21_output_result ^ {extendedWord[8][7:31], extendedWord[8][0:6]} ^ extendedWord[15];
        extendedWord[22] = permutation1_22_output_result ^ {extendedWord[9][7:31], extendedWord[9][0:6]} ^ extendedWord[16];
        extendedWord[23] = permutation1_23_output_result ^ {extendedWord[10][7:31], extendedWord[10][0:6]} ^ extendedWord[17];
        extendedWord[24] = permutation1_24_output_result ^ {extendedWord[11][7:31], extendedWord[11][0:6]} ^ extendedWord[18];
        extendedWord[25] = permutation1_25_output_result ^ {extendedWord[12][7:31], extendedWord[12][0:6]} ^ extendedWord[19];
        extendedWord[26] = permutation1_26_output_result ^ {extendedWord[13][7:31], extendedWord[13][0:6]} ^ extendedWord[20];
        extendedWord[27] = permutation1_27_output_result ^ {extendedWord[14][7:31], extendedWord[14][0:6]} ^ extendedWord[21];
        extendedWord[28] = permutation1_28_output_result ^ {extendedWord[15][7:31], extendedWord[15][0:6]} ^ extendedWord[22];
        extendedWord[29] = permutation1_29_output_result ^ {extendedWord[16][7:31], extendedWord[16][0:6]} ^ extendedWord[23];
        extendedWord[30] = permutation1_30_output_result ^ {extendedWord[17][7:31], extendedWord[17][0:6]} ^ extendedWord[24];
        extendedWord[31] = permutation1_31_output_result ^ {extendedWord[18][7:31], extendedWord[18][0:6]} ^ extendedWord[25];
        extendedWord[32] = permutation1_32_output_result ^ {extendedWord[19][7:31], extendedWord[19][0:6]} ^ extendedWord[26];
        extendedWord[33] = permutation1_33_output_result ^ {extendedWord[20][7:31], extendedWord[20][0:6]} ^ extendedWord[27];
        extendedWord[34] = permutation1_34_output_result ^ {extendedWord[21][7:31], extendedWord[21][0:6]} ^ extendedWord[28];
        extendedWord[35] = permutation1_35_output_result ^ {extendedWord[22][7:31], extendedWord[22][0:6]} ^ extendedWord[29];
        extendedWord[36] = permutation1_36_output_result ^ {extendedWord[23][7:31], extendedWord[23][0:6]} ^ extendedWord[30];
        extendedWord[37] = permutation1_37_output_result ^ {extendedWord[24][7:31], extendedWord[24][0:6]} ^ extendedWord[31];
        extendedWord[38] = permutation1_38_output_result ^ {extendedWord[25][7:31], extendedWord[25][0:6]} ^ extendedWord[32];
        extendedWord[39] = permutation1_39_output_result ^ {extendedWord[26][7:31], extendedWord[26][0:6]} ^ extendedWord[33];
        extendedWord[40] = permutation1_40_output_result ^ {extendedWord[27][7:31], extendedWord[27][0:6]} ^ extendedWord[34];
        extendedWord[41] = permutation1_41_output_result ^ {extendedWord[28][7:31], extendedWord[28][0:6]} ^ extendedWord[35];
        extendedWord[42] = permutation1_42_output_result ^ {extendedWord[29][7:31], extendedWord[29][0:6]} ^ extendedWord[36];
        extendedWord[43] = permutation1_43_output_result ^ {extendedWord[30][7:31], extendedWord[30][0:6]} ^ extendedWord[37];
        extendedWord[44] = permutation1_44_output_result ^ {extendedWord[31][7:31], extendedWord[31][0:6]} ^ extendedWord[38];
        extendedWord[45] = permutation1_45_output_result ^ {extendedWord[32][7:31], extendedWord[32][0:6]} ^ extendedWord[39];
        extendedWord[46] = permutation1_46_output_result ^ {extendedWord[33][7:31], extendedWord[33][0:6]} ^ extendedWord[40];
        extendedWord[47] = permutation1_47_output_result ^ {extendedWord[34][7:31], extendedWord[34][0:6]} ^ extendedWord[41];
        extendedWord[48] = permutation1_48_output_result ^ {extendedWord[35][7:31], extendedWord[35][0:6]} ^ extendedWord[42];
        extendedWord[49] = permutation1_49_output_result ^ {extendedWord[36][7:31], extendedWord[36][0:6]} ^ extendedWord[43];
        extendedWord[50] = permutation1_50_output_result ^ {extendedWord[37][7:31], extendedWord[37][0:6]} ^ extendedWord[44];
        extendedWord[51] = permutation1_51_output_result ^ {extendedWord[38][7:31], extendedWord[38][0:6]} ^ extendedWord[45];
        extendedWord[52] = permutation1_52_output_result ^ {extendedWord[39][7:31], extendedWord[39][0:6]} ^ extendedWord[46];
        extendedWord[53] = permutation1_53_output_result ^ {extendedWord[40][7:31], extendedWord[40][0:6]} ^ extendedWord[47];
        extendedWord[54] = permutation1_54_output_result ^ {extendedWord[41][7:31], extendedWord[41][0:6]} ^ extendedWord[48];
        extendedWord[55] = permutation1_55_output_result ^ {extendedWord[42][7:31], extendedWord[42][0:6]} ^ extendedWord[49];
        extendedWord[56] = permutation1_56_output_result ^ {extendedWord[43][7:31], extendedWord[43][0:6]} ^ extendedWord[50];
        extendedWord[57] = permutation1_57_output_result ^ {extendedWord[44][7:31], extendedWord[44][0:6]} ^ extendedWord[51];
        extendedWord[58] = permutation1_58_output_result ^ {extendedWord[45][7:31], extendedWord[45][0:6]} ^ extendedWord[52];
        extendedWord[59] = permutation1_59_output_result ^ {extendedWord[46][7:31], extendedWord[46][0:6]} ^ extendedWord[53];
        extendedWord[60] = permutation1_60_output_result ^ {extendedWord[47][7:31], extendedWord[47][0:6]} ^ extendedWord[54];
        extendedWord[61] = permutation1_61_output_result ^ {extendedWord[48][7:31], extendedWord[48][0:6]} ^ extendedWord[55];
        extendedWord[62] = permutation1_62_output_result ^ {extendedWord[49][7:31], extendedWord[49][0:6]} ^ extendedWord[56];
        extendedWord[63] = permutation1_63_output_result ^ {extendedWord[50][7:31], extendedWord[50][0:6]} ^ extendedWord[57];
        extendedWord[64] = permutation1_64_output_result ^ {extendedWord[51][7:31], extendedWord[51][0:6]} ^ extendedWord[58];
        extendedWord[65] = permutation1_65_output_result ^ {extendedWord[52][7:31], extendedWord[52][0:6]} ^ extendedWord[59];
        extendedWord[66] = permutation1_66_output_result ^ {extendedWord[53][7:31], extendedWord[53][0:6]} ^ extendedWord[60];
        extendedWord[67] = permutation1_67_output_result ^ {extendedWord[54][7:31], extendedWord[54][0:6]} ^ extendedWord[61];
    end

    always_comb begin
        // 5.3.2 part c
        // extendedWordPrime[j] = extendedWord[j] ^ extendedWord[j + 4]
        extendedWordPrime[0] = extendedWord[0] ^ extendedWord[4];
        extendedWordPrime[1] = extendedWord[1] ^ extendedWord[5];
        extendedWordPrime[2] = extendedWord[2] ^ extendedWord[6];
        extendedWordPrime[3] = extendedWord[3] ^ extendedWord[7];
        extendedWordPrime[4] = extendedWord[4] ^ extendedWord[8];
        extendedWordPrime[5] = extendedWord[5] ^ extendedWord[9];
        extendedWordPrime[6] = extendedWord[6] ^ extendedWord[10];
        extendedWordPrime[7] = extendedWord[7] ^ extendedWord[11];
        extendedWordPrime[8] = extendedWord[8] ^ extendedWord[12];
        extendedWordPrime[9] = extendedWord[9] ^ extendedWord[13];
        extendedWordPrime[10] = extendedWord[10] ^ extendedWord[14];
        extendedWordPrime[11] = extendedWord[11] ^ extendedWord[15];
        extendedWordPrime[12] = extendedWord[12] ^ extendedWord[16];
        extendedWordPrime[13] = extendedWord[13] ^ extendedWord[17];
        extendedWordPrime[14] = extendedWord[14] ^ extendedWord[18];
        extendedWordPrime[15] = extendedWord[15] ^ extendedWord[19];
        extendedWordPrime[16] = extendedWord[16] ^ extendedWord[20];
        extendedWordPrime[17] = extendedWord[17] ^ extendedWord[21];
        extendedWordPrime[18] = extendedWord[18] ^ extendedWord[22];
        extendedWordPrime[19] = extendedWord[19] ^ extendedWord[23];
        extendedWordPrime[20] = extendedWord[20] ^ extendedWord[24];
        extendedWordPrime[21] = extendedWord[21] ^ extendedWord[25];
        extendedWordPrime[22] = extendedWord[22] ^ extendedWord[26];
        extendedWordPrime[23] = extendedWord[23] ^ extendedWord[27];
        extendedWordPrime[24] = extendedWord[24] ^ extendedWord[28];
        extendedWordPrime[25] = extendedWord[25] ^ extendedWord[29];
        extendedWordPrime[26] = extendedWord[26] ^ extendedWord[30];
        extendedWordPrime[27] = extendedWord[27] ^ extendedWord[31];
        extendedWordPrime[28] = extendedWord[28] ^ extendedWord[32];
        extendedWordPrime[29] = extendedWord[29] ^ extendedWord[33];
        extendedWordPrime[30] = extendedWord[30] ^ extendedWord[34];
        extendedWordPrime[31] = extendedWord[31] ^ extendedWord[35];
        extendedWordPrime[32] = extendedWord[32] ^ extendedWord[36];
        extendedWordPrime[33] = extendedWord[33] ^ extendedWord[37];
        extendedWordPrime[34] = extendedWord[34] ^ extendedWord[38];
        extendedWordPrime[35] = extendedWord[35] ^ extendedWord[39];
        extendedWordPrime[36] = extendedWord[36] ^ extendedWord[40];
        extendedWordPrime[37] = extendedWord[37] ^ extendedWord[41];
        extendedWordPrime[38] = extendedWord[38] ^ extendedWord[42];
        extendedWordPrime[39] = extendedWord[39] ^ extendedWord[43];
        extendedWordPrime[40] = extendedWord[40] ^ extendedWord[44];
        extendedWordPrime[41] = extendedWord[41] ^ extendedWord[45];
        extendedWordPrime[42] = extendedWord[42] ^ extendedWord[46];
        extendedWordPrime[43] = extendedWord[43] ^ extendedWord[47];
        extendedWordPrime[44] = extendedWord[44] ^ extendedWord[48];
        extendedWordPrime[45] = extendedWord[45] ^ extendedWord[49];
        extendedWordPrime[46] = extendedWord[46] ^ extendedWord[50];
        extendedWordPrime[47] = extendedWord[47] ^ extendedWord[51];
        extendedWordPrime[48] = extendedWord[48] ^ extendedWord[52];
        extendedWordPrime[49] = extendedWord[49] ^ extendedWord[53];
        extendedWordPrime[50] = extendedWord[50] ^ extendedWord[54];
        extendedWordPrime[51] = extendedWord[51] ^ extendedWord[55];
        extendedWordPrime[52] = extendedWord[52] ^ extendedWord[56];
        extendedWordPrime[53] = extendedWord[53] ^ extendedWord[57];
        extendedWordPrime[54] = extendedWord[54] ^ extendedWord[58];
        extendedWordPrime[55] = extendedWord[55] ^ extendedWord[59];
        extendedWordPrime[56] = extendedWord[56] ^ extendedWord[60];
        extendedWordPrime[57] = extendedWord[57] ^ extendedWord[61];
        extendedWordPrime[58] = extendedWord[58] ^ extendedWord[62];
        extendedWordPrime[59] = extendedWord[59] ^ extendedWord[63];
        extendedWordPrime[60] = extendedWord[60] ^ extendedWord[64];
        extendedWordPrime[61] = extendedWord[61] ^ extendedWord[65];
        extendedWordPrime[62] = extendedWord[62] ^ extendedWord[66];
        extendedWordPrime[63] = extendedWord[63] ^ extendedWord[67]; 
    end

endmodule
