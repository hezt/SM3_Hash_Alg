`ifndef _Permutation0
`define _Permutation0
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/14/2016 05:36:00 PM
// Design Name:
// Module Name: Permutation0
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


module Permutation0 (
    input  wire [0:31] input_X      ,
    output reg  [0:31] output_result
);
    always_comb begin
        output_result = input_X ^ {input_X[9:31], input_X[0:8]} ^ {input_X[17:31], input_X[0:16]};
    end

endmodule
`endif