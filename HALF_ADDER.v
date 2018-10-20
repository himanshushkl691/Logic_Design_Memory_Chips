module HALF_ADDER(c,s,a,b);
input a,b;
output c,s;
xor(s,a,b);
and(c,a,b);
endmodule