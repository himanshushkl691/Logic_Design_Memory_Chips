module PC(out,inc,jump,reset,data,clk);
input[15:0]data;
input jump,inc,reset,clk;
output[15:0]out;
wire[15:0]incremented,a,b,in1;
BIT16_INCREMENTER incr1(incremented,out);
MUX_2X1 mux1[15:0](a,inc,out,incremented);
MUX_2X1 mux2[15:0](b,jump,a,data);
MUX_2X1 mux3[15:0](in1,reset,b,16'b0000000000000000);
or(temp0,inc,jump);
or(temp,reset,temp0);
REGISTER reg1(out,1,clk,in1,temp);
endmodule
