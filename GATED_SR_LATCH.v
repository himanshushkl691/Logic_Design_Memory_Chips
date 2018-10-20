module GATED_SR_LATCH(q,q_bar,s,r,en);
input s,r,en;
output q,q_bar;
and(a,s,en);
and(b,r,en);
SR_LATCH sr1(q,q_bar,a,b);
endmodule