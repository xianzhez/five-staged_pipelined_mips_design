`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: zju
// Engineer: 
// 
// Create Date:    19:44:48 11/12/2009 
// Design Name: 
// Module Name:    MipsPipelineCPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MipsPipelineCPU_Vga(clk,reset_n,reset_n_vga,step,run_mode,
                       red ,green,blue,hsync,vsync,blank,vga_comp_synch,
							  vga_out_blank_z,pixel_clk);
    input clk;
    input reset_n,reset_n_vga; // system reset, active low
	 input step;
	 input run_mode;//0:step,
	 output[7:0]       red;
	 output[7:0]       green;
	 output[7:0]       blue;
	 output 				hsync		;         // horizontal sync signal
	 output 				vsync		;         // vertical sync signal
	 output 				blank		;         // data enable
	 output 				vga_comp_synch ;	// indicate whether green is added on the hsync
    output		 		vga_out_blank_z;	
    output     pixel_clk;
//
	 wire reset;
	 assign reset=~reset_n;

//clkgen
    wire mimsclk,sysclk,step_pulse,vga_clk;
   
    assign pixel_clk=vga_clk;
    CLKgen CLKgen(
//Outputs
	.mipsclk(mimsclk),
	.clk12500khz(), 
	.step_pulse(step_pulse),
	.vga_clk(vga_clk),
//Inputs
	.clk_in(clk),
	.step(~step), 
	.reset(1'b0));
	  
    wire cpu_clk;
    assign cpu_clk=run_mode? mimsclk:step_pulse;


// MipsPipelineCPU Instance


	   
	wire [ 2:0] JumpFlag;
	wire [31:0] Instruction_id;
	wire [31:0] ALU_A;
	wire [31:0] ALU_B;
	wire [31:0] ALUResult;
	wire [31:0] PC;
	wire [31:0] MemDout_wb;
	wire Stall;
	     
	MipsPipelineCPU cpu_inst (
		.clk(cpu_clk), 
		.reset(reset), 
		.JumpFlag(JumpFlag), 
		.Instruction_id(Instruction_id), 
		.ALU_A(ALU_A), 
		.ALU_B(ALU_B), 
		.ALUResult(ALUResult), 
		.PC(PC), 
		.MemDout_wb(MemDout_wb), 
		.Stall(Stall) );
   

//  vga control Instance
   wire [ 9 : 0 ]		x_pos		; 
	wire [ 9 : 0 ]		y_pos		; 
   assign blank=vga_out_blank_z;
   svga_ctrl  vga_ctrl(
     	.sys_clk(vga_clk)		,     // pixel clock, 50MHz 
	   .reset( ~reset_n_vga)		, // vga reset, active low
	   .hsync(hsync)		,         // horizontal sync signal
	   .vsync(vsync)		,         // vertical sync signal
	   .vga_comp_synch(vga_comp_synch) ,	// indicate whether green is added on the hsync
	   .vga_out_blank_z(vga_out_blank_z),	// enable the data
      .x_pos(x_pos)		, // x position
	   .y_pos(y_pos));		  // y position

// disp_ctrl Instance
  disp_ctrl  disp(	
	 .vga_clk(vga_clk)			, // system clock, 50MHz
	 .PC(PC[7:0])		,     
	 .state({1'b0,JumpFlag})	, //
	 .ALU_A(ALU_A),
    .ALU_B(ALU_B),
    .ALUResult(ALUResult),
    .MemData(MemDout_wb),
    .Instruction(Instruction_id),
    .Z(Stall),	
	 .x_pos(x_pos[9:1])		, // vga input x position
	 .y_pos(y_pos[9:1])		, // vga input y position
  
	// ================= output signals =================================

	.red(red),
	.green(green),
   .blue()
);
   assign blue=100;	 
	 
endmodule
