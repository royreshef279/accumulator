`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2024 12:20:32 PM
// Design Name: 
// Module Name: accumulator
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


module accumulator(
    input [31:0]A,
    input clk,rst,
    output reg [31:0] sum=0
);
reg [31:0]temp=0;
always @(posedge clk) begin
    if(rst)begin 
        sum = temp;
        temp = A; 
    end else begin
        temp = temp +A;
    end           
end    
endmodule
