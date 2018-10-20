module RAM8_TB;
wire[15:0]out;
reg[15:0]in;
reg[2:0]address;
reg rw,en,clk;
RAM8 ram1(out,en,clk,address,in,rw);
integer i,j,k,l;
initial
begin
	en = 1'b1;in = 1998;#10;
	for (i = 0;i<=20;i=i+1)
	for (j = 0;j<=7;j=j+1)
	for (k = 0;k<=1;k=k+1)
	for (l = 0;l<=1;l=l+1)
	begin
		#2;rw = k;#2;clk = l;#2;address = j;#10;
	end	
end
endmodule