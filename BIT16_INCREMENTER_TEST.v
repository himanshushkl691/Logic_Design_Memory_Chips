module BIT16_INCREMENTER_TEST;
wire [15:0]s;
reg[15:0]in;
BIT16_INCREMENTER inc(s,in);
integer i;
always
begin
	for(i=0;i<=30;i=i+1)
	begin
		in=i;#10;
	end
end
endmodule