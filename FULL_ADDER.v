module FULL_ADDER(carry,sum,a,b,cin);
input a,b,cin;
output carry,sum;
wire c,d,e;
HALF_ADDER hf1(d,c,a,b);
HALF_ADDER hf2(e,sum,c,cin);
OR_GATE_LEVEL or1(carry,e,d);
endmodule