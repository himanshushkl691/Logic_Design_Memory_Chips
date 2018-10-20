module RISING_DFF_TB;
wire q,q_bar;
reg d,clk;
RISING_DFF rdff1(q,q_bar,d,clk);
initial
begin
	clk = 1'b0; d = 1'b1;
#10	clk = 1'b1; d = 1'b0;
#10	clk = 1'b1; d = 1'b1;
end
endmodule