`ifndef _Main
`define _Main
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 04:09:22 PM
// Design Name: 
// Module Name: Main
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


module Main(
	input wire clk,
	input wire [0:7] oneByte,
	input wire enable,
	input wire [0:63] length,
	output reg [0:255] outputV
    );

Padding padding(
	.clk         (clk),
	.enable      (padEnable),
	.oneByte     (holdOneByte),
	.length      (length),
	.messageBlock(messageBlock),
	.finifshed   (padFinifshed)
	);


CompressFunction compressFunction(
	.clk              (clk),
	.enable           (cfEnable),
	.inputV           (inputV),
	.messageBlock     (messageBlock),
	.outputV          (outputV),
	.finished         (cfFinished)
	);

reg [0:7] holdOneByte;
reg [0:511] messageBlock, holdMessageBlock;
reg [0:31] extendedWord [0:67];
reg [0:31] extendedWordPrime [0:63];
reg [0:9] messageBlockLengthConuter = 0;
reg [0:255] inputV;
reg started;
always_ff @(posedge clk or posedge enable) begin
	if(enable == 1 && started == 0) begin
		started <= 1;
		inputV <= 256'h7380166f4914b2b9172442d7da8a0600a96f30bc163138aae38dee4db0fb0e4e; 
	end
	holdOneByte <= oneByte;
	if(started == 1) begin
		padEnable <= 1;
	end
	if(padFinifshed == 1) begin
		
	end
end
endmodule
`endif