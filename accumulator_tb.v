`timescale 1ns / 1ps

module accumulator_tb();
reg [31:0]A;
reg clk, rst;
wire [31:0]sum;

accumulator dut(
    .A(A),
    .clk(clk),
    .rst(rst),
    .sum(sum)
);
//initial begin
//rst =0; clk =0; A = 0;
//#5
//rst=1;
//#5
//rst=0;A=1;
//#100
//rst =1;A=0;
//#10
//rst=0;
//#90
//rst=1;
//#10
//rst=0;
//#90
//rst=1;
//#10
//rst=0;
//#90
//rst=1;
//#5
//$stop;
//end
//always #5 clk = ~clk;
//always #10 A = A+1;

initial begin
    clk=0;
    rst=0;
    A=0;
    #5 rst = 1;
    #5 rst = 0; A=1;
    forever #10 A = A + 1;
end
// Clock cycle is 10ns
always #5 clk = ~clk;

initial begin
    #10; 
    repeat (4) begin
        //Adjust the time (change #90 to another time) to add more inputs to be accumulated 
        //In this case, (90+10)/10 gives the number of inputs to be added
        #90 rst = 1;  
        #10 rst = 0;  
    end
    #5 $stop;  // End simulation
end
endmodule
