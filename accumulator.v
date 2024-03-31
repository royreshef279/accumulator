`timescale 1ns / 1ps

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
