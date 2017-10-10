//******************************************************************************
// MIPS verilog model
//
// CLKgen.v
//
// Generates the different clocks and 
// the logic needed to single step through in hardware

//
//******************************************************************************

module CLKgen (
	//Outputs
	mipsclk,
	clk12500khz, 
	step_pulse,
	vga_clk,

	//Inputs
	clk_in,
	step, 
	reset);
//
input	clk_in;		// 100 MHz
input	reset;
input	step;
//
output	mipsclk;		// 25 MHz
output	clk12500khz;		// 12.5 MHz
output	step_pulse;	// single cycle (using mipsclk) pulse
output	vga_clk;		// 50 MHz
//
wire		vga_clk;
reg [2:0]	counter;

//******************************************************************************
// Clock divider
//******************************************************************************


assign vga_clk = counter[0];
assign mipsclk=counter[1];
assign clk12500khz=& counter[2];
always @(posedge clk_in)
   begin	counter = counter + 1;end
//
//wire		step_debounce;

button_press_unit step_key (
   .clk(mipsclk),
   .reset(reset),
   .in(~step),
   .out(step_pulse)
   );

endmodule