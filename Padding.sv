`ifndef _Padding
`define _Padding
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 10:10:33 AM
// Design Name: 
// Module Name: Padding
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


module Padding(
	input wire clk,
	input wire enable,
	input wire [0:7] oneByte,
	input wire [0:63] length,
	output reg [0:511] messageBlock,
	output reg finished = 0
    );

reg [0:9] counter;
reg [0:9] lengthCounter;
reg started = 0;
reg startPadding;


always_ff @(posedge clk or posedge enable) begin
	if(enable == 1 && started == 0 && finished == 0) begin
		started <= 1;
		counter <= 0;
		startPadding <= 0;
		lengthCounter <= length;
	end
	if(enable == 0 && finished == 1) begin
		started <= 0;
		finished <= 0;
	end
	if(started == 1 && startPadding == 0 && lengthCounter != 0) begin
		messageBlock[counter + 0] <= oneByte[0];
		messageBlock[counter + 1] <= oneByte[1];
		messageBlock[counter + 2] <= oneByte[2];
		messageBlock[counter + 3] <= oneByte[3];
		messageBlock[counter + 4] <= oneByte[4];
		messageBlock[counter + 5] <= oneByte[5];
		messageBlock[counter + 6] <= oneByte[6];
		messageBlock[counter + 7] <= oneByte[7];
		counter <= counter + 8;
		lengthCounter <= lengthCounter - 8;
	end
	if(started == 1 && startPadding == 0 && lengthCounter == 0) begin
		messageBlock[counter] <= 1;
		startPadding <= 1;
	end
	if(started == 1 && startPadding == 1) begin
		if(messageBlock[counter] == 1) begin
			messageBlock[counter + 1] <= 0;
			messageBlock[counter + 2] <= 0;
			messageBlock[counter + 3] <= 0;
			messageBlock[counter + 4] <= 0;
			messageBlock[counter + 5] <= 0;
			messageBlock[counter + 6] <= 0;
			messageBlock[counter + 7] <= 0;
		end
		else begin
			messageBlock[counter + 0] <= 0;
			messageBlock[counter + 1] <= 0;
			messageBlock[counter + 2] <= 0;
			messageBlock[counter + 3] <= 0;
			messageBlock[counter + 4] <= 0;
			messageBlock[counter + 5] <= 0;
			messageBlock[counter + 6] <= 0;
			messageBlock[counter + 7] <= 0;
		end
		counter <= counter + 8;
	end
	if(started == 1 && startPadding == 1 && counter == 456) begin
		if(lengthCounter == 0) begin
			messageBlock[448:511] <= length;
			startPadding <= 0;
			started <= 0;
			finished <= 1;
		end
	end
end
endmodule
`endif

