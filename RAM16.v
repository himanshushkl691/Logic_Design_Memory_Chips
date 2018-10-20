module RAM16(out,en,clk,address,in,rw);
input[15:0]in;
input[3:0]address;
input rw,en,clk;
output[15:0]out;
wire msb,en0,en1;
wire[2:0]rest0;
wire[15:0]out0,out1;
BUFFER buff(msb,address[3]);
BUFFER buff1(rest0[2],address[2]);
BUFFER buff2(rest0[1],address[1]);
BUFFER buff3(rest0[0],address[0]);
DEMUX demux1(en0,en1,msb,en);
RAM8 ram1(out0,en0,clk,rest0,in,rw);
RAM8 ram2(out1,en1,clk,rest0,in,rw);
OR_16_BIT_GATE or1(out,out0,out1);
endmodule
