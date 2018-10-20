module REGISTER(out,en,clk,in,rw);
input[15:0] in;
input rw,en,clk;
output[15:0] out;
ONE_BIT_CELL bc1[15:0](out,en,clk,in,rw);
endmodule

