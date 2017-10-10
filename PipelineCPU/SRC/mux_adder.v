module mux_adder(
a,b,ci,co,sum);

	input wire [3:0] a,b;
	input wire ci;
	output wire [3:0] sum;
	output wire co;
	
	wire [3:0] sum1,sum0;
	wire co1,co0;
	
	
	adder_4bits adder_abits_inst0(
	.a(a),.b(b),.cin(0),.sum(sum0),.cout(co0)
	);
	
	adder_4bits adder_abits_inst1(
	.a(a),.b(b),.cin(1),.sum(sum1),.cout(co1)
	);
	
	assign co=(co1&ci)||co0;
	
	//MUX_2TO1
	
	assign sum=ci?sum1:sum0;
	

endmodule