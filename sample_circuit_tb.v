`include "sample_circuit.v"

module sample_circuit_tb;
    // Inputs
    reg A, B, C, D, E;

    // Outputs
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    sample_circuit uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .Y(Y)
    );

    initial begin
        $dumpfile("sample_circuit.vcd");
        $dumpvars(0,sample_circuit_tb);

        A = 0;
        B = 0;
        C = 0;
        D = 0;
        E = 0;

        // Wait 100 ns for global reset to finish
        #100;


        A = 0; B = 0; C = 0; D = 0; E = 1;
        #100;

        A = 0; B = 0; C = 0; D = 1; E = 0;
        #100;

        A = 0; B = 0; C = 1; D = 0; E = 1;
        #100;

        A = 0; B = 1; C = 0; D = 1; E = 0;
        #100;

        A = 1; B = 0; C = 1; D = 0; E = 1;
        #100;

        A = 1; B = 1; C = 0; D = 0; E = 0;
        #100;

        A = 1; B = 0; C = 0; D = 1; E = 1;
        #100;

        A = 0; B = 1; C = 1; D = 1; E = 1;
        #100;

        $finish;
    end
endmodule