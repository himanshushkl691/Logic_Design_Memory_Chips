module RISING_SYNC_TB;
reg d,clk,reset;
wire q,q_bar;
RISING_SYNC rs(q,q_bar,reset,d,clk);
integer i,j,k,l;
initial
begin
	for (i = 0; i < 100; i = i + 1)
	for (j = 0; j <= 1; j = j + 1)
	for (k = 0; k <= 1; k = k + 1)
	for (l = 0; l <= 1; l = l + 1)
	begin
		 reset = k; clk = l;d = j;	
		#10;
	end
end
endmodule
