module OR_GATE_LEVEL(c,a,b);
input a,b;
output c;
wire d,e;
nand(d,a,a);
nand(e,b,b);
nand(c,e,d);
endmodule