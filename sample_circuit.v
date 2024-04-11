module sample_circuit(A,B,C,D,E,Y);

input A,B,C,D,E;
output Y;
wire W1,W2,W3,W4;

or o1(W1,A,B);
and a1(W2,C,D);
not n1(W3,W1);
or o2(W4,W2,W3);
and a2(Y,W4,E);

endmodule