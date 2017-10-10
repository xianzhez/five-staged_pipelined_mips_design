module full_adder(
	a,b,ci,s,co);
		
	input wire  a,b;
	input wire   ci;
	output wire  s;
	output wire  co;
	
	assign	s=a^b^ci;
	assign	co=(a&b)||(b&ci)||(a&ci);

endmodule