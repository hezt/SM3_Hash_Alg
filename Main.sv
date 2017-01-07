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

reg [0:7] holdOneByte;
reg [0:511] messageBlock, holdMessageBlock;
reg [0:31] extendedWord [0:67];
reg [0:31] extendedWordPrime [0:63];
reg [0:9] messageBlockLengthConuter = 0;
reg [0:255] inputV;
reg started = 0;
reg padEnable = 0;
reg cfEnable = 0;
reg padFinished, cfFinished;


Padding padding(
	.clk         (clk),
	.enable      (padEnable),
	.oneByte     (holdOneByte),
	.length      (length),
	.messageBlock(messageBlock),
	.finished   (padFinished)
	);


CompressFunction compressFunction(
	.clk              (clk),
	.enable           (cfEnable),
	.inputV           (inputV),
	.messageBlock     (holdMessageBlock),
	.outputV          (outputV),
	.finished         (cfFinished)
	);
// reg padLock = 0;
// reg cfLock = 0;

assign blockNum = (length / 512) + 1;

always_ff @(posedge clk or posedge enable) begin
	if(enable == 1 && started == 0) begin
		started <= 1;
		inputV <= 256'h7380166f4914b2b9172442d7da8a0600a96f30bc163138aae38dee4db0fb0e4e; 
	end
	holdOneByte <= oneByte;

	// if()

	if(started == 1 && padEnable == 0) begin
		padEnable <= 1;
		// padLock <= 1;
	end
	if(padFinished == 1 && cfEnable == 0) begin
		holdMessageBlock <= messageBlock;
		padEnable <= 0;
		cfEnable <= 1;
	end
	if(cfFinished) begin
		inputV <= outputV;
		cfEnable <= 0;
	end
end
endmodule
`endif