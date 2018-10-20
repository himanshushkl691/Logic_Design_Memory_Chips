module AND_GATE_LEVEL(c,a,b);
input a,b;
output c;
wire d;
nand(d,a,b);
nand(c,d,d);
endmodule;