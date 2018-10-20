module BINARY_CELL_TB;
wire out;
reg in,clk,rw,en;
ONE_BIT_CELL obc(out,en,clk,in,rw);
integer i,j,k,l;
initial
begin
	en = 1;
	for (i = 0;i<=10;i=i+1)
	for (j = 0;j<=1;j=j+1)
	for (k = 0;k<=1;k=k+1)
	for (l = 0;l<=1;l=l+1)
	begin
		#2;in = j;#2;rw = k;#2;clk = l;#10;
	end	
end
endmodule