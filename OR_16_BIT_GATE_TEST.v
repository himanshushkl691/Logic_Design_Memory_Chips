module OR_16_BIT_GATE_TEST;
wire[15:0]r;
reg[15:0]p,q;
OR_16_BIT_GATE bit(r,p,q);
integer i,j;
always
begin
	for(i=0;i<=65535;i=i+1)
	for(j=0;j<=65535;j=j+1)
	begin	
	p=i;
	#10 q=j;
	end
end
endmodule