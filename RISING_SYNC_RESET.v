module RISING_SYNC(q,q_bar,r,d,clk);
input r,clk,d;
output q,q_bar;
wire d_mod,r;
not(r_bar,r);
and(d_mod,r_bar,d);
RISING_DFF rdff1(q,q_bar,d_mod,clk);
endmodule
