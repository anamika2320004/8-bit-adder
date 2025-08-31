// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb_adder_8bit;

    // Inputs
    reg [7:0] a, b;

    // Outputs
    wire [7:0] sum;
    wire carry;

    // Instantiate the 8-bit Adder
    adder_8bit uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Dump signals for EPWave
        $dumpfile("adder_8bit.vcd");
        $dumpvars(0, tb_adder_8bit);

        // Apply inputs
        a = 8'b00000000; b = 8'b00000000; #10;
        a = 8'b00000001; b = 8'b00000010; #10;
        a = 8'b01010101; b = 8'b00110011; #10;
        a = 8'b11111111; b = 8'b00000001; #10; // Overflow
        a = 8'b10101010; b = 8'b10101010; #10;

        $finish;
    end

endmodule
