`ifndef _Permutation1
`define _Permutation1
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2016 05:36:16 PM
// Design Name: 
// Module Name: Permutation1
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


module Permutation1 (
    input  wire [0:31] input_X      ,
    output reg  [0:31] output_result
);

    always_comb begin
        output_result = input_X ^ {input_X[15:31], input_X[0:14]} ^ {input_X[23:31], input_X[0:22]};
    end

endmodule
`endif