`timescale 1ns/1ps
`include "ALU_32bit.v"

module Testbench_32bit_ALU;
    reg [31:0] A, B;
    reg [3:0] ALU_Sel;
    wire [31:0] ALU_Out;
    wire Carryout;

    ALU_32bit DUT (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .Carryout(Carryout)
    );

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, Testbench_32bit_ALU);

        // Test Addition
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b0000;
        #10;

        // Test Subtraction
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b0001;
        #10;

        // Test Multiplication
        A = 32'h00000012;
        B = 32'h00000034;
        ALU_Sel = 4'b0010;
        #10;

        // Test Division
        A = 32'h00000078;
        B = 32'h00000012;
        ALU_Sel = 4'b0011;
        #10;

        // Test Logical Shift Left
        A = 32'h12345678;
        B = 32'h00000000;
        ALU_Sel = 4'b0100;
        #10;

        // Test Logical Shift Right
        A = 32'h12345678;
        B = 32'h00000000;
        ALU_Sel = 4'b0101;
        #10;

        // Test Rotate Left
        A = 32'h12345678;
        B = 32'h00000000;
        ALU_Sel = 4'b0110;
        #10;

        // Test Rotate Right
        A = 32'h12345678;
        B = 32'h00000000;
        ALU_Sel = 4'b0111;
        #10;

        // Test Logical AND
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1000;
        #10;

        // Test Logical OR
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1001;
        #10;

        // Test Logical XOR
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1010;
        #10;

        // Test Logical NOR
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1011;
        #10;

        // Test Logical NAND
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1100;
        #10;

        // Test Logical XNOR
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1101;
        #10;

        // Test Greater Comparison
        A = 32'h12345678;
        B = 32'h87654321;
        ALU_Sel = 4'b1110;
        #10;

        // Test Equal Comparison
        A = 32'h12345678;
        B = 32'h12345678;
        ALU_Sel = 4'b1111;
        #10;

        $finish;
    end
endmodule