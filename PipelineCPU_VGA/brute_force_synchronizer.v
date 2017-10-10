//	brute_force_sychronizer
// Inputs pass through a 2-ff chain and come out synchronized.
//
module brute_force_synchronizer(
   clk,
   in,
   out
   );
   
	// Standard system clock.
   input clk;

	// Async input
   input in;

	// Virtually guaranteed sync output.
   output out;
   
	// Our chain of three FFs.
   wire ff1_out;
   d_ff ff1(.clk(clk), .d(in), .q(ff1_out));
   
   wire ff2_out;
   d_ff ff2(.clk(clk), .d(ff1_out), .q(out));
   
     
   endmodule