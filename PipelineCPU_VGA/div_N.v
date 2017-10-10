`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: zju
// Engineer: qmj
// 
// Create Date:    07:25:29 08/27/2009 
// Module Name:    div_N 
//////////////////////////////////////////////////////////////////////////////////
module div_N(clk, reset, out);
    input clk;
    input reset;
    output out;
    
	 parameter n=2;
	 reg[n-1:0] q;
	 assign out=&q;
    always @(posedge clk)
	 if (reset) q<=0;else q<=q+1;

endmodule
