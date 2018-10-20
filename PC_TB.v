module PC_TB;
wire[15:0]out;
reg[15:0]data;
reg jump,reset,inc,clk;
PC pc1(out,inc,jump,reset,data,clk);
initial
begin
	inc = 0; jump = 0;
    reset = 1; #2;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    #10;
    reset = 0;

    // inc test
    inc = 1; #2;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    #5;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    inc = 0;
    #10;

    // load test
    data = 1997; #2; jump = 1; #2;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    jump = 0;
    #10;

    // keep the state test
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    #10;


    // precedence test
    inc = 1; #2; jump = 1; #2; reset = 1; #2;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    #10;

    inc = 1; #2; jump = 1; #2; reset = 0; #2;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    #10;

    inc = 1; #2; jump = 0; #2; reset = 0; #2;
    clk = 0; #2; clk = 1; #2; clk = 0; #2;
    #10;

	
end
endmodule