`timescale 10ns/10ps
`include "multiplexer_4to1_32bit.v"

module Testbench_4to1_Multiplexer_32bit;
    reg [31:0] A, B, C, D;
    reg [1:0] sel;
    wire [31:0] out;

    multiplexer_4to1_32bit DUT (
        .A(A), .B(B), .C(C), .D(D),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("multiplexer.vcd");
        $dumpvars(0, Testbench_4to1_Multiplexer_32bit);

        // // Test case 1: Select input A
        // A = 32'h12345678;
        // B = 32'h87654321;
        // C = 32'hDEADBEEF;
        // D = 32'h0FEEDBAC;
        // sel = 2'b00;
        // #10;

        // // Test case 2: Select input B
        // A = 32'h12345678;
        // B = 32'h87654321;
        // C = 32'hDEADBEEF;
        // D = 32'h0FEEDBAC;
        // sel = 2'b01;
        // #10;

        // // Test case 3: Select input C
        // A = 32'h12345678;
        // B = 32'h87654321;
        // C = 32'hDEADBEEF;
        // D = 32'h0FEEDBAC;
        // sel = 2'b10;
        // #10;

        // // Test case 4: Select input D
        // A = 32'h12345678;
        // B = 32'h87654321;
        // C = 32'hDEADBEEF;
        // D = 32'h0FEEDBAC;
        // sel = 2'b11;
        // #10;
        //Test case 1: select input 00, expect output A
        A = 32'hAAAA_5555; B = 32'hBBBB_6666; C = 32'hCCCC_7777; D = 32'hDDDD_8888; sel = 2'b00;
        #10; // Wait for 10 time units
        if (out !== A) $display("Test case 1 failed! Expected: %h, Actual: %h", A, out);
        
        // Test case 2: select input 01, expect output B
        A = 32'hAAAA_5555; B = 32'hBBBB_6666; C = 32'hCCCC_7777; D = 32'hDDDD_8888; sel = 2'b01;
        #10; // Wait for 10 time units
        if (out !== B) $display("Test case 2 failed! Expected: %h, Actual: %h", B, out);
        
        // Test case 3: select input 10, expect output C
        A = 32'hAAAA_5555; B = 32'hBBBB_6666; C = 32'hCCCC_7777; D = 32'hDDDD_8888; sel = 2'b10;
        #10; // Wait for 10 time units
        if (out !== C) $display("Test case 3 failed! Expected: %h, Actual: %h", C, out);
        
        // Test case 4: select input 11, expect output D
        A = 32'hAAAA_5555; B = 32'hBBBB_6666; C = 32'hCCCC_7777; D = 32'hDDDD_8888; sel = 2'b11;
        #10; // Wait for 10 time units
        if (out !== D) $display("Test case 4 failed! Expected: %h, Actual: %h", D, out);

        $finish;
    end
endmodule