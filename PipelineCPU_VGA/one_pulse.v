//	 one_pulse
//   Simple one_pulse module.
//   Asserts out for one cycle when the input goes high.
//   Does nothing when it goes low.
//

module one_pulse(
   clk,
   reset,
   in,
   out
   );
   
	// Standard system clock and reset
   input clk;
   input reset;

	// Input which may go high for more than one cycle
   input in;
	// Output goes high for one cycle when the input transistions high.
   output out;
   
   wire last_value;
   d_ff_r last_value_storage (.clk(clk), .r(reset), .d(in), .q(last_value));
   
   assign out = ~last_value & in;
   
endmodule