`timescale 10ns/10ps
`include "Full_Adder_32bit.v"
// `include "Full_Adder_Structural_Verilog.v"
module Testbench_Full_Adder_32bit;
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    wire [31:0] S;
    wire Cout;

    Full_Adder_32bit DUT (
        .A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout)
    );

    initial begin
        $dumpfile("full_adder_32bit.vcd");
        $dumpvars(0, Testbench_Full_Adder_32bit);

       // Test with all zeros
        A = 32'h0000_0000;
        B = 32'h0000_0000;
        Cin = 1'b0;
        #10;

        // Test with all zeros and carry-in = 1
        A = 32'h0000_0000;
        B = 32'h0000_0000;
        Cin = 1'b1;
        #10;

        // Test with small positive numbers
        A = 32'h0000_0001;
        B = 32'h0000_0001;
        Cin = 1'b0;
        #10;

        // Test with small positive numbers and carry-in = 1
        A = 32'h0000_0001;
        B = 32'h0000_0001;
        Cin = 1'b1;
        #10;

        // Test with all ones
        A = 32'hFFFF_FFFF;
        B = 32'h0000_0001;
        Cin = 1'b0;
        #10;

        // Test with all ones and carry-in = 1
        A = 32'hFFFF_FFFF;
        B = 32'h0000_0001;
        Cin = 1'b1;
        #10;

        // Test with all ones
        A = 32'hFFFF_FFFF;
        B = 32'hFFFF_FFFF;
        Cin = 1'b0;
        #10;

        // Test with all ones and carry-in = 1
        A = 32'hFFFF_FFFF;
        B = 32'hFFFF_FFFF;
        Cin = 1'b1;
        #10;

        // Test with random input values
        A = $random;
        B = $random;
        Cin = $random % 2;
        #10;

        // Test with boundary conditions (min and max values)
        A = 32'h0000_0000;
        B = 32'h0000_0000;
        Cin = 1'b0;
        #10;

        A = 32'hFFFF_FFFF;
        B = 32'hFFFF_FFFF;
        Cin = 1'b1;
        #10;

        // Test with carry propagation
        A = 32'h0000_0001;
        B = 32'h7FFF_FFFF;
        Cin = 1'b0;
        #10;

        // Test with carry overflow
        A = 32'hFFFF_FFFF;
        B = 32'hFFFF_FFFF;
        Cin = 1'b1;
        #10;

        // Test with specific bit patterns
        A = 32'h0000_0000;
        B = 32'hFFFF_FFFF;
        Cin = 1'b0;
        #10;

        A = 32'h5555_5555;
        B = 32'hAAAA_AAAA;
        Cin = 1'b1;
        #10;


        $finish;
    end
endmodule