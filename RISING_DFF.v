module RISING_DFF(q,q_bar,d,clk);
input clk,d;
output q,q_bar;
wire a,b;
not(a,clk);
D_FF dff1(b,,d,a);
D_FF dff2(q,q_bar,b,clk);
endmodule