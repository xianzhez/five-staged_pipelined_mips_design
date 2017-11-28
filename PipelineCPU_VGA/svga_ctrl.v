//***********************************************************************
//
// File name		:	svga_ctrl.v
// Module name		:	svga_ctrl
//
// Function			:	generate SVGA control signals
// Author			:	qmj
//
// Version			:	2.0
// Date				:	2010-10-07
//
// ----------------------------------------------------------------------
//
// Details:
//
// This module generate the 800x600@60Hz SVGA control signals. The 
// parameters are below:
//
// Pixel Clock				 :	50MHz
//
// Horizontal Active Pixels	:	800
// Horizontal Front Porch	:	16
// Horizontal Back Porch	:168
// Horizontal Sync Width	:	80
// Horizontal Total Pixels	:	1064
//
//
// Vertical Active Lines	:	600
// Vertical Front Porch		:	1
// Vertical Back Porch		:	23
// Vertical Sync Width		:	2
// Vertical Total Lines		:	626
//***********************************************************************

module svga_ctrl(

	// ---------------- system signals ----------------------------------

	input wire					sys_clk		, // pixel clock, 50MHz
	input wire					reset		   , // system reset, active high

	// ---------------- input signals -----------------------------------

	// ---------------- output signals ----------------------------------

	output wire					hsync		, // horizontal sync signal
	output wire					vsync		, // vertical sync signal

	output wire					vga_comp_synch ,	// indicate whether green is added on the hsync
	output wire					vga_out_blank_z,	// enable the data

	output wire [ 9 : 0 ]		x_pos		, // x position
	output wire [ 9 : 0 ]		y_pos		  // y position


);


// ======================================================================
//
// GLOBLE PARAMETER DECLEARATION
//
// ======================================================================
parameter	H_TOTAL_PIXEL	=	11'd1064	;
parameter	H_ACTIVE_PIXEL	=	11'd800		;
parameter	H_FP_PIXEL		=	11'd16		;
parameter	H_BP_PIXEL		=	11'd168		;
parameter	H_SYNC_WIDTH	=	11'd80		;

parameter	V_TOTAL_LINE	=	10'd626		;
parameter	V_ACTIVE_LINE	=	10'd600		;
parameter	V_FP_LINE		=	10'd1		;
parameter	V_BP_LINE		=	10'd23		;
parameter	V_SYNC_WIDTH	=	10'd2		;

// ======================================================================
//
// INTERNAL SIGNALS DECLEARATION
//
// ======================================================================

reg		[ 10 : 0 ]				pixel_cnt_reg	; // pixel counter for a line
reg		[ 9 : 0 ]				line_cnt_reg	; // line counter for a frame

wire							      end_of_line	; // end signal of a line

reg								    hsync_reg	; // horizontal sync register
reg								    vsync_reg	; // vertical sync register

reg								    data_en_reg	; // data enable register

wire	[ 9 : 0 ]				    x_pos_temp ;

// ======================================================================
//
// MODULE BODY
//
// ======================================================================

// -------------------- pixel counter for a line ------------------------

always @ (posedge sys_clk) begin
	if (reset)
		pixel_cnt_reg <= 11'd0;
	else if ( pixel_cnt_reg == (H_TOTAL_PIXEL - 11'd1) )
		pixel_cnt_reg <= 11'd0;
	else
		pixel_cnt_reg <= pixel_cnt_reg + 11'd1;
end

assign end_of_line = ( pixel_cnt_reg == (H_TOTAL_PIXEL - 11'd1) ); // end of line, a clock width

// ------------------- horizontal synchronization -----------------------

always @ (posedge sys_clk) begin
	if (reset)
		hsync_reg <= 1'b1;
	else if ( pixel_cnt_reg < H_SYNC_WIDTH )
		hsync_reg <= 1'b0;
	else
		hsync_reg <= 1'b1;
end


// -------------------- line counter for a line -------------------------

always @ (posedge sys_clk) begin
	if (reset)
		line_cnt_reg <= 10'd0;
	else if ( end_of_line && ( line_cnt_reg == (V_TOTAL_LINE - 10'd1) ) )
		line_cnt_reg <= 10'd0;
	else if ( end_of_line )
		line_cnt_reg <= line_cnt_reg + 10'd1;
end

// ------------------- vertical synchronization -------------------------

always @ (posedge sys_clk) begin
	if (reset)
		vsync_reg <= 1'b1;
	else if ( line_cnt_reg < V_SYNC_WIDTH ) 
		vsync_reg <= 1'b0;
	else
		vsync_reg <= 1'b1;
end

// ------------------- data enable in line and frame --------------------

always @ (posedge sys_clk) begin
	if (reset)
		data_en_reg <= 1'b0;
	else if ( ( pixel_cnt_reg >= (H_SYNC_WIDTH + H_BP_PIXEL) && pixel_cnt_reg < (H_TOTAL_PIXEL - H_FP_PIXEL) ) &&
		( line_cnt_reg >= (V_SYNC_WIDTH + V_BP_LINE) && line_cnt_reg < (V_TOTAL_LINE - V_FP_LINE) ) )		
		data_en_reg <= 1'b1;
	else
		data_en_reg <= 1'b0;
end

// ------------------- assign the output --------------------------------

assign data_en = data_en_reg;

assign vsync = vsync_reg;

assign hsync = hsync_reg;

assign vga_comp_synch = 1'b1;

assign vga_out_blank_z = data_en;

assign x_pos_temp = pixel_cnt_reg - H_SYNC_WIDTH - H_BP_PIXEL;

assign x_pos = x_pos_temp[ 9 : 0 ];

assign y_pos = line_cnt_reg - V_SYNC_WIDTH - V_BP_LINE;

endmodule
