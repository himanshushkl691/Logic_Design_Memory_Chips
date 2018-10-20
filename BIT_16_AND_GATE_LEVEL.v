module BIT_16_AND_GATE(c,a,b);
input[15:0]a,b;
output [15:0]c;
AND_GATE_LEVEL and1[15:0](c,a,b);
endmodule