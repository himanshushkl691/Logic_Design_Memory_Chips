module ONE_BIT_CELL(out,en,clk,in,rw);
input in,rw,clk,en;
output out;
wire a,rw_;
and(rw_,rw,en);
  MUX_2X1 mux1(a,rw_,in,out);
RISING_DFF dff1(out1,,a,clk);
and(out,out1,en);
endmodule
