`timescale 10ns/10ps
`include "Full_Adder_Structural_Verilog.v"

// 32-bit Full Adder Module
module Full_Adder_32bit (A,B,Cin,S,Cout);
    input [31:0] A;
    input [31:0] B;
    input Cin;
    output [31:0] S;
    output Cout;

    wire [30:0] C;

    // 32 Instances of the Full Adder Structural Verilog Module
    Full_Adder_Structural_Verilog FA0 (
        .X1(A[0]), .X2(B[0]), .Cin(Cin), .S(S[0]), .Cout(C[0])
    );
    Full_Adder_Structural_Verilog FA1 (
        .X1(A[1]), .X2(B[1]), .Cin(C[0]), .S(S[1]), .Cout(C[1])
    );
    Full_Adder_Structural_Verilog FA2 (
        .X1(A[2]), .X2(B[2]), .Cin(C[1]), .S(S[2]), .Cout(C[2])
    );
    Full_Adder_Structural_Verilog FA3 (
        .X1(A[3]), .X2(B[3]), .Cin(C[2]), .S(S[3]), .Cout(C[3])
    );
    Full_Adder_Structural_Verilog FA4 (
        .X1(A[4]), .X2(B[4]), .Cin(C[3]), .S(S[4]), .Cout(C[4])
    );
    Full_Adder_Structural_Verilog FA5 (
        .X1(A[5]), .X2(B[5]), .Cin(C[4]), .S(S[5]), .Cout(C[5])
    );
    Full_Adder_Structural_Verilog FA6 (
        .X1(A[6]), .X2(B[6]), .Cin(C[5]), .S(S[6]), .Cout(C[6])
    );
    Full_Adder_Structural_Verilog FA7 (
        .X1(A[7]), .X2(B[7]), .Cin(C[6]), .S(S[7]), .Cout(C[7])
    );
    Full_Adder_Structural_Verilog FA8 (
        .X1(A[8]), .X2(B[8]), .Cin(C[7]), .S(S[8]), .Cout(C[8])
    );
    Full_Adder_Structural_Verilog FA9 (
        .X1(A[9]), .X2(B[9]), .Cin(C[8]), .S(S[9]), .Cout(C[9])
    );
    Full_Adder_Structural_Verilog FA10 (
        .X1(A[10]), .X2(B[10]), .Cin(C[9]), .S(S[10]), .Cout(C[10])
    );
    Full_Adder_Structural_Verilog FA11 (
        .X1(A[11]), .X2(B[11]), .Cin(C[10]), .S(S[11]), .Cout(C[11])
    );
    Full_Adder_Structural_Verilog FA12 (
        .X1(A[12]), .X2(B[12]), .Cin(C[11]), .S(S[12]), .Cout(C[12])
    );
    Full_Adder_Structural_Verilog FA13 (
        .X1(A[13]), .X2(B[13]), .Cin(C[12]), .S(S[13]), .Cout(C[13])
    );
    Full_Adder_Structural_Verilog FA14 (
        .X1(A[14]), .X2(B[14]), .Cin(C[13]), .S(S[14]), .Cout(C[14])
    );
    Full_Adder_Structural_Verilog FA15 (
        .X1(A[15]), .X2(B[15]), .Cin(C[14]), .S(S[15]), .Cout(C[15])
    );
    Full_Adder_Structural_Verilog FA16 (
        .X1(A[16]), .X2(B[16]), .Cin(C[15]), .S(S[16]), .Cout(C[16])
    );
    Full_Adder_Structural_Verilog FA17 (
        .X1(A[17]), .X2(B[17]), .Cin(C[16]), .S(S[17]), .Cout(C[17])
    );
    Full_Adder_Structural_Verilog FA18 (
        .X1(A[18]), .X2(B[18]), .Cin(C[17]), .S(S[18]), .Cout(C[18])
    );
    Full_Adder_Structural_Verilog FA19 (
        .X1(A[19]), .X2(B[19]), .Cin(C[18]), .S(S[19]), .Cout(C[19])
    );
    Full_Adder_Structural_Verilog FA20 (
        .X1(A[20]), .X2(B[20]), .Cin(C[19]), .S(S[20]), .Cout(C[20])
    );
    Full_Adder_Structural_Verilog FA21 (
        .X1(A[21]), .X2(B[21]), .Cin(C[20]), .S(S[21]), .Cout(C[21])
    );
    Full_Adder_Structural_Verilog FA22 (
        .X1(A[22]), .X2(B[22]), .Cin(C[21]), .S(S[22]), .Cout(C[22])
    );
    Full_Adder_Structural_Verilog FA23 (
        .X1(A[23]), .X2(B[23]), .Cin(C[22]), .S(S[23]), .Cout(C[23])
    );
    Full_Adder_Structural_Verilog FA24 (
        .X1(A[24]), .X2(B[24]), .Cin(C[23]), .S(S[24]), .Cout(C[24])
    );
    Full_Adder_Structural_Verilog FA25 (
        .X1(A[25]), .X2(B[25]), .Cin(C[24]), .S(S[25]), .Cout(C[25])
    );
    Full_Adder_Structural_Verilog FA26 (
        .X1(A[26]), .X2(B[26]), .Cin(C[25]), .S(S[26]), .Cout(C[26])
    );
    Full_Adder_Structural_Verilog FA27 (
        .X1(A[27]), .X2(B[27]), .Cin(C[26]), .S(S[27]), .Cout(C[27])
    );
    Full_Adder_Structural_Verilog FA28 (
        .X1(A[28]), .X2(B[28]), .Cin(C[27]), .S(S[28]), .Cout(C[28])
    );
    Full_Adder_Structural_Verilog FA29 (
        .X1(A[29]), .X2(B[29]), .Cin(C[28]), .S(S[29]), .Cout(C[29])
    );
    Full_Adder_Structural_Verilog FA30 (
        .X1(A[30]), .X2(B[30]), .Cin(C[29]), .S(S[30]), .Cout(C[30])
    );
    Full_Adder_Structural_Verilog FA31 (
        .X1(A[31]), .X2(B[31]), .Cin(C[30]), .S(S[31]), .Cout(Cout)
    );

endmodule