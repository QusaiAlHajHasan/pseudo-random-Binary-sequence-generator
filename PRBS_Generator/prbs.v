`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:57 05/03/2020 
// Design Name: 
// Module Name:    prbs 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module prbs(clk, reset, random);

input clk, reset;
output random;
wire w0;
reg [3:0] temp;

always @(posedge reset)
begin
temp <= 4'hf;
end

always @(posedge clk)
begin
if (~reset)
begin
temp <= {temp[0]^temp[1], temp[3], temp[2], temp[1]};
end
end

assign random = temp[0];

endmodule
