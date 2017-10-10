//
// This module synchronizes, debounces, and one-pulses a button input.
//
module button_press_unit(
   clk,
   reset,
   in,
   out
   );
   
	// The WIDTH parameter determines how long to wait for the bouncing to stop.
   parameter WIDTH = 18;
   
	// Standard system clock and reset
   input clk;
   input reset;

	// The async, bouncy input
   input in;
	// The synchronous, clean, one-pulsed output
   output out;
   wire en;
   div_N  #(WIDTH)  div_inst(
	 .clk(clk), 
	 .reset(reset),
    .out(en));
	
	// Synchronize our input
   wire button_sync;
   brute_force_synchronizer sync(.clk(clk), .in(in), .out(button_sync));
   
   // Debounce our synchronized input
   wire button_debounced;
   debouncer #(3) debounce(.clk(clk), .en(en), .reset(reset),.in(button_sync), .out(button_debounced));
   
   // One-pulse our debounced input
   one_pulse one_pulse(.clk(clk),.reset(reset), .in(button_debounced), .out(out));

endmodule
   