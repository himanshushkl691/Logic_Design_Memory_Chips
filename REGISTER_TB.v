module REGISTER_TB;
reg[15:0] in;
reg en,clk,rw;
wire[15:0] out;
REGISTER reg1(out,en,clk,in,rw);
integer i,j,k,l;
initial
begin
	en = 1;
	for (i = 0;i<=20;i=i+1)
	for (j = 0;j<=1;j=j+1)
	for (k = 0;k<=1;k=k+1)
	for (l = 0;l<=1;l=l+1)
	begin
		#2;in = 1998;#2;rw = k;#2;clk = l;#10;en = 1'b0;#10;en = 1'b1;#10;
	end	
end
endmodule 