`ifndef _BooleanFF
`define _BooleanFF
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2016 08:19:43 PM
// Design Name: 
// Module Name: BooleanFF
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


module BooleanFF(
    input wire [0:31] input_X,
    input wire [0:31] input_Y,
    input wire [0:31] input_Z,
    input wire [0:6] input_j,
    output reg [0:31] output_result
    );

always_comb begin
    if(input_j >= 0 && input_j <= 15) begin
        output_result = input_X ^ input_Y ^ input_Z;
    end
    if(input_j >= 16 && input_j <= 63) begin
        output_result = (input_X & input_Y) | (input_X & input_Z) | (input_Y & input_Z);
    end
end

endmodule

`endif
