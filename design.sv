// Code your design here
`timescale 1ns/1ps

// 8-bit Adder
module adder_8bit(
    input  [7:0] a, 
    input  [7:0] b, 
    output [7:0] sum, 
    output carry
);
    assign {carry, sum} = a + b;
endmodule
