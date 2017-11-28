module RsSel_RtSel(
	RegWrite_wb,RegWriteAddr_wb,RsAddr_id,RtAddr_id,RsSel,RtSel
	);
	
	input  RegWrite_wb;
	input  [4:0] RegWriteAddr_wb;
	input  [4:0] RsAddr_id;
	input  [4:0] RtAddr_id;
	output  RsSel;
	output  RtSel;
	
	assign RsSel=RegWrite_wb&&(~(RegWriteAddr_wb==5'b0))&&(RegWriteAddr_wb==RsAddr_id);
	assign RtSel=RegWrite_wb&&(~(RegWriteAddr_wb==5'b0))&&(RegWriteAddr_wb==RtAddr_id);

		
endmodule