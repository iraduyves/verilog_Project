module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
xor x1(sum,a,b);
and a1(carry,a,b);
endmodule