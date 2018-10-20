module ASYNC_RISING_HIGH(q,q_bar,reset,d,clk);
input d,reset,clk;
output q,q_bar;
wire a;
RISING_DFF rdff1(a,,d,clk);
not(r_bar,reset);
and(q,a,r_bar);
not(q_bar,q);
endmodule
