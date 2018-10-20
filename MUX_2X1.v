module MUX_2X1(out,s,in0,in1);
input in0,in1,s;
output out;
not(s_bar,s);
and(out1,in0,s_bar);
and(out2,in1,s);
or(out,out1,out2);
endmodule
