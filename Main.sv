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
	input wire [0:1] enable,
	input wire [0:7] oneByte,
	output reg [0:511] messageBlock,
	output reg [0:255] outputV
    );
reg [0:63] counter = 0;
reg [0:63] length = 0;
reg [0:255] inputV;
reg cfEnable = 0;

reg [0:511] holdMessageBlock;
reg lastBlockStart = 0;
CompressFunction compressfunction(
	.clk         (clk),
	.enable      (cfEnable),
	.inputV      (inputV),
	.messageBlock(holdMessageBlock),
	.outputV     (outputV),
	.finished    (cfFinished)
	);
always_ff @(posedge clk) begin
	if(cfEnable == 0) begin
		if(enable == 0) begin
			// clear
			lastBlockStart <= 0;
			counter <= 0;
			length <= 0;
			inputV <= 256'h7380166f4914b2b9172442d7da8a0600a96f30bc163138aae38dee4db0fb0e4e;
		end
		if(enable == 1) begin
			// copy oneByte to messageBlock
			messageBlock[counter + 0] <= oneByte[0];
			messageBlock[counter + 1] <= oneByte[1];
			messageBlock[counter + 2] <= oneByte[2];
			messageBlock[counter + 3] <= oneByte[3];
			messageBlock[counter + 4] <= oneByte[4];
			messageBlock[counter + 5] <= oneByte[5];
			messageBlock[counter + 6] <= oneByte[6];
			messageBlock[counter + 7] <= oneByte[7];
			counter <= counter + 8;
			length <= length + 8;
			if(counter == 512) begin
				cfEnable <= 1;
				holdMessageBlock <= messageBlock;
				counter <= 0;
			end
		end
		if(enable == 2) begin
			if(counter == 512) begin
				cfEnable <= 1;
				holdMessageBlock <= messageBlock;
				if(lastBlockStart == 0) begin
					counter <= 0;
				end
				if(lastBlockStart == 1) begin
					counter <= -1;
				end
			end
			// padding with 100...000
			if(counter < 448 && counter >= 0) begin
				messageBlock[counter + 0] <= 0;
				messageBlock[counter + 1] <= 0;
				messageBlock[counter + 2] <= 0;
				messageBlock[counter + 3] <= 0;
				messageBlock[counter + 4] <= 0;
				messageBlock[counter + 5] <= 0;
				messageBlock[counter + 6] <= 0;
				messageBlock[counter + 7] <= 0;
				counter <= counter + 8;
			end
			if(counter == 448) begin
				messageBlock[448:511] <= length;
				messageBlock[length % 512] <= 1;
				counter <= 512;
				lastBlockStart <= 1;
			end
		end

	end
	if(cfFinished == 1) begin
		cfEnable <= 0;		
		inputV <= outputV;
	end
end
endmodule
`endif