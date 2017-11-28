module Hazard_detector(
	MemRead_ex,RegWriteAddr_ex,RsAddr_id,RtAddr_id,stall,PC_IFWrite);
	
	input		MemRead_ex;
	input	 [4:0] RegWriteAddr_ex;
	input	 [4:0] RsAddr_id;
	input	 [4:0] RtAddr_id;
	output	stall;
	output  PC_IFWrite;	
	
//	reg x;
	assign stall=MemRead_ex&&((RegWriteAddr_ex==RsAddr_id)||(RegWriteAddr_ex==RtAddr_id));  //Judge hazard
	assign PC_IFWrite=~stall;

endmodule
	
	
