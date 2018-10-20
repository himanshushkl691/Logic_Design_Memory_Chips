module BIT16_INCREMENTER(s,in);
input[15:0]in;
output[15:0]s;
BIT16_ADDER ad1(,s,1,in,0);
endmodule