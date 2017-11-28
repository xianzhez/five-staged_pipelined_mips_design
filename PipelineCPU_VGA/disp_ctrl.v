//***********************************************************************
// File name		:	disp_ctrl.v
// Module name		:	disp_ctrl
// Function			:	display control
// Author			:	qmj
// Version			:	1.0
// Date				:	2011-11-25
//***********************************************************************

module disp_ctrl (

	// ================= system signals =================================

	input wire			vga_clk			, // system clock, 50MHz
	input wire	[ 7 : 0 ]		PC		,   // 
	input wire	[ 3 : 0 ]		state	, //
	input wire	[31 : 0 ]  ALU_A,
   input wire	[31 : 0 ]  ALU_B,
   input wire	[31 : 0 ]  ALUResult,
   input wire	[31 : 0 ]  MemData,
   input wire	[31 : 0 ]  Instruction,
   input wire  Z,	
	input wire	[ 9 : 1 ]		x_pos		, // vga input x position
	input wire	[ 9 : 1 ]		y_pos		, // vga input y position

	// ================= output signals =================================

	output[7:0] red,
	output[7:0] green,
   output[7:0] blue  );
// ======================================================================
// char_selection
//
// ======================================================================
 
 reg[4:0] char_selection;
 always @(*)
    case (y_pos[9:5])
	 5'b00010:
	    if ((x_pos[9:4])==6'b000100) char_selection={1'b0,PC[7:4]};
		  else if ((x_pos[9:4])==6'b000101)  char_selection={1'b0,PC[3:0]};
		    else if ((x_pos[9:4])==6'b001011)  char_selection={4'b0,Z}; 
				 else char_selection=5'b1xxxx;
	 5'b00100:
	    if ((x_pos[9:4])==6'b000100) char_selection={1'b0,Instruction[31:28]};
		  else if ((x_pos[9:4])==6'b000101)  char_selection={1'b0,Instruction[27:24]};
		   else if ((x_pos[9:4])==6'b000110)  char_selection={1'b0,Instruction[23:20]};  
          else if ((x_pos[9:4])==6'b000111)  char_selection={1'b0,Instruction[19:16]};
		     else if ((x_pos[9:4])==6'b001000)  char_selection={1'b0,Instruction[15:12]};  
    		   else if ((x_pos[9:4])==6'b001001)  char_selection={1'b0,Instruction[11:8]};
		       else if ((x_pos[9:4])==6'b001010)  char_selection={1'b0,Instruction[7:4]};  
              else if ((x_pos[9:4])==6'b001011)  char_selection={1'b0,Instruction[3:0]};
		         else if ((x_pos[9:4])==6'b001110)  char_selection={1'b0,state};  
			 	     else char_selection=5'b1xxxx;	
					  
    5'b00110:
	    if ((x_pos[9:4])==6'b000100) char_selection={1'b0,ALU_A[31:28]};
		  else if ((x_pos[9:4])==6'b000101)  char_selection={1'b0,ALU_A[27:24]};
		   else if ((x_pos[9:4])==6'b000110)  char_selection={1'b0,ALU_A[23:20]};  
          else if ((x_pos[9:4])==6'b000111)  char_selection={1'b0,ALU_A[19:16]};
		     else if ((x_pos[9:4])==6'b001000)  char_selection={1'b0,ALU_A[15:12]};  
    		   else if ((x_pos[9:4])==6'b001001)  char_selection={1'b0,ALU_A[11:8]};
		       else if ((x_pos[9:4])==6'b001010)  char_selection={1'b0,ALU_A[7:4]};  
              else if ((x_pos[9:4])==6'b001011)  char_selection={1'b0,ALU_A[3:0]};
			 	     else char_selection=5'b1xxxx;	
    5'b00111:
	    if ((x_pos[9:4])==6'b000100) char_selection={1'b0,ALU_B[31:28]};
		  else if ((x_pos[9:4])==6'b000101)  char_selection={1'b0,ALU_B[27:24]};
		   else if ((x_pos[9:4])==6'b000110)  char_selection={1'b0,ALU_B[23:20]};  
          else if ((x_pos[9:4])==6'b000111)  char_selection={1'b0,ALU_B[19:16]};
		     else if ((x_pos[9:4])==6'b001000)  char_selection={1'b0,ALU_B[15:12]};  
    		   else if ((x_pos[9:4])==6'b001001)  char_selection={1'b0,ALU_B[11:8]};
		       else if ((x_pos[9:4])==6'b001010)  char_selection={1'b0,ALU_B[7:4]};  
              else if ((x_pos[9:4])==6'b001011)  char_selection={1'b0,ALU_B[3:0]};
			 	     else char_selection=5'b1xxxx;						  

    5'b01000:
	    if ((x_pos[9:4])==6'b000100) char_selection={1'b0,ALUResult[31:28]};
		  else if ((x_pos[9:4])==6'b000101)  char_selection={1'b0,ALUResult[27:24]};
		   else if ((x_pos[9:4])==6'b000110)  char_selection={1'b0,ALUResult[23:20]};  
          else if ((x_pos[9:4])==6'b000111)  char_selection={1'b0,ALUResult[19:16]};
		     else if ((x_pos[9:4])==6'b001000)  char_selection={1'b0,ALUResult[15:12]};  
    		   else if ((x_pos[9:4])==6'b001001)  char_selection={1'b0,ALUResult[11:8]};
		       else if ((x_pos[9:4])==6'b001010)  char_selection={1'b0,ALUResult[7:4]};  
              else if ((x_pos[9:4])==6'b001011)  char_selection={1'b0,ALUResult[3:0]};
		//		   else if ((x_pos[9:4])==6'b001110)  char_selection={3'b0,Z}; 
			 	     else char_selection=5'b1xxxx;				

    5'b01010:
	    if ((x_pos[9:4])==6'b000100) char_selection={1'b0,MemData[31:28]};
		  else if ((x_pos[9:4])==6'b000101)  char_selection={1'b0,MemData[27:24]};
		   else if ((x_pos[9:4])==6'b000110)  char_selection={1'b0,MemData[23:20]};  
          else if ((x_pos[9:4])==6'b000111)  char_selection={1'b0,MemData[19:16]};
		     else if ((x_pos[9:4])==6'b001000)  char_selection={1'b0,MemData[15:12]};  
    		   else if ((x_pos[9:4])==6'b001001)  char_selection={1'b0,MemData[11:8]};
		       else if ((x_pos[9:4])==6'b001010)  char_selection={1'b0,MemData[7:4]};  
              else if ((x_pos[9:4])==6'b001011)  char_selection={1'b0,MemData[3:0]};
			 	     else char_selection=5'b1xxxx;		
	default:	char_selection=5'b1xxxx;	
   endcase	


// ------------------- signals for sram ---------------------------------

wire	[  7 : 0 ]				rom_addr		; // rom address 
wire	[  7 : 0 ]				rom_dout		; // rom data
assign rom_addr={char_selection[3:0],y_pos[4:1]};

// single-port rom for character table, 2048x8 bit for 128 16x8 characters
DisplayROM  char_tab(
	.addr(rom_addr),
	.clk(vga_clk),
	.dout(rom_dout));

reg					char_pixel;		  
wire             vga_pixel;		  // vga output pixel
assign        vga_pixel= ~char_selection[4]&& char_pixel;
always @ ( * )
	case ( x_pos[ 3 : 1 ] )
		3'd0: char_pixel = rom_dout[7];
		3'd1: char_pixel = rom_dout[6];	
		3'd2: char_pixel = rom_dout[5];
		3'd3: char_pixel = rom_dout[4];	
		3'd4: char_pixel = rom_dout[3];
		3'd5: char_pixel = rom_dout[2];	
		3'd6: char_pixel = rom_dout[1];
		3'd7: char_pixel = rom_dout[0];
	endcase
	
assign red={8{vga_pixel}};
assign green={8{vga_pixel}};
assign blue={8{vga_pixel}};
	

endmodule
