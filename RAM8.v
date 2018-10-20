module RAM8(out,en,clk,address,in,rw);
input [15:0]in;
input rw,en,clk;
input [2:0]address;
output[15:0]out;
wire [15:0]out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14;
wire [7:0]tmp;
DEMUX_8WAY demux1(tmp[0],tmp[1],tmp[2],tmp[3],tmp[4],tmp[5],tmp[6],tmp[7],address[0],address[1],address[2],en);
REGISTER reg1(out1,tmp[0],clk,in,rw);
REGISTER reg2(out2,tmp[1],clk,in,rw);
REGISTER reg3(out3,tmp[2],clk,in,rw);
REGISTER reg4(out4,tmp[3],clk,in,rw);

REGISTER reg5(out5,tmp[4],clk,in,rw);
REGISTER reg6(out6,tmp[5],clk,in,rw);
REGISTER reg7(out7,tmp[6],clk,in,rw);
REGISTER reg8(out8,tmp[7],clk,in,rw);
OR_16_BIT_GATE or1(out9,out1,out2);
OR_16_BIT_GATE or2(out10,out3,out9);
OR_16_BIT_GATE or3(out11,out4,out10);
OR_16_BIT_GATE or4(out12,out5,out11);
OR_16_BIT_GATE or5(out13,out6,out12);
OR_16_BIT_GATE or6(out14,out7,out13);
OR_16_BIT_GATE or7(out,out8,out14);
endmodule