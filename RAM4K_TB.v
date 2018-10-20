module RAM4K_TB;
wire[15:0]out;
reg[15:0]in;
reg[11:0]address;
reg rw,en,clk;
RAM4K ram1(out,en,clk,address,in,rw);
integer i,j,k,l,m;
initial
begin
	en = 1'b1;#2;
	for (m = 0;m<=20;m=m+1)
	for (j = 0;j<=5;j=j+1)
	for (k = 0;k<=1;k=k+1)
	for (l = 0;l<=1;l=l+1)
	for (i = 0;i <= 15;i=i+1)
	begin
		clk = l;#2;address = i;#2;in = j;#2;rw = k;#2;en = 1'b0;#2;en = 1'b1;#10;
	end
end
endmodule