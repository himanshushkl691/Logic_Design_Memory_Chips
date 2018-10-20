module OR_16_BIT_GATE(c,a,b);
input[15:0]a,b;
output[15:0]c;
OR_GATE_LEVEL or1[15:0](c,a,b);
endmodule