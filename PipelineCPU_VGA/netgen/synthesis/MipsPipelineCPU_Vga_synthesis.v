////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.36
//  \   \         Application: netgen
//  /   /         Filename: MipsPipelineCPU_Vga_synthesis.v
// /___/   /\     Timestamp: Sat Dec 28 13:36:15 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MipsPipelineCPU_Vga.ngc MipsPipelineCPU_Vga_synthesis.v 
// Device	: xc2vp30-7-ff896
// Input file	: MipsPipelineCPU_Vga.ngc
// Output file	: E:\31101008121220\lab28\PipelineCPU_VGA\netgen\synthesis\MipsPipelineCPU_Vga_synthesis.v
// # of Modules	: 1
// Design Name	: MipsPipelineCPU_Vga
// Xilinx        : C:\Xilinx92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MipsPipelineCPU_Vga (
  clk, reset_n, vsync, pixel_clk, run_mode, vga_comp_synch, blank, hsync, step, vga_out_blank_z, reset_n_vga, blue, green, red
);
  input clk;
  input reset_n;
  output vsync;
  output pixel_clk;
  input run_mode;
  output vga_comp_synch;
  output blank;
  output hsync;
  input step;
  output vga_out_blank_z;
  input reset_n_vga;
  output [7 : 0] blue;
  output [7 : 0] green;
  output [7 : 0] red;
  wire clk_BUFGP_0;
  wire reset_n_IBUF_1;
  wire \vga_ctrl/vsync_reg_2 ;
  wire run_mode_IBUF_3;
  wire \vga_ctrl/data_en_reg_4 ;
  wire \vga_ctrl/hsync_reg_5 ;
  wire reset_n_vga_IBUF_6;
  wire reset;
  wire cpu_clk;
  wire Stall;
  wire blue_2_OBUF_7;
  wire green_0_OBUF_8;
  wire \cpu_inst/dffre_IFID_Instruction/q[31] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[29] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[28] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[27] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[26] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[24] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[22] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[21] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[19] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[18] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[17] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[16] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[14] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[5] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[11] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[4] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[7] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[6] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[3] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[2] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[1] ;
  wire \cpu_inst/dffre_IFID_Instruction/q[0] ;
  wire \CLKgen/step_key/en ;
  wire \CLKgen/step_key/debounce/timer_done ;
  wire \CLKgen/step_key_not0000 ;
  wire \CLKgen/step_key/debounce/Mrom_current_state_q_rom0000 ;
  wire \CLKgen/step_key/debounce/Mrom_current_state_q_rom00001 ;
  wire \Result[1] ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result[3] ;
  wire \Result[4] ;
  wire \Result[5] ;
  wire \Result[6] ;
  wire \Result[7] ;
  wire \Result[8] ;
  wire \Result[9] ;
  wire \Result[10] ;
  wire \Result[11] ;
  wire \Result[12] ;
  wire \Result[13] ;
  wire \Result[14] ;
  wire \Result[15] ;
  wire \Result[16] ;
  wire \Result[17] ;
  wire \vga_ctrl/N11 ;
  wire \vga_ctrl/N10 ;
  wire \vga_ctrl/N4 ;
  wire \vga_ctrl/N21 ;
  wire \vga_ctrl/N2 ;
  wire \vga_ctrl/N19 ;
  wire \vga_ctrl/N111 ;
  wire \vga_ctrl/Result<9>1 ;
  wire \vga_ctrl/Result<8>1 ;
  wire \vga_ctrl/Result<7>1 ;
  wire \vga_ctrl/Result<6>1 ;
  wire \vga_ctrl/Result<5>1 ;
  wire \vga_ctrl/Result<4>1 ;
  wire \vga_ctrl/Result<3>1 ;
  wire \vga_ctrl/Result<2>1 ;
  wire \vga_ctrl/Result<1>1 ;
  wire \vga_ctrl/Result<0>1 ;
  wire \vga_ctrl/end_of_line ;
  wire \vga_ctrl/line_cnt_reg_or0000 ;
  wire \vga_ctrl/hsync_reg_or0000_9 ;
  wire \vga_ctrl/vsync_reg_or0000 ;
  wire \vga_ctrl/data_en_reg_or0000 ;
  wire \vga_ctrl/pixel_cnt_reg_or0000 ;
  wire \disp/N36 ;
  wire \disp/N311 ;
  wire \disp/N21 ;
  wire \disp/N31 ;
  wire \disp/Mmux_char_pixel_3_f5_10 ;
  wire \disp/N4 ;
  wire \disp/N5 ;
  wire \disp/Mmux_char_pixel_4_f5_11 ;
  wire \disp/char_selection_3_cmp_eq0005 ;
  wire \disp/char_selection_3_cmp_eq0004 ;
  wire \disp/char_selection_3_cmp_eq0003 ;
  wire \disp/char_selection_3_cmp_eq0002 ;
  wire \disp/char_selection_3_cmp_eq0001 ;
  wire \disp/char_selection_3_cmp_eq0000 ;
  wire \disp/char_selection_4_cmp_eq0008 ;
  wire \disp/char_selection_4_cmp_eq0007 ;
  wire \disp/char_selection_4_cmp_eq0006 ;
  wire \disp/char_selection_4_cmp_eq0005 ;
  wire \disp/char_selection_4_cmp_eq0004 ;
  wire \disp/char_selection_4_cmp_eq0003 ;
  wire \disp/char_selection_4_cmp_eq0002 ;
  wire \disp/char_selection_4_cmp_eq0001 ;
  wire \disp/char_selection_4_cmp_eq0000 ;
  wire \disp/char_pixel ;
  wire \cpu_inst/EX/ForwardA_0_and0000_12 ;
  wire \cpu_inst/EX/Mmux_B_not0000_13 ;
  wire \cpu_inst/EX/Mmux_B_not0001 ;
  wire \cpu_inst/EX/Mmux_A_not0000_14 ;
  wire \cpu_inst/EX/Mmux_A_not0001 ;
  wire \cpu_inst/EX/ForwardA_0_cmp_ne0001 ;
  wire \cpu_inst/EX/ForwardB_0_cmp_ne0000 ;
  wire \cpu_inst/EX/ALU/N204 ;
  wire \cpu_inst/EX/ALU/N202 ;
  wire \cpu_inst/EX/ALU/N201 ;
  wire \cpu_inst/EX/ALU/N200 ;
  wire \cpu_inst/EX/ALU/N103 ;
  wire \cpu_inst/EX/ALU/N102 ;
  wire \cpu_inst/EX/ALU/N101 ;
  wire \cpu_inst/EX/ALU/N98 ;
  wire \cpu_inst/EX/ALU/N97 ;
  wire \cpu_inst/EX/ALU/N95 ;
  wire \cpu_inst/EX/ALU/N93 ;
  wire \cpu_inst/EX/ALU/N90 ;
  wire \cpu_inst/EX/ALU/N89 ;
  wire \cpu_inst/EX/ALU/N87 ;
  wire \cpu_inst/EX/ALU/N85 ;
  wire \cpu_inst/EX/ALU/N84 ;
  wire \cpu_inst/EX/ALU/N81 ;
  wire \cpu_inst/EX/ALU/N80 ;
  wire \cpu_inst/EX/ALU/N79 ;
  wire \cpu_inst/EX/ALU/N78 ;
  wire \cpu_inst/EX/ALU/N77 ;
  wire \cpu_inst/EX/ALU/N75 ;
  wire \cpu_inst/EX/ALU/N71 ;
  wire \cpu_inst/EX/ALU/N69 ;
  wire \cpu_inst/EX/ALU/N68 ;
  wire \cpu_inst/EX/ALU/N67 ;
  wire \cpu_inst/EX/ALU/N66 ;
  wire \cpu_inst/EX/ALU/N60 ;
  wire \cpu_inst/EX/ALU/N59 ;
  wire \cpu_inst/EX/ALU/N58 ;
  wire \cpu_inst/EX/ALU/N57 ;
  wire \cpu_inst/EX/ALU/N56 ;
  wire \cpu_inst/EX/ALU/N55 ;
  wire \cpu_inst/EX/ALU/N50 ;
  wire \cpu_inst/EX/ALU/N49 ;
  wire \cpu_inst/EX/ALU/N46 ;
  wire \cpu_inst/EX/ALU/N45 ;
  wire \cpu_inst/EX/ALU/N44 ;
  wire \cpu_inst/EX/ALU/N42 ;
  wire \cpu_inst/EX/ALU/N15 ;
  wire \cpu_inst/EX/ALU/N14 ;
  wire \cpu_inst/EX/ALU/N12 ;
  wire \cpu_inst/EX/ALU/N41 ;
  wire \cpu_inst/EX/ALU/N1 ;
  wire \cpu_inst/EX/ALU/N01 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[2] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[3] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[5] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[7] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[8] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[11] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[12] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[14] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[15] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[16] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[17] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[18] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[19] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[20] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[21] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[22] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[23] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[24] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[25] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[26] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[28] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[29] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[40] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[41] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[43] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[44] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[45] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[47] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[48] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[49] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[51] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[52] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[53] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[54] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[55] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[56] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[57] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[58] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[59] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[60] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[61] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[62] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[8] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[9] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[10] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[11] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[25] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[26] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[29] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[31] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[48] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[49] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[50] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[51] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[52] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[53] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[54] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[55] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[56] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[57] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[58] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[59] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[0] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[4] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[6] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[7] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[8] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[9] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[10] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[11] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[12] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[13] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[14] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[15] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[16] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[17] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[18] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[19] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[20] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[21] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[22] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[23] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[36] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[37] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[38] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[39] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[40] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[41] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[42] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[43] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[44] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[45] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[46] ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[47] ;
  wire \cpu_inst/EX/ALU/B_adder[6] ;
  wire \cpu_inst/EX/ALU/B_adder[9] ;
  wire \cpu_inst/EX/ALU/B_adder[10] ;
  wire \cpu_inst/EX/ALU/B_adder[13] ;
  wire \cpu_inst/EX/ALU/B_adder[14] ;
  wire \cpu_inst/EX/ALU/B_adder[18] ;
  wire \cpu_inst/EX/ALU/B_adder[21] ;
  wire \cpu_inst/EX/ALU/B_adder[22] ;
  wire \cpu_inst/EX/ALU/B_adder[25] ;
  wire \cpu_inst/EX/ALU/B_adder[26] ;
  wire \cpu_inst/EX/ALU/B_adder[30] ;
  wire \cpu_inst/EX/ALU/Result_or0019 ;
  wire \cpu_inst/EX/ALU/Result_or0018 ;
  wire \cpu_inst/EX/ALU/Result_cmp_eq0008 ;
  wire \cpu_inst/EX/ALU/Result_cmp_eq0006 ;
  wire \cpu_inst/EX/ALU/Result_cmp_eq0004 ;
  wire \cpu_inst/EX/ALU/Result_cmp_eq0003 ;
  wire \cpu_inst/EX/ALU/Result_cmp_eq0002 ;
  wire \cpu_inst/EX/ALU/Result_cmp_eq0001 ;
  wire \cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000_15 ;
  wire \cpu_inst/ID/RtSel ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0031 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0030 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0029 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0028 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0027 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0026 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0025 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0024 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0023 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0022 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0021 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0020 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0019 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0018 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0017 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0016 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0015 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0014 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0013 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0012 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0011 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0010 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0009 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0008 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0007 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0006 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0005 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0004 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0003 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0002 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0001 ;
  wire \cpu_inst/ID/zero_test_inst/Z_xor0000 ;
  wire \cpu_inst/ID/RsSel ;
  wire \cpu_inst/ID/Decode/N10 ;
  wire \cpu_inst/ID/Decode/N151 ;
  wire \cpu_inst/ID/Decode/SLL ;
  wire \cpu_inst/ID/Decode/N1 ;
  wire \cpu_inst/ID/Decode/N20 ;
  wire \cpu_inst/ID/Decode/N13 ;
  wire \cpu_inst/ID/Decode/N9 ;
  wire \cpu_inst/ID/Decode/N161 ;
  wire \cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ;
  wire \cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ;
  wire \cpu_inst/IF/PC_in_not0001 ;
  wire \cpu_inst/IF/InstructionROM/Mrom_dout_mux000011 ;
  wire \cpu_inst/IF/N42 ;
  wire \cpu_inst/IF/InstructionROM/Mrom_dout_mux000010 ;
  wire \cpu_inst/IF/InstructionROM/dout_and0000 ;
  wire \cpu_inst/dffr_IDEX_RsAddr/q[0] ;
  wire \cpu_inst/dffr_IDEX_RsAddr/q[1] ;
  wire \cpu_inst/dffr_IDEX_RsAddr/q[3] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[0] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[1] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[2] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[3] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[11] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[5] ;
  wire \cpu_inst/dffr_IDEX_Imm/q[14] ;
  wire \cpu_inst/Instruction_if[0] ;
  wire \cpu_inst/Instruction_if[1] ;
  wire \cpu_inst/Instruction_if[2] ;
  wire \cpu_inst/Instruction_if[3] ;
  wire \cpu_inst/Instruction_if[6] ;
  wire \cpu_inst/Instruction_if[7] ;
  wire \cpu_inst/Instruction_if[10] ;
  wire \cpu_inst/Instruction_if[11] ;
  wire \cpu_inst/Instruction_if[12] ;
  wire \cpu_inst/Instruction_if[14] ;
  wire \cpu_inst/Instruction_if[16] ;
  wire \cpu_inst/Instruction_if[17] ;
  wire \cpu_inst/Instruction_if[18] ;
  wire \cpu_inst/Instruction_if[19] ;
  wire \cpu_inst/Instruction_if[21] ;
  wire \cpu_inst/Instruction_if[22] ;
  wire \cpu_inst/Instruction_if[24] ;
  wire \cpu_inst/Instruction_if[26] ;
  wire \cpu_inst/Instruction_if[27] ;
  wire \cpu_inst/Instruction_if[28] ;
  wire \cpu_inst/Instruction_if[29] ;
  wire \cpu_inst/Instruction_if[31] ;
  wire \cpu_inst/MemWrite_id ;
  wire \cpu_inst/stall_reset ;
  wire \cpu_inst/IF_flush ;
  wire \cpu_inst/PC_IFWrite ;
  wire \cpu_inst/MemRead_id ;
  wire N2;
  wire N3;
  wire N4;
  wire N51;
  wire N6;
  wire N7;
  wire N8;
  wire N9;
  wire N10;
  wire N11;
  wire N12;
  wire N13;
  wire \cpu_inst/IF/PC_in_mux0000<2>_map16 ;
  wire \cpu_inst/IF/PC_in_mux0000<2>_map20 ;
  wire \cpu_inst/IF/PC_in_mux0000<4>_map29 ;
  wire \cpu_inst/IF/PC_in_mux0000<3>_map23 ;
  wire \cpu_inst/IF/PC_in_mux0000<3>_map28 ;
  wire \cpu_inst/IF/PC_in_mux0000<7>_map20 ;
  wire \cpu_inst/IF/PC_in_mux0000<7>_map25 ;
  wire \cpu_inst/IF/PC_in_mux0000<6>_map20 ;
  wire \cpu_inst/IF/PC_in_mux0000<6>_map25 ;
  wire \cpu_inst/IF/PC_in_mux0000<5>_map23 ;
  wire \cpu_inst/IF/PC_in_mux0000<5>_map28 ;
  wire \disp/vga_pixel_map8 ;
  wire \disp/vga_pixel_map18 ;
  wire \disp/vga_pixel_map23 ;
  wire \disp/vga_pixel_map29 ;
  wire \disp/vga_pixel_map38 ;
  wire \disp/vga_pixel_map40 ;
  wire \disp/vga_pixel_map42 ;
  wire \disp/vga_pixel_map59 ;
  wire \disp/vga_pixel_map60 ;
  wire \disp/char_selection_3_mux0000_map2 ;
  wire \disp/char_selection_3_mux0000_map6 ;
  wire \disp/char_selection_3_mux0000_map9 ;
  wire \disp/char_selection_3_mux0000_map17 ;
  wire \disp/char_selection_3_mux0000_map19 ;
  wire \disp/char_selection_3_mux0000_map23 ;
  wire \disp/char_selection_3_mux0000_map26 ;
  wire \disp/char_selection_3_mux0000_map30 ;
  wire \disp/char_selection_3_mux0000_map33 ;
  wire \disp/char_selection_3_mux0000_map34 ;
  wire \disp/char_selection_3_mux0000_map39 ;
  wire \disp/char_selection_3_mux0000_map42 ;
  wire \disp/char_selection_3_mux0000_map50 ;
  wire \disp/char_selection_3_mux0000_map52 ;
  wire \disp/char_selection_3_mux0000_map56 ;
  wire \disp/char_selection_3_mux0000_map59 ;
  wire \disp/char_selection_3_mux0000_map67 ;
  wire \disp/char_selection_3_mux0000_map69 ;
  wire \disp/char_selection_3_mux0000_map72 ;
  wire \disp/char_selection_3_mux0000_map77 ;
  wire \disp/char_selection_3_mux0000_map80 ;
  wire \disp/char_selection_3_mux0000_map83 ;
  wire \disp/char_selection_3_mux0000_map85 ;
  wire \disp/char_selection_2_mux0000_map2 ;
  wire \disp/char_selection_2_mux0000_map6 ;
  wire \disp/char_selection_2_mux0000_map9 ;
  wire \disp/char_selection_2_mux0000_map13 ;
  wire \disp/char_selection_2_mux0000_map16 ;
  wire \disp/char_selection_2_mux0000_map17 ;
  wire \disp/char_selection_2_mux0000_map19 ;
  wire \disp/char_selection_2_mux0000_map23 ;
  wire \disp/char_selection_2_mux0000_map26 ;
  wire \disp/char_selection_2_mux0000_map30 ;
  wire \disp/char_selection_2_mux0000_map33 ;
  wire \disp/char_selection_2_mux0000_map34 ;
  wire \disp/char_selection_2_mux0000_map39 ;
  wire \disp/char_selection_2_mux0000_map42 ;
  wire \disp/char_selection_2_mux0000_map46 ;
  wire \disp/char_selection_2_mux0000_map49 ;
  wire \disp/char_selection_2_mux0000_map50 ;
  wire \disp/char_selection_2_mux0000_map52 ;
  wire \disp/char_selection_2_mux0000_map56 ;
  wire \disp/char_selection_2_mux0000_map59 ;
  wire \disp/char_selection_2_mux0000_map63 ;
  wire \disp/char_selection_2_mux0000_map66 ;
  wire \disp/char_selection_2_mux0000_map67 ;
  wire \disp/char_selection_2_mux0000_map69 ;
  wire \disp/char_selection_2_mux0000_map72 ;
  wire \disp/char_selection_2_mux0000_map75 ;
  wire \disp/char_selection_2_mux0000_map79 ;
  wire \disp/char_selection_2_mux0000_map82 ;
  wire \disp/char_selection_2_mux0000_map83 ;
  wire \disp/char_selection_2_mux0000_map85 ;
  wire \disp/char_selection_2_mux0000_map87 ;
  wire \disp/char_selection_1_mux0000_map2 ;
  wire \disp/char_selection_1_mux0000_map6 ;
  wire \disp/char_selection_1_mux0000_map9 ;
  wire \disp/char_selection_1_mux0000_map13 ;
  wire \disp/char_selection_1_mux0000_map16 ;
  wire \disp/char_selection_1_mux0000_map17 ;
  wire \disp/char_selection_1_mux0000_map19 ;
  wire \disp/char_selection_1_mux0000_map23 ;
  wire \disp/char_selection_1_mux0000_map26 ;
  wire \disp/char_selection_1_mux0000_map30 ;
  wire \disp/char_selection_1_mux0000_map33 ;
  wire \disp/char_selection_1_mux0000_map34 ;
  wire \disp/char_selection_1_mux0000_map39 ;
  wire \disp/char_selection_1_mux0000_map42 ;
  wire \disp/char_selection_1_mux0000_map46 ;
  wire \disp/char_selection_1_mux0000_map49 ;
  wire \disp/char_selection_1_mux0000_map50 ;
  wire \disp/char_selection_1_mux0000_map52 ;
  wire \disp/char_selection_1_mux0000_map56 ;
  wire \disp/char_selection_1_mux0000_map59 ;
  wire \disp/char_selection_1_mux0000_map63 ;
  wire \disp/char_selection_1_mux0000_map66 ;
  wire \disp/char_selection_1_mux0000_map67 ;
  wire \disp/char_selection_1_mux0000_map69 ;
  wire \disp/char_selection_1_mux0000_map75 ;
  wire \disp/char_selection_1_mux0000_map79 ;
  wire \disp/char_selection_1_mux0000_map82 ;
  wire \disp/char_selection_1_mux0000_map85 ;
  wire \disp/char_selection_1_mux0000_map87 ;
  wire \disp/char_selection_0_mux0000_map3 ;
  wire \disp/char_selection_0_mux0000_map5 ;
  wire \disp/char_selection_0_mux0000_map8 ;
  wire \disp/char_selection_0_mux0000_map11 ;
  wire \disp/char_selection_0_mux0000_map15 ;
  wire \disp/char_selection_0_mux0000_map18 ;
  wire \disp/char_selection_0_mux0000_map19 ;
  wire \disp/char_selection_0_mux0000_map21 ;
  wire \disp/char_selection_0_mux0000_map25 ;
  wire \disp/char_selection_0_mux0000_map28 ;
  wire \disp/char_selection_0_mux0000_map32 ;
  wire \disp/char_selection_0_mux0000_map35 ;
  wire \disp/char_selection_0_mux0000_map36 ;
  wire \disp/char_selection_0_mux0000_map41 ;
  wire \disp/char_selection_0_mux0000_map44 ;
  wire \disp/char_selection_0_mux0000_map48 ;
  wire \disp/char_selection_0_mux0000_map51 ;
  wire \disp/char_selection_0_mux0000_map52 ;
  wire \disp/char_selection_0_mux0000_map54 ;
  wire \disp/char_selection_0_mux0000_map58 ;
  wire \disp/char_selection_0_mux0000_map61 ;
  wire \disp/char_selection_0_mux0000_map65 ;
  wire \disp/char_selection_0_mux0000_map68 ;
  wire \disp/char_selection_0_mux0000_map69 ;
  wire \disp/char_selection_0_mux0000_map71 ;
  wire \disp/char_selection_0_mux0000_map77 ;
  wire \disp/char_selection_0_mux0000_map81 ;
  wire \disp/char_selection_0_mux0000_map84 ;
  wire \disp/char_selection_0_mux0000_map87 ;
  wire \disp/char_selection_0_mux0000_map89 ;
  wire N1442;
  wire N1461;
  wire N1463;
  wire N1479;
  wire N1484;
  wire N1487;
  wire \vga_ctrl/vsync_reg_or0000_map7 ;
  wire N1534;
  wire \vga_ctrl/line_cnt_reg_or0000_map3 ;
  wire \vga_ctrl/line_cnt_reg_or0000_map9 ;
  wire \vga_ctrl/line_cnt_reg_or00001_map3 ;
  wire \vga_ctrl/line_cnt_reg_or00001_map7 ;
  wire \vga_ctrl/line_cnt_reg_or00001_map13 ;
  wire N1611;
  wire \vga_ctrl/data_en_reg_or0000_map1 ;
  wire \vga_ctrl/data_en_reg_or0000_map7 ;
  wire \vga_ctrl/data_en_reg_or0000_map11 ;
  wire \vga_ctrl/data_en_reg_or0000_map15 ;
  wire \cpu_inst/ID/Hazard_detector_inst/stall_map10 ;
  wire \cpu_inst/ID/Hazard_detector_inst/stall_map15 ;
  wire \cpu_inst/ID/Hazard_detector_inst/stall_map23 ;
  wire \cpu_inst/ID/Hazard_detector_inst/stall_map35 ;
  wire \cpu_inst/ID/Hazard_detector_inst/stall_map44 ;
  wire \cpu_inst/ID/Hazard_detector_inst/stall_map45 ;
  wire N1782;
  wire N1783;
  wire \cpu_inst/ID/Decode/ALUCode<4>_map3 ;
  wire \cpu_inst/ID/Decode/ALUCode<4>_map20 ;
  wire \cpu_inst/ID/Decode/ALUCode<0>_map7 ;
  wire \cpu_inst/ID/Decode/ALUCode<0>_map8 ;
  wire \cpu_inst/ID/Decode/ALUCode<0>_map16 ;
  wire \cpu_inst/ID/Decode/ALUCode<0>_map30 ;
  wire \cpu_inst/ID/Decode/ALUCode<0>_map35 ;
  wire \cpu_inst/ID/Decode/ALUCode<1>_map24 ;
  wire \cpu_inst/ID/Decode/ALUCode<1>_map27 ;
  wire \cpu_inst/ID/Decode/ALUCode<1>_map31 ;
  wire \cpu_inst/ID/Decode/SLL_map2 ;
  wire \cpu_inst/ID/Decode/SLL_map9 ;
  wire \cpu_inst/ID/Decode/SLL_map15 ;
  wire \cpu_inst/ID/Decode/SLL_map20 ;
  wire \cpu_inst/ID/Decode/ALUCode<2>_map5 ;
  wire \cpu_inst/ID/Decode/ALUCode<2>_map13 ;
  wire \cpu_inst/ID/Decode/ALUCode<2>_map16 ;
  wire \cpu_inst/ID/Decode/ALUCode<2>_map23 ;
  wire \cpu_inst/ID/Decode/ALUCode<2>_map24 ;
  wire N2190;
  wire N2192;
  wire N2193;
  wire N2196;
  wire N2199;
  wire N2202;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>1_map4 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>2_map5 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>2_map11 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>2_map5 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>2_map11 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>3_map5 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>3_map11 ;
  wire N2467;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RsSel_map6 ;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RsSel_map9 ;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RsSel_map20 ;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RtSel_map4 ;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RtSel_map17 ;
  wire \cpu_inst/ID/RsSel_RtSel_inst/RtSel_map25 ;
  wire N2649;
  wire N2651;
  wire N2669;
  wire N2671;
  wire N2673;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map3 ;
  wire \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map8 ;
  wire N2712;
  wire N2715;
  wire N2718;
  wire \cpu_inst/ID/zero_test_inst/Z_map3 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map6 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map10 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map13 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map15 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map18 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map21 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map25 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map28 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map30 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map35 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map41 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map48 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map56 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map63 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map65 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map72 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map79 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map87 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map94 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map96 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map105 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map106 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map113 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map121 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map128 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map129 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map137 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map144 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map152 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map159 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map161 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map162 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map163 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map167 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map170 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map173 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map177 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map180 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map182 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map184 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map187 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map191 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map194 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map196 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map201 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map202 ;
  wire \cpu_inst/ID/zero_test_inst/Z_map204 ;
  wire N3207;
  wire N3208;
  wire N3211;
  wire N3214;
  wire N3217;
  wire N3220;
  wire N3223;
  wire N3226;
  wire N3229;
  wire N3232;
  wire N3235;
  wire N3238;
  wire N3241;
  wire N3244;
  wire N3251;
  wire N3350;
  wire \cpu_inst/EX/ALU/Result<1>_map6 ;
  wire \cpu_inst/EX/ALU/Result<1>_map9 ;
  wire \cpu_inst/EX/ALU/Result<1>_map15 ;
  wire \cpu_inst/EX/ALU/Result<1>_map17 ;
  wire \cpu_inst/EX/ALU/Result<1>_map20 ;
  wire \cpu_inst/EX/ALU/Result<1>_map23 ;
  wire \cpu_inst/EX/ALU/Result<1>_map30 ;
  wire \cpu_inst/EX/ALU/Result<1>_map32 ;
  wire \cpu_inst/EX/ALU/Result<1>_map35 ;
  wire \cpu_inst/EX/ALU/Result<1>_map37 ;
  wire \cpu_inst/EX/ALU/Result<1>_map42 ;
  wire \cpu_inst/EX/ALU/Result<1>_map45 ;
  wire \cpu_inst/EX/ALU/Result<1>_map46 ;
  wire \cpu_inst/EX/ALU/Result<1>_map49 ;
  wire N3519;
  wire \cpu_inst/EX/ALU/Result<2>_map6 ;
  wire \cpu_inst/EX/ALU/Result<2>_map9 ;
  wire \cpu_inst/EX/ALU/Result<2>_map15 ;
  wire \cpu_inst/EX/ALU/Result<2>_map17 ;
  wire \cpu_inst/EX/ALU/Result<2>_map20 ;
  wire \cpu_inst/EX/ALU/Result<2>_map23 ;
  wire \cpu_inst/EX/ALU/Result<2>_map26 ;
  wire \cpu_inst/EX/ALU/Result<2>_map33 ;
  wire \cpu_inst/EX/ALU/Result<2>_map41 ;
  wire \cpu_inst/EX/ALU/Result<2>_map42 ;
  wire \cpu_inst/EX/ALU/Result<2>_map45 ;
  wire N3671;
  wire \cpu_inst/EX/ALU/Result<3>_map6 ;
  wire \cpu_inst/EX/ALU/Result<3>_map9 ;
  wire \cpu_inst/EX/ALU/Result<3>_map15 ;
  wire \cpu_inst/EX/ALU/Result<3>_map21 ;
  wire \cpu_inst/EX/ALU/Result<3>_map22 ;
  wire \cpu_inst/EX/ALU/Result<3>_map26 ;
  wire \cpu_inst/EX/ALU/Result<3>_map32 ;
  wire \cpu_inst/EX/ALU/Result<3>_map34 ;
  wire \cpu_inst/EX/ALU/Result<3>_map41 ;
  wire \cpu_inst/EX/ALU/Result<3>_map42 ;
  wire \cpu_inst/EX/ALU/Result<3>_map45 ;
  wire N3828;
  wire N3835;
  wire N3841;
  wire N3857;
  wire \cpu_inst/EX/ALU/Result<4>_map6 ;
  wire \cpu_inst/EX/ALU/Result<4>_map9 ;
  wire \cpu_inst/EX/ALU/Result<4>_map15 ;
  wire \cpu_inst/EX/ALU/Result<4>_map22 ;
  wire \cpu_inst/EX/ALU/Result<4>_map25 ;
  wire \cpu_inst/EX/ALU/Result<4>_map27 ;
  wire \cpu_inst/EX/ALU/Result<4>_map30 ;
  wire \cpu_inst/EX/ALU/Result<4>_map32 ;
  wire \cpu_inst/EX/ALU/Result<4>_map36 ;
  wire \cpu_inst/EX/ALU/Result<4>_map39 ;
  wire \cpu_inst/EX/ALU/Result<7>_map6 ;
  wire \cpu_inst/EX/ALU/Result<7>_map9 ;
  wire \cpu_inst/EX/ALU/Result<7>_map15 ;
  wire \cpu_inst/EX/ALU/Result<7>_map22 ;
  wire \cpu_inst/EX/ALU/Result<7>_map25 ;
  wire \cpu_inst/EX/ALU/Result<7>_map26 ;
  wire \cpu_inst/EX/ALU/Result<7>_map29 ;
  wire \cpu_inst/EX/ALU/Result<7>_map31 ;
  wire \cpu_inst/EX/ALU/Result<7>_map35 ;
  wire \cpu_inst/EX/ALU/Result<7>_map37 ;
  wire \cpu_inst/EX/ALU/Result<7>_map39 ;
  wire \cpu_inst/EX/ALU/Result<6>_map6 ;
  wire \cpu_inst/EX/ALU/Result<6>_map9 ;
  wire \cpu_inst/EX/ALU/Result<6>_map15 ;
  wire \cpu_inst/EX/ALU/Result<6>_map22 ;
  wire \cpu_inst/EX/ALU/Result<6>_map26 ;
  wire \cpu_inst/EX/ALU/Result<6>_map27 ;
  wire \cpu_inst/EX/ALU/Result<6>_map30 ;
  wire \cpu_inst/EX/ALU/Result<6>_map32 ;
  wire \cpu_inst/EX/ALU/Result<6>_map36 ;
  wire \cpu_inst/EX/ALU/Result<6>_map38 ;
  wire \cpu_inst/EX/ALU/Result<6>_map40 ;
  wire \cpu_inst/EX/ALU/Result<5>_map6 ;
  wire \cpu_inst/EX/ALU/Result<5>_map9 ;
  wire \cpu_inst/EX/ALU/Result<5>_map15 ;
  wire \cpu_inst/EX/ALU/Result<5>_map22 ;
  wire \cpu_inst/EX/ALU/Result<5>_map26 ;
  wire \cpu_inst/EX/ALU/Result<5>_map32 ;
  wire \cpu_inst/EX/ALU/Result<5>_map36 ;
  wire \cpu_inst/EX/ALU/Result<5>_map38 ;
  wire \cpu_inst/EX/ALU/Result<5>_map40 ;
  wire N4417;
  wire N4422;
  wire N4427;
  wire N4439;
  wire \cpu_inst/EX/ALU/Result<8>_map6 ;
  wire \cpu_inst/EX/ALU/Result<8>_map9 ;
  wire \cpu_inst/EX/ALU/Result<8>_map15 ;
  wire \cpu_inst/EX/ALU/Result<8>_map22 ;
  wire \cpu_inst/EX/ALU/Result<8>_map25 ;
  wire \cpu_inst/EX/ALU/Result<8>_map28 ;
  wire \cpu_inst/EX/ALU/Result<8>_map32 ;
  wire \cpu_inst/EX/ALU/Result<8>_map36 ;
  wire \cpu_inst/EX/ALU/Result<8>_map38 ;
  wire \cpu_inst/EX/ALU/Result<9>_map6 ;
  wire \cpu_inst/EX/ALU/Result<9>_map9 ;
  wire \cpu_inst/EX/ALU/Result<9>_map15 ;
  wire \cpu_inst/EX/ALU/Result<9>_map17 ;
  wire \cpu_inst/EX/ALU/Result<9>_map30 ;
  wire \cpu_inst/EX/ALU/Result<9>_map36 ;
  wire \cpu_inst/EX/ALU/Result<9>_map38 ;
  wire \cpu_inst/EX/ALU/Result<11>_map6 ;
  wire \cpu_inst/EX/ALU/Result<11>_map9 ;
  wire \cpu_inst/EX/ALU/Result<11>_map15 ;
  wire \cpu_inst/EX/ALU/Result<11>_map18 ;
  wire \cpu_inst/EX/ALU/Result<11>_map21 ;
  wire \cpu_inst/EX/ALU/Result<11>_map30 ;
  wire \cpu_inst/EX/ALU/Result<11>_map36 ;
  wire \cpu_inst/EX/ALU/Result<11>_map38 ;
  wire \cpu_inst/EX/ALU/Result<10>_map6 ;
  wire \cpu_inst/EX/ALU/Result<10>_map9 ;
  wire \cpu_inst/EX/ALU/Result<10>_map15 ;
  wire \cpu_inst/EX/ALU/Result<10>_map22 ;
  wire \cpu_inst/EX/ALU/Result<10>_map28 ;
  wire \cpu_inst/EX/ALU/Result<10>_map30 ;
  wire \cpu_inst/EX/ALU/Result<10>_map36 ;
  wire \cpu_inst/EX/ALU/Result<10>_map38 ;
  wire N4994;
  wire N4999;
  wire N5004;
  wire N5016;
  wire \cpu_inst/EX/ALU/Result<12>_map6 ;
  wire \cpu_inst/EX/ALU/Result<12>_map9 ;
  wire \cpu_inst/EX/ALU/Result<12>_map15 ;
  wire \cpu_inst/EX/ALU/Result<12>_map18 ;
  wire \cpu_inst/EX/ALU/Result<12>_map21 ;
  wire \cpu_inst/EX/ALU/Result<12>_map30 ;
  wire \cpu_inst/EX/ALU/Result<12>_map35 ;
  wire \cpu_inst/EX/ALU/Result<12>_map37 ;
  wire \cpu_inst/EX/ALU/Result<12>_map39 ;
  wire \cpu_inst/EX/ALU/Result<15>_map6 ;
  wire \cpu_inst/EX/ALU/Result<15>_map9 ;
  wire \cpu_inst/EX/ALU/Result<15>_map15 ;
  wire \cpu_inst/EX/ALU/Result<15>_map18 ;
  wire \cpu_inst/EX/ALU/Result<15>_map21 ;
  wire \cpu_inst/EX/ALU/Result<15>_map28 ;
  wire \cpu_inst/EX/ALU/Result<15>_map33 ;
  wire \cpu_inst/EX/ALU/Result<15>_map35 ;
  wire \cpu_inst/EX/ALU/Result<15>_map37 ;
  wire \cpu_inst/EX/ALU/Result<14>_map6 ;
  wire \cpu_inst/EX/ALU/Result<14>_map9 ;
  wire \cpu_inst/EX/ALU/Result<14>_map15 ;
  wire \cpu_inst/EX/ALU/Result<14>_map18 ;
  wire \cpu_inst/EX/ALU/Result<14>_map28 ;
  wire \cpu_inst/EX/ALU/Result<14>_map29 ;
  wire \cpu_inst/EX/ALU/Result<14>_map35 ;
  wire \cpu_inst/EX/ALU/Result<14>_map36 ;
  wire \cpu_inst/EX/ALU/Result<14>_map39 ;
  wire \cpu_inst/EX/ALU/Result<13>_map6 ;
  wire \cpu_inst/EX/ALU/Result<13>_map9 ;
  wire \cpu_inst/EX/ALU/Result<13>_map15 ;
  wire \cpu_inst/EX/ALU/Result<13>_map18 ;
  wire \cpu_inst/EX/ALU/Result<13>_map21 ;
  wire \cpu_inst/EX/ALU/Result<13>_map28 ;
  wire \cpu_inst/EX/ALU/Result<13>_map30 ;
  wire \cpu_inst/EX/ALU/Result<13>_map34 ;
  wire \cpu_inst/EX/ALU/Result<13>_map37 ;
  wire \cpu_inst/EX/ALU/Result<13>_map39 ;
  wire N5572;
  wire N5577;
  wire N5582;
  wire \cpu_inst/EX/ALU_A<3>_map5 ;
  wire \cpu_inst/EX/ALU_A<3>_map7 ;
  wire N5625;
  wire \cpu_inst/EX/ALU/Result<16>_map14 ;
  wire \cpu_inst/EX/ALU/Result<16>_map17 ;
  wire \cpu_inst/EX/ALU/Result<16>_map25 ;
  wire \cpu_inst/EX/ALU/Result<16>_map30 ;
  wire \cpu_inst/EX/ALU/Result<16>_map36 ;
  wire \cpu_inst/EX/ALU/Result<16>_map38 ;
  wire N5748;
  wire \cpu_inst/EX/ALU/Result<19>_map14 ;
  wire \cpu_inst/EX/ALU/Result<19>_map25 ;
  wire \cpu_inst/EX/ALU/Result<19>_map31 ;
  wire \cpu_inst/EX/ALU/Result<19>_map37 ;
  wire \cpu_inst/EX/ALU/Result<19>_map38 ;
  wire \cpu_inst/EX/ALU/Result<18>_map14 ;
  wire \cpu_inst/EX/ALU/Result<18>_map19 ;
  wire \cpu_inst/EX/ALU/Result<18>_map21 ;
  wire \cpu_inst/EX/ALU/Result<18>_map24 ;
  wire \cpu_inst/EX/ALU/Result<18>_map31 ;
  wire \cpu_inst/EX/ALU/Result<18>_map37 ;
  wire \cpu_inst/EX/ALU/Result<18>_map38 ;
  wire \cpu_inst/EX/ALU/Result<17>_map14 ;
  wire \cpu_inst/EX/ALU/Result<17>_map25 ;
  wire \cpu_inst/EX/ALU/Result<17>_map31 ;
  wire \cpu_inst/EX/ALU/Result<17>_map37 ;
  wire \cpu_inst/EX/ALU/Result<17>_map38 ;
  wire N6156;
  wire N6161;
  wire \cpu_inst/EX/ALU_A<4>_map5 ;
  wire \cpu_inst/EX/ALU_A<4>_map7 ;
  wire \cpu_inst/EX/ALU_A<2>_map5 ;
  wire \cpu_inst/EX/ALU_A<2>_map7 ;
  wire N6229;
  wire \cpu_inst/EX/ALU/Result<20>_map14 ;
  wire \cpu_inst/EX/ALU/Result<20>_map19 ;
  wire \cpu_inst/EX/ALU/Result<20>_map21 ;
  wire \cpu_inst/EX/ALU/Result<20>_map24 ;
  wire \cpu_inst/EX/ALU/Result<20>_map31 ;
  wire \cpu_inst/EX/ALU/Result<20>_map37 ;
  wire N6345;
  wire \cpu_inst/EX/ALU_A<1>_map5 ;
  wire \cpu_inst/EX/ALU_A<1>_map7 ;
  wire N6380;
  wire \cpu_inst/EX/ALU/Result<23>_map14 ;
  wire \cpu_inst/EX/ALU/Result<23>_map18 ;
  wire \cpu_inst/EX/ALU/Result<23>_map20 ;
  wire \cpu_inst/EX/ALU/Result<23>_map23 ;
  wire \cpu_inst/EX/ALU/Result<23>_map30 ;
  wire \cpu_inst/EX/ALU/Result<23>_map33 ;
  wire \cpu_inst/EX/ALU/Result<23>_map35 ;
  wire \cpu_inst/EX/ALU/Result<22>_map14 ;
  wire \cpu_inst/EX/ALU/Result<22>_map17 ;
  wire \cpu_inst/EX/ALU/Result<22>_map20 ;
  wire \cpu_inst/EX/ALU/Result<22>_map22 ;
  wire \cpu_inst/EX/ALU/Result<22>_map25 ;
  wire \cpu_inst/EX/ALU/Result<22>_map32 ;
  wire \cpu_inst/EX/ALU/Result<22>_map35 ;
  wire \cpu_inst/EX/ALU/Result<22>_map37 ;
  wire \cpu_inst/EX/ALU/Result<21>_map14 ;
  wire \cpu_inst/EX/ALU/Result<21>_map17 ;
  wire \cpu_inst/EX/ALU/Result<21>_map20 ;
  wire \cpu_inst/EX/ALU/Result<21>_map22 ;
  wire \cpu_inst/EX/ALU/Result<21>_map25 ;
  wire \cpu_inst/EX/ALU/Result<21>_map32 ;
  wire \cpu_inst/EX/ALU/Result<21>_map35 ;
  wire \cpu_inst/EX/ALU/Result<21>_map37 ;
  wire N6788;
  wire N6793;
  wire \cpu_inst/EX/ForwardA_0_cmp_ne0001_map6 ;
  wire \cpu_inst/EX/ForwardA_0_cmp_ne0001_map17 ;
  wire \cpu_inst/EX/Mmux_A_not0001_map10 ;
  wire \cpu_inst/EX/Mmux_A_not0001_map20 ;
  wire \cpu_inst/EX/ALU_A<0>_map5 ;
  wire \cpu_inst/EX/ALU_A<0>_map7 ;
  wire N6927;
  wire \cpu_inst/EX/ALU/Result<24>_map15 ;
  wire \cpu_inst/EX/ALU/Result<24>_map25 ;
  wire \cpu_inst/EX/ALU/Result<24>_map30 ;
  wire \cpu_inst/EX/ALU/Result<24>_map33 ;
  wire \cpu_inst/EX/ALU/Result<24>_map35 ;
  wire N7048;
  wire \cpu_inst/EX/ALU/Result<27>_map14 ;
  wire \cpu_inst/EX/ALU/Result<27>_map30 ;
  wire \cpu_inst/EX/ALU/Result<27>_map31 ;
  wire \cpu_inst/EX/ALU/Result<27>_map34 ;
  wire \cpu_inst/EX/ALU/Result<27>_map35 ;
  wire \cpu_inst/EX/ALU/Result<26>_map14 ;
  wire \cpu_inst/EX/ALU/Result<26>_map31 ;
  wire \cpu_inst/EX/ALU/Result<26>_map34 ;
  wire \cpu_inst/EX/ALU/Result<26>_map35 ;
  wire \cpu_inst/EX/ALU/Result<25>_map15 ;
  wire \cpu_inst/EX/ALU/Result<25>_map25 ;
  wire \cpu_inst/EX/ALU/Result<25>_map30 ;
  wire \cpu_inst/EX/ALU/Result<25>_map33 ;
  wire \cpu_inst/EX/ALU/Result<25>_map35 ;
  wire N7442;
  wire N7446;
  wire N7451;
  wire \cpu_inst/EX/ALU/Result<28>_map14 ;
  wire \cpu_inst/EX/ALU/Result<28>_map23 ;
  wire \cpu_inst/EX/ALU/Result<28>_map30 ;
  wire \cpu_inst/EX/ALU/Result<28>_map32 ;
  wire \cpu_inst/EX/ALU/Result<28>_map33 ;
  wire \cpu_inst/EX/ALU/Result<28>_map36 ;
  wire \cpu_inst/EX/ALU/Result<28>_map39 ;
  wire \cpu_inst/EX/ALU/Result<28>_map40 ;
  wire \cpu_inst/EX/ALU/Result<31>_map10 ;
  wire \cpu_inst/EX/ALU/Result<31>_map17 ;
  wire \cpu_inst/EX/ALU/Result<31>_map25 ;
  wire \cpu_inst/EX/ALU/Result<31>_map26 ;
  wire \cpu_inst/EX/ALU/Result<31>_map39 ;
  wire \cpu_inst/EX/ALU/Result<31>_map44 ;
  wire \cpu_inst/EX/ALU/Result<31>_map46 ;
  wire \cpu_inst/EX/ALU/Result<31>_map49 ;
  wire \cpu_inst/EX/ALU/Result<30>_map3 ;
  wire \cpu_inst/EX/ALU/Result<30>_map23 ;
  wire \cpu_inst/EX/ALU/Result<30>_map32 ;
  wire \cpu_inst/EX/ALU/Result<30>_map33 ;
  wire \cpu_inst/EX/ALU/Result<30>_map36 ;
  wire \cpu_inst/EX/ALU/Result<30>_map39 ;
  wire \cpu_inst/EX/ALU/Result<30>_map40 ;
  wire \cpu_inst/EX/ALU/Result<29>_map3 ;
  wire \cpu_inst/EX/ALU/Result<29>_map23 ;
  wire \cpu_inst/EX/ALU/Result<29>_map32 ;
  wire \cpu_inst/EX/ALU/Result<29>_map33 ;
  wire \cpu_inst/EX/ALU/Result<29>_map36 ;
  wire \cpu_inst/EX/ALU/Result<29>_map39 ;
  wire \cpu_inst/EX/ALU/Result<29>_map40 ;
  wire \cpu_inst/EX/ALU/Result<0>_map6 ;
  wire \cpu_inst/EX/ALU/Result<0>_map9 ;
  wire \cpu_inst/EX/ALU/Result<0>_map15 ;
  wire \cpu_inst/EX/ALU/Result<0>_map17 ;
  wire \cpu_inst/EX/ALU/Result<0>_map20 ;
  wire \cpu_inst/EX/ALU/Result<0>_map23 ;
  wire \cpu_inst/EX/ALU/Result<0>_map30 ;
  wire \cpu_inst/EX/ALU/Result<0>_map36 ;
  wire \cpu_inst/EX/ALU/Result<0>_map42 ;
  wire \cpu_inst/EX/ALU/Result<0>_map49 ;
  wire \cpu_inst/EX/ALU/Result<0>_map55 ;
  wire \cpu_inst/EX/ALU/Result<0>_map57 ;
  wire \cpu_inst/EX/ALU/Result<0>_map58 ;
  wire \cpu_inst/EX/ALU/Result<0>_map60 ;
  wire \cpu_inst/EX/ALU/Result<0>_map64 ;
  wire \cpu_inst/EX/ALU/Result<0>_map65 ;
  wire \cpu_inst/EX/ALU/Result<0>_map67 ;
  wire \cpu_inst/EX/ALU/Result<0>_map73 ;
  wire \cpu_inst/EX/ALU/Result<0>_map74 ;
  wire \cpu_inst/EX/ALU/Result<0>_map77 ;
  wire \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co_map9 ;
  wire \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co_map9 ;
  wire \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co_map9 ;
  wire N8265;
  wire \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co_map9 ;
  wire \cpu_inst/EX/ForwardB_0_cmp_ne0000_map16 ;
  wire \cpu_inst/EX/Mmux_B_not0001_map4 ;
  wire \cpu_inst/EX/Mmux_B_not0001_map13 ;
  wire \cpu_inst/EX/Mmux_B_not0001_map24 ;
  wire \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co_map9 ;
  wire N8445;
  wire N8447;
  wire \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co_map9 ;
  wire N8478;
  wire N8479;
  wire N8480;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<1>_rt_16 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<2>_rt_17 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<3>_rt_18 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<4>_rt_19 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<5>_rt_20 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<6>_rt_21 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<7>_rt_22 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<8>_rt_23 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<9>_rt_24 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<10>_rt_25 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<11>_rt_26 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<12>_rt_27 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<13>_rt_28 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<14>_rt_29 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<15>_rt_30 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_cy<16>_rt_31 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<9>_rt_32 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<8>_rt_33 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<7>_rt_34 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<6>_rt_35 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<5>_rt_36 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<4>_rt_37 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<3>_rt_38 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<2>_rt_39 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_cy<1>_rt_40 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<8>_rt_41 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<7>_rt_42 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<6>_rt_43 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<5>_rt_44 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<4>_rt_45 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<3>_rt_46 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<2>_rt_47 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_cy<1>_rt_48 ;
  wire \CLKgen/step_key/div_inst/Mcount_q_xor<17>_rt_49 ;
  wire \vga_ctrl/Mcount_pixel_cnt_reg_xor<10>_rt_50 ;
  wire \vga_ctrl/Mcount_line_cnt_reg_xor<9>_rt_51 ;
  wire N8485;
  wire N8487;
  wire N8489;
  wire N8490;
  wire N8492;
  wire N8493;
  wire N8495;
  wire N8496;
  wire N8498;
  wire N8499;
  wire N8501;
  wire N8502;
  wire N8504;
  wire N8505;
  wire N8507;
  wire N8508;
  wire N8510;
  wire N8511;
  wire N8513;
  wire N8514;
  wire N8516;
  wire N8517;
  wire N8529;
  wire N8530;
  wire N8532;
  wire N8533;
  wire N8535;
  wire N8536;
  wire N8543;
  wire N8545;
  wire N8546;
  wire N8548;
  wire N8549;
  wire N8551;
  wire N8552;
  wire N8554;
  wire N8555;
  wire N8557;
  wire N8558;
  wire N8560;
  wire N8561;
  wire N8563;
  wire N8564;
  wire N8566;
  wire N8567;
  wire N8569;
  wire N8570;
  wire N8572;
  wire N8573;
  wire N8575;
  wire N8576;
  wire N8578;
  wire N8579;
  wire N8589;
  wire N8591;
  wire N8592;
  wire N8594;
  wire N8595;
  wire N8597;
  wire N8598;
  wire N8600;
  wire N8601;
  wire N8603;
  wire N8604;
  wire N8606;
  wire N8607;
  wire N8609;
  wire N8610;
  wire N8612;
  wire N8613;
  wire N8615;
  wire N8616;
  wire N8618;
  wire N8619;
  wire N8621;
  wire N8622;
  wire N8624;
  wire N8625;
  wire N8635;
  wire N8637;
  wire N8639;
  wire N8641;
  wire N8643;
  wire N8645;
  wire N8647;
  wire N8649;
  wire N8651;
  wire N8653;
  wire N8655;
  wire N8657;
  wire N8659;
  wire N8661;
  wire N8663;
  wire N8664;
  wire N8666;
  wire N8667;
  wire N8669;
  wire N8670;
  wire N8672;
  wire N8673;
  wire N8675;
  wire N8676;
  wire N8678;
  wire N8679;
  wire N8681;
  wire N8682;
  wire N8684;
  wire N8685;
  wire N8687;
  wire N8688;
  wire N8690;
  wire N8691;
  wire N8693;
  wire N8694;
  wire N8696;
  wire N8697;
  wire N8699;
  wire N8700;
  wire N8711;
  wire N8713;
  wire N8715;
  wire N8717;
  wire N8722;
  wire N8724;
  wire N8726;
  wire N8728;
  wire N8729;
  wire N8731;
  wire N8732;
  wire N8734;
  wire N8735;
  wire N8746;
  wire N8748;
  wire N8750;
  wire N8752;
  wire N8754;
  wire N8756;
  wire N8758;
  wire N8759;
  wire N8761;
  wire N8762;
  wire N8767;
  wire N8768;
  wire N8772;
  wire N8774;
  wire N8776;
  wire N8778;
  wire N8782;
  wire N8784;
  wire N8786;
  wire N8788;
  wire N8790;
  wire N8792;
  wire N8794;
  wire N8796;
  wire N8798;
  wire N8800;
  wire N8802;
  wire N8804;
  wire N8806;
  wire N8808;
  wire N8810;
  wire N8812;
  wire N8814;
  wire N8816;
  wire N8818;
  wire N8820;
  wire N8822;
  wire N8824;
  wire N8826;
  wire N8828;
  wire N8830;
  wire N8832;
  wire N8834;
  wire N8836;
  wire N8838;
  wire N8848;
  wire N8850;
  wire N8852;
  wire N8854;
  wire N8856;
  wire N8864;
  wire N8866;
  wire N8868;
  wire N8870;
  wire N8872;
  wire N8874;
  wire N8876;
  wire N8878;
  wire N8880;
  wire N8882;
  wire N8884;
  wire N8886;
  wire N8888;
  wire N8892;
  wire N8897;
  wire N8899;
  wire N8901;
  wire N8902;
  wire N8903;
  wire N8904;
  wire N8905;
  wire N8906;
  wire N8907;
  wire N8908;
  wire N8909;
  wire N8910;
  wire N8911;
  wire N8912;
  wire N8913;
  wire N8915;
  wire N8917;
  wire N8919;
  wire N8921;
  wire N8922;
  wire N8923;
  wire N8924;
  wire N8925;
  wire N8926;
  wire N8927;
  wire N8928;
  wire N8929;
  wire N8930;
  wire N8933;
  wire N8934;
  wire N8937;
  wire N8938;
  wire N8939;
  wire N8940;
  wire N8941;
  wire N8944;
  wire N8946;
  wire N8951;
  wire N8954;
  wire N8957;
  wire N8960;
  wire N8963;
  wire N8966;
  wire N8969;
  wire N8972;
  wire N8975;
  wire N8978;
  wire N8981;
  wire N8984;
  wire N8987;
  wire N8990;
  wire N8993;
  wire N8995;
  wire N8999;
  wire N9001;
  wire N9003;
  wire N9005;
  wire N9007;
  wire N9009;
  wire N9011;
  wire N9013;
  wire N9017;
  wire N9019;
  wire N9031;
  wire N9035;
  wire N9037;
  wire N9044;
  wire N9054;
  wire N9056;
  wire N9058;
  wire N9060;
  wire N9062;
  wire N9064;
  wire N9066;
  wire N9068;
  wire N9069;
  wire N9071;
  wire N9073;
  wire N9075;
  wire N9077;
  wire N9079;
  wire N9081;
  wire N9087;
  wire N9089;
  wire N9093;
  wire N9097;
  wire N9099;
  wire N9101;
  wire N9103;
  wire N9105;
  wire N9107;
  wire N9109;
  wire N9111;
  wire N9113;
  wire N9115;
  wire N9117;
  wire N9119;
  wire N9121;
  wire N9123;
  wire N9125;
  wire N9127;
  wire N9129;
  wire N9131;
  wire N9133;
  wire N9134;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_1_52 ;
  wire \cpu_inst/EX/Mmux_A_not00001 ;
  wire \cpu_inst/EX/Mmux_A_not000173_53 ;
  wire \cpu_inst/EX/ForwardB_0_cmp_ne000073_54 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_1_55 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_2_56 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_1_57 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_2_58 ;
  wire \cpu_inst/dffr_EXMEM_RegWriteAddr/q_1_1_59 ;
  wire \cpu_inst/ID/zero_test_inst/Z722_60 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_4_1_61 ;
  wire \cpu_inst/dffr_MEMWB_WB/q_0_1_62 ;
  wire \cpu_inst/dffr_MEMWB_WB/q_1_1_63 ;
  wire \cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_1_64 ;
  wire \cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_1_65 ;
  wire \cpu_inst/EX/Mmux_B_not000190_66 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_17_67 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_18_68 ;
  wire \cpu_inst/dffr_MEMWB_WB/q_0_2_69 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_17_70 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_18_71 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_17_72 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_18_73 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_1_74 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_2_75 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_3_76 ;
  wire \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_4_77 ;
  wire \cpu_inst/EX/ALU_A<0>39_78 ;
  wire \cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_2_79 ;
  wire \cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_2_80 ;
  wire \cpu_inst/EX/ALU_A<1>39_81 ;
  wire N9140;
  wire N9141;
  wire N9142;
  wire N9143;
  wire N9144;
  wire N9145;
  wire N9146;
  wire N9147;
  wire N9148;
  wire N9149;
  wire N9150;
  wire N9151;
  wire N9152;
  wire N9153;
  wire N9154;
  wire N9155;
  wire N9156;
  wire N9157;
  wire N9158;
  wire N9159;
  wire N9160;
  wire N9161;
  wire N9162;
  wire N9163;
  wire N9164;
  wire N9165;
  wire N9166;
  wire N9167;
  wire N9168;
  wire N9169;
  wire N9170;
  wire N9171;
  wire N9172;
  wire N9173;
  wire N9174;
  wire N9175;
  wire N9176;
  wire N9177;
  wire N9178;
  wire N9179;
  wire N9180;
  wire N9181;
  wire N9182;
  wire N9183;
  wire N9184;
  wire N9185;
  wire N9186;
  wire N9187;
  wire N9188;
  wire N9189;
  wire N9190;
  wire N9191;
  wire N9192;
  wire N9193;
  wire N9194;
  wire N9195;
  wire N9196;
  wire N9197;
  wire N9198;
  wire N9199;
  wire N9200;
  wire N9201;
  wire N9202;
  wire N9203;
  wire N9204;
  wire N9205;
  wire N9206;
  wire N9207;
  wire N9208;
  wire N9209;
  wire N9210;
  wire N9211;
  wire N9212;
  wire N9213;
  wire N9214;
  wire N9215;
  wire N9216;
  wire N9217;
  wire N9218;
  wire N9219;
  wire N9220;
  wire N9221;
  wire N9222;
  wire N9223;
  wire N9224;
  wire N9225;
  wire N9226;
  wire N9227;
  wire N9228;
  wire N9229;
  wire N9230;
  wire N9231;
  wire N9232;
  wire N9233;
  wire N9234;
  wire N9235;
  wire N9236;
  wire N9237;
  wire N9238;
  wire N9239;
  wire N9240;
  wire N9241;
  wire N9242;
  wire N9243;
  wire N9244;
  wire N9245;
  wire N9246;
  wire N9247;
  wire N9248;
  wire N9249;
  wire N9250;
  wire N9251;
  wire N9252;
  wire N9253;
  wire N9254;
  wire N9255;
  wire N9256;
  wire N9257;
  wire N9258;
  wire N9259;
  wire N9260;
  wire N9261;
  wire N9262;
  wire N9263;
  wire N9264;
  wire N9265;
  wire N9266;
  wire N9267;
  wire N9268;
  wire N9269;
  wire N9270;
  wire N9271;
  wire N9272;
  wire N9273;
  wire N9274;
  wire N9275;
  wire N9276;
  wire N9277;
  wire N9278;
  wire N9279;
  wire N9280;
  wire N9281;
  wire N9282;
  wire N9283;
  wire N9284;
  wire N9285;
  wire N9286;
  wire N9287;
  wire N9288;
  wire N9289;
  wire N9290;
  wire N9291;
  wire N9292;
  wire N9293;
  wire N9294;
  wire N9295;
  wire N9296;
  wire N9297;
  wire N9300;
  wire N9301;
  wire N9302;
  wire N9303;
  wire N9304;
  wire N9305;
  wire N9306;
  wire N9307;
  wire N9312;
  wire N9313;
  wire cpu_clk1_82;
  wire \CLKgen/counter_11 ;
  wire \CLKgen/counter_01 ;
  wire N9318;
  wire N9319;
  wire N9320;
  wire N9321;
  wire N9322;
  wire N9323;
  wire N9324;
  wire N9325;
  wire N9326;
  wire N9327;
  wire N9328;
  wire N9329;
  wire N9330;
  wire N9331;
  wire N9332;
  wire N9333;
  wire N9335;
  wire N9336;
  wire N9337;
  wire N9338;
  wire N9339;
  wire N9340;
  wire N9342;
  wire N9343;
  wire N9344;
  wire N9345;
  wire N9346;
  wire N9347;
  wire N9348;
  wire N9349;
  wire N9350;
  wire N9351;
  wire N9352;
  wire N9353;
  wire N9354;
  wire N9355;
  wire N9356;
  wire N9357;
  wire N9358;
  wire N9359;
  wire N9360;
  wire N9361;
  wire N9362;
  wire N9363;
  wire N9364;
  wire N9365;
  wire N9366;
  wire N9367;
  wire N9368;
  wire N9369;
  wire N9370;
  wire N9371;
  wire N9372;
  wire N9373;
  wire N9374;
  wire N9375;
  wire N9376;
  wire N9377;
  wire N9378;
  wire N9379;
  wire N9380;
  wire N9381;
  wire N9382;
  wire N9383;
  wire N9384;
  wire N9385;
  wire N9386;
  wire N9387;
  wire N9388;
  wire N9389;
  wire N9390;
  wire N9391;
  wire N9392;
  wire N9393;
  wire N9394;
  wire N9395;
  wire N9396;
  wire N9397;
  wire N9398;
  wire N9399;
  wire N9400;
  wire N9401;
  wire N9402;
  wire N9403;
  wire N9404;
  wire N9405;
  wire N9406;
  wire N9407;
  wire N9408;
  wire N9409;
  wire N9410;
  wire N9411;
  wire N9412;
  wire N9413;
  wire N9414;
  wire N9415;
  wire N9416;
  wire N9417;
  wire N9418;
  wire N9419;
  wire N9420;
  wire N9421;
  wire N9422;
  wire N9423;
  wire N9424;
  wire N9425;
  wire N9426;
  wire N9427;
  wire N9428;
  wire N9429;
  wire N9430;
  wire N9431;
  wire N9432;
  wire N9433;
  wire N9434;
  wire N9435;
  wire N9436;
  wire N9437;
  wire N9438;
  wire N9439;
  wire N9440;
  wire N9441;
  wire N9442;
  wire N9443;
  wire N9444;
  wire N9445;
  wire N9446;
  wire N9447;
  wire N9448;
  wire N9449;
  wire N9450;
  wire N9451;
  wire N9452;
  wire N9453;
  wire N9454;
  wire N9455;
  wire N9456;
  wire N9457;
  wire N9458;
  wire N9459;
  wire N9460;
  wire N9461;
  wire N9462;
  wire N9463;
  wire N9464;
  wire N9465;
  wire N9466;
  wire N9467;
  wire N9468;
  wire N9469;
  wire N9470;
  wire N9471;
  wire N9472;
  wire N9473;
  wire N9474;
  wire N9475;
  wire N9476;
  wire N9477;
  wire N9478;
  wire N9479;
  wire N9480;
  wire N9481;
  wire N9482;
  wire N9483;
  wire N9484;
  wire N9485;
  wire N9486;
  wire N9487;
  wire N9488;
  wire N9489;
  wire N9490;
  wire N9491;
  wire N9492;
  wire N9493;
  wire N9494;
  wire N9495;
  wire N9496;
  wire N9497;
  wire N9498;
  wire N9499;
  wire N9500;
  wire N9501;
  wire N9502;
  wire N9503;
  wire N9504;
  wire N9505;
  wire N9506;
  wire N9507;
  wire N9508;
  wire N9509;
  wire N9510;
  wire N9511;
  wire N9512;
  wire N9513;
  wire N9514;
  wire N9515;
  wire N9516;
  wire N9517;
  wire N9518;
  wire \CLKgen/step_key/sync/ff2/Mshreg_q_0_83 ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem63_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem62_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem61_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem60_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem59_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem58_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem57_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem56_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem55_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem54_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem53_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem52_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem51_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem50_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem49_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem48_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem47_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem46_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem45_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem44_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem43_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem42_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem41_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem40_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem39_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem38_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem37_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem36_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem35_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem34_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem33_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem32_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem31_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem30_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem29_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem28_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem27_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem26_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem25_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem24_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem23_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem22_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem21_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem20_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem19_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem18_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem17_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem16_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem15_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem14_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem13_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem12_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem11_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem10_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem9_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem8_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem7_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem6_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem5_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem4_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem3_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem2_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem1_SPO_UNCONNECTED ;
  wire \NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem_SPO_UNCONNECTED ;
  wire [7 : 0] \cpu_inst/IF/dffre_PC_REG/q ;
  wire [2 : 0] JumpFlag;
  wire [7 : 3] x_pos;
  wire [10 : 0] \vga_ctrl/pixel_cnt_reg ;
  wire [8 : 1] y_pos;
  wire [20 : 20] Instruction_id;
  wire [31 : 0] ALU_A;
  wire [31 : 0] ALU_B;
  wire [31 : 0] ALUResult;
  wire [31 : 0] MemDout_wb;
  wire [0 : 0] \CLKgen/step_key/sync/ff2/q ;
  wire [17 : 0] \CLKgen/step_key/div_inst/q ;
  wire [1 : 0] \CLKgen/step_key/debounce/next_state_d ;
  wire [2 : 0] \CLKgen/step_key/debounce/_add0000 ;
  wire [1 : 0] \CLKgen/step_key/debounce/state/q ;
  wire [0 : 0] \CLKgen/step_key/one_pulse/last_value_storage/q ;
  wire [16 : 0] \CLKgen/step_key/div_inst/Mcount_q_cy ;
  wire [2 : 0] \CLKgen/step_key/debounce/counter/q ;
  wire [1 : 0] \CLKgen/counter ;
  wire [9 : 0] \vga_ctrl/line_cnt_reg ;
  wire [9 : 0] \vga_ctrl/Mcount_pixel_cnt_reg_cy ;
  wire [8 : 0] \vga_ctrl/Mcount_line_cnt_reg_cy ;
  wire [10 : 0] \vga_ctrl/Result ;
  wire [7 : 0] \disp/rom_dout ;
  wire [3 : 0] \disp/char_selection ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/Mxor_s_xo ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/Mxor_s_xo ;
  wire [30 : 0] \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy ;
  wire [5 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/cio ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum0 ;
  wire [2 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/sum0 ;
  wire [2 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/sum0 ;
  wire [2 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/sum0 ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/sum0 ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi ;
  wire [3 : 1] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/sum0 ;
  wire [2 : 2] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi ;
  wire [3 : 2] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/sum0 ;
  wire [31 : 1] \cpu_inst/EX/ALU/Madd_B_adder_not0000 ;
  wire [31 : 31] \cpu_inst/EX/ALU/Result_shift0002 ;
  wire [31 : 31] \cpu_inst/EX/ALU/Result_xor0016 ;
  wire [31 : 1] \cpu_inst/EX/ALU/B_adder_addsub0000 ;
  wire [2 : 2] \cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/coi ;
  wire [2 : 2] \cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst1/coi ;
  wire [0 : 0] \cpu_inst/ID/adder_32bits_BranchAddr/cio ;
  wire [31 : 0] \cpu_inst/ID/MultiRegisters/_varindex0001 ;
  wire [31 : 0] \cpu_inst/ID/MultiRegisters/_varindex0000 ;
  wire [7 : 0] \cpu_inst/IF/PC_in_mux0000 ;
  wire [7 : 0] \cpu_inst/IF/PC_in ;
  wire [0 : 0] \cpu_inst/IF/adder_32bits_NextPC/cio ;
  wire [31 : 0] \cpu_inst/dffr_EXMEM_MemWriteData/q ;
  wire [31 : 0] \cpu_inst/MemWriteData_ex ;
  wire [4 : 0] \cpu_inst/dffr_EXMEM_RegWriteAddr/q ;
  wire [31 : 0] \cpu_inst/dffr_IDEX_RtData/q ;
  wire [31 : 0] \cpu_inst/dffr_IDEX_RsData/q ;
  wire [3 : 0] \cpu_inst/dffr_IDEX_RtAddr/q ;
  wire [2 : 0] \cpu_inst/dffr_IDEX_Sa/q ;
  wire [31 : 0] \cpu_inst/RtData_id ;
  wire [4 : 0] \cpu_inst/RegWriteAddr_ex ;
  wire [4 : 0] \cpu_inst/dffr_MEMWB_RegWriteAddr/q ;
  wire [7 : 0] \cpu_inst/dffre_IFID_NextPC/q ;
  wire [7 : 2] \cpu_inst/NextPC_if ;
  wire [31 : 0] \cpu_inst/JrAddr ;
  wire [31 : 0] \cpu_inst/dffr_EXMEM_ALUResult/q ;
  wire [4 : 0] \cpu_inst/ALUCode_id ;
  wire [7 : 0] \cpu_inst/dffr_IDEX_EX/q ;
  wire [31 : 0] \cpu_inst/RegWriteData_wb ;
  wire [31 : 0] \cpu_inst/dffr_MEMWB_ALUResult/q ;
  wire [0 : 0] \cpu_inst/dffr_EXMEM_M/q ;
  wire [1 : 0] \cpu_inst/dffr_EXMEM_WB/q ;
  wire [1 : 0] \cpu_inst/dffr_MEMWB_WB/q ;
  wire [1 : 1] \cpu_inst/dffr_IDEX_M/q ;
  wire [1 : 0] \cpu_inst/dffr_IDEX_WB/q ;
  wire [3 : 0] \CLKgen/step_key/div_inst/out_wg_cy ;
  wire [5 : 0] \cpu_inst/EX/ALU/Result_or0018_wg_cy ;
  GND XST_GND (
    .G(Instruction_id[20])
  );
  VCC XST_VCC (
    .P(blue_2_OBUF_7)
  );
  FD \CLKgen/step_key/debounce/state/q_0  (
    .C(\CLKgen/counter [1]),
    .D(\CLKgen/step_key/debounce/next_state_d [0]),
    .Q(\CLKgen/step_key/debounce/state/q [0])
  );
  FD \CLKgen/step_key/debounce/state/q_1  (
    .C(\CLKgen/counter [1]),
    .D(\CLKgen/step_key/debounce/next_state_d [1]),
    .Q(\CLKgen/step_key/debounce/state/q [1])
  );
  FDRE \CLKgen/step_key/debounce/counter/q_0  (
    .C(\CLKgen/counter [1]),
    .CE(\CLKgen/step_key/en ),
    .D(\CLKgen/step_key/debounce/_add0000 [0]),
    .R(\CLKgen/step_key/debounce/Mrom_current_state_q_rom0000 ),
    .Q(\CLKgen/step_key/debounce/counter/q [0])
  );
  FDRE \CLKgen/step_key/debounce/counter/q_1  (
    .C(\CLKgen/counter [1]),
    .CE(\CLKgen/step_key/en ),
    .D(\CLKgen/step_key/debounce/_add0000 [1]),
    .R(\CLKgen/step_key/debounce/Mrom_current_state_q_rom0000 ),
    .Q(\CLKgen/step_key/debounce/counter/q [1])
  );
  FDRE \CLKgen/step_key/debounce/counter/q_2  (
    .C(\CLKgen/counter [1]),
    .CE(\CLKgen/step_key/en ),
    .D(\CLKgen/step_key/debounce/_add0000 [2]),
    .R(\CLKgen/step_key/debounce/Mrom_current_state_q_rom0000 ),
    .Q(\CLKgen/step_key/debounce/counter/q [2])
  );
  FD \CLKgen/step_key/one_pulse/last_value_storage/q_0  (
    .C(\CLKgen/counter [1]),
    .D(\CLKgen/step_key/debounce/Mrom_current_state_q_rom00001 ),
    .Q(\CLKgen/step_key/one_pulse/last_value_storage/q [0])
  );
  FD \CLKgen/counter_1  (
    .C(clk_BUFGP_0),
    .D(\Result[1] ),
    .Q(\CLKgen/counter_11 )
  );
  FD \CLKgen/step_key/div_inst/q_0  (
    .C(\CLKgen/counter [1]),
    .D(\Result<0>1 ),
    .Q(\CLKgen/step_key/div_inst/q [0])
  );
  FD \CLKgen/step_key/div_inst/q_1  (
    .C(\CLKgen/counter [1]),
    .D(\Result<1>1 ),
    .Q(\CLKgen/step_key/div_inst/q [1])
  );
  FD \CLKgen/step_key/div_inst/q_2  (
    .C(\CLKgen/counter [1]),
    .D(\Result<2>1 ),
    .Q(\CLKgen/step_key/div_inst/q [2])
  );
  FD \CLKgen/step_key/div_inst/q_3  (
    .C(\CLKgen/counter [1]),
    .D(\Result[3] ),
    .Q(\CLKgen/step_key/div_inst/q [3])
  );
  FD \CLKgen/step_key/div_inst/q_4  (
    .C(\CLKgen/counter [1]),
    .D(\Result[4] ),
    .Q(\CLKgen/step_key/div_inst/q [4])
  );
  FD \CLKgen/step_key/div_inst/q_5  (
    .C(\CLKgen/counter [1]),
    .D(\Result[5] ),
    .Q(\CLKgen/step_key/div_inst/q [5])
  );
  FD \CLKgen/step_key/div_inst/q_6  (
    .C(\CLKgen/counter [1]),
    .D(\Result[6] ),
    .Q(\CLKgen/step_key/div_inst/q [6])
  );
  FD \CLKgen/step_key/div_inst/q_7  (
    .C(\CLKgen/counter [1]),
    .D(\Result[7] ),
    .Q(\CLKgen/step_key/div_inst/q [7])
  );
  FD \CLKgen/step_key/div_inst/q_8  (
    .C(\CLKgen/counter [1]),
    .D(\Result[8] ),
    .Q(\CLKgen/step_key/div_inst/q [8])
  );
  FD \CLKgen/step_key/div_inst/q_9  (
    .C(\CLKgen/counter [1]),
    .D(\Result[9] ),
    .Q(\CLKgen/step_key/div_inst/q [9])
  );
  FD \CLKgen/step_key/div_inst/q_10  (
    .C(\CLKgen/counter [1]),
    .D(\Result[10] ),
    .Q(\CLKgen/step_key/div_inst/q [10])
  );
  FD \CLKgen/step_key/div_inst/q_11  (
    .C(\CLKgen/counter [1]),
    .D(\Result[11] ),
    .Q(\CLKgen/step_key/div_inst/q [11])
  );
  FD \CLKgen/step_key/div_inst/q_12  (
    .C(\CLKgen/counter [1]),
    .D(\Result[12] ),
    .Q(\CLKgen/step_key/div_inst/q [12])
  );
  FD \CLKgen/step_key/div_inst/q_13  (
    .C(\CLKgen/counter [1]),
    .D(\Result[13] ),
    .Q(\CLKgen/step_key/div_inst/q [13])
  );
  FD \CLKgen/step_key/div_inst/q_14  (
    .C(\CLKgen/counter [1]),
    .D(\Result[14] ),
    .Q(\CLKgen/step_key/div_inst/q [14])
  );
  FD \CLKgen/step_key/div_inst/q_15  (
    .C(\CLKgen/counter [1]),
    .D(\Result[15] ),
    .Q(\CLKgen/step_key/div_inst/q [15])
  );
  FD \CLKgen/step_key/div_inst/q_16  (
    .C(\CLKgen/counter [1]),
    .D(\Result[16] ),
    .Q(\CLKgen/step_key/div_inst/q [16])
  );
  FD \CLKgen/step_key/div_inst/q_17  (
    .C(\CLKgen/counter [1]),
    .D(\Result[17] ),
    .Q(\CLKgen/step_key/div_inst/q [17])
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<0>  (
    .CI(Instruction_id[20]),
    .DI(blue_2_OBUF_7),
    .S(\Result<0>1 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [0])
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<1>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [0]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<1>_rt_16 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [1])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<1>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [0]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<1>_rt_16 ),
    .O(\Result<1>1 )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<2>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [1]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<2>_rt_17 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [2])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<2>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [1]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<2>_rt_17 ),
    .O(\Result<2>1 )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<3>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [2]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<3>_rt_18 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [3])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<3>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [2]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<3>_rt_18 ),
    .O(\Result[3] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<4>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [3]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<4>_rt_19 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [4])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<4>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [3]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<4>_rt_19 ),
    .O(\Result[4] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<5>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [4]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<5>_rt_20 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [5])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<5>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [4]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<5>_rt_20 ),
    .O(\Result[5] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<6>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [5]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<6>_rt_21 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [6])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<6>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [5]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<6>_rt_21 ),
    .O(\Result[6] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<7>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [6]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<7>_rt_22 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [7])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<7>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [6]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<7>_rt_22 ),
    .O(\Result[7] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<8>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [7]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<8>_rt_23 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [8])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<8>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [7]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<8>_rt_23 ),
    .O(\Result[8] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<9>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [8]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<9>_rt_24 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [9])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<9>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [8]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<9>_rt_24 ),
    .O(\Result[9] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<10>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [9]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<10>_rt_25 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [10])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<10>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [9]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<10>_rt_25 ),
    .O(\Result[10] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<11>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [10]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<11>_rt_26 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [11])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<11>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [10]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<11>_rt_26 ),
    .O(\Result[11] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<12>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [11]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<12>_rt_27 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [12])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<12>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [11]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<12>_rt_27 ),
    .O(\Result[12] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<13>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [12]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<13>_rt_28 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [13])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<13>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [12]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<13>_rt_28 ),
    .O(\Result[13] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<14>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [13]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<14>_rt_29 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [14])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<14>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [13]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<14>_rt_29 ),
    .O(\Result[14] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<15>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [14]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<15>_rt_30 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [15])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<15>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [14]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<15>_rt_30 ),
    .O(\Result[15] )
  );
  MUXCY \CLKgen/step_key/div_inst/Mcount_q_cy<16>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [15]),
    .DI(Instruction_id[20]),
    .S(\CLKgen/step_key/div_inst/Mcount_q_cy<16>_rt_31 ),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy [16])
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<16>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [15]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_cy<16>_rt_31 ),
    .O(\Result[16] )
  );
  XORCY \CLKgen/step_key/div_inst/Mcount_q_xor<17>  (
    .CI(\CLKgen/step_key/div_inst/Mcount_q_cy [16]),
    .LI(\CLKgen/step_key/div_inst/Mcount_q_xor<17>_rt_49 ),
    .O(\Result[17] )
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<10>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [9]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_xor<10>_rt_50 ),
    .O(\vga_ctrl/Result [10])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<9>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [8]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<9>_rt_32 ),
    .O(\vga_ctrl/Result [9])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<9>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [8]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<9>_rt_32 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [9])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<8>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [7]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<8>_rt_33 ),
    .O(\vga_ctrl/Result [8])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<8>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [7]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<8>_rt_33 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [8])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<7>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [6]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<7>_rt_34 ),
    .O(\vga_ctrl/Result [7])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<7>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [6]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<7>_rt_34 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [7])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<6>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [5]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<6>_rt_35 ),
    .O(\vga_ctrl/Result [6])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<6>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [5]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<6>_rt_35 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [6])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<5>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [4]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<5>_rt_36 ),
    .O(\vga_ctrl/Result [5])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<5>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [4]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<5>_rt_36 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [5])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<4>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [3]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<4>_rt_37 ),
    .O(\vga_ctrl/Result [4])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<4>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [3]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<4>_rt_37 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [4])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<3>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [2]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<3>_rt_38 ),
    .O(\vga_ctrl/Result [3])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<3>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [2]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<3>_rt_38 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [3])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<2>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [1]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<2>_rt_39 ),
    .O(\vga_ctrl/Result [2])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<2>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [1]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<2>_rt_39 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [2])
  );
  XORCY \vga_ctrl/Mcount_pixel_cnt_reg_xor<1>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [0]),
    .LI(\vga_ctrl/Mcount_pixel_cnt_reg_cy<1>_rt_40 ),
    .O(\vga_ctrl/Result [1])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<1>  (
    .CI(\vga_ctrl/Mcount_pixel_cnt_reg_cy [0]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_pixel_cnt_reg_cy<1>_rt_40 ),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [1])
  );
  MUXCY \vga_ctrl/Mcount_pixel_cnt_reg_cy<0>  (
    .CI(Instruction_id[20]),
    .DI(blue_2_OBUF_7),
    .S(\vga_ctrl/Result [0]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy [0])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<9>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [8]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_xor<9>_rt_51 ),
    .O(\vga_ctrl/Result<9>1 )
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<8>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [7]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<8>_rt_41 ),
    .O(\vga_ctrl/Result<8>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<8>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [7]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<8>_rt_41 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [8])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<7>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [6]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<7>_rt_42 ),
    .O(\vga_ctrl/Result<7>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<7>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [6]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<7>_rt_42 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [7])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<6>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [5]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<6>_rt_43 ),
    .O(\vga_ctrl/Result<6>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<6>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [5]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<6>_rt_43 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [6])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<5>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [4]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<5>_rt_44 ),
    .O(\vga_ctrl/Result<5>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<5>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [4]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<5>_rt_44 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [5])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<4>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [3]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<4>_rt_45 ),
    .O(\vga_ctrl/Result<4>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<4>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [3]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<4>_rt_45 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [4])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<3>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [2]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<3>_rt_46 ),
    .O(\vga_ctrl/Result<3>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<3>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [2]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<3>_rt_46 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [3])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<2>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [1]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<2>_rt_47 ),
    .O(\vga_ctrl/Result<2>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<2>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [1]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<2>_rt_47 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [2])
  );
  XORCY \vga_ctrl/Mcount_line_cnt_reg_xor<1>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [0]),
    .LI(\vga_ctrl/Mcount_line_cnt_reg_cy<1>_rt_48 ),
    .O(\vga_ctrl/Result<1>1 )
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<1>  (
    .CI(\vga_ctrl/Mcount_line_cnt_reg_cy [0]),
    .DI(Instruction_id[20]),
    .S(\vga_ctrl/Mcount_line_cnt_reg_cy<1>_rt_48 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [1])
  );
  MUXCY \vga_ctrl/Mcount_line_cnt_reg_cy<0>  (
    .CI(Instruction_id[20]),
    .DI(blue_2_OBUF_7),
    .S(\vga_ctrl/Result<0>1 ),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy [0])
  );
  FDRE \vga_ctrl/line_cnt_reg_9  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<9>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [9])
  );
  FDRE \vga_ctrl/line_cnt_reg_8  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<8>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [8])
  );
  FDRE \vga_ctrl/line_cnt_reg_7  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<7>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [7])
  );
  FDRE \vga_ctrl/line_cnt_reg_6  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<6>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [6])
  );
  FDRE \vga_ctrl/line_cnt_reg_5  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<5>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [5])
  );
  FDRE \vga_ctrl/line_cnt_reg_4  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<4>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [4])
  );
  FDRE \vga_ctrl/line_cnt_reg_3  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<3>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [3])
  );
  FDRE \vga_ctrl/line_cnt_reg_2  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<2>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [2])
  );
  FDRE \vga_ctrl/line_cnt_reg_1  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<1>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [1])
  );
  FDRE \vga_ctrl/line_cnt_reg_0  (
    .C(\CLKgen/counter [0]),
    .CE(\vga_ctrl/end_of_line ),
    .D(\vga_ctrl/Result<0>1 ),
    .R(\vga_ctrl/line_cnt_reg_or0000 ),
    .Q(\vga_ctrl/line_cnt_reg [0])
  );
  FDR \vga_ctrl/pixel_cnt_reg_10  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [10]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [10])
  );
  FDR \vga_ctrl/pixel_cnt_reg_9  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [9]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [9])
  );
  FDR \vga_ctrl/pixel_cnt_reg_8  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [8]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [8])
  );
  FDR \vga_ctrl/pixel_cnt_reg_7  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [7]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [7])
  );
  FDR \vga_ctrl/pixel_cnt_reg_6  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [6]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [6])
  );
  FDR \vga_ctrl/pixel_cnt_reg_5  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [5]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [5])
  );
  FDR \vga_ctrl/pixel_cnt_reg_4  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [4]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [4])
  );
  FDR \vga_ctrl/pixel_cnt_reg_3  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [3]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [3])
  );
  FDR \vga_ctrl/pixel_cnt_reg_2  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [2]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [2])
  );
  FDR \vga_ctrl/pixel_cnt_reg_1  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [1]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [1])
  );
  FDR \vga_ctrl/pixel_cnt_reg_0  (
    .C(\CLKgen/counter [0]),
    .D(\vga_ctrl/Result [0]),
    .R(\vga_ctrl/pixel_cnt_reg_or0000 ),
    .Q(\vga_ctrl/pixel_cnt_reg [0])
  );
  FDR \vga_ctrl/data_en_reg  (
    .C(\CLKgen/counter [0]),
    .D(blue_2_OBUF_7),
    .R(\vga_ctrl/data_en_reg_or0000 ),
    .Q(\vga_ctrl/data_en_reg_4 )
  );
  FDS \vga_ctrl/vsync_reg  (
    .C(\CLKgen/counter [0]),
    .D(Instruction_id[20]),
    .S(\vga_ctrl/vsync_reg_or0000 ),
    .Q(\vga_ctrl/vsync_reg_2 )
  );
  FDS \vga_ctrl/hsync_reg  (
    .C(\CLKgen/counter [0]),
    .D(Instruction_id[20]),
    .S(\vga_ctrl/hsync_reg_or0000_9 ),
    .Q(\vga_ctrl/hsync_reg_5 )
  );
  defparam \disp/Mmux_char_pixel_4 .INIT = 8'hE4;
  LUT3 \disp/Mmux_char_pixel_4  (
    .I0(\vga_ctrl/pixel_cnt_reg [1]),
    .I1(\disp/rom_dout [1]),
    .I2(\disp/rom_dout [0]),
    .O(\disp/N21 )
  );
  defparam \disp/Mmux_char_pixel_5 .INIT = 8'hE4;
  LUT3 \disp/Mmux_char_pixel_5  (
    .I0(\vga_ctrl/pixel_cnt_reg [1]),
    .I1(\disp/rom_dout [3]),
    .I2(\disp/rom_dout [2]),
    .O(\disp/N31 )
  );
  MUXF5 \disp/Mmux_char_pixel_3_f5  (
    .I0(\disp/N31 ),
    .I1(\disp/N21 ),
    .S(\vga_ctrl/pixel_cnt_reg [2]),
    .O(\disp/Mmux_char_pixel_3_f5_10 )
  );
  defparam \disp/Mmux_char_pixel_51 .INIT = 8'hE4;
  LUT3 \disp/Mmux_char_pixel_51  (
    .I0(\vga_ctrl/pixel_cnt_reg [1]),
    .I1(\disp/rom_dout [5]),
    .I2(\disp/rom_dout [4]),
    .O(\disp/N4 )
  );
  defparam \disp/Mmux_char_pixel_6 .INIT = 8'hE4;
  LUT3 \disp/Mmux_char_pixel_6  (
    .I0(\vga_ctrl/pixel_cnt_reg [1]),
    .I1(\disp/rom_dout [7]),
    .I2(\disp/rom_dout [6]),
    .O(\disp/N5 )
  );
  MUXF5 \disp/Mmux_char_pixel_4_f5  (
    .I0(\disp/N5 ),
    .I1(\disp/N4 ),
    .S(\vga_ctrl/pixel_cnt_reg [2]),
    .O(\disp/Mmux_char_pixel_4_f5_11 )
  );
  MUXF6 \disp/Mmux_char_pixel_2_f6  (
    .I0(\disp/Mmux_char_pixel_4_f5_11 ),
    .I1(\disp/Mmux_char_pixel_3_f5_10 ),
    .S(x_pos[3]),
    .O(\disp/char_pixel )
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<31>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [30]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [31]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [31])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<30>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [29]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [30]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [30])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<30>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [29]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [30]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [30])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<29>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [28]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [29]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [29])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<29>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [28]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [29]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [29])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<28>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [27]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [28]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [28])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<28>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [27]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [28]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [28])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<27>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [26]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [27]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [27])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<27>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [26]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [27]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [27])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<26>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [25]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [26]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [26])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<26>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [25]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [26]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [26])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<25>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [24]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [25]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [25])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<25>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [24]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [25]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [25])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<24>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [23]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [24]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [24])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<24>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [23]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [24]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [24])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<23>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [22]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [23]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [23])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<23>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [22]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [23]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [23])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<22>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [21]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [22]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [22])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<22>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [21]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [22]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [22])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<21>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [20]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [21]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [21])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<21>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [20]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [21]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [21])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<20>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [19]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [20]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [20])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<20>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [19]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [20]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [20])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<19>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [18]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [19]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [19])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<19>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [18]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [19]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [19])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<18>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [17]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [18]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [18])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<18>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [17]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [18]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [18])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<17>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [16]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [17]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [17])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<17>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [16]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [17]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [17])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<16>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [15]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [16]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [16])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<16>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [15]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [16]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [16])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<15>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [14]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [15]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [15])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<15>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [14]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [15]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [15])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<14>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [13]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [14]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [14])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<14>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [13]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [14]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [14])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<13>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [12]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [13]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [13])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<13>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [12]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [13]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [13])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<12>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [11]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [12]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [12])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<12>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [11]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [12]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [12])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<11>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [10]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [11]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [11])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<11>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [10]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [11]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [11])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<10>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [9]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [10]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [10])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<10>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [9]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [10]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [10])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<9>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [8]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [9]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [9])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<9>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [8]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [9]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [9])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<8>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [7]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [8]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [8])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<8>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [7]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [8]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [8])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<7>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [6]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [7]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [7])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<7>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [6]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [7]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [7])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<6>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [5]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [6]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [6])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<6>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [5]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [6]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [6])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<5>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [4]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [5]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [5])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<5>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [4]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [5]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [5])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<4>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [3]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [4]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [4])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<4>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [3]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [4]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [4])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<3>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [2]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [3]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [3])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<3>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [2]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [3]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [3])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<2>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [1]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [2]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [2])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<2>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [1]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [2]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [2])
  );
  XORCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_xor<1>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [0]),
    .LI(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [1]),
    .O(\cpu_inst/EX/ALU/B_adder_addsub0000 [1])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<1>  (
    .CI(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [0]),
    .DI(Instruction_id[20]),
    .S(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [1]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [1])
  );
  MUXCY \cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy<0>  (
    .CI(Instruction_id[20]),
    .DI(blue_2_OBUF_7),
    .S(ALU_B[0]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_addsub0000_cy [0])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem63  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [31]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem63_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [31])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem62  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [30]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem62_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [30])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem61  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [29]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem61_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [29])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem60  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [28]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem60_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [28])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem59  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [27]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem59_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [27])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem58  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [26]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem58_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [26])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem57  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [25]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem57_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [25])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem56  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [24]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem56_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [24])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem55  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [23]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem55_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [23])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem54  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [22]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem54_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [22])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem53  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [21]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem53_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [21])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem52  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [20]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem52_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [20])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem51  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [19]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem51_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [19])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem50  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [18]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem50_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [18])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem49  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [17]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem49_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [17])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem48  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [16]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem48_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [16])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem47  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [15]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem47_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [15])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem46  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [14]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem46_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [14])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem45  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [13]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem45_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [13])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem44  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [12]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem44_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [12])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem43  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [11]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem43_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [11])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem42  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [10]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem42_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [10])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem41  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [9]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem41_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [9])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem40  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [8]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem40_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [8])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem39  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [7]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem39_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [7])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem38  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [6]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem38_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [6])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem37  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [5]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem37_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [5])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem36  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [4]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem36_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [4])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem35  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [3]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem35_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [3])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem34  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [2]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem34_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [2])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem33  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [1]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem33_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [1])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem32  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [0]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .DPRA2(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem32_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0001 [0])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem31  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [31]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem31_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [31])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem30  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [30]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem30_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [30])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem29  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [29]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem29_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [29])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem28  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [28]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem28_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [28])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem27  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [27]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem27_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [27])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem26  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [26]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem26_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [26])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem25  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [25]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem25_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [25])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem24  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [24]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem24_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [24])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem23  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [23]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem23_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [23])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem22  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [22]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem22_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [22])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem21  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [21]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem21_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [21])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem20  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [20]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem20_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [20])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem19  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [19]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem19_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [19])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem18  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [18]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem18_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [18])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem17  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [17]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem17_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [17])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem16  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [16]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem16_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [16])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem15  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [15]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem15_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [15])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem14  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [14]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem14_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [14])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem13  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [13]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem13_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [13])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem12  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [12]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem12_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [12])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem11  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [11]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem11_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [11])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem10  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [10]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem10_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [10])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem9  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [9]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem9_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [9])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem8  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [8]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem8_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [8])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem7  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [7]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem7_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [7])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem6  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [6]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem6_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [6])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem5  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [5]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem5_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [5])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem4  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [4]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem4_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [4])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem3  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [3]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem3_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [3])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem2  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [2]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem2_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [2])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem1  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [1]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem1_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [1])
  );
  RAM32X1D \cpu_inst/ID/MultiRegisters/inst_Mram_mem  (
    .A0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .A1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .A2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .A3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .A4(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .D(\cpu_inst/RegWriteData_wb [0]),
    .DPRA0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .DPRA1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .DPRA2(Instruction_id[20]),
    .DPRA3(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .DPRA4(Instruction_id[20]),
    .WCLK(cpu_clk),
    .WE(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .SPO(\NLW_cpu_inst/ID/MultiRegisters/inst_Mram_mem_SPO_UNCONNECTED ),
    .DPO(\cpu_inst/ID/MultiRegisters/_varindex0000 [0])
  );
  LD \cpu_inst/IF/PC_in_0  (
    .D(\cpu_inst/IF/PC_in_mux0000 [0]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [0])
  );
  LD \cpu_inst/IF/PC_in_1  (
    .D(\cpu_inst/IF/PC_in_mux0000 [1]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [1])
  );
  LD \cpu_inst/IF/PC_in_2  (
    .D(\cpu_inst/IF/PC_in_mux0000 [2]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [2])
  );
  LD \cpu_inst/IF/PC_in_3  (
    .D(\cpu_inst/IF/PC_in_mux0000 [3]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [3])
  );
  LD \cpu_inst/IF/PC_in_4  (
    .D(\cpu_inst/IF/PC_in_mux0000 [4]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [4])
  );
  LD \cpu_inst/IF/PC_in_5  (
    .D(\cpu_inst/IF/PC_in_mux0000 [5]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [5])
  );
  LD \cpu_inst/IF/PC_in_6  (
    .D(\cpu_inst/IF/PC_in_mux0000 [6]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [6])
  );
  LD \cpu_inst/IF/PC_in_7  (
    .D(\cpu_inst/IF/PC_in_mux0000 [7]),
    .G(\cpu_inst/IF/PC_in_not0001 ),
    .Q(\cpu_inst/IF/PC_in [7])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_7  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [7]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [7])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_6  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [6]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [6])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_5  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [5]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [5])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_4  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [4]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [4])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_3  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [3]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [3])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_2  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [2]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [2])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_1  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [1]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [1])
  );
  FDRE \cpu_inst/IF/dffre_PC_REG/q_0  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/PC_in [0]),
    .R(reset),
    .Q(\cpu_inst/IF/dffre_PC_REG/q [0])
  );
  FDR \cpu_inst/dffr_IDEX_Sa/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[6] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Sa/q [0])
  );
  FDR \cpu_inst/dffr_IDEX_Sa/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[7] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Sa/q [1])
  );
  FDR \cpu_inst/dffr_IDEX_Sa/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Sa/q [2])
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[0] )
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[1] )
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[2] )
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[3] )
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_5  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[5] )
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_11  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[11] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[11] )
  );
  FDR \cpu_inst/dffr_IDEX_Imm/q_14  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[14] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_Imm/q[14] )
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [0]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [0])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [1]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [1])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [2]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [2])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [3]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [3])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [4]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [4])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_5  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [5]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [5])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_6  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [6]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [6])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_7  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [7]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [7])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_8  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [8]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [8])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_9  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [9]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [9])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_10  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [10]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [10])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_11  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [11]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [11])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_12  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [12]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [12])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_13  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [13]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [13])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_14  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [14]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [14])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_15  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [15]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [15])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_16  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [16]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [16])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_17  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [17]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [17])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_18  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [18]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [18])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_19  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [19]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [19])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_20  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [20]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [20])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_21  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [21]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [21])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_22  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [22]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [22])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_23  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [23]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [23])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_24  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [24]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [24])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_25  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [25]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [25])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_26  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [26]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [26])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_27  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [27]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [27])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_28  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [28]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [28])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_29  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [29]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [29])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_30  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [30]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [30])
  );
  FDR \cpu_inst/dffr_IDEX_RsData/q_31  (
    .C(cpu_clk),
    .D(\cpu_inst/JrAddr [31]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsData/q [31])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [0]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [0])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [1]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [1])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [2]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [2])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [3]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [3])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [4]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [4])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_5  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [5]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [5])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_6  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [6]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [6])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_7  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [7]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [7])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_8  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [8]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [8])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_9  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [9]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [9])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_10  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [10]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [10])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_11  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [11]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [11])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_12  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [12]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [12])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_13  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [13]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [13])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_14  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [14]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [14])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_15  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [15]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [15])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_16  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [16]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [16])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_17  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [17]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [17])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_18  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [18]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [18])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_19  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [19]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [19])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_20  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [20]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [20])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_21  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [21]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [21])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_22  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [22]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [22])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_23  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [23]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [23])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_24  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [24]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [24])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_25  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [25]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [25])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_26  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [26]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [26])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_27  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [27]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [27])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_28  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [28]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [28])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_29  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [29]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [29])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_30  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [30]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [30])
  );
  FDR \cpu_inst/dffr_IDEX_RtData/q_31  (
    .C(cpu_clk),
    .D(\cpu_inst/RtData_id [31]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtData/q [31])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_0  (
    .C(cpu_clk),
    .D(ALUResult[0]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [0])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_1  (
    .C(cpu_clk),
    .D(ALUResult[1]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [1])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_2  (
    .C(cpu_clk),
    .D(ALUResult[2]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [2])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_3  (
    .C(cpu_clk),
    .D(ALUResult[3]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [3])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_4  (
    .C(cpu_clk),
    .D(ALUResult[4]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [4])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_5  (
    .C(cpu_clk),
    .D(ALUResult[5]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [5])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_6  (
    .C(cpu_clk),
    .D(ALUResult[6]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [6])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_7  (
    .C(cpu_clk),
    .D(ALUResult[7]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [7])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_8  (
    .C(cpu_clk),
    .D(ALUResult[8]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [8])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_9  (
    .C(cpu_clk),
    .D(ALUResult[9]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [9])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_10  (
    .C(cpu_clk),
    .D(ALUResult[10]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [10])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_11  (
    .C(cpu_clk),
    .D(ALUResult[11]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [11])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_12  (
    .C(cpu_clk),
    .D(ALUResult[12]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [12])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_13  (
    .C(cpu_clk),
    .D(ALUResult[13]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [13])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_14  (
    .C(cpu_clk),
    .D(ALUResult[14]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [14])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_15  (
    .C(cpu_clk),
    .D(ALUResult[15]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [15])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_16  (
    .C(cpu_clk),
    .D(ALUResult[16]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [16])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_17  (
    .C(cpu_clk),
    .D(ALUResult[17]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [17])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_18  (
    .C(cpu_clk),
    .D(ALUResult[18]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [18])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_19  (
    .C(cpu_clk),
    .D(ALUResult[19]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [19])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_20  (
    .C(cpu_clk),
    .D(ALUResult[20]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [20])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_21  (
    .C(cpu_clk),
    .D(ALUResult[21]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [21])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_22  (
    .C(cpu_clk),
    .D(ALUResult[22]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [22])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_23  (
    .C(cpu_clk),
    .D(ALUResult[23]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [23])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_24  (
    .C(cpu_clk),
    .D(ALUResult[24]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [24])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_25  (
    .C(cpu_clk),
    .D(ALUResult[25]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [25])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_26  (
    .C(cpu_clk),
    .D(ALUResult[26]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [26])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_27  (
    .C(cpu_clk),
    .D(ALUResult[27]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [27])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_28  (
    .C(cpu_clk),
    .D(ALUResult[28]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [28])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_29  (
    .C(cpu_clk),
    .D(ALUResult[29]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [29])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_30  (
    .C(cpu_clk),
    .D(ALUResult[30]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [30])
  );
  FDR \cpu_inst/dffr_EXMEM_ALUResult/q_31  (
    .C(cpu_clk),
    .D(ALUResult[31]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_ALUResult/q [31])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [0])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [1])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [2])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [3])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [4]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [4])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_5  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [5]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [5])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_6  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [6]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [6])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_7  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [7]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [7])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_8  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [8]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [8])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_9  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [9]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [9])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_10  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [10]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [10])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_11  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [11]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [11])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_12  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [12]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [12])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_13  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [13]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [13])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_14  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [14]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [14])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_15  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [15]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [15])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_16  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [16]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [16])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_17  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [17]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [17])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_18  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [18]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [18])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_19  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [19]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [19])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_20  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [20]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [20])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_21  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [21]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [21])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_22  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [22]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [22])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_23  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [23]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [23])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_24  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [24]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [24])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_25  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [25]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [25])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_26  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [26]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [26])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_27  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [27]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [27])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_28  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [28]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [28])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_29  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [29]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [29])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_30  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [30]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [30])
  );
  FDR \cpu_inst/dffr_EXMEM_MemWriteData/q_31  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWriteData_ex [31]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_MemWriteData/q [31])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [0])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [1])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [2])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [3])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [4]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [4])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_5  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [5]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [5])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_6  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [6]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [6])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_7  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [7]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [7])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_8  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [8]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [8])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_9  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [9]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [9])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_10  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [10]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [10])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_11  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [11]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [11])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_12  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [12]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [12])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_13  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [13]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [13])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_14  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [14]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [14])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_15  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [15]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [15])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_16  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [16]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [16])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_17  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [17]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [17])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_18  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [18]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [18])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_19  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [19]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [19])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_20  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [20]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [20])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_21  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [21]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [21])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_22  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [22]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [22])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_23  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [23]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [23])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_24  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [24]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [24])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_25  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [25]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [25])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_26  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [26]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [26])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_27  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [27]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [27])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_28  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [28]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [28])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_29  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [29]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [29])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_30  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [30]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [30])
  );
  FDR \cpu_inst/dffr_MEMWB_ALUResult/q_31  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_ALUResult/q [31]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_ALUResult/q [31])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_0  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/dffre_PC_REG/q [0]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [0])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_1  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/IF/dffre_PC_REG/q [1]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [1])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_2  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/NextPC_if [2]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [2])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_3  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/NextPC_if [3]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [3])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_4  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/NextPC_if [4]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [4])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_5  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/NextPC_if [5]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [5])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_6  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/NextPC_if [6]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [6])
  );
  FDRE \cpu_inst/dffre_IFID_NextPC/q_7  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/NextPC_if [7]),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_NextPC/q [7])
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_0  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[0] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[0] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_1  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[1] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[1] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_2  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[2] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[2] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_3  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[3] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[3] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_4  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[10] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[4] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_5  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[12] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[5] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_6  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[6] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[6] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_7  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[7] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[7] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_11  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[11] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[11] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_14  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[14] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[14] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_16  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[16] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[16] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_17  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[17] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[17] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_18  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[18] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[18] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_19  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[19] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[19] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_21  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[21] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[21] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_22  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[22] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[22] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_24  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[24] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[24] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_26  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[26] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[26] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_27  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[27] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[27] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_28  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[28] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[28] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_29  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[29] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[29] )
  );
  FDRE \cpu_inst/dffre_IFID_Instruction/q_31  (
    .C(cpu_clk),
    .CE(\cpu_inst/PC_IFWrite ),
    .D(\cpu_inst/Instruction_if[31] ),
    .R(\cpu_inst/IF_flush ),
    .Q(\cpu_inst/dffre_IFID_Instruction/q[31] )
  );
  FDR \cpu_inst/dffr_EXMEM_M/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_IDEX_M/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_M/q [0])
  );
  FDR \cpu_inst/dffr_IDEX_RsAddr/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsAddr/q[0] )
  );
  FDR \cpu_inst/dffr_IDEX_RsAddr/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsAddr/q[1] )
  );
  FDR \cpu_inst/dffr_IDEX_RsAddr/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RsAddr/q[3] )
  );
  FDR \cpu_inst/dffr_IDEX_RtAddr/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtAddr/q [0])
  );
  FDR \cpu_inst/dffr_IDEX_RtAddr/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtAddr/q [1])
  );
  FDR \cpu_inst/dffr_IDEX_RtAddr/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtAddr/q [2])
  );
  FDR \cpu_inst/dffr_IDEX_RtAddr/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_RtAddr/q [3])
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [0])
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1])
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2])
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [3])
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [4]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4])
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0])
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1])
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2])
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3])
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4])
  );
  FDR \cpu_inst/dffr_IDEX_EX/q_3  (
    .C(cpu_clk),
    .D(\cpu_inst/ALUCode_id [0]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [3])
  );
  FDR \cpu_inst/dffr_IDEX_EX/q_4  (
    .C(cpu_clk),
    .D(\cpu_inst/ALUCode_id [1]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [4])
  );
  FDR \cpu_inst/dffr_IDEX_EX/q_5  (
    .C(cpu_clk),
    .D(\cpu_inst/ALUCode_id [2]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [5])
  );
  FDR \cpu_inst/dffr_IDEX_EX/q_6  (
    .C(cpu_clk),
    .D(\cpu_inst/ALUCode_id [3]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [6])
  );
  FDR \cpu_inst/dffr_IDEX_EX/q_7  (
    .C(cpu_clk),
    .D(\cpu_inst/ALUCode_id [4]),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [7])
  );
  FDR \cpu_inst/dffr_IDEX_WB/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/MemRead_id ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_WB/q [1])
  );
  FDR \cpu_inst/dffr_IDEX_M/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/MemWrite_id ),
    .R(\cpu_inst/stall_reset ),
    .Q(\cpu_inst/dffr_IDEX_M/q [1])
  );
  FDR \cpu_inst/dffr_EXMEM_WB/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_IDEX_WB/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_WB/q [0])
  );
  FDR \cpu_inst/dffr_EXMEM_WB/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_IDEX_WB/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_WB/q [1])
  );
  FDR \cpu_inst/dffr_MEMWB_WB/q_0  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_WB/q [0])
  );
  FDR \cpu_inst/dffr_MEMWB_WB/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_WB/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_WB/q [1])
  );
  defparam \CLKgen/step_key/div_inst/out_wg_lut<0> .INIT = 4'h8;
  LUT2 \CLKgen/step_key/div_inst/out_wg_lut<0>  (
    .I0(\CLKgen/step_key/div_inst/q [13]),
    .I1(\CLKgen/step_key/div_inst/q [12]),
    .O(N2)
  );
  MUXCY \CLKgen/step_key/div_inst/out_wg_cy<0>  (
    .CI(blue_2_OBUF_7),
    .DI(Instruction_id[20]),
    .S(N2),
    .O(\CLKgen/step_key/div_inst/out_wg_cy [0])
  );
  defparam \CLKgen/step_key/div_inst/out_wg_lut<1> .INIT = 16'h8000;
  LUT4 \CLKgen/step_key/div_inst/out_wg_lut<1>  (
    .I0(\CLKgen/step_key/div_inst/q [11]),
    .I1(\CLKgen/step_key/div_inst/q [10]),
    .I2(\CLKgen/step_key/div_inst/q [14]),
    .I3(\CLKgen/step_key/div_inst/q [9]),
    .O(N3)
  );
  MUXCY \CLKgen/step_key/div_inst/out_wg_cy<1>  (
    .CI(\CLKgen/step_key/div_inst/out_wg_cy [0]),
    .DI(Instruction_id[20]),
    .S(N3),
    .O(\CLKgen/step_key/div_inst/out_wg_cy [1])
  );
  defparam \CLKgen/step_key/div_inst/out_wg_lut<2> .INIT = 16'h8000;
  LUT4 \CLKgen/step_key/div_inst/out_wg_lut<2>  (
    .I0(\CLKgen/step_key/div_inst/q [6]),
    .I1(\CLKgen/step_key/div_inst/q [8]),
    .I2(\CLKgen/step_key/div_inst/q [16]),
    .I3(\CLKgen/step_key/div_inst/q [7]),
    .O(N4)
  );
  MUXCY \CLKgen/step_key/div_inst/out_wg_cy<2>  (
    .CI(\CLKgen/step_key/div_inst/out_wg_cy [1]),
    .DI(Instruction_id[20]),
    .S(N4),
    .O(\CLKgen/step_key/div_inst/out_wg_cy [2])
  );
  defparam \CLKgen/step_key/div_inst/out_wg_lut<3> .INIT = 16'h8000;
  LUT4 \CLKgen/step_key/div_inst/out_wg_lut<3>  (
    .I0(\CLKgen/step_key/div_inst/q [5]),
    .I1(\CLKgen/step_key/div_inst/q [4]),
    .I2(\CLKgen/step_key/div_inst/q [17]),
    .I3(\CLKgen/step_key/div_inst/q [3]),
    .O(N51)
  );
  MUXCY \CLKgen/step_key/div_inst/out_wg_cy<3>  (
    .CI(\CLKgen/step_key/div_inst/out_wg_cy [2]),
    .DI(Instruction_id[20]),
    .S(N51),
    .O(\CLKgen/step_key/div_inst/out_wg_cy [3])
  );
  defparam \CLKgen/step_key/div_inst/out_wg_lut<4> .INIT = 16'h8000;
  LUT4 \CLKgen/step_key/div_inst/out_wg_lut<4>  (
    .I0(\CLKgen/step_key/div_inst/q [2]),
    .I1(\CLKgen/step_key/div_inst/q [1]),
    .I2(\CLKgen/step_key/div_inst/q [15]),
    .I3(\CLKgen/step_key/div_inst/q [0]),
    .O(N6)
  );
  MUXCY \CLKgen/step_key/div_inst/out_wg_cy<4>  (
    .CI(\CLKgen/step_key/div_inst/out_wg_cy [3]),
    .DI(Instruction_id[20]),
    .S(N6),
    .O(\CLKgen/step_key/en )
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<0> .INIT = 8'h01;
  LUT3 \cpu_inst/EX/ALU/Result_or0018_wg_lut<0>  (
    .I0(ALU_A[22]),
    .I1(ALU_A[24]),
    .I2(ALU_A[21]),
    .O(N7)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<0>  (
    .CI(Instruction_id[20]),
    .DI(blue_2_OBUF_7),
    .S(N7),
    .O(\cpu_inst/EX/ALU/Result_or0018_wg_cy [0])
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<1> .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Result_or0018_wg_lut<1>  (
    .I0(ALU_A[20]),
    .I1(ALU_A[19]),
    .I2(ALU_A[25]),
    .I3(ALU_A[16]),
    .O(N8)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<1>  (
    .CI(\cpu_inst/EX/ALU/Result_or0018_wg_cy [0]),
    .DI(blue_2_OBUF_7),
    .S(N8),
    .O(\cpu_inst/EX/ALU/Result_or0018_wg_cy [1])
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<2> .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Result_or0018_wg_lut<2>  (
    .I0(ALU_A[18]),
    .I1(ALU_A[17]),
    .I2(ALU_A[23]),
    .I3(ALU_A[15]),
    .O(N9)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<2>  (
    .CI(\cpu_inst/EX/ALU/Result_or0018_wg_cy [1]),
    .DI(blue_2_OBUF_7),
    .S(N9),
    .O(\cpu_inst/EX/ALU/Result_or0018_wg_cy [2])
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<3> .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Result_or0018_wg_lut<3>  (
    .I0(ALU_A[14]),
    .I1(ALU_A[13]),
    .I2(ALU_A[26]),
    .I3(ALU_A[12]),
    .O(N10)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<3>  (
    .CI(\cpu_inst/EX/ALU/Result_or0018_wg_cy [2]),
    .DI(blue_2_OBUF_7),
    .S(N10),
    .O(\cpu_inst/EX/ALU/Result_or0018_wg_cy [3])
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<4> .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Result_or0018_wg_lut<4>  (
    .I0(ALU_A[9]),
    .I1(ALU_A[11]),
    .I2(ALU_A[27]),
    .I3(ALU_A[10]),
    .O(N11)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<4>  (
    .CI(\cpu_inst/EX/ALU/Result_or0018_wg_cy [3]),
    .DI(blue_2_OBUF_7),
    .S(N11),
    .O(\cpu_inst/EX/ALU/Result_or0018_wg_cy [4])
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<5> .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Result_or0018_wg_lut<5>  (
    .I0(ALU_A[6]),
    .I1(ALU_A[8]),
    .I2(ALU_A[28]),
    .I3(ALU_A[7]),
    .O(N12)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<5>  (
    .CI(\cpu_inst/EX/ALU/Result_or0018_wg_cy [4]),
    .DI(blue_2_OBUF_7),
    .S(N12),
    .O(\cpu_inst/EX/ALU/Result_or0018_wg_cy [5])
  );
  defparam \cpu_inst/EX/ALU/Result_or0018_wg_lut<6> .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Result_or0018_wg_lut<6>  (
    .I0(ALU_A[30]),
    .I1(ALU_A[5]),
    .I2(ALU_A[29]),
    .I3(ALU_A[31]),
    .O(N13)
  );
  MUXCY \cpu_inst/EX/ALU/Result_or0018_wg_cy<6>  (
    .CI(\cpu_inst/EX/ALU/Result_or0018_wg_cy [5]),
    .DI(blue_2_OBUF_7),
    .S(N13),
    .O(\cpu_inst/EX/ALU/Result_or0018 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<7>11 .INIT = 4'h6;
  LUT2 \vga_ctrl/Msub_y_pos_xor<7>11  (
    .I0(\vga_ctrl/line_cnt_reg [7]),
    .I1(\vga_ctrl/N10 ),
    .O(y_pos[7])
  );
  defparam \vga_ctrl/Msub_y_pos_xor<1>11 .INIT = 4'h9;
  LUT2 \vga_ctrl/Msub_y_pos_xor<1>11  (
    .I0(\vga_ctrl/line_cnt_reg [1]),
    .I1(\vga_ctrl/line_cnt_reg [0]),
    .O(y_pos[1])
  );
  defparam \vga_ctrl/Msub_x_pos_temp_xor<4>11 .INIT = 4'h6;
  LUT2 \vga_ctrl/Msub_x_pos_temp_xor<4>11  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .O(x_pos[4])
  );
  defparam \vga_ctrl/Msub_x_pos_temp_xor<6>111 .INIT = 8'h7F;
  LUT3 \vga_ctrl/Msub_x_pos_temp_xor<6>111  (
    .I0(\vga_ctrl/pixel_cnt_reg [5]),
    .I1(\vga_ctrl/pixel_cnt_reg [4]),
    .I2(\vga_ctrl/pixel_cnt_reg [3]),
    .O(\vga_ctrl/N111 )
  );
  defparam \cpu_inst/IF/PC_in_not00011 .INIT = 8'h17;
  LUT3 \cpu_inst/IF/PC_in_not00011  (
    .I0(JumpFlag[2]),
    .I1(JumpFlag[0]),
    .I2(JumpFlag[1]),
    .O(\cpu_inst/IF/PC_in_not0001 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<8>11 .INIT = 8'h9A;
  LUT3 \vga_ctrl/Msub_y_pos_xor<8>11  (
    .I0(\vga_ctrl/line_cnt_reg [8]),
    .I1(\vga_ctrl/line_cnt_reg [7]),
    .I2(\vga_ctrl/N10 ),
    .O(y_pos[8])
  );
  defparam \vga_ctrl/Msub_y_pos_xor<4>11 .INIT = 8'h6C;
  LUT3 \vga_ctrl/Msub_y_pos_xor<4>11  (
    .I0(\vga_ctrl/N11 ),
    .I1(\vga_ctrl/line_cnt_reg [4]),
    .I2(\vga_ctrl/line_cnt_reg [3]),
    .O(y_pos[4])
  );
  defparam \vga_ctrl/Msub_y_pos_xor<2>11 .INIT = 8'hC9;
  LUT3 \vga_ctrl/Msub_y_pos_xor<2>11  (
    .I0(\vga_ctrl/line_cnt_reg [1]),
    .I1(\vga_ctrl/line_cnt_reg [2]),
    .I2(\vga_ctrl/line_cnt_reg [0]),
    .O(y_pos[2])
  );
  defparam \vga_ctrl/Msub_x_pos_temp_xor<7>11 .INIT = 8'h9A;
  LUT3 \vga_ctrl/Msub_x_pos_temp_xor<7>11  (
    .I0(\vga_ctrl/pixel_cnt_reg [7]),
    .I1(\vga_ctrl/N111 ),
    .I2(\vga_ctrl/pixel_cnt_reg [6]),
    .O(x_pos[7])
  );
  defparam \vga_ctrl/Msub_x_pos_temp_xor<5>11 .INIT = 8'h6C;
  LUT3 \vga_ctrl/Msub_x_pos_temp_xor<5>11  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .I1(\vga_ctrl/pixel_cnt_reg [5]),
    .I2(\vga_ctrl/pixel_cnt_reg [3]),
    .O(x_pos[5])
  );
  defparam \disp/char_selection_4_cmp_eq00081 .INIT = 16'h0020;
  LUT4 \disp/char_selection_4_cmp_eq00081  (
    .I0(y_pos[6]),
    .I1(y_pos[5]),
    .I2(y_pos[7]),
    .I3(y_pos[8]),
    .O(\disp/char_selection_4_cmp_eq0008 )
  );
  defparam \disp/char_selection_4_cmp_eq00071 .INIT = 16'h0020;
  LUT4 \disp/char_selection_4_cmp_eq00071  (
    .I0(y_pos[8]),
    .I1(y_pos[5]),
    .I2(y_pos[6]),
    .I3(y_pos[7]),
    .O(\disp/char_selection_4_cmp_eq0007 )
  );
  defparam \disp/char_selection_4_cmp_eq00061 .INIT = 16'h0002;
  LUT4 \disp/char_selection_4_cmp_eq00061  (
    .I0(y_pos[8]),
    .I1(y_pos[6]),
    .I2(y_pos[5]),
    .I3(y_pos[7]),
    .O(\disp/char_selection_4_cmp_eq0006 )
  );
  defparam \disp/char_selection_4_cmp_eq00051 .INIT = 16'h2000;
  LUT4 \disp/char_selection_4_cmp_eq00051  (
    .I0(y_pos[5]),
    .I1(y_pos[8]),
    .I2(y_pos[7]),
    .I3(y_pos[6]),
    .O(\disp/char_selection_4_cmp_eq0005 )
  );
  defparam \disp/char_selection_4_cmp_eq00041 .INIT = 16'h0002;
  LUT4 \disp/char_selection_4_cmp_eq00041  (
    .I0(y_pos[7]),
    .I1(y_pos[6]),
    .I2(y_pos[5]),
    .I3(y_pos[8]),
    .O(\disp/char_selection_4_cmp_eq0004 )
  );
  defparam \disp/char_selection_4_cmp_eq00001 .INIT = 16'h0002;
  LUT4 \disp/char_selection_4_cmp_eq00001  (
    .I0(y_pos[6]),
    .I1(y_pos[8]),
    .I2(y_pos[5]),
    .I3(y_pos[7]),
    .O(\disp/char_selection_4_cmp_eq0000 )
  );
  defparam \disp/char_selection_3_cmp_eq00051 .INIT = 16'h2000;
  LUT4 \disp/char_selection_3_cmp_eq00051  (
    .I0(x_pos[5]),
    .I1(x_pos[4]),
    .I2(x_pos[7]),
    .I3(x_pos[6]),
    .O(\disp/char_selection_3_cmp_eq0005 )
  );
  defparam \disp/char_selection_3_cmp_eq00031 .INIT = 16'h0020;
  LUT4 \disp/char_selection_3_cmp_eq00031  (
    .I0(x_pos[7]),
    .I1(x_pos[5]),
    .I2(x_pos[4]),
    .I3(x_pos[6]),
    .O(\disp/char_selection_3_cmp_eq0003 )
  );
  defparam \disp/char_selection_3_cmp_eq00021 .INIT = 16'h0002;
  LUT4 \disp/char_selection_3_cmp_eq00021  (
    .I0(x_pos[7]),
    .I1(x_pos[5]),
    .I2(x_pos[4]),
    .I3(x_pos[6]),
    .O(\disp/char_selection_3_cmp_eq0002 )
  );
  defparam \disp/char_selection_3_cmp_eq00011 .INIT = 16'h2000;
  LUT4 \disp/char_selection_3_cmp_eq00011  (
    .I0(x_pos[4]),
    .I1(x_pos[7]),
    .I2(x_pos[6]),
    .I3(x_pos[5]),
    .O(\disp/char_selection_3_cmp_eq0001 )
  );
  defparam \disp/char_selection_3_cmp_eq00001 .INIT = 16'h0020;
  LUT4 \disp/char_selection_3_cmp_eq00001  (
    .I0(x_pos[5]),
    .I1(x_pos[4]),
    .I2(x_pos[6]),
    .I3(x_pos[7]),
    .O(\disp/char_selection_3_cmp_eq0000 )
  );
  defparam cpu_clk1.INIT = 16'hBA10;
  LUT4 cpu_clk1 (
    .I0(run_mode_IBUF_3),
    .I1(\CLKgen/step_key/one_pulse/last_value_storage/q [0]),
    .I2(\CLKgen/step_key/debounce/Mrom_current_state_q_rom00001 ),
    .I3(\CLKgen/counter_11 ),
    .O(cpu_clk1_82)
  );
  defparam \cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst1/add_inst1/co1 .INIT = 16'hFEA8;
  LUT4 \cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst1/add_inst1/co1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I2(\cpu_inst/dffre_IFID_NextPC/q [4]),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [5]),
    .O(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/add_inst1/co1 .INIT = 16'hEA80;
  LUT4 \cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/add_inst1/co1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [4]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [5]),
    .O(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/ID/adder_32bits_BranchAddr/adder_4bits_inst/add_inst3/co1 .INIT = 16'hEA80;
  LUT4 \cpu_inst/ID/adder_32bits_BranchAddr/adder_4bits_inst/add_inst3/co1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [2]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [3]),
    .O(\cpu_inst/ID/adder_32bits_BranchAddr/cio [0])
  );
  defparam \vga_ctrl/Msub_y_pos_xor<5>11 .INIT = 16'h9333;
  LUT4 \vga_ctrl/Msub_y_pos_xor<5>11  (
    .I0(\vga_ctrl/line_cnt_reg [3]),
    .I1(\vga_ctrl/line_cnt_reg [5]),
    .I2(\vga_ctrl/N11 ),
    .I3(\vga_ctrl/line_cnt_reg [4]),
    .O(y_pos[5])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<2>42 .INIT = 16'h606F;
  LUT4 \cpu_inst/IF/PC_in_mux0000<2>42  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [2]),
    .I2(JumpFlag[0]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/IF/PC_in_mux0000<2>_map16 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<2>58 .INIT = 8'h40;
  LUT3 \cpu_inst/IF/PC_in_mux0000<2>58  (
    .I0(JumpFlag[0]),
    .I1(\cpu_inst/JrAddr [2]),
    .I2(JumpFlag[2]),
    .O(\cpu_inst/IF/PC_in_mux0000<2>_map20 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<3>67 .INIT = 16'h963C;
  LUT4 \cpu_inst/IF/PC_in_mux0000<3>67  (
    .I0(\cpu_inst/dffre_IFID_NextPC/q [2]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I2(\cpu_inst/dffre_IFID_NextPC/q [3]),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .O(\cpu_inst/IF/PC_in_mux0000<3>_map23 )
  );
  defparam \disp/vga_pixel49 .INIT = 16'h1C14;
  LUT4 \disp/vga_pixel49  (
    .I0(y_pos[5]),
    .I1(y_pos[7]),
    .I2(y_pos[8]),
    .I3(y_pos[6]),
    .O(\disp/vga_pixel_map18 )
  );
  defparam \disp/vga_pixel83 .INIT = 16'hA888;
  LUT4 \disp/vga_pixel83  (
    .I0(y_pos[6]),
    .I1(\disp/N36 ),
    .I2(\disp/N311 ),
    .I3(x_pos[4]),
    .O(\disp/vga_pixel_map29 )
  );
  defparam \disp/vga_pixel129 .INIT = 16'h5510;
  LUT4 \disp/vga_pixel129  (
    .I0(y_pos[5]),
    .I1(y_pos[7]),
    .I2(\disp/vga_pixel_map29 ),
    .I3(\disp/vga_pixel_map38 ),
    .O(\disp/vga_pixel_map40 )
  );
  defparam \disp/vga_pixel159 .INIT = 16'hA888;
  LUT4 \disp/vga_pixel159  (
    .I0(\disp/char_pixel ),
    .I1(\disp/vga_pixel_map40 ),
    .I2(\disp/vga_pixel_map18 ),
    .I3(\disp/vga_pixel_map23 ),
    .O(\disp/vga_pixel_map42 )
  );
  defparam \disp/vga_pixel240 .INIT = 16'h0C04;
  LUT4 \disp/vga_pixel240  (
    .I0(\vga_ctrl/line_cnt_reg [9]),
    .I1(\disp/vga_pixel_map59 ),
    .I2(\vga_ctrl/N4 ),
    .I3(\vga_ctrl/N10 ),
    .O(\disp/vga_pixel_map60 )
  );
  defparam \disp/vga_pixel254 .INIT = 8'h80;
  LUT3 \disp/vga_pixel254  (
    .I0(\disp/vga_pixel_map8 ),
    .I1(\disp/vga_pixel_map42 ),
    .I2(\disp/vga_pixel_map60 ),
    .O(green_0_OBUF_8)
  );
  defparam \disp/char_selection_3_mux000013 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000013  (
    .I0(ALU_A[23]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_A[19]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_3_mux0000_map6 )
  );
  defparam \disp/char_selection_3_mux000018 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000018  (
    .I0(ALU_A[15]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALU_A[11]),
    .I3(\disp/char_selection_3_cmp_eq0003 ),
    .O(\disp/char_selection_3_mux0000_map9 )
  );
  defparam \disp/char_selection_3_mux000056 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_3_mux000056  (
    .I0(\disp/char_selection_4_cmp_eq0008 ),
    .I1(\disp/char_selection_3_mux0000_map6 ),
    .I2(\disp/char_selection_3_mux0000_map9 ),
    .I3(\disp/char_selection_3_mux0000_map17 ),
    .O(\disp/char_selection_3_mux0000_map19 )
  );
  defparam \disp/char_selection_3_mux000080 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000080  (
    .I0(\disp/char_selection_3_cmp_eq0003 ),
    .I1(MemDout_wb[11]),
    .I2(\disp/char_selection_3_cmp_eq0002 ),
    .I3(MemDout_wb[15]),
    .O(\disp/char_selection_3_mux0000_map23 )
  );
  defparam \disp/char_selection_3_mux000085 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000085  (
    .I0(\disp/char_selection_3_cmp_eq0001 ),
    .I1(MemDout_wb[19]),
    .I2(\disp/char_selection_3_cmp_eq0000 ),
    .I3(MemDout_wb[23]),
    .O(\disp/char_selection_3_mux0000_map26 )
  );
  defparam \disp/char_selection_3_mux000097 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000097  (
    .I0(\disp/char_selection_4_cmp_eq0003 ),
    .I1(MemDout_wb[31]),
    .I2(\disp/char_selection_4_cmp_eq0002 ),
    .I3(MemDout_wb[3]),
    .O(\disp/char_selection_3_mux0000_map30 )
  );
  defparam \disp/char_selection_3_mux0000102 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000102  (
    .I0(\disp/char_selection_4_cmp_eq0001 ),
    .I1(MemDout_wb[27]),
    .I2(\disp/char_selection_3_cmp_eq0004 ),
    .I3(MemDout_wb[7]),
    .O(\disp/char_selection_3_mux0000_map33 )
  );
  defparam \disp/char_selection_3_mux0000103 .INIT = 4'hE;
  LUT2 \disp/char_selection_3_mux0000103  (
    .I0(\disp/char_selection_3_mux0000_map30 ),
    .I1(\disp/char_selection_3_mux0000_map33 ),
    .O(\disp/char_selection_3_mux0000_map34 )
  );
  defparam \disp/char_selection_3_mux0000136 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000136  (
    .I0(ALUResult[23]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALUResult[19]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_3_mux0000_map39 )
  );
  defparam \disp/char_selection_3_mux0000141 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000141  (
    .I0(ALUResult[15]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALUResult[11]),
    .I3(\disp/char_selection_3_cmp_eq0003 ),
    .O(\disp/char_selection_3_mux0000_map42 )
  );
  defparam \disp/char_selection_3_mux0000179 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_3_mux0000179  (
    .I0(\disp/char_selection_4_cmp_eq0006 ),
    .I1(\disp/char_selection_3_mux0000_map39 ),
    .I2(\disp/char_selection_3_mux0000_map42 ),
    .I3(\disp/char_selection_3_mux0000_map50 ),
    .O(\disp/char_selection_3_mux0000_map52 )
  );
  defparam \disp/char_selection_3_mux0000203 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000203  (
    .I0(ALU_B[23]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_B[19]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_3_mux0000_map56 )
  );
  defparam \disp/char_selection_3_mux0000208 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000208  (
    .I0(ALU_B[15]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALU_B[11]),
    .I3(\disp/char_selection_3_cmp_eq0003 ),
    .O(\disp/char_selection_3_mux0000_map59 )
  );
  defparam \disp/char_selection_3_mux0000246 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_3_mux0000246  (
    .I0(\disp/char_selection_4_cmp_eq0005 ),
    .I1(\disp/char_selection_3_mux0000_map56 ),
    .I2(\disp/char_selection_3_mux0000_map59 ),
    .I3(\disp/char_selection_3_mux0000_map67 ),
    .O(\disp/char_selection_3_mux0000_map69 )
  );
  defparam \disp/char_selection_3_mux0000259 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000259  (
    .I0(\disp/char_selection_3_cmp_eq0002 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\disp/char_selection_3_cmp_eq0001 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .O(\disp/char_selection_3_mux0000_map72 )
  );
  defparam \disp/char_selection_3_mux0000270 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000270  (
    .I0(\disp/char_selection_4_cmp_eq0002 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I2(\disp/char_selection_4_cmp_eq0001 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(\disp/char_selection_3_mux0000_map77 )
  );
  defparam \disp/char_selection_3_mux0000275 .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000275  (
    .I0(\disp/char_selection_3_cmp_eq0004 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[7] ),
    .I2(\disp/char_selection_3_cmp_eq0003 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[11] ),
    .O(\disp/char_selection_3_mux0000_map80 )
  );
  defparam \disp/char_selection_3_mux0000329 .INIT = 16'hFFEA;
  LUT4 \disp/char_selection_3_mux0000329  (
    .I0(\disp/char_selection_3_mux0000_map19 ),
    .I1(\disp/char_selection_4_cmp_eq0000 ),
    .I2(\disp/char_selection_3_mux0000_map2 ),
    .I3(\disp/char_selection_3_mux0000_map85 ),
    .O(\disp/char_selection [3])
  );
  defparam \disp/char_selection_2_mux000013 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000013  (
    .I0(ALU_A[22]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_A[18]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_2_mux0000_map6 )
  );
  defparam \disp/char_selection_2_mux000018 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000018  (
    .I0(ALU_A[14]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALU_A[10]),
    .I3(\disp/char_selection_3_cmp_eq0003 ),
    .O(\disp/char_selection_2_mux0000_map9 )
  );
  defparam \disp/char_selection_2_mux000030 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000030  (
    .I0(ALU_A[6]),
    .I1(\disp/char_selection_3_cmp_eq0004 ),
    .I2(ALU_A[30]),
    .I3(\disp/char_selection_4_cmp_eq0003 ),
    .O(\disp/char_selection_2_mux0000_map13 )
  );
  defparam \disp/char_selection_2_mux000035 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000035  (
    .I0(ALU_A[2]),
    .I1(\disp/char_selection_4_cmp_eq0002 ),
    .I2(ALU_A[26]),
    .I3(\disp/char_selection_4_cmp_eq0001 ),
    .O(\disp/char_selection_2_mux0000_map16 )
  );
  defparam \disp/char_selection_2_mux000036 .INIT = 4'hE;
  LUT2 \disp/char_selection_2_mux000036  (
    .I0(\disp/char_selection_2_mux0000_map13 ),
    .I1(\disp/char_selection_2_mux0000_map16 ),
    .O(\disp/char_selection_2_mux0000_map17 )
  );
  defparam \disp/char_selection_2_mux000056 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_2_mux000056  (
    .I0(\disp/char_selection_4_cmp_eq0008 ),
    .I1(\disp/char_selection_2_mux0000_map6 ),
    .I2(\disp/char_selection_2_mux0000_map9 ),
    .I3(\disp/char_selection_2_mux0000_map17 ),
    .O(\disp/char_selection_2_mux0000_map19 )
  );
  defparam \disp/char_selection_2_mux000080 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000080  (
    .I0(\disp/char_selection_3_cmp_eq0003 ),
    .I1(MemDout_wb[10]),
    .I2(\disp/char_selection_3_cmp_eq0002 ),
    .I3(MemDout_wb[14]),
    .O(\disp/char_selection_2_mux0000_map23 )
  );
  defparam \disp/char_selection_2_mux000085 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000085  (
    .I0(\disp/char_selection_3_cmp_eq0001 ),
    .I1(MemDout_wb[18]),
    .I2(\disp/char_selection_3_cmp_eq0000 ),
    .I3(MemDout_wb[22]),
    .O(\disp/char_selection_2_mux0000_map26 )
  );
  defparam \disp/char_selection_2_mux000097 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux000097  (
    .I0(\disp/char_selection_4_cmp_eq0003 ),
    .I1(MemDout_wb[30]),
    .I2(\disp/char_selection_4_cmp_eq0002 ),
    .I3(MemDout_wb[2]),
    .O(\disp/char_selection_2_mux0000_map30 )
  );
  defparam \disp/char_selection_2_mux0000102 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000102  (
    .I0(\disp/char_selection_4_cmp_eq0001 ),
    .I1(MemDout_wb[26]),
    .I2(\disp/char_selection_3_cmp_eq0004 ),
    .I3(MemDout_wb[6]),
    .O(\disp/char_selection_2_mux0000_map33 )
  );
  defparam \disp/char_selection_2_mux0000103 .INIT = 4'hE;
  LUT2 \disp/char_selection_2_mux0000103  (
    .I0(\disp/char_selection_2_mux0000_map30 ),
    .I1(\disp/char_selection_2_mux0000_map33 ),
    .O(\disp/char_selection_2_mux0000_map34 )
  );
  defparam \disp/char_selection_2_mux0000136 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000136  (
    .I0(ALUResult[22]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALUResult[18]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_2_mux0000_map39 )
  );
  defparam \disp/char_selection_2_mux0000141 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000141  (
    .I0(ALUResult[14]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALUResult[10]),
    .I3(\disp/char_selection_3_cmp_eq0003 ),
    .O(\disp/char_selection_2_mux0000_map42 )
  );
  defparam \disp/char_selection_2_mux0000153 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000153  (
    .I0(ALUResult[6]),
    .I1(\disp/char_selection_3_cmp_eq0004 ),
    .I2(ALUResult[30]),
    .I3(\disp/char_selection_4_cmp_eq0003 ),
    .O(\disp/char_selection_2_mux0000_map46 )
  );
  defparam \disp/char_selection_2_mux0000158 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000158  (
    .I0(ALUResult[2]),
    .I1(\disp/char_selection_4_cmp_eq0002 ),
    .I2(ALUResult[26]),
    .I3(\disp/char_selection_4_cmp_eq0001 ),
    .O(\disp/char_selection_2_mux0000_map49 )
  );
  defparam \disp/char_selection_2_mux0000159 .INIT = 4'hE;
  LUT2 \disp/char_selection_2_mux0000159  (
    .I0(\disp/char_selection_2_mux0000_map46 ),
    .I1(\disp/char_selection_2_mux0000_map49 ),
    .O(\disp/char_selection_2_mux0000_map50 )
  );
  defparam \disp/char_selection_2_mux0000179 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_2_mux0000179  (
    .I0(\disp/char_selection_4_cmp_eq0006 ),
    .I1(\disp/char_selection_2_mux0000_map39 ),
    .I2(\disp/char_selection_2_mux0000_map42 ),
    .I3(\disp/char_selection_2_mux0000_map50 ),
    .O(\disp/char_selection_2_mux0000_map52 )
  );
  defparam \disp/char_selection_2_mux0000203 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000203  (
    .I0(ALU_B[22]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_B[18]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_2_mux0000_map56 )
  );
  defparam \disp/char_selection_2_mux0000208 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000208  (
    .I0(ALU_B[14]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALU_B[10]),
    .I3(\disp/char_selection_3_cmp_eq0003 ),
    .O(\disp/char_selection_2_mux0000_map59 )
  );
  defparam \disp/char_selection_2_mux0000220 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000220  (
    .I0(ALU_B[6]),
    .I1(\disp/char_selection_3_cmp_eq0004 ),
    .I2(ALU_B[30]),
    .I3(\disp/char_selection_4_cmp_eq0003 ),
    .O(\disp/char_selection_2_mux0000_map63 )
  );
  defparam \disp/char_selection_2_mux0000225 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000225  (
    .I0(ALU_B[2]),
    .I1(\disp/char_selection_4_cmp_eq0002 ),
    .I2(ALU_B[26]),
    .I3(\disp/char_selection_4_cmp_eq0001 ),
    .O(\disp/char_selection_2_mux0000_map66 )
  );
  defparam \disp/char_selection_2_mux0000226 .INIT = 4'hE;
  LUT2 \disp/char_selection_2_mux0000226  (
    .I0(\disp/char_selection_2_mux0000_map63 ),
    .I1(\disp/char_selection_2_mux0000_map66 ),
    .O(\disp/char_selection_2_mux0000_map67 )
  );
  defparam \disp/char_selection_2_mux0000246 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_2_mux0000246  (
    .I0(\disp/char_selection_4_cmp_eq0005 ),
    .I1(\disp/char_selection_2_mux0000_map56 ),
    .I2(\disp/char_selection_2_mux0000_map59 ),
    .I3(\disp/char_selection_2_mux0000_map67 ),
    .O(\disp/char_selection_2_mux0000_map69 )
  );
  defparam \disp/char_selection_2_mux0000259 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000259  (
    .I0(\disp/char_selection_3_cmp_eq0003 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\disp/char_selection_3_cmp_eq0002 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[14] ),
    .O(\disp/char_selection_2_mux0000_map72 )
  );
  defparam \disp/char_selection_2_mux0000264 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000264  (
    .I0(\disp/char_selection_3_cmp_eq0001 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .I2(\disp/char_selection_3_cmp_eq0000 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .O(\disp/char_selection_2_mux0000_map75 )
  );
  defparam \disp/char_selection_2_mux0000276 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000276  (
    .I0(\disp/char_selection_4_cmp_eq0002 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I2(\disp/char_selection_4_cmp_eq0001 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .O(\disp/char_selection_2_mux0000_map79 )
  );
  defparam \disp/char_selection_2_mux0000281 .INIT = 16'hF888;
  LUT4 \disp/char_selection_2_mux0000281  (
    .I0(\disp/char_selection_3_cmp_eq0005 ),
    .I1(JumpFlag[2]),
    .I2(\disp/char_selection_3_cmp_eq0004 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[6] ),
    .O(\disp/char_selection_2_mux0000_map82 )
  );
  defparam \disp/char_selection_2_mux0000282 .INIT = 4'hE;
  LUT2 \disp/char_selection_2_mux0000282  (
    .I0(\disp/char_selection_2_mux0000_map79 ),
    .I1(\disp/char_selection_2_mux0000_map82 ),
    .O(\disp/char_selection_2_mux0000_map83 )
  );
  defparam \disp/char_selection_2_mux0000302 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_2_mux0000302  (
    .I0(\disp/char_selection_4_cmp_eq0004 ),
    .I1(\disp/char_selection_2_mux0000_map72 ),
    .I2(\disp/char_selection_2_mux0000_map75 ),
    .I3(\disp/char_selection_2_mux0000_map83 ),
    .O(\disp/char_selection_2_mux0000_map85 )
  );
  defparam \disp/char_selection_2_mux0000335 .INIT = 16'hFFEA;
  LUT4 \disp/char_selection_2_mux0000335  (
    .I0(\disp/char_selection_2_mux0000_map19 ),
    .I1(\disp/char_selection_4_cmp_eq0000 ),
    .I2(\disp/char_selection_2_mux0000_map2 ),
    .I3(\disp/char_selection_2_mux0000_map87 ),
    .O(\disp/char_selection [2])
  );
  defparam \disp/char_selection_1_mux000013 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux000013  (
    .I0(ALU_A[21]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_A[1]),
    .I3(\disp/char_selection_4_cmp_eq0002 ),
    .O(\disp/char_selection_1_mux0000_map6 )
  );
  defparam \disp/char_selection_1_mux000018 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux000018  (
    .I0(ALU_A[17]),
    .I1(\disp/char_selection_3_cmp_eq0001 ),
    .I2(ALU_A[13]),
    .I3(\disp/char_selection_3_cmp_eq0002 ),
    .O(\disp/char_selection_1_mux0000_map9 )
  );
  defparam \disp/char_selection_1_mux000030 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux000030  (
    .I0(ALU_A[9]),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(ALU_A[5]),
    .I3(\disp/char_selection_3_cmp_eq0004 ),
    .O(\disp/char_selection_1_mux0000_map13 )
  );
  defparam \disp/char_selection_1_mux000036 .INIT = 4'hE;
  LUT2 \disp/char_selection_1_mux000036  (
    .I0(\disp/char_selection_1_mux0000_map13 ),
    .I1(\disp/char_selection_1_mux0000_map16 ),
    .O(\disp/char_selection_1_mux0000_map17 )
  );
  defparam \disp/char_selection_1_mux000056 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_1_mux000056  (
    .I0(\disp/char_selection_4_cmp_eq0008 ),
    .I1(\disp/char_selection_1_mux0000_map6 ),
    .I2(\disp/char_selection_1_mux0000_map9 ),
    .I3(\disp/char_selection_1_mux0000_map17 ),
    .O(\disp/char_selection_1_mux0000_map19 )
  );
  defparam \disp/char_selection_1_mux000080 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux000080  (
    .I0(\disp/char_selection_3_cmp_eq0003 ),
    .I1(MemDout_wb[9]),
    .I2(\disp/char_selection_3_cmp_eq0002 ),
    .I3(MemDout_wb[13]),
    .O(\disp/char_selection_1_mux0000_map23 )
  );
  defparam \disp/char_selection_1_mux000085 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux000085  (
    .I0(\disp/char_selection_3_cmp_eq0001 ),
    .I1(MemDout_wb[17]),
    .I2(\disp/char_selection_3_cmp_eq0000 ),
    .I3(MemDout_wb[21]),
    .O(\disp/char_selection_1_mux0000_map26 )
  );
  defparam \disp/char_selection_1_mux000097 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux000097  (
    .I0(\disp/char_selection_4_cmp_eq0003 ),
    .I1(MemDout_wb[29]),
    .I2(\disp/char_selection_4_cmp_eq0002 ),
    .I3(MemDout_wb[1]),
    .O(\disp/char_selection_1_mux0000_map30 )
  );
  defparam \disp/char_selection_1_mux0000102 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000102  (
    .I0(\disp/char_selection_4_cmp_eq0001 ),
    .I1(MemDout_wb[25]),
    .I2(\disp/char_selection_3_cmp_eq0004 ),
    .I3(MemDout_wb[5]),
    .O(\disp/char_selection_1_mux0000_map33 )
  );
  defparam \disp/char_selection_1_mux0000103 .INIT = 4'hE;
  LUT2 \disp/char_selection_1_mux0000103  (
    .I0(\disp/char_selection_1_mux0000_map30 ),
    .I1(\disp/char_selection_1_mux0000_map33 ),
    .O(\disp/char_selection_1_mux0000_map34 )
  );
  defparam \disp/char_selection_1_mux0000136 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000136  (
    .I0(ALUResult[21]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALUResult[1]),
    .I3(\disp/char_selection_4_cmp_eq0002 ),
    .O(\disp/char_selection_1_mux0000_map39 )
  );
  defparam \disp/char_selection_1_mux0000141 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000141  (
    .I0(ALUResult[17]),
    .I1(\disp/char_selection_3_cmp_eq0001 ),
    .I2(ALUResult[13]),
    .I3(\disp/char_selection_3_cmp_eq0002 ),
    .O(\disp/char_selection_1_mux0000_map42 )
  );
  defparam \disp/char_selection_1_mux0000153 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000153  (
    .I0(ALUResult[9]),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(ALUResult[5]),
    .I3(\disp/char_selection_3_cmp_eq0004 ),
    .O(\disp/char_selection_1_mux0000_map46 )
  );
  defparam \disp/char_selection_1_mux0000159 .INIT = 4'hE;
  LUT2 \disp/char_selection_1_mux0000159  (
    .I0(\disp/char_selection_1_mux0000_map46 ),
    .I1(\disp/char_selection_1_mux0000_map49 ),
    .O(\disp/char_selection_1_mux0000_map50 )
  );
  defparam \disp/char_selection_1_mux0000179 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_1_mux0000179  (
    .I0(\disp/char_selection_4_cmp_eq0006 ),
    .I1(\disp/char_selection_1_mux0000_map39 ),
    .I2(\disp/char_selection_1_mux0000_map42 ),
    .I3(\disp/char_selection_1_mux0000_map50 ),
    .O(\disp/char_selection_1_mux0000_map52 )
  );
  defparam \disp/char_selection_1_mux0000203 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000203  (
    .I0(ALU_B[21]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_B[1]),
    .I3(\disp/char_selection_4_cmp_eq0002 ),
    .O(\disp/char_selection_1_mux0000_map56 )
  );
  defparam \disp/char_selection_1_mux0000208 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000208  (
    .I0(ALU_B[17]),
    .I1(\disp/char_selection_3_cmp_eq0001 ),
    .I2(ALU_B[13]),
    .I3(\disp/char_selection_3_cmp_eq0002 ),
    .O(\disp/char_selection_1_mux0000_map59 )
  );
  defparam \disp/char_selection_1_mux0000220 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000220  (
    .I0(ALU_B[9]),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(ALU_B[5]),
    .I3(\disp/char_selection_3_cmp_eq0004 ),
    .O(\disp/char_selection_1_mux0000_map63 )
  );
  defparam \disp/char_selection_1_mux0000226 .INIT = 4'hE;
  LUT2 \disp/char_selection_1_mux0000226  (
    .I0(\disp/char_selection_1_mux0000_map63 ),
    .I1(\disp/char_selection_1_mux0000_map66 ),
    .O(\disp/char_selection_1_mux0000_map67 )
  );
  defparam \disp/char_selection_1_mux0000246 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_1_mux0000246  (
    .I0(\disp/char_selection_4_cmp_eq0005 ),
    .I1(\disp/char_selection_1_mux0000_map56 ),
    .I2(\disp/char_selection_1_mux0000_map59 ),
    .I3(\disp/char_selection_1_mux0000_map67 ),
    .O(\disp/char_selection_1_mux0000_map69 )
  );
  defparam \disp/char_selection_1_mux0000264 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000264  (
    .I0(\disp/char_selection_3_cmp_eq0001 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .I2(\disp/char_selection_3_cmp_eq0000 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .O(\disp/char_selection_1_mux0000_map75 )
  );
  defparam \disp/char_selection_1_mux0000276 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000276  (
    .I0(\disp/char_selection_4_cmp_eq0003 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I2(\disp/char_selection_4_cmp_eq0002 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .O(\disp/char_selection_1_mux0000_map79 )
  );
  defparam \disp/char_selection_1_mux0000281 .INIT = 16'hF888;
  LUT4 \disp/char_selection_1_mux0000281  (
    .I0(\disp/char_selection_3_cmp_eq0005 ),
    .I1(JumpFlag[1]),
    .I2(\disp/char_selection_3_cmp_eq0004 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .O(\disp/char_selection_1_mux0000_map82 )
  );
  defparam \disp/char_selection_1_mux0000335 .INIT = 16'hFFEA;
  LUT4 \disp/char_selection_1_mux0000335  (
    .I0(\disp/char_selection_1_mux0000_map19 ),
    .I1(\disp/char_selection_4_cmp_eq0000 ),
    .I2(\disp/char_selection_1_mux0000_map2 ),
    .I3(\disp/char_selection_1_mux0000_map87 ),
    .O(\disp/char_selection [1])
  );
  defparam \disp/char_selection_0_mux00005 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux00005  (
    .I0(\disp/char_selection_4_cmp_eq0002 ),
    .I1(Stall),
    .I2(\disp/char_selection_4_cmp_eq0001 ),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [0]),
    .O(\disp/char_selection_0_mux0000_map3 )
  );
  defparam \disp/char_selection_0_mux000013 .INIT = 16'hA888;
  LUT4 \disp/char_selection_0_mux000013  (
    .I0(\disp/char_selection_4_cmp_eq0000 ),
    .I1(\disp/char_selection_0_mux0000_map3 ),
    .I2(\disp/char_selection_4_cmp_eq0003 ),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(\disp/char_selection_0_mux0000_map5 )
  );
  defparam \disp/char_selection_0_mux000021 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux000021  (
    .I0(ALU_A[20]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_A[16]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_0_mux0000_map8 )
  );
  defparam \disp/char_selection_0_mux000026 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux000026  (
    .I0(ALU_A[12]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALU_A[0]),
    .I3(\disp/char_selection_4_cmp_eq0002 ),
    .O(\disp/char_selection_0_mux0000_map11 )
  );
  defparam \disp/char_selection_0_mux000038 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux000038  (
    .I0(ALU_A[8]),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(ALU_A[4]),
    .I3(\disp/char_selection_3_cmp_eq0004 ),
    .O(\disp/char_selection_0_mux0000_map15 )
  );
  defparam \disp/char_selection_0_mux000044 .INIT = 4'hE;
  LUT2 \disp/char_selection_0_mux000044  (
    .I0(\disp/char_selection_0_mux0000_map15 ),
    .I1(\disp/char_selection_0_mux0000_map18 ),
    .O(\disp/char_selection_0_mux0000_map19 )
  );
  defparam \disp/char_selection_0_mux000064 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_0_mux000064  (
    .I0(\disp/char_selection_4_cmp_eq0008 ),
    .I1(\disp/char_selection_0_mux0000_map8 ),
    .I2(\disp/char_selection_0_mux0000_map11 ),
    .I3(\disp/char_selection_0_mux0000_map19 ),
    .O(\disp/char_selection_0_mux0000_map21 )
  );
  defparam \disp/char_selection_0_mux000088 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux000088  (
    .I0(\disp/char_selection_3_cmp_eq0003 ),
    .I1(MemDout_wb[8]),
    .I2(\disp/char_selection_3_cmp_eq0002 ),
    .I3(MemDout_wb[12]),
    .O(\disp/char_selection_0_mux0000_map25 )
  );
  defparam \disp/char_selection_0_mux000093 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux000093  (
    .I0(\disp/char_selection_3_cmp_eq0001 ),
    .I1(MemDout_wb[16]),
    .I2(\disp/char_selection_3_cmp_eq0000 ),
    .I3(MemDout_wb[20]),
    .O(\disp/char_selection_0_mux0000_map28 )
  );
  defparam \disp/char_selection_0_mux0000105 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000105  (
    .I0(\disp/char_selection_4_cmp_eq0003 ),
    .I1(MemDout_wb[28]),
    .I2(\disp/char_selection_4_cmp_eq0002 ),
    .I3(MemDout_wb[0]),
    .O(\disp/char_selection_0_mux0000_map32 )
  );
  defparam \disp/char_selection_0_mux0000110 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000110  (
    .I0(\disp/char_selection_4_cmp_eq0001 ),
    .I1(MemDout_wb[24]),
    .I2(\disp/char_selection_3_cmp_eq0004 ),
    .I3(MemDout_wb[4]),
    .O(\disp/char_selection_0_mux0000_map35 )
  );
  defparam \disp/char_selection_0_mux0000111 .INIT = 4'hE;
  LUT2 \disp/char_selection_0_mux0000111  (
    .I0(\disp/char_selection_0_mux0000_map32 ),
    .I1(\disp/char_selection_0_mux0000_map35 ),
    .O(\disp/char_selection_0_mux0000_map36 )
  );
  defparam \disp/char_selection_0_mux0000144 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000144  (
    .I0(ALUResult[20]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALUResult[16]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_0_mux0000_map41 )
  );
  defparam \disp/char_selection_0_mux0000149 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000149  (
    .I0(ALUResult[12]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALUResult[0]),
    .I3(\disp/char_selection_4_cmp_eq0002 ),
    .O(\disp/char_selection_0_mux0000_map44 )
  );
  defparam \disp/char_selection_0_mux0000161 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000161  (
    .I0(ALUResult[8]),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(ALUResult[4]),
    .I3(\disp/char_selection_3_cmp_eq0004 ),
    .O(\disp/char_selection_0_mux0000_map48 )
  );
  defparam \disp/char_selection_0_mux0000167 .INIT = 4'hE;
  LUT2 \disp/char_selection_0_mux0000167  (
    .I0(\disp/char_selection_0_mux0000_map48 ),
    .I1(\disp/char_selection_0_mux0000_map51 ),
    .O(\disp/char_selection_0_mux0000_map52 )
  );
  defparam \disp/char_selection_0_mux0000187 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_0_mux0000187  (
    .I0(\disp/char_selection_4_cmp_eq0006 ),
    .I1(\disp/char_selection_0_mux0000_map41 ),
    .I2(\disp/char_selection_0_mux0000_map44 ),
    .I3(\disp/char_selection_0_mux0000_map52 ),
    .O(\disp/char_selection_0_mux0000_map54 )
  );
  defparam \disp/char_selection_0_mux0000211 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000211  (
    .I0(ALU_B[20]),
    .I1(\disp/char_selection_3_cmp_eq0000 ),
    .I2(ALU_B[16]),
    .I3(\disp/char_selection_3_cmp_eq0001 ),
    .O(\disp/char_selection_0_mux0000_map58 )
  );
  defparam \disp/char_selection_0_mux0000216 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000216  (
    .I0(ALU_B[12]),
    .I1(\disp/char_selection_3_cmp_eq0002 ),
    .I2(ALU_B[0]),
    .I3(\disp/char_selection_4_cmp_eq0002 ),
    .O(\disp/char_selection_0_mux0000_map61 )
  );
  defparam \disp/char_selection_0_mux0000228 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000228  (
    .I0(ALU_B[8]),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(ALU_B[4]),
    .I3(\disp/char_selection_3_cmp_eq0004 ),
    .O(\disp/char_selection_0_mux0000_map65 )
  );
  defparam \disp/char_selection_0_mux0000234 .INIT = 4'hE;
  LUT2 \disp/char_selection_0_mux0000234  (
    .I0(\disp/char_selection_0_mux0000_map65 ),
    .I1(\disp/char_selection_0_mux0000_map68 ),
    .O(\disp/char_selection_0_mux0000_map69 )
  );
  defparam \disp/char_selection_0_mux0000254 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_0_mux0000254  (
    .I0(\disp/char_selection_4_cmp_eq0005 ),
    .I1(\disp/char_selection_0_mux0000_map58 ),
    .I2(\disp/char_selection_0_mux0000_map61 ),
    .I3(\disp/char_selection_0_mux0000_map69 ),
    .O(\disp/char_selection_0_mux0000_map71 )
  );
  defparam \disp/char_selection_0_mux0000272 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000272  (
    .I0(\disp/char_selection_3_cmp_eq0002 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\disp/char_selection_3_cmp_eq0001 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .O(\disp/char_selection_0_mux0000_map77 )
  );
  defparam \disp/char_selection_0_mux0000284 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000284  (
    .I0(\disp/char_selection_4_cmp_eq0003 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I2(\disp/char_selection_4_cmp_eq0002 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .O(\disp/char_selection_0_mux0000_map81 )
  );
  defparam \disp/char_selection_0_mux0000289 .INIT = 16'hF888;
  LUT4 \disp/char_selection_0_mux0000289  (
    .I0(\disp/char_selection_4_cmp_eq0001 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .I2(\disp/char_selection_3_cmp_eq0005 ),
    .I3(JumpFlag[0]),
    .O(\disp/char_selection_0_mux0000_map84 )
  );
  defparam \disp/char_selection_0_mux0000342 .INIT = 8'hFE;
  LUT3 \disp/char_selection_0_mux0000342  (
    .I0(\disp/char_selection_0_mux0000_map5 ),
    .I1(\disp/char_selection_0_mux0000_map21 ),
    .I2(\disp/char_selection_0_mux0000_map89 ),
    .O(\disp/char_selection [0])
  );
  defparam \CLKgen/step_key/debounce/Mrom_current_state_q_rom000021 .INIT = 4'hE;
  LUT2 \CLKgen/step_key/debounce/Mrom_current_state_q_rom000021  (
    .I0(\CLKgen/step_key/debounce/state/q [1]),
    .I1(\CLKgen/step_key/debounce/state/q [0]),
    .O(\CLKgen/step_key/debounce/Mrom_current_state_q_rom00001 )
  );
  defparam \CLKgen/step_key/debounce/Madd__add0000_xor<1>11 .INIT = 4'h6;
  LUT2 \CLKgen/step_key/debounce/Madd__add0000_xor<1>11  (
    .I0(\CLKgen/step_key/debounce/counter/q [1]),
    .I1(\CLKgen/step_key/debounce/counter/q [0]),
    .O(\CLKgen/step_key/debounce/_add0000 [1])
  );
  defparam \CLKgen/Mcount_counter_xor<1>11 .INIT = 4'h6;
  LUT2 \CLKgen/Mcount_counter_xor<1>11  (
    .I0(\CLKgen/counter_11 ),
    .I1(\CLKgen/counter_01 ),
    .O(\Result[1] )
  );
  defparam \CLKgen/step_key/debounce/Madd__add0000_xor<2>11 .INIT = 8'h6C;
  LUT3 \CLKgen/step_key/debounce/Madd__add0000_xor<2>11  (
    .I0(\CLKgen/step_key/debounce/counter/q [0]),
    .I1(\CLKgen/step_key/debounce/counter/q [2]),
    .I2(\CLKgen/step_key/debounce/counter/q [1]),
    .O(\CLKgen/step_key/debounce/_add0000 [2])
  );
  defparam \cpu_inst/IF/InstructionROM/dout<22>_SW0 .INIT = 4'hE;
  LUT2 \cpu_inst/IF/InstructionROM/dout<22>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N1442)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<22> .INIT = 16'h0020;
  LUT4 \cpu_inst/IF/InstructionROM/dout<22>  (
    .I0(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(N1442),
    .O(\cpu_inst/Instruction_if[22] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout_and00001 .INIT = 4'h1;
  LUT2 \cpu_inst/IF/InstructionROM/dout_and00001  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .O(\cpu_inst/IF/InstructionROM/dout_and0000 )
  );
  defparam \cpu_inst/ID/Decode/SW1 .INIT = 4'h8;
  LUT2 \cpu_inst/ID/Decode/SW1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I1(\cpu_inst/ID/Decode/N10 ),
    .O(\cpu_inst/MemWrite_id )
  );
  defparam \cpu_inst/ID/Decode/LW1 .INIT = 4'h2;
  LUT2 \cpu_inst/ID/Decode/LW1  (
    .I0(\cpu_inst/ID/Decode/N10 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .O(\cpu_inst/MemRead_id )
  );
  defparam \CLKgen/step_key/debounce/timer_done1 .INIT = 8'h80;
  LUT3 \CLKgen/step_key/debounce/timer_done1  (
    .I0(\CLKgen/step_key/debounce/counter/q [0]),
    .I1(\CLKgen/step_key/debounce/counter/q [1]),
    .I2(\CLKgen/step_key/debounce/counter/q [2]),
    .O(\CLKgen/step_key/debounce/timer_done )
  );
  defparam \CLKgen/step_key/debounce/Mmux_next_state_d21 .INIT = 8'h6C;
  LUT3 \CLKgen/step_key/debounce/Mmux_next_state_d21  (
    .I0(\CLKgen/step_key/debounce/timer_done ),
    .I1(\CLKgen/step_key/debounce/state/q [1]),
    .I2(\CLKgen/step_key/debounce/state/q [0]),
    .O(\CLKgen/step_key/debounce/next_state_d [1])
  );
  defparam \cpu_inst/IF/InstructionROM/dout<28>1 .INIT = 16'hA888;
  LUT4 \cpu_inst/IF/InstructionROM/dout<28>1  (
    .I0(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .I1(\cpu_inst/IF/InstructionROM/Mrom_dout_mux000010 ),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/N42 ),
    .O(\cpu_inst/Instruction_if[28] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<18>1 .INIT = 16'h2000;
  LUT4 \cpu_inst/IF/InstructionROM/dout<18>1  (
    .I0(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(\cpu_inst/Instruction_if[18] )
  );
  defparam \cpu_inst/IF/InstructionROM/Mrom_dout_mux00002911 .INIT = 16'h0020;
  LUT4 \cpu_inst/IF/InstructionROM/Mrom_dout_mux00002911  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/IF/InstructionROM/Mrom_dout_mux000010 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<26>1 .INIT = 16'h2008;
  LUT4 \cpu_inst/IF/InstructionROM/dout<26>1  (
    .I0(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/NextPC_if [3]),
    .O(\cpu_inst/Instruction_if[26] )
  );
  defparam \CLKgen/step_key/debounce/Mmux_next_state_d11 .INIT = 16'h41EB;
  LUT4 \CLKgen/step_key/debounce/Mmux_next_state_d11  (
    .I0(\CLKgen/step_key/debounce/state/q [0]),
    .I1(\CLKgen/step_key/debounce/state/q [1]),
    .I2(\CLKgen/step_key/sync/ff2/q [0]),
    .I3(\CLKgen/step_key/debounce/timer_done ),
    .O(\CLKgen/step_key/debounce/next_state_d [0])
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<2>1 .INIT = 16'h6AAA;
  LUT4 \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<2>1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I2(\cpu_inst/IF/adder_32bits_NextPC/cio [0]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .O(\cpu_inst/NextPC_if [6])
  );
  defparam \cpu_inst/IF/InstructionROM/dout<0> .INIT = 16'hAA02;
  LUT4 \cpu_inst/IF/InstructionROM/dout<0>  (
    .I0(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(N1442),
    .I3(\cpu_inst/IF/N42 ),
    .O(\cpu_inst/Instruction_if[0] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<29>_SW0 .INIT = 8'hB9;
  LUT3 \cpu_inst/IF/InstructionROM/dout<29>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(N1461)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<17> .INIT = 16'h0602;
  LUT4 \cpu_inst/IF/InstructionROM/dout<17>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I2(N1463),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/Instruction_if[17] )
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/adder_4bits_inst/add_inst3/Mxor_s_xo<0>1 .INIT = 4'h6;
  LUT2 \cpu_inst/IF/adder_32bits_NextPC/adder_4bits_inst/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .O(\cpu_inst/NextPC_if [3])
  );
  defparam \cpu_inst/IF/InstructionROM/dout<1> .INIT = 16'h0079;
  LUT4 \cpu_inst/IF/InstructionROM/dout<1>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I3(N1479),
    .O(\cpu_inst/Instruction_if[1] )
  );
  defparam \vga_ctrl/hsync_reg_or0000_SW0 .INIT = 8'hA8;
  LUT3 \vga_ctrl/hsync_reg_or0000_SW0  (
    .I0(\vga_ctrl/pixel_cnt_reg [6]),
    .I1(\vga_ctrl/pixel_cnt_reg [5]),
    .I2(\vga_ctrl/pixel_cnt_reg [4]),
    .O(N1487)
  );
  defparam \vga_ctrl/hsync_reg_or0000 .INIT = 16'hFFEF;
  LUT4 \vga_ctrl/hsync_reg_or0000  (
    .I0(\vga_ctrl/N21 ),
    .I1(\vga_ctrl/pixel_cnt_reg [10]),
    .I2(reset_n_vga_IBUF_6),
    .I3(N1487),
    .O(\vga_ctrl/hsync_reg_or0000_9 )
  );
  defparam \vga_ctrl/vsync_reg_or000013 .INIT = 16'hFFEF;
  LUT4 \vga_ctrl/vsync_reg_or000013  (
    .I0(\vga_ctrl/line_cnt_reg [7]),
    .I1(\vga_ctrl/line_cnt_reg [8]),
    .I2(reset_n_vga_IBUF_6),
    .I3(\vga_ctrl/line_cnt_reg [5]),
    .O(\vga_ctrl/vsync_reg_or0000_map7 )
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/adder_4bits_inst/add_inst3/co1 .INIT = 4'h8;
  LUT2 \cpu_inst/IF/adder_32bits_NextPC/adder_4bits_inst/add_inst3/co1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/IF/adder_32bits_NextPC/cio [0])
  );
  defparam \cpu_inst/IF/InstructionROM/Mrom_dout_mux0000111 .INIT = 8'h40;
  LUT3 \cpu_inst/IF/InstructionROM/Mrom_dout_mux0000111  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/IF/N42 )
  );
  defparam \cpu_inst/ID/Decode/RegWrite31 .INIT = 16'h2000;
  LUT4 \cpu_inst/ID/Decode/RegWrite31  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(\cpu_inst/ID/Decode/N10 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<14> .INIT = 16'h88A8;
  LUT4 \cpu_inst/IF/InstructionROM/dout<14>  (
    .I0(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .I1(\cpu_inst/IF/InstructionROM/Mrom_dout_mux000011 ),
    .I2(\cpu_inst/IF/adder_32bits_NextPC/cio [0]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .O(\cpu_inst/Instruction_if[14] )
  );
  defparam \cpu_inst/ID/Decode/RegWrite_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/ID/Decode/RegWrite_SW0  (
    .I0(\cpu_inst/ID/Decode/N20 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\cpu_inst/ID/Decode/N1 ),
    .I3(\cpu_inst/ID/Decode/N151 ),
    .O(N1534)
  );
  defparam \vga_ctrl/data_en_reg_or000061 .INIT = 16'h8000;
  LUT4 \vga_ctrl/data_en_reg_or000061  (
    .I0(\vga_ctrl/line_cnt_reg [6]),
    .I1(\vga_ctrl/line_cnt_reg [5]),
    .I2(\vga_ctrl/line_cnt_reg [9]),
    .I3(\vga_ctrl/line_cnt_reg [4]),
    .O(\vga_ctrl/N19 )
  );
  defparam \vga_ctrl/line_cnt_reg_or00006 .INIT = 8'h02;
  LUT3 \vga_ctrl/line_cnt_reg_or00006  (
    .I0(\vga_ctrl/N19 ),
    .I1(\vga_ctrl/line_cnt_reg [8]),
    .I2(\vga_ctrl/line_cnt_reg [7]),
    .O(\vga_ctrl/line_cnt_reg_or0000_map3 )
  );
  defparam \vga_ctrl/line_cnt_reg_or000018 .INIT = 16'h0002;
  LUT4 \vga_ctrl/line_cnt_reg_or000018  (
    .I0(\vga_ctrl/line_cnt_reg [0]),
    .I1(\vga_ctrl/line_cnt_reg [1]),
    .I2(\vga_ctrl/line_cnt_reg [3]),
    .I3(\vga_ctrl/line_cnt_reg [2]),
    .O(\vga_ctrl/line_cnt_reg_or0000_map9 )
  );
  defparam \vga_ctrl/line_cnt_reg_or000042 .INIT = 16'hD555;
  LUT4 \vga_ctrl/line_cnt_reg_or000042  (
    .I0(reset_n_vga_IBUF_6),
    .I1(\vga_ctrl/line_cnt_reg_or0000_map3 ),
    .I2(\vga_ctrl/line_cnt_reg_or0000_map9 ),
    .I3(\vga_ctrl/end_of_line ),
    .O(\vga_ctrl/line_cnt_reg_or0000 )
  );
  defparam \vga_ctrl/line_cnt_reg_or0000171 .INIT = 16'h2000;
  LUT4 \vga_ctrl/line_cnt_reg_or0000171  (
    .I0(\vga_ctrl/pixel_cnt_reg [2]),
    .I1(\vga_ctrl/pixel_cnt_reg [9]),
    .I2(\vga_ctrl/pixel_cnt_reg [10]),
    .I3(\vga_ctrl/pixel_cnt_reg [1]),
    .O(\vga_ctrl/line_cnt_reg_or00001_map3 )
  );
  defparam \vga_ctrl/line_cnt_reg_or0000114 .INIT = 8'h02;
  LUT3 \vga_ctrl/line_cnt_reg_or0000114  (
    .I0(\vga_ctrl/pixel_cnt_reg [0]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .I2(\vga_ctrl/pixel_cnt_reg [4]),
    .O(\vga_ctrl/line_cnt_reg_or00001_map7 )
  );
  defparam \vga_ctrl/line_cnt_reg_or0000126 .INIT = 16'h0002;
  LUT4 \vga_ctrl/line_cnt_reg_or0000126  (
    .I0(\vga_ctrl/pixel_cnt_reg [5]),
    .I1(\vga_ctrl/pixel_cnt_reg [6]),
    .I2(\vga_ctrl/pixel_cnt_reg [8]),
    .I3(\vga_ctrl/pixel_cnt_reg [7]),
    .O(\vga_ctrl/line_cnt_reg_or00001_map13 )
  );
  defparam \vga_ctrl/line_cnt_reg_or0000137 .INIT = 8'h80;
  LUT3 \vga_ctrl/line_cnt_reg_or0000137  (
    .I0(\vga_ctrl/line_cnt_reg_or00001_map3 ),
    .I1(\vga_ctrl/line_cnt_reg_or00001_map7 ),
    .I2(\vga_ctrl/line_cnt_reg_or00001_map13 ),
    .O(\vga_ctrl/end_of_line )
  );
  defparam \cpu_inst/EX/ALU/Result_or00193 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result_or00193  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I2(\cpu_inst/EX/ALU/N78 ),
    .I3(\cpu_inst/EX/ALU/N84 ),
    .O(\cpu_inst/EX/ALU/Result_or0019 )
  );
  defparam \vga_ctrl/hsync_reg_or000021 .INIT = 8'hFE;
  LUT3 \vga_ctrl/hsync_reg_or000021  (
    .I0(\vga_ctrl/pixel_cnt_reg [9]),
    .I1(\vga_ctrl/pixel_cnt_reg [8]),
    .I2(\vga_ctrl/pixel_cnt_reg [7]),
    .O(\vga_ctrl/N21 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<9>111 .INIT = 8'hFE;
  LUT3 \vga_ctrl/Msub_y_pos_xor<9>111  (
    .I0(\vga_ctrl/line_cnt_reg [1]),
    .I1(\vga_ctrl/line_cnt_reg [0]),
    .I2(\vga_ctrl/line_cnt_reg [2]),
    .O(\vga_ctrl/N11 )
  );
  defparam \vga_ctrl/data_en_reg_or000041 .INIT = 16'hC9C8;
  LUT4 \vga_ctrl/data_en_reg_or000041  (
    .I0(\vga_ctrl/line_cnt_reg [8]),
    .I1(\vga_ctrl/line_cnt_reg [9]),
    .I2(\vga_ctrl/line_cnt_reg [7]),
    .I3(\vga_ctrl/N10 ),
    .O(\vga_ctrl/N4 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<6>11 .INIT = 16'h0111;
  LUT4 \vga_ctrl/Msub_y_pos_xor<6>11  (
    .I0(\vga_ctrl/line_cnt_reg [6]),
    .I1(\vga_ctrl/line_cnt_reg [5]),
    .I2(\vga_ctrl/line_cnt_reg [4]),
    .I3(N1611),
    .O(\vga_ctrl/N10 )
  );
  defparam \vga_ctrl/data_en_reg_or000021 .INIT = 8'hA8;
  LUT3 \vga_ctrl/data_en_reg_or000021  (
    .I0(\vga_ctrl/N19 ),
    .I1(\vga_ctrl/line_cnt_reg [3]),
    .I2(\vga_ctrl/N11 ),
    .O(\vga_ctrl/data_en_reg_or0000_map1 )
  );
  defparam \vga_ctrl/data_en_reg_or000016 .INIT = 16'h0002;
  LUT4 \vga_ctrl/data_en_reg_or000016  (
    .I0(\vga_ctrl/N2 ),
    .I1(\vga_ctrl/pixel_cnt_reg [8]),
    .I2(\vga_ctrl/pixel_cnt_reg [10]),
    .I3(\vga_ctrl/pixel_cnt_reg [9]),
    .O(\vga_ctrl/data_en_reg_or0000_map7 )
  );
  defparam \vga_ctrl/data_en_reg_or000029 .INIT = 16'hFFEA;
  LUT4 \vga_ctrl/data_en_reg_or000029  (
    .I0(\vga_ctrl/pixel_cnt_reg [5]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .I2(\vga_ctrl/pixel_cnt_reg [4]),
    .I3(\vga_ctrl/pixel_cnt_reg [6]),
    .O(\vga_ctrl/data_en_reg_or0000_map11 )
  );
  defparam \vga_ctrl/data_en_reg_or000043 .INIT = 16'hAF8F;
  LUT4 \vga_ctrl/data_en_reg_or000043  (
    .I0(\vga_ctrl/pixel_cnt_reg [10]),
    .I1(\vga_ctrl/data_en_reg_or0000_map11 ),
    .I2(reset_n_vga_IBUF_6),
    .I3(\vga_ctrl/N21 ),
    .O(\vga_ctrl/data_en_reg_or0000_map15 )
  );
  defparam \vga_ctrl/data_en_reg_or000063 .INIT = 16'hFFFE;
  LUT4 \vga_ctrl/data_en_reg_or000063  (
    .I0(\vga_ctrl/N4 ),
    .I1(\vga_ctrl/data_en_reg_or0000_map1 ),
    .I2(\vga_ctrl/data_en_reg_or0000_map7 ),
    .I3(\vga_ctrl/data_en_reg_or0000_map15 ),
    .O(\vga_ctrl/data_en_reg_or0000 )
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq000911 .INIT = 8'h02;
  LUT3 \cpu_inst/EX/ALU/Result_cmp_eq000911  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [7]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [5]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [6]),
    .O(\cpu_inst/EX/ALU/N201 )
  );
  defparam \cpu_inst/EX/RegWriteAddr_ex<4>1 .INIT = 4'h8;
  LUT2 \cpu_inst/EX/RegWriteAddr_ex<4>1  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [0]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(\cpu_inst/RegWriteAddr_ex [4])
  );
  defparam \cpu_inst/EX/RegWriteAddr_ex<3>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/RegWriteAddr_ex<3>1  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [3]),
    .I2(\cpu_inst/dffr_IDEX_Imm/q[14] ),
    .O(\cpu_inst/RegWriteAddr_ex [3])
  );
  defparam \cpu_inst/EX/RegWriteAddr_ex<2>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/RegWriteAddr_ex<2>1  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [2]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(\cpu_inst/RegWriteAddr_ex [2])
  );
  defparam \cpu_inst/EX/RegWriteAddr_ex<1>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/RegWriteAddr_ex<1>1  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [1]),
    .I2(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .O(\cpu_inst/RegWriteAddr_ex [1])
  );
  defparam \cpu_inst/stall_reset1 .INIT = 4'hD;
  LUT2 \cpu_inst/stall_reset1  (
    .I0(reset_n_IBUF_1),
    .I1(Stall),
    .O(\cpu_inst/stall_reset )
  );
  defparam \cpu_inst/EX/RegWriteAddr_ex<0>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/RegWriteAddr_ex<0>1  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [0]),
    .I2(\cpu_inst/dffr_IDEX_Imm/q[11] ),
    .O(\cpu_inst/RegWriteAddr_ex [0])
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall26 .INIT = 16'h9009;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/stall26  (
    .I0(\cpu_inst/RegWriteAddr_ex [2]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .I2(\cpu_inst/RegWriteAddr_ex [1]),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .O(\cpu_inst/ID/Hazard_detector_inst/stall_map10 )
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall102 .INIT = 16'h9009;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/stall102  (
    .I0(\cpu_inst/RegWriteAddr_ex [3]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .I2(\cpu_inst/RegWriteAddr_ex [1]),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .O(\cpu_inst/ID/Hazard_detector_inst/stall_map35 )
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall122 .INIT = 16'h0009;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/stall122  (
    .I0(\cpu_inst/RegWriteAddr_ex [0]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .I2(\cpu_inst/RegWriteAddr_ex [4]),
    .I3(\cpu_inst/RegWriteAddr_ex [2]),
    .O(\cpu_inst/ID/Hazard_detector_inst/stall_map44 )
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall123 .INIT = 4'h8;
  LUT2 \cpu_inst/ID/Hazard_detector_inst/stall123  (
    .I0(\cpu_inst/ID/Hazard_detector_inst/stall_map35 ),
    .I1(\cpu_inst/ID/Hazard_detector_inst/stall_map44 ),
    .O(\cpu_inst/ID/Hazard_detector_inst/stall_map45 )
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall150 .INIT = 16'hA888;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/stall150  (
    .I0(\cpu_inst/dffr_IDEX_WB/q [1]),
    .I1(\cpu_inst/ID/Hazard_detector_inst/stall_map45 ),
    .I2(\cpu_inst/ID/Hazard_detector_inst/stall_map10 ),
    .I3(\cpu_inst/ID/Hazard_detector_inst/stall_map23 ),
    .O(Stall)
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq00081 .INIT = 4'h8;
  LUT2 \cpu_inst/EX/ALU/Result_cmp_eq00081  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I1(\cpu_inst/EX/ALU/N202 ),
    .O(\cpu_inst/EX/ALU/Result_cmp_eq0008 )
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq00061 .INIT = 8'h80;
  LUT3 \cpu_inst/EX/ALU/Result_cmp_eq00061  (
    .I0(N9365),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .O(\cpu_inst/EX/ALU/Result_cmp_eq0006 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>111 .INIT = 8'hFE;
  LUT3 \cpu_inst/EX/ALU/Result<16>111  (
    .I0(N9366),
    .I1(\cpu_inst/EX/ALU/N202 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0006 ),
    .O(\cpu_inst/EX/ALU/Result<31>_map10 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<3>121 .INIT = 8'h40;
  LUT3 \cpu_inst/ID/Decode/ALUCode<3>121  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(N9368),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .O(\cpu_inst/ID/Decode/N161 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<3>_SW0 .INIT = 16'h5501;
  LUT4 \cpu_inst/ID/Decode/ALUCode<3>_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I2(\cpu_inst/ID/Decode/N161 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(N1782)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<3>_SW1 .INIT = 8'hF7;
  LUT3 \cpu_inst/ID/Decode/ALUCode<3>_SW1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(N1783)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<3> .INIT = 16'h0415;
  LUT4 \cpu_inst/ID/Decode/ALUCode<3>  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I2(N1783),
    .I3(N1782),
    .O(\cpu_inst/ALUCode_id [3])
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq00011 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result_cmp_eq00011  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I1(N9465),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .O(\cpu_inst/EX/ALU/Result_cmp_eq0001 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>24 .INIT = 16'h6040;
  LUT4 \cpu_inst/ID/Decode/ALUCode<0>24  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I2(\cpu_inst/ID/Decode/ALUCode<0>_map7 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(\cpu_inst/ID/Decode/ALUCode<0>_map8 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>48 .INIT = 16'h0060;
  LUT4 \cpu_inst/ID/Decode/ALUCode<0>48  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .O(\cpu_inst/ID/Decode/ALUCode<0>_map16 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>90 .INIT = 16'h029A;
  LUT4 \cpu_inst/ID/Decode/ALUCode<0>90  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .O(\cpu_inst/ID/Decode/ALUCode<0>_map30 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>22 .INIT = 4'h2;
  LUT2 \cpu_inst/ID/Decode/ALUCode<0>22  (
    .I0(N9370),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .O(\cpu_inst/ID/Decode/N9 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>100 .INIT = 4'h1;
  LUT2 \cpu_inst/ID/Decode/ALUCode<1>100  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .O(\cpu_inst/ID/Decode/ALUCode<1>_map27 )
  );
  defparam \cpu_inst/ID/Decode/SLL4 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/Decode/SLL4  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .O(\cpu_inst/ID/Decode/SLL_map2 )
  );
  defparam \cpu_inst/ID/Decode/SLL60 .INIT = 4'h8;
  LUT2 \cpu_inst/ID/Decode/SLL60  (
    .I0(\cpu_inst/ID/Decode/SLL_map15 ),
    .I1(N9369),
    .O(\cpu_inst/ID/Decode/SLL )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>61 .INIT = 4'h8;
  LUT2 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>61  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/N103 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>41 .INIT = 4'h2;
  LUT2 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>41  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/N97 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>11 .INIT = 4'h1;
  LUT2 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>11  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/N85 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>11 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>11  (
    .I0(ALU_A[1]),
    .I1(ALU_B[29]),
    .I2(ALU_B[27]),
    .O(\cpu_inst/EX/ALU/N44 )
  );
  defparam \cpu_inst/RegWriteData_wb<31>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<31>1  (
    .I0(MemDout_wb[31]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [31]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [31])
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<30>1 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<30>1  (
    .I0(ALU_A[1]),
    .I1(ALU_A[0]),
    .I2(N9449),
    .I3(ALU_B[31]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<2>16 .INIT = 16'h2A08;
  LUT4 \cpu_inst/ID/Decode/ALUCode<2>16  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(\cpu_inst/ID/Decode/ALUCode<2>_map5 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<2>33 .INIT = 8'h2B;
  LUT3 \cpu_inst/ID/Decode/ALUCode<2>33  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .O(\cpu_inst/ID/Decode/ALUCode<2>_map13 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<2>39 .INIT = 8'h40;
  LUT3 \cpu_inst/ID/Decode/ALUCode<2>39  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .O(\cpu_inst/ID/Decode/ALUCode<2>_map16 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<2>69 .INIT = 8'h01;
  LUT3 \cpu_inst/ID/Decode/ALUCode<2>69  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .O(\cpu_inst/ID/Decode/ALUCode<2>_map23 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<2>102 .INIT = 8'h32;
  LUT3 \cpu_inst/ID/Decode/ALUCode<2>102  (
    .I0(N9378),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I2(\cpu_inst/ID/Decode/ALUCode<2>_map5 ),
    .O(\cpu_inst/ALUCode_id [2])
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<9>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<9>1  (
    .I0(ALU_A[1]),
    .I1(N9400),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[11] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[9] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<8>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<8>1  (
    .I0(ALU_A[1]),
    .I1(N9401),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[8] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<11>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<11>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] ),
    .I2(N9421),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[11] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<10>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<10>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[12] ),
    .I2(N9422),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[10] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<4>11 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<4>11  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[8] ),
    .O(\cpu_inst/EX/ALU/N55 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>11 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>11  (
    .I0(ALU_A[0]),
    .I1(ALU_B[1]),
    .I2(ALU_B[2]),
    .O(\cpu_inst/EX/ALU/N46 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>11 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>11  (
    .I0(ALU_A[0]),
    .I1(ALU_B[0]),
    .I2(ALU_B[1]),
    .O(\cpu_inst/EX/ALU/N45 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<62> .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<62>  (
    .I0(ALU_B[31]),
    .I1(ALU_A[0]),
    .I2(ALU_A[1]),
    .I3(N2190),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[62] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<23>_SW0 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<23>_SW0  (
    .I0(ALU_A[1]),
    .I1(ALU_B[21]),
    .I2(ALU_B[23]),
    .O(N2192)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<23>_SW1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<23>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[22]),
    .I2(ALU_B[20]),
    .O(N2193)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<20>_SW1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<20>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[19]),
    .I2(ALU_B[17]),
    .O(N2202)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>18 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>18  (
    .I0(ALU_A[1]),
    .I1(ALU_B[26]),
    .I2(ALU_B[24]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>1_map4 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>213 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>213  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[23]),
    .I3(ALU_B[25]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>2_map5 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>228 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>228  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[26]),
    .I3(ALU_B[24]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>2_map11 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>213 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>213  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[22]),
    .I3(ALU_B[24]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>2_map5 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>228 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>228  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[25]),
    .I3(ALU_B[23]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>2_map11 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>313 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>313  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[21]),
    .I3(ALU_B[23]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>3_map5 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>328 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>328  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[24]),
    .I3(ALU_B[22]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>3_map11 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0031_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0031_Result1  (
    .I0(\cpu_inst/RtData_id [0]),
    .I1(\cpu_inst/JrAddr [0]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0031 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0030_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0030_Result1  (
    .I0(\cpu_inst/RtData_id [1]),
    .I1(\cpu_inst/JrAddr [1]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0030 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0029_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0029_Result1  (
    .I0(\cpu_inst/RtData_id [2]),
    .I1(\cpu_inst/JrAddr [2]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0029 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0028_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0028_Result1  (
    .I0(\cpu_inst/RtData_id [3]),
    .I1(\cpu_inst/JrAddr [3]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0028 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0026_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0026_Result1  (
    .I0(\cpu_inst/RtData_id [5]),
    .I1(\cpu_inst/JrAddr [5]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0026 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0025_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0025_Result1  (
    .I0(\cpu_inst/RtData_id [6]),
    .I1(\cpu_inst/JrAddr [6]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0025 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0023_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0023_Result1  (
    .I0(\cpu_inst/RtData_id [8]),
    .I1(\cpu_inst/JrAddr [8]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0023 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0022_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0022_Result1  (
    .I0(\cpu_inst/RtData_id [9]),
    .I1(\cpu_inst/JrAddr [9]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0022 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0021_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0021_Result1  (
    .I0(\cpu_inst/RtData_id [10]),
    .I1(\cpu_inst/JrAddr [10]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0021 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0020_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0020_Result1  (
    .I0(\cpu_inst/RtData_id [11]),
    .I1(\cpu_inst/JrAddr [11]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0020 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0019_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0019_Result1  (
    .I0(\cpu_inst/RtData_id [12]),
    .I1(\cpu_inst/JrAddr [12]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0019 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0018_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0018_Result1  (
    .I0(\cpu_inst/RtData_id [13]),
    .I1(\cpu_inst/JrAddr [13]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0018 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0017_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0017_Result1  (
    .I0(\cpu_inst/RtData_id [14]),
    .I1(\cpu_inst/JrAddr [14]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0017 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0016_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0016_Result1  (
    .I0(\cpu_inst/RtData_id [15]),
    .I1(\cpu_inst/JrAddr [15]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0016 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0015_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0015_Result1  (
    .I0(\cpu_inst/RtData_id [16]),
    .I1(\cpu_inst/JrAddr [16]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0015 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0014_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0014_Result1  (
    .I0(\cpu_inst/RtData_id [17]),
    .I1(\cpu_inst/JrAddr [17]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0014 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0013_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0013_Result1  (
    .I0(\cpu_inst/RtData_id [18]),
    .I1(\cpu_inst/JrAddr [18]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0013 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0012_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0012_Result1  (
    .I0(\cpu_inst/RtData_id [19]),
    .I1(\cpu_inst/JrAddr [19]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0012 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0011_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0011_Result1  (
    .I0(\cpu_inst/RtData_id [20]),
    .I1(\cpu_inst/JrAddr [20]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0011 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0010_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0010_Result1  (
    .I0(\cpu_inst/RtData_id [21]),
    .I1(\cpu_inst/JrAddr [21]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0010 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0009_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0009_Result1  (
    .I0(\cpu_inst/RtData_id [22]),
    .I1(\cpu_inst/JrAddr [22]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0009 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0008_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0008_Result1  (
    .I0(\cpu_inst/RtData_id [23]),
    .I1(\cpu_inst/JrAddr [23]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0008 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0007_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0007_Result1  (
    .I0(\cpu_inst/RtData_id [24]),
    .I1(\cpu_inst/JrAddr [24]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0007 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0006_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0006_Result1  (
    .I0(\cpu_inst/RtData_id [25]),
    .I1(\cpu_inst/JrAddr [25]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0006 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0005_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0005_Result1  (
    .I0(\cpu_inst/RtData_id [26]),
    .I1(\cpu_inst/JrAddr [26]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0005 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0004_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0004_Result1  (
    .I0(\cpu_inst/RtData_id [27]),
    .I1(\cpu_inst/JrAddr [27]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0004 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0003_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0003_Result1  (
    .I0(\cpu_inst/RtData_id [28]),
    .I1(\cpu_inst/JrAddr [28]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0003 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0002_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0002_Result1  (
    .I0(\cpu_inst/RtData_id [29]),
    .I1(\cpu_inst/JrAddr [29]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0002 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0001_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0001_Result1  (
    .I0(\cpu_inst/RtData_id [30]),
    .I1(\cpu_inst/JrAddr [30]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0001 )
  );
  defparam \cpu_inst/ID/RtData_id<9>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<9>1  (
    .I0(\cpu_inst/RegWriteData_wb [9]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [9]),
    .O(\cpu_inst/RtData_id [9])
  );
  defparam \cpu_inst/ID/RtData_id<8>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<8>1  (
    .I0(\cpu_inst/RegWriteData_wb [8]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [8]),
    .O(\cpu_inst/RtData_id [8])
  );
  defparam \cpu_inst/ID/RtData_id<7>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<7>1  (
    .I0(\cpu_inst/RegWriteData_wb [7]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [7]),
    .O(\cpu_inst/RtData_id [7])
  );
  defparam \cpu_inst/ID/RtData_id<6>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<6>1  (
    .I0(\cpu_inst/RegWriteData_wb [6]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [6]),
    .O(\cpu_inst/RtData_id [6])
  );
  defparam \cpu_inst/ID/RtData_id<5>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<5>1  (
    .I0(\cpu_inst/RegWriteData_wb [5]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [5]),
    .O(\cpu_inst/RtData_id [5])
  );
  defparam \cpu_inst/ID/RtData_id<4>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<4>1  (
    .I0(\cpu_inst/RegWriteData_wb [4]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(N9397),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [4]),
    .O(\cpu_inst/RtData_id [4])
  );
  defparam \cpu_inst/ID/RtData_id<3>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<3>1  (
    .I0(\cpu_inst/RegWriteData_wb [3]),
    .I1(N9372),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [3]),
    .O(\cpu_inst/RtData_id [3])
  );
  defparam \cpu_inst/ID/RtData_id<30>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<30>1  (
    .I0(\cpu_inst/RegWriteData_wb [30]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [30]),
    .O(\cpu_inst/RtData_id [30])
  );
  defparam \cpu_inst/ID/RtData_id<2>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<2>1  (
    .I0(\cpu_inst/RegWriteData_wb [2]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [2]),
    .O(\cpu_inst/RtData_id [2])
  );
  defparam \cpu_inst/ID/RtData_id<29>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<29>1  (
    .I0(\cpu_inst/RegWriteData_wb [29]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [29]),
    .O(\cpu_inst/RtData_id [29])
  );
  defparam \cpu_inst/ID/RtData_id<28>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<28>1  (
    .I0(\cpu_inst/RegWriteData_wb [28]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [28]),
    .O(\cpu_inst/RtData_id [28])
  );
  defparam \cpu_inst/ID/RtData_id<27>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<27>1  (
    .I0(\cpu_inst/RegWriteData_wb [27]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [27]),
    .O(\cpu_inst/RtData_id [27])
  );
  defparam \cpu_inst/ID/RtData_id<26>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<26>1  (
    .I0(\cpu_inst/RegWriteData_wb [26]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [26]),
    .O(\cpu_inst/RtData_id [26])
  );
  defparam \cpu_inst/ID/RtData_id<25>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<25>1  (
    .I0(\cpu_inst/RegWriteData_wb [25]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [25]),
    .O(\cpu_inst/RtData_id [25])
  );
  defparam \cpu_inst/ID/RtData_id<24>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<24>1  (
    .I0(\cpu_inst/RegWriteData_wb [24]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [24]),
    .O(\cpu_inst/RtData_id [24])
  );
  defparam \cpu_inst/ID/RtData_id<23>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<23>1  (
    .I0(\cpu_inst/RegWriteData_wb [23]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [23]),
    .O(\cpu_inst/RtData_id [23])
  );
  defparam \cpu_inst/ID/RtData_id<22>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<22>1  (
    .I0(\cpu_inst/RegWriteData_wb [22]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [22]),
    .O(\cpu_inst/RtData_id [22])
  );
  defparam \cpu_inst/ID/RtData_id<21>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<21>1  (
    .I0(\cpu_inst/RegWriteData_wb [21]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [21]),
    .O(\cpu_inst/RtData_id [21])
  );
  defparam \cpu_inst/ID/RtData_id<20>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<20>1  (
    .I0(\cpu_inst/RegWriteData_wb [20]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [20]),
    .O(\cpu_inst/RtData_id [20])
  );
  defparam \cpu_inst/ID/RtData_id<1>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<1>1  (
    .I0(\cpu_inst/RegWriteData_wb [1]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [1]),
    .O(\cpu_inst/RtData_id [1])
  );
  defparam \cpu_inst/ID/RtData_id<19>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<19>1  (
    .I0(\cpu_inst/RegWriteData_wb [19]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [19]),
    .O(\cpu_inst/RtData_id [19])
  );
  defparam \cpu_inst/ID/RtData_id<18>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<18>1  (
    .I0(\cpu_inst/RegWriteData_wb [18]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [18]),
    .O(\cpu_inst/RtData_id [18])
  );
  defparam \cpu_inst/ID/RtData_id<17>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<17>1  (
    .I0(\cpu_inst/RegWriteData_wb [17]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [17]),
    .O(\cpu_inst/RtData_id [17])
  );
  defparam \cpu_inst/ID/RtData_id<16>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<16>1  (
    .I0(\cpu_inst/RegWriteData_wb [16]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [16]),
    .O(\cpu_inst/RtData_id [16])
  );
  defparam \cpu_inst/ID/RtData_id<15>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<15>1  (
    .I0(\cpu_inst/RegWriteData_wb [15]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [15]),
    .O(\cpu_inst/RtData_id [15])
  );
  defparam \cpu_inst/ID/RtData_id<14>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<14>1  (
    .I0(\cpu_inst/RegWriteData_wb [14]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [14]),
    .O(\cpu_inst/RtData_id [14])
  );
  defparam \cpu_inst/ID/RtData_id<13>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<13>1  (
    .I0(\cpu_inst/RegWriteData_wb [13]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [13]),
    .O(\cpu_inst/RtData_id [13])
  );
  defparam \cpu_inst/ID/RtData_id<12>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<12>1  (
    .I0(\cpu_inst/RegWriteData_wb [12]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [12]),
    .O(\cpu_inst/RtData_id [12])
  );
  defparam \cpu_inst/ID/RtData_id<11>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<11>1  (
    .I0(\cpu_inst/RegWriteData_wb [11]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [11]),
    .O(\cpu_inst/RtData_id [11])
  );
  defparam \cpu_inst/ID/RtData_id<10>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<10>1  (
    .I0(\cpu_inst/RegWriteData_wb [10]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [10]),
    .O(\cpu_inst/RtData_id [10])
  );
  defparam \cpu_inst/ID/RtData_id<0>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<0>1  (
    .I0(\cpu_inst/RegWriteData_wb [0]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [0]),
    .O(\cpu_inst/RtData_id [0])
  );
  defparam \cpu_inst/ID/RsData_id<9>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<9>1  (
    .I0(\cpu_inst/RegWriteData_wb [9]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [9]),
    .O(\cpu_inst/JrAddr [9])
  );
  defparam \cpu_inst/ID/RsData_id<8>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<8>1  (
    .I0(\cpu_inst/RegWriteData_wb [8]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [8]),
    .O(\cpu_inst/JrAddr [8])
  );
  defparam \cpu_inst/ID/RsData_id<7>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<7>1  (
    .I0(\cpu_inst/RegWriteData_wb [7]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [7]),
    .O(\cpu_inst/JrAddr [7])
  );
  defparam \cpu_inst/ID/RsData_id<6>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<6>1  (
    .I0(\cpu_inst/RegWriteData_wb [6]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [6]),
    .O(\cpu_inst/JrAddr [6])
  );
  defparam \cpu_inst/ID/RsData_id<5>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<5>1  (
    .I0(\cpu_inst/RegWriteData_wb [5]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [5]),
    .O(\cpu_inst/JrAddr [5])
  );
  defparam \cpu_inst/ID/RsData_id<4>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<4>1  (
    .I0(\cpu_inst/RegWriteData_wb [4]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [4]),
    .O(\cpu_inst/JrAddr [4])
  );
  defparam \cpu_inst/ID/RsData_id<3>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<3>1  (
    .I0(\cpu_inst/RegWriteData_wb [3]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [3]),
    .O(\cpu_inst/JrAddr [3])
  );
  defparam \cpu_inst/ID/RsData_id<30>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<30>1  (
    .I0(\cpu_inst/RegWriteData_wb [30]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [30]),
    .O(\cpu_inst/JrAddr [30])
  );
  defparam \cpu_inst/ID/RsData_id<2>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<2>1  (
    .I0(\cpu_inst/RegWriteData_wb [2]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [2]),
    .O(\cpu_inst/JrAddr [2])
  );
  defparam \cpu_inst/ID/RsData_id<29>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<29>1  (
    .I0(\cpu_inst/RegWriteData_wb [29]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [29]),
    .O(\cpu_inst/JrAddr [29])
  );
  defparam \cpu_inst/ID/RsData_id<28>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<28>1  (
    .I0(\cpu_inst/RegWriteData_wb [28]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [28]),
    .O(\cpu_inst/JrAddr [28])
  );
  defparam \cpu_inst/ID/RsData_id<27>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<27>1  (
    .I0(\cpu_inst/RegWriteData_wb [27]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [27]),
    .O(\cpu_inst/JrAddr [27])
  );
  defparam \cpu_inst/ID/RsData_id<26>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<26>1  (
    .I0(\cpu_inst/RegWriteData_wb [26]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [26]),
    .O(\cpu_inst/JrAddr [26])
  );
  defparam \cpu_inst/ID/RsData_id<25>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<25>1  (
    .I0(\cpu_inst/RegWriteData_wb [25]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [25]),
    .O(\cpu_inst/JrAddr [25])
  );
  defparam \cpu_inst/ID/RsData_id<24>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<24>1  (
    .I0(\cpu_inst/RegWriteData_wb [24]),
    .I1(N9371),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [24]),
    .O(\cpu_inst/JrAddr [24])
  );
  defparam \cpu_inst/ID/RsData_id<23>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<23>1  (
    .I0(\cpu_inst/RegWriteData_wb [23]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [23]),
    .O(\cpu_inst/JrAddr [23])
  );
  defparam \cpu_inst/ID/RsData_id<22>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<22>1  (
    .I0(\cpu_inst/RegWriteData_wb [22]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [22]),
    .O(\cpu_inst/JrAddr [22])
  );
  defparam \cpu_inst/ID/RsData_id<21>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<21>1  (
    .I0(\cpu_inst/RegWriteData_wb [21]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [21]),
    .O(\cpu_inst/JrAddr [21])
  );
  defparam \cpu_inst/ID/RsData_id<20>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<20>1  (
    .I0(\cpu_inst/RegWriteData_wb [20]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [20]),
    .O(\cpu_inst/JrAddr [20])
  );
  defparam \cpu_inst/ID/RsData_id<1>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<1>1  (
    .I0(\cpu_inst/RegWriteData_wb [1]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [1]),
    .O(\cpu_inst/JrAddr [1])
  );
  defparam \cpu_inst/ID/RsData_id<19>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<19>1  (
    .I0(\cpu_inst/RegWriteData_wb [19]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [19]),
    .O(\cpu_inst/JrAddr [19])
  );
  defparam \cpu_inst/ID/RsData_id<18>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<18>1  (
    .I0(\cpu_inst/RegWriteData_wb [18]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [18]),
    .O(\cpu_inst/JrAddr [18])
  );
  defparam \cpu_inst/ID/RsData_id<17>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<17>1  (
    .I0(\cpu_inst/RegWriteData_wb [17]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [17]),
    .O(\cpu_inst/JrAddr [17])
  );
  defparam \cpu_inst/ID/RsData_id<16>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<16>1  (
    .I0(\cpu_inst/RegWriteData_wb [16]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(N9396),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [16]),
    .O(\cpu_inst/JrAddr [16])
  );
  defparam \cpu_inst/ID/RsData_id<15>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<15>1  (
    .I0(\cpu_inst/RegWriteData_wb [15]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [15]),
    .O(\cpu_inst/JrAddr [15])
  );
  defparam \cpu_inst/ID/RsData_id<14>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<14>1  (
    .I0(\cpu_inst/RegWriteData_wb [14]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [14]),
    .O(\cpu_inst/JrAddr [14])
  );
  defparam \cpu_inst/ID/RsData_id<13>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<13>1  (
    .I0(\cpu_inst/RegWriteData_wb [13]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [13]),
    .O(\cpu_inst/JrAddr [13])
  );
  defparam \cpu_inst/ID/RsData_id<12>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<12>1  (
    .I0(\cpu_inst/RegWriteData_wb [12]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [12]),
    .O(\cpu_inst/JrAddr [12])
  );
  defparam \cpu_inst/ID/RsData_id<11>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<11>1  (
    .I0(\cpu_inst/RegWriteData_wb [11]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [11]),
    .O(\cpu_inst/JrAddr [11])
  );
  defparam \cpu_inst/ID/RsData_id<10>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<10>1  (
    .I0(\cpu_inst/RegWriteData_wb [10]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [10]),
    .O(\cpu_inst/JrAddr [10])
  );
  defparam \cpu_inst/ID/RsData_id<0>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<0>1  (
    .I0(\cpu_inst/RegWriteData_wb [0]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [0]),
    .O(\cpu_inst/JrAddr [0])
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .I3(N2467),
    .O(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000_15 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RsSel23 .INIT = 16'h4100;
  LUT4 \cpu_inst/ID/RsSel_RtSel_inst/RsSel23  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .I3(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_map6 ),
    .O(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_map9 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RsSel52 .INIT = 16'h8241;
  LUT4 \cpu_inst/ID/RsSel_RtSel_inst/RsSel52  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .I3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .O(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_map20 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RtSel8 .INIT = 4'h9;
  LUT2 \cpu_inst/ID/RsSel_RtSel_inst/RtSel8  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [3]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .O(\cpu_inst/ID/RsSel_RtSel_inst/RtSel_map4 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RtSel42 .INIT = 16'h8421;
  LUT4 \cpu_inst/ID/RsSel_RtSel_inst/RtSel42  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [1]),
    .I3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [2]),
    .O(\cpu_inst/ID/RsSel_RtSel_inst/RtSel_map17 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RtSel61 .INIT = 16'h2002;
  LUT4 \cpu_inst/ID/RsSel_RtSel_inst/RtSel61  (
    .I0(\cpu_inst/dffr_MEMWB_WB/q [0]),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [0]),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .O(\cpu_inst/ID/RsSel_RtSel_inst/RtSel_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>11 .INIT = 16'h0400;
  LUT4 \cpu_inst/EX/ALU/Result<4>11  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/EX/ALU/Result_or0018 ),
    .I3(\cpu_inst/EX/ALU/N201 ),
    .O(\cpu_inst/EX/ALU/N95 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<56>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<56>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .I2(N9447),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[56] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<55>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<55>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[55] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<54>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<54>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .I2(N9410),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[54] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<53>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<53>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] ),
    .I2(N9411),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[53] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<51>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<51>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[51] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<49>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<49>1  (
    .I0(ALU_A[2]),
    .I1(N9412),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[49] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<48>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<48>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[48] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<47>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<47>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[47] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<27>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<27>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[27]),
    .I2(ALU_B[28]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<25>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<25>1  (
    .I0(ALU_A[0]),
    .I1(N9454),
    .I2(ALU_B[26]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[25] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<19>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<19>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[19]),
    .I2(ALU_B[20]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[19] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<6>11 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<6>11  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[12] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[8] ),
    .O(\cpu_inst/EX/ALU/N50 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<27>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<27>1  (
    .I0(ALU_A[1]),
    .I1(N9404),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<23>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<23>1  (
    .I0(ALU_A[1]),
    .I1(N9405),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[25] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<22>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<22>1  (
    .I0(ALU_A[1]),
    .I1(N9445),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[24] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<19>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<19>1  (
    .I0(ALU_A[1]),
    .I1(N9406),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[19] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<17>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<17>1  (
    .I0(ALU_A[1]),
    .I1(N9407),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[19] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<14>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<14>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[16] ),
    .I2(N9444),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<11>11 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<11>11  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ),
    .O(\cpu_inst/EX/ALU/N12 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<45>_SW0 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<45>_SW0  (
    .I0(ALU_A[1]),
    .I1(N9409),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[15] ),
    .O(N2649)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<45> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<45>  (
    .I0(ALU_A[2]),
    .I1(N2649),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[45] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<44>_SW0 .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<44>_SW0  (
    .I0(ALU_A[1]),
    .I1(N9431),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[14] ),
    .O(N2651)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<43> .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<43>  (
    .I0(ALU_A[2]),
    .I1(N9414),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[11] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[43] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<39>1 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<39>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(N9435),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[39] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<38>1 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<38>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[6] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[38] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<3>1_SW0 .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<3>1_SW0  (
    .I0(ALU_A[1]),
    .I1(N9419),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] ),
    .O(N2669)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<2>1_SW0 .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<2>1_SW0  (
    .I0(ALU_A[1]),
    .I1(N9430),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[8] ),
    .O(N2671)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<13>1_SW0 .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<13>1_SW0  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[15] ),
    .O(N2673)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>27 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>27  (
    .I0(ALU_A[3]),
    .I1(N9408),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[7] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map3 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>220 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>220  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] ),
    .I2(N9420),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map8 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<19>21 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<19>21  (
    .I0(ALU_A[3]),
    .I1(N9427),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[11] ),
    .O(\cpu_inst/EX/ALU/N59 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<18>21 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<18>21  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[18] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[10] ),
    .O(\cpu_inst/EX/ALU/N58 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<17>21 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<17>21  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[17] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[9] ),
    .O(\cpu_inst/EX/ALU/N57 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<56>1 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<56>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[56] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<36>1 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<36>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[4] ),
    .I3(N9376),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[36] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<18> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<18>  (
    .I0(ALU_A[0]),
    .I1(N9426),
    .I2(N2715),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[18] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<17> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<17>  (
    .I0(ALU_A[0]),
    .I1(N9428),
    .I2(N2718),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[17] )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0000_Result1 .INIT = 4'h6;
  LUT2 \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0000_Result1  (
    .I0(\cpu_inst/RtData_id [31]),
    .I1(\cpu_inst/JrAddr [31]),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0000 )
  );
  defparam \cpu_inst/ID/RtData_id<31>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RtData_id<31>1  (
    .I0(\cpu_inst/RegWriteData_wb [31]),
    .I1(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RtSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0001 [31]),
    .O(\cpu_inst/RtData_id [31])
  );
  defparam \cpu_inst/ID/RsData_id<31>1 .INIT = 16'hA3A0;
  LUT4 \cpu_inst/ID/RsData_id<31>1  (
    .I0(\cpu_inst/RegWriteData_wb [31]),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/RsSel ),
    .I3(\cpu_inst/ID/MultiRegisters/_varindex0000 [31]),
    .O(\cpu_inst/JrAddr [31])
  );
  defparam \cpu_inst/IF_flush1 .INIT = 16'hFFFD;
  LUT4 \cpu_inst/IF_flush1  (
    .I0(reset_n_IBUF_1),
    .I1(JumpFlag[1]),
    .I2(\cpu_inst/ID/zero_test_inst/Z722_60 ),
    .I3(JumpFlag[2]),
    .O(\cpu_inst/IF_flush )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z10 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z10  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0004 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0005 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0006 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0007 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map6 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z22 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z22  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0008 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0009 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0010 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0011 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map10 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z27 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z27  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0012 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0013 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0014 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0015 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map13 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z37 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z37  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map3 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map6 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map10 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map13 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map15 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z55 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z55  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0019 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0020 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0021 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0022 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map21 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z67 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z67  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0023 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0024 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0025 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0026 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map25 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z72 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z72  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0027 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0028 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0029 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0030 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map28 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z82 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z82  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map18 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map21 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map25 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map28 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map30 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z140 .INIT = 16'h0002;
  LUT4 \cpu_inst/ID/zero_test_inst/Z140  (
    .I0(\cpu_inst/ALUCode_id [2]),
    .I1(\cpu_inst/JrAddr [9]),
    .I2(\cpu_inst/JrAddr [7]),
    .I3(\cpu_inst/JrAddr [8]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map41 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z177 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z177  (
    .I0(\cpu_inst/JrAddr [24]),
    .I1(\cpu_inst/JrAddr [25]),
    .I2(\cpu_inst/JrAddr [26]),
    .I3(\cpu_inst/JrAddr [27]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map56 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z190 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z190  (
    .I0(\cpu_inst/JrAddr [28]),
    .I1(\cpu_inst/JrAddr [29]),
    .I2(\cpu_inst/JrAddr [2]),
    .I3(\cpu_inst/JrAddr [30]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map63 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z204 .INIT = 16'h8000;
  LUT4 \cpu_inst/ID/zero_test_inst/Z204  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map41 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map48 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map56 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map63 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map65 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z242 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z242  (
    .I0(\cpu_inst/JrAddr [13]),
    .I1(\cpu_inst/JrAddr [14]),
    .I2(\cpu_inst/JrAddr [15]),
    .I3(\cpu_inst/JrAddr [16]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map79 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z266 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z266  (
    .I0(\cpu_inst/JrAddr [17]),
    .I1(\cpu_inst/JrAddr [18]),
    .I2(\cpu_inst/JrAddr [19]),
    .I3(\cpu_inst/JrAddr [1]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map87 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z279 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z279  (
    .I0(\cpu_inst/JrAddr [20]),
    .I1(\cpu_inst/JrAddr [21]),
    .I2(\cpu_inst/JrAddr [22]),
    .I3(\cpu_inst/JrAddr [23]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map94 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z293 .INIT = 16'h8000;
  LUT4 \cpu_inst/ID/zero_test_inst/Z293  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map72 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map79 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map87 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map94 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map96 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z334 .INIT = 16'h0002;
  LUT4 \cpu_inst/ID/zero_test_inst/Z334  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map105 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0031 ),
    .I2(\cpu_inst/ALUCode_id [2]),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0000 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map106 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z349 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z349  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0003 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0004 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0005 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0006 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map113 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z388 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z388  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0011 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0012 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0013 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0014 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map128 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z389 .INIT = 4'h8;
  LUT2 \cpu_inst/ID/zero_test_inst/Z389  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map121 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map128 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map129 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z427 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z427  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0015 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0016 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0017 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0018 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map137 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z440 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z440  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0019 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0020 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0021 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0022 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map144 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z464 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z464  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0023 ),
    .I1(N9395),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0025 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0026 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map152 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z477 .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/zero_test_inst/Z477  (
    .I0(N9394),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0028 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0029 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0030 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map159 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z506 .INIT = 16'h8000;
  LUT4 \cpu_inst/ID/zero_test_inst/Z506  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map106 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map113 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map129 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map161 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map162 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z555 .INIT = 16'h88A8;
  LUT4 \cpu_inst/ID/zero_test_inst/Z555  (
    .I0(\cpu_inst/ALUCode_id [1]),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map35 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map163 ),
    .I3(\cpu_inst/ALUCode_id [0]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map167 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z573 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z573  (
    .I0(\cpu_inst/JrAddr [10]),
    .I1(\cpu_inst/JrAddr [9]),
    .I2(\cpu_inst/JrAddr [2]),
    .I3(\cpu_inst/JrAddr [30]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map173 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z585 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z585  (
    .I0(\cpu_inst/JrAddr [3]),
    .I1(\cpu_inst/JrAddr [4]),
    .I2(\cpu_inst/JrAddr [5]),
    .I3(\cpu_inst/JrAddr [6]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map177 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z590 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z590  (
    .I0(\cpu_inst/JrAddr [7]),
    .I1(\cpu_inst/JrAddr [8]),
    .I2(\cpu_inst/JrAddr [15]),
    .I3(\cpu_inst/JrAddr [16]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map180 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z600 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z600  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map170 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map173 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map177 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map180 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map182 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z616 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z616  (
    .I0(\cpu_inst/JrAddr [24]),
    .I1(\cpu_inst/JrAddr [25]),
    .I2(\cpu_inst/JrAddr [26]),
    .I3(\cpu_inst/JrAddr [27]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map187 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z627 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z627  (
    .I0(\cpu_inst/JrAddr [17]),
    .I1(\cpu_inst/JrAddr [18]),
    .I2(\cpu_inst/JrAddr [19]),
    .I3(\cpu_inst/JrAddr [1]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map191 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z632 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z632  (
    .I0(\cpu_inst/JrAddr [20]),
    .I1(\cpu_inst/JrAddr [21]),
    .I2(\cpu_inst/JrAddr [22]),
    .I3(\cpu_inst/JrAddr [23]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map194 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z642 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/zero_test_inst/Z642  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map184 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map187 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map191 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map194 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map196 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z693 .INIT = 4'h2;
  LUT2 \cpu_inst/ID/zero_test_inst/Z693  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map202 ),
    .I1(\cpu_inst/ALUCode_id [1]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map204 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<4>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<4>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[4]),
    .I2(ALU_B[5]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<12>1 .INIT = 8'h8D;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<12>1  (
    .I0(ALU_A[3]),
    .I1(N9448),
    .I2(N2651),
    .O(\cpu_inst/EX/ALU/N15 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<9> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<9>  (
    .I0(ALU_A[0]),
    .I1(N9432),
    .I2(N3208),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[9] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<8>_SW1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<8>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[7]),
    .I2(ALU_B[5]),
    .O(N3211)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<8> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<8>  (
    .I0(ALU_A[0]),
    .I1(N9433),
    .I2(N3211),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[8] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<6> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<6>  (
    .I0(ALU_A[0]),
    .I1(N9434),
    .I2(N3217),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[6] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<5>_SW1 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<5>_SW1  (
    .I0(ALU_B[2]),
    .I1(ALU_B[4]),
    .I2(ALU_A[1]),
    .O(N3220)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<5> .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<5>  (
    .I0(ALU_A[0]),
    .I1(N3220),
    .I2(N9436),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<4> .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<4>  (
    .I0(ALU_A[0]),
    .I1(N9437),
    .I2(N3220),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[4] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<3> .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<3>  (
    .I0(ALU_A[0]),
    .I1(N3226),
    .I2(N3223),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<16> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<16>  (
    .I0(ALU_A[0]),
    .I1(N9429),
    .I2(N3229),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[16] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<15>_SW1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<15>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[14]),
    .I2(ALU_B[12]),
    .O(N3232)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<15> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<15>  (
    .I0(ALU_A[0]),
    .I1(N9438),
    .I2(N3232),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[15] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<14> .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<14>  (
    .I0(ALU_A[0]),
    .I1(N9439),
    .I2(N3232),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[14] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<12> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<12>  (
    .I0(ALU_A[0]),
    .I1(N9440),
    .I2(N3241),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[12] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<11> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<11>  (
    .I0(ALU_A[0]),
    .I1(N9442),
    .I2(N3244),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[11] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<10> .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<10>  (
    .I0(ALU_A[0]),
    .I1(N9443),
    .I2(N3207),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[10] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<60>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<60>1  (
    .I0(ALU_A[2]),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[60] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<16>21 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<16>21  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[16] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[8] ),
    .O(\cpu_inst/EX/ALU/N56 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<52> .INIT = 16'h083B;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<52>  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .I1(ALU_A[3]),
    .I2(ALU_A[2]),
    .I3(N3251),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[52] )
  );
  defparam \cpu_inst/RegWriteData_wb<30>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<30>1  (
    .I0(MemDout_wb[30]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [30]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [30])
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<28>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<28>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[28]),
    .I2(ALU_B[29]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[28] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<26>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<26>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[26]),
    .I2(ALU_B[27]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[26] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<24>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<24>1  (
    .I0(ALU_A[0]),
    .I1(N9456),
    .I2(ALU_B[25]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[24] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<16>1 .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<16>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[18] ),
    .I2(N9446),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] )
  );
  defparam \cpu_inst/EX/ALU_B<31>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<31>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [31]),
    .O(ALU_B[31])
  );
  defparam \cpu_inst/EX/Mmux_B25_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B25_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [31]),
    .I1(\cpu_inst/RegWriteData_wb [31]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N3350)
  );
  defparam \cpu_inst/EX/Mmux_B25 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B25  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [31]),
    .I2(N3350),
    .O(\cpu_inst/MemWriteData_ex [31])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[1]),
    .I2(ALU_B[1]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [1]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/Mxor_s_xo [0])
  );
  defparam \cpu_inst/RegWriteData_wb<29>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<29>1  (
    .I0(MemDout_wb[29]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [29]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [29])
  );
  defparam \cpu_inst/EX/ALU/Result<1>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<1>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[1]),
    .I2(ALU_B[1]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<1>23  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[1]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<1>40  (
    .I0(ALU_B[1]),
    .I1(ALU_A[1]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>89 .INIT = 16'hFEFA;
  LUT4 \cpu_inst/EX/ALU/Result<1>89  (
    .I0(\cpu_inst/EX/ALU/Result<1>_map17 ),
    .I1(\cpu_inst/EX/ALU/Result<1>_map20 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>147 .INIT = 8'hA8;
  LUT3 \cpu_inst/EX/ALU/Result<1>147  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<1>_map32 ),
    .I2(\cpu_inst/EX/ALU/Result<1>_map35 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>173 .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<1>173  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[3] ),
    .I1(N9509),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/N46 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map42 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>200 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<1>200  (
    .I0(\cpu_inst/EX/ALU/Result<1>_map45 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[49] ),
    .I3(\cpu_inst/EX/ALU/Result<1>_map46 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map49 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[2]),
    .I2(ALU_B[2]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [2]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[8]),
    .I2(ALU_B[8]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [8]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/sum0 [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[12]),
    .I2(ALU_B[12]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [12]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/sum0 [0])
  );
  defparam \cpu_inst/EX/Mmux_B24 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B24  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [30]),
    .I2(N3519),
    .O(\cpu_inst/MemWriteData_ex [30])
  );
  defparam \cpu_inst/RegWriteData_wb<28>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<28>1  (
    .I0(MemDout_wb[28]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [28]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [28])
  );
  defparam \cpu_inst/EX/ALU/Result<2>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<2>23  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[2]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<2>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<2>40  (
    .I0(ALU_B[2]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<2>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>52 .INIT = 8'hFE;
  LUT3 \cpu_inst/EX/ALU/Result<2>52  (
    .I0(\cpu_inst/EX/ALU/Result<2>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<2>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<2>_map15 ),
    .O(\cpu_inst/EX/ALU/Result<2>_map17 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>89 .INIT = 16'hFEFA;
  LUT4 \cpu_inst/EX/ALU/Result<2>89  (
    .I0(\cpu_inst/EX/ALU/Result<2>_map17 ),
    .I1(\cpu_inst/EX/ALU/Result<2>_map20 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(\cpu_inst/EX/ALU/Result<2>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>181 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<2>181  (
    .I0(\cpu_inst/EX/ALU/Result<2>_map41 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[50] ),
    .I3(\cpu_inst/EX/ALU/Result<2>_map42 ),
    .O(\cpu_inst/EX/ALU/Result<2>_map45 )
  );
  defparam \cpu_inst/RegWriteData_wb<27>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<27>1  (
    .I0(MemDout_wb[27]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [27]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [27])
  );
  defparam \cpu_inst/RegWriteData_wb<26>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<26>1  (
    .I0(MemDout_wb[26]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [26]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [26])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[16]),
    .I2(ALU_B[16]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [16]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/sum0 [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[7]),
    .I2(ALU_B[7]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [7]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[20]),
    .I2(ALU_B[20]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [20]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/sum0 [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[11]),
    .I2(ALU_B[11]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [11]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU_B<29>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<29>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [29]),
    .O(ALU_B[29])
  );
  defparam \cpu_inst/EX/Mmux_B22_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B22_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [29]),
    .I1(\cpu_inst/RegWriteData_wb [29]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N3671)
  );
  defparam \cpu_inst/EX/Mmux_B22 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B22  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [29]),
    .I2(N3671),
    .O(\cpu_inst/MemWriteData_ex [29])
  );
  defparam \cpu_inst/RegWriteData_wb<25>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<25>1  (
    .I0(MemDout_wb[25]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [25]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [25])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[24]),
    .I2(ALU_B[24]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [24]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/sum0 [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[15]),
    .I2(ALU_B[15]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [15]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/Result<3>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<3>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[3]),
    .I2(ALU_B[3]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<3>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<3>23  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[3]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<3>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<3>40  (
    .I0(ALU_B[3]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<3>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>177 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<3>177  (
    .I0(\cpu_inst/EX/ALU/Result<3>_map41 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[51] ),
    .I3(\cpu_inst/EX/ALU/Result<3>_map42 ),
    .O(\cpu_inst/EX/ALU/Result<3>_map45 )
  );
  defparam \cpu_inst/EX/ALU_B<28>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<28>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [28]),
    .O(ALU_B[28])
  );
  defparam \cpu_inst/EX/Mmux_B21 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B21  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [28]),
    .I2(N3828),
    .O(\cpu_inst/MemWriteData_ex [28])
  );
  defparam \cpu_inst/RegWriteData_wb<24>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<24>1  (
    .I0(MemDout_wb[24]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [24]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [24])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1 .INIT = 4'h6;
  LUT2 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1  (
    .I0(ALU_A[13]),
    .I1(N9494),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU_B<27>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<27>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [27]),
    .O(ALU_B[27])
  );
  defparam \cpu_inst/EX/Mmux_B20 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B20  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [27]),
    .I2(N3835),
    .O(\cpu_inst/MemWriteData_ex [27])
  );
  defparam \cpu_inst/RegWriteData_wb<23>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<23>1  (
    .I0(MemDout_wb[23]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [23]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [23])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/Mxor_s_xo<0>1 .INIT = 4'h6;
  LUT2 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/Mxor_s_xo<0>1  (
    .I0(ALU_A[14]),
    .I1(N9486),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU_B<26>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<26>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [26]),
    .O(ALU_B[26])
  );
  defparam \cpu_inst/EX/Mmux_B19 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B19  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [26]),
    .I2(N3841),
    .O(\cpu_inst/MemWriteData_ex [26])
  );
  defparam \cpu_inst/RegWriteData_wb<22>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<22>1  (
    .I0(MemDout_wb[22]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [22]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [22])
  );
  defparam \cpu_inst/EX/Mmux_B18 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B18  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [25]),
    .I2(N3857),
    .O(\cpu_inst/MemWriteData_ex [25])
  );
  defparam \cpu_inst/RegWriteData_wb<21>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<21>1  (
    .I0(MemDout_wb[21]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [21]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [21])
  );
  defparam \cpu_inst/EX/ALU/Result<4>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<4>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[4]),
    .I2(ALU_B[4]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<4>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<4>23  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[4]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<4>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<4>40  (
    .I0(ALU_B[4]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<4>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>155 .INIT = 16'hCC80;
  LUT4 \cpu_inst/EX/ALU/Result<4>155  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[52] ),
    .I3(\cpu_inst/EX/ALU/Result<4>_map36 ),
    .O(\cpu_inst/EX/ALU/Result<4>_map39 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<7>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[7]),
    .I2(ALU_B[7]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<7>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<7>23  (
    .I0(ALU_A[7]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[7]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<7>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<7>40  (
    .I0(ALU_B[7]),
    .I1(ALU_A[7]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<7>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>99 .INIT = 16'hFFEC;
  LUT4 \cpu_inst/EX/ALU/Result<7>99  (
    .I0(\cpu_inst/EX/ALU/N101 ),
    .I1(\cpu_inst/EX/ALU/N80 ),
    .I2(\cpu_inst/EX/ALU/N41 ),
    .I3(\cpu_inst/EX/ALU/Result<7>_map25 ),
    .O(\cpu_inst/EX/ALU/Result<7>_map26 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>115 .INIT = 8'hA8;
  LUT3 \cpu_inst/EX/ALU/Result<7>115  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<7>_map26 ),
    .I2(\cpu_inst/EX/ALU/Result<7>_map29 ),
    .O(\cpu_inst/EX/ALU/Result<7>_map31 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>142 .INIT = 8'hF8;
  LUT3 \cpu_inst/EX/ALU/Result<7>142  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[55] ),
    .I2(\cpu_inst/EX/ALU/Result<7>_map35 ),
    .O(\cpu_inst/EX/ALU/Result<7>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<6>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[6]),
    .I2(ALU_B[6]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<6>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<6>23  (
    .I0(ALU_A[6]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[6]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<6>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<6>40  (
    .I0(ALU_B[6]),
    .I1(ALU_A[6]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<6>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>119 .INIT = 8'hA8;
  LUT3 \cpu_inst/EX/ALU/Result<6>119  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<6>_map30 ),
    .I2(\cpu_inst/EX/ALU/Result<6>_map27 ),
    .O(\cpu_inst/EX/ALU/Result<6>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>147 .INIT = 8'hEC;
  LUT3 \cpu_inst/EX/ALU/Result<6>147  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<6>_map36 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[54] ),
    .O(\cpu_inst/EX/ALU/Result<6>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<5>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[5]),
    .I2(ALU_B[5]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<5>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<5>23  (
    .I0(ALU_A[5]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[5]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<5>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<5>40  (
    .I0(ALU_B[5]),
    .I1(ALU_A[5]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<5>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>147 .INIT = 8'hEC;
  LUT3 \cpu_inst/EX/ALU/Result<5>147  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<5>_map36 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[53] ),
    .O(\cpu_inst/EX/ALU/Result<5>_map38 )
  );
  defparam \cpu_inst/EX/Mmux_B17 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B17  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [24]),
    .I2(N4417),
    .O(\cpu_inst/MemWriteData_ex [24])
  );
  defparam \cpu_inst/RegWriteData_wb<20>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<20>1  (
    .I0(MemDout_wb[20]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [20]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [20])
  );
  defparam \cpu_inst/EX/ALU_B<23>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<23>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [23]),
    .O(ALU_B[23])
  );
  defparam \cpu_inst/EX/Mmux_B16 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B16  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [23]),
    .I2(N4422),
    .O(\cpu_inst/MemWriteData_ex [23])
  );
  defparam \cpu_inst/RegWriteData_wb<19>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<19>1  (
    .I0(MemDout_wb[19]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [19]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [19])
  );
  defparam \cpu_inst/EX/ALU_B<22>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<22>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [22]),
    .O(ALU_B[22])
  );
  defparam \cpu_inst/EX/Mmux_B15 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B15  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [22]),
    .I2(N4427),
    .O(\cpu_inst/MemWriteData_ex [22])
  );
  defparam \cpu_inst/RegWriteData_wb<18>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<18>1  (
    .I0(MemDout_wb[18]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [18]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [18])
  );
  defparam \cpu_inst/EX/ALU_B<21>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<21>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [21]),
    .O(ALU_B[21])
  );
  defparam \cpu_inst/EX/Mmux_B14_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B14_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [21]),
    .I1(\cpu_inst/RegWriteData_wb [21]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N4439)
  );
  defparam \cpu_inst/EX/Mmux_B14 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B14  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [21]),
    .I2(N4439),
    .O(\cpu_inst/MemWriteData_ex [21])
  );
  defparam \cpu_inst/RegWriteData_wb<17>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<17>1  (
    .I0(MemDout_wb[17]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [17]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [17])
  );
  defparam \cpu_inst/EX/ALU/Result<8>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<8>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[8]),
    .I2(ALU_B[8]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<8>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<8>23  (
    .I0(ALU_A[8]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[8]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<8>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<8>40  (
    .I0(ALU_B[8]),
    .I1(ALU_A[8]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<8>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>183 .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<8>183  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<8>_map38 ),
    .O(ALUResult[8])
  );
  defparam \cpu_inst/EX/ALU/Result<9>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<9>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[9]),
    .I2(ALU_B[9]),
    .I3(N9515),
    .O(\cpu_inst/EX/ALU/Result<9>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<9>23  (
    .I0(ALU_A[9]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[9]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<9>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<9>40  (
    .I0(ALU_B[9]),
    .I1(ALU_A[9]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<9>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<11>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[11]),
    .I2(ALU_B[11]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<11>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<11>23  (
    .I0(ALU_A[11]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[11]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<11>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>65 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<11>65  (
    .I0(\cpu_inst/EX/ALU/Result<11>_map9 ),
    .I1(\cpu_inst/EX/ALU/Result<11>_map6 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/Result<11>_map15 ),
    .O(\cpu_inst/EX/ALU/Result<11>_map18 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>80 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<11>80  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[43] ),
    .O(\cpu_inst/EX/ALU/Result<11>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>150 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<11>150  (
    .I0(\cpu_inst/EX/ALU/Result<11>_map36 ),
    .I1(\cpu_inst/EX/ALU/Result<11>_map30 ),
    .I2(\cpu_inst/EX/ALU/Result<11>_map18 ),
    .I3(\cpu_inst/EX/ALU/Result<11>_map21 ),
    .O(\cpu_inst/EX/ALU/Result<11>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<10>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[10]),
    .I2(ALU_B[10]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<10>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<10>23  (
    .I0(ALU_A[10]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[10]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<10>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<10>40  (
    .I0(ALU_B[10]),
    .I1(ALU_A[10]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<10>_map15 )
  );
  defparam \cpu_inst/RegWriteData_wb<16>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<16>1  (
    .I0(MemDout_wb[16]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [16]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [16])
  );
  defparam \cpu_inst/EX/ALU_B<20>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<20>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [20]),
    .O(ALU_B[20])
  );
  defparam \cpu_inst/EX/Mmux_B13_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B13_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [20]),
    .I1(\cpu_inst/RegWriteData_wb [20]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N4994)
  );
  defparam \cpu_inst/EX/Mmux_B13 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B13  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [20]),
    .I2(N4994),
    .O(\cpu_inst/MemWriteData_ex [20])
  );
  defparam \cpu_inst/RegWriteData_wb<15>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<15>1  (
    .I0(MemDout_wb[15]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [15]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [15])
  );
  defparam \cpu_inst/EX/ALU_B<19>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<19>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [19]),
    .O(ALU_B[19])
  );
  defparam \cpu_inst/EX/Mmux_B11_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B11_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [19]),
    .I1(\cpu_inst/RegWriteData_wb [19]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N4999)
  );
  defparam \cpu_inst/EX/Mmux_B11 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B11  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [19]),
    .I2(N4999),
    .O(\cpu_inst/MemWriteData_ex [19])
  );
  defparam \cpu_inst/RegWriteData_wb<14>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<14>1  (
    .I0(MemDout_wb[14]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [14]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [14])
  );
  defparam \cpu_inst/EX/ALU_B<18>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<18>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [18]),
    .O(ALU_B[18])
  );
  defparam \cpu_inst/EX/Mmux_B10_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B10_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [18]),
    .I1(\cpu_inst/RegWriteData_wb [18]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N5004)
  );
  defparam \cpu_inst/EX/Mmux_B10 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B10  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [18]),
    .I2(N5004),
    .O(\cpu_inst/MemWriteData_ex [18])
  );
  defparam \cpu_inst/RegWriteData_wb<13>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<13>1  (
    .I0(MemDout_wb[13]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [13]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [13])
  );
  defparam \cpu_inst/EX/ALU_B<17>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<17>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [17]),
    .O(ALU_B[17])
  );
  defparam \cpu_inst/EX/Mmux_B9_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B9_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [17]),
    .I1(\cpu_inst/RegWriteData_wb [17]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N5016)
  );
  defparam \cpu_inst/EX/Mmux_B9 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B9  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [17]),
    .I2(N5016),
    .O(\cpu_inst/MemWriteData_ex [17])
  );
  defparam \cpu_inst/EX/ALU/Result<12>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<12>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[12]),
    .I2(ALU_B[12]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<12>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<12>23  (
    .I0(ALU_A[12]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[12]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<12>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>65 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<12>65  (
    .I0(\cpu_inst/EX/ALU/Result<12>_map9 ),
    .I1(\cpu_inst/EX/ALU/Result<12>_map6 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/Result<12>_map15 ),
    .O(\cpu_inst/EX/ALU/Result<12>_map18 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>80 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<12>80  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[44] ),
    .O(\cpu_inst/EX/ALU/Result<12>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>186 .INIT = 16'hFF28;
  LUT4 \cpu_inst/EX/ALU/Result<12>186  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [2]),
    .I3(\cpu_inst/EX/ALU/Result<12>_map39 ),
    .O(ALUResult[12])
  );
  defparam \cpu_inst/EX/ALU/Result<15>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<15>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[15]),
    .I2(ALU_B[15]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<15>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<15>23  (
    .I0(ALU_A[15]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[15]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<15>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<15>40  (
    .I0(ALU_B[15]),
    .I1(ALU_A[15]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<15>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>80 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<15>80  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[47] ),
    .O(\cpu_inst/EX/ALU/Result<15>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>146 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<15>146  (
    .I0(\cpu_inst/EX/ALU/Result<15>_map18 ),
    .I1(\cpu_inst/EX/ALU/Result<15>_map35 ),
    .I2(\cpu_inst/EX/ALU/Result<15>_map21 ),
    .I3(\cpu_inst/EX/ALU/Result<15>_map28 ),
    .O(\cpu_inst/EX/ALU/Result<15>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<14>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[14]),
    .I2(ALU_B[14]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<14>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<14>23  (
    .I0(ALU_A[14]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[14]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<14>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>65 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<14>65  (
    .I0(\cpu_inst/EX/ALU/Result<14>_map9 ),
    .I1(\cpu_inst/EX/ALU/Result<14>_map6 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/Result<14>_map15 ),
    .O(\cpu_inst/EX/ALU/Result<14>_map18 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>17 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<13>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[13]),
    .I2(ALU_B[13]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .O(\cpu_inst/EX/ALU/Result<13>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<13>23  (
    .I0(ALU_A[13]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[13]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<13>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>65 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<13>65  (
    .I0(\cpu_inst/EX/ALU/Result<13>_map9 ),
    .I1(\cpu_inst/EX/ALU/Result<13>_map6 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/Result<13>_map15 ),
    .O(\cpu_inst/EX/ALU/Result<13>_map18 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>80 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<13>80  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[45] ),
    .O(\cpu_inst/EX/ALU/Result<13>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>155 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<13>155  (
    .I0(\cpu_inst/EX/ALU/Result<13>_map18 ),
    .I1(\cpu_inst/EX/ALU/Result<13>_map21 ),
    .I2(\cpu_inst/EX/ALU/Result<13>_map30 ),
    .I3(\cpu_inst/EX/ALU/Result<13>_map37 ),
    .O(\cpu_inst/EX/ALU/Result<13>_map39 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[26]),
    .I1(\cpu_inst/EX/ALU/B_adder[26] ),
    .I2(N9459),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst1/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst1/co1  (
    .I0(ALU_A[25]),
    .I1(N9458),
    .I2(\cpu_inst/EX/ALU/B_adder[25] ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/RegWriteData_wb<12>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<12>1  (
    .I0(MemDout_wb[12]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [12]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [12])
  );
  defparam \cpu_inst/EX/ALU_B<16>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<16>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [16]),
    .O(ALU_B[16])
  );
  defparam \cpu_inst/EX/Mmux_B8_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B8_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [16]),
    .I1(\cpu_inst/RegWriteData_wb [16]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N5572)
  );
  defparam \cpu_inst/EX/Mmux_B8 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B8  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [16]),
    .I2(N5572),
    .O(\cpu_inst/MemWriteData_ex [16])
  );
  defparam \cpu_inst/RegWriteData_wb<11>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<11>1  (
    .I0(MemDout_wb[11]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [11]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [11])
  );
  defparam \cpu_inst/EX/ALU_B<15>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<15>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [15]),
    .O(ALU_B[15])
  );
  defparam \cpu_inst/EX/Mmux_B7_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B7_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [15]),
    .I1(\cpu_inst/RegWriteData_wb [15]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .O(N5577)
  );
  defparam \cpu_inst/EX/Mmux_B7 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B7  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [15]),
    .I2(N5577),
    .O(\cpu_inst/MemWriteData_ex [15])
  );
  defparam \cpu_inst/RegWriteData_wb<10>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<10>1  (
    .I0(MemDout_wb[10]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [10]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [10])
  );
  defparam \cpu_inst/EX/ALU_B<14>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<14>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[14] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [14]),
    .O(ALU_B[14])
  );
  defparam \cpu_inst/EX/Mmux_B6_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B6_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [14]),
    .I1(\cpu_inst/RegWriteData_wb [14]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N5582)
  );
  defparam \cpu_inst/EX/Mmux_B6 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B6  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [14]),
    .I2(N5582),
    .O(\cpu_inst/MemWriteData_ex [14])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[22]),
    .I1(\cpu_inst/EX/ALU/B_adder[22] ),
    .I2(N9462),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst1/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst1/co1  (
    .I0(ALU_A[21]),
    .I1(N9461),
    .I2(\cpu_inst/EX/ALU/B_adder[21] ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/EX/ALU_A<3>13 .INIT = 16'hAC00;
  LUT4 \cpu_inst/EX/ALU_A<3>13  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [3]),
    .I1(\cpu_inst/RegWriteData_wb [3]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .I3(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .O(\cpu_inst/EX/ALU_A<3>_map5 )
  );
  defparam \cpu_inst/RegWriteData_wb<9>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<9>1  (
    .I0(MemDout_wb[9]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [9]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [9])
  );
  defparam \cpu_inst/EX/ALU_B<13>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<13>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [13]),
    .O(ALU_B[13])
  );
  defparam \cpu_inst/EX/Mmux_B5_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B5_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [13]),
    .I1(\cpu_inst/RegWriteData_wb [13]),
    .I2(N9491),
    .O(N5625)
  );
  defparam \cpu_inst/EX/Mmux_B5 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B5  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [13]),
    .I2(N5625),
    .O(\cpu_inst/MemWriteData_ex [13])
  );
  defparam \cpu_inst/EX/ALU/Result<16>117 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<16>117  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[4] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[12] ),
    .O(\cpu_inst/EX/ALU/Result<16>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>197 .INIT = 16'hFF28;
  LUT4 \cpu_inst/EX/ALU/Result<16>197  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [3]),
    .I3(\cpu_inst/EX/ALU/Result<16>_map38 ),
    .O(ALUResult[16])
  );
  defparam \cpu_inst/RegWriteData_wb<8>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<8>1  (
    .I0(MemDout_wb[8]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [8]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [8])
  );
  defparam \cpu_inst/EX/ALU_B<12>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<12>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [12]),
    .O(ALU_B[12])
  );
  defparam \cpu_inst/EX/Mmux_B4_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B4_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [12]),
    .I1(\cpu_inst/RegWriteData_wb [12]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N5748)
  );
  defparam \cpu_inst/EX/Mmux_B4 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B4  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [12]),
    .I2(N5748),
    .O(\cpu_inst/MemWriteData_ex [12])
  );
  defparam \cpu_inst/EX/ALU/Result<19>130 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<19>130  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[7] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[15] ),
    .O(\cpu_inst/EX/ALU/Result<19>_map31 )
  );
  defparam \cpu_inst/EX/ALU/Result<18>77 .INIT = 16'hFEFA;
  LUT4 \cpu_inst/EX/ALU/Result<18>77  (
    .I0(\cpu_inst/EX/ALU/Result<18>_map14 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[50] ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(N9463),
    .O(\cpu_inst/EX/ALU/Result<18>_map19 )
  );
  defparam \cpu_inst/EX/ALU/Result<18>97 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<18>97  (
    .I0(\cpu_inst/EX/ALU/N87 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[58] ),
    .I2(\cpu_inst/EX/ALU/N97 ),
    .I3(\cpu_inst/EX/ALU/Result<18>_map21 ),
    .O(\cpu_inst/EX/ALU/Result<18>_map24 )
  );
  defparam \cpu_inst/EX/ALU/Result<18>131 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<18>131  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[6] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[14] ),
    .O(\cpu_inst/EX/ALU/Result<18>_map31 )
  );
  defparam \cpu_inst/EX/ALU/Result<17>130 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<17>130  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] ),
    .I3(N9441),
    .O(\cpu_inst/EX/ALU/Result<17>_map31 )
  );
  defparam \cpu_inst/RegWriteData_wb<7>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<7>1  (
    .I0(MemDout_wb[7]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [7]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [7])
  );
  defparam \cpu_inst/EX/ALU_B<11>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<11>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[11] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [11]),
    .O(ALU_B[11])
  );
  defparam \cpu_inst/EX/Mmux_B3_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B3_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [11]),
    .I1(\cpu_inst/RegWriteData_wb [11]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6156)
  );
  defparam \cpu_inst/EX/Mmux_B3 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B3  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [11]),
    .I2(N6156),
    .O(\cpu_inst/MemWriteData_ex [11])
  );
  defparam \cpu_inst/RegWriteData_wb<6>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<6>1  (
    .I0(MemDout_wb[6]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [6]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [6])
  );
  defparam \cpu_inst/EX/ALU_B<10>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<10>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [10]),
    .O(ALU_B[10])
  );
  defparam \cpu_inst/EX/Mmux_B2_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B2_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [10]),
    .I1(\cpu_inst/RegWriteData_wb [10]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6161)
  );
  defparam \cpu_inst/EX/Mmux_B2 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B2  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [10]),
    .I2(N6161),
    .O(\cpu_inst/MemWriteData_ex [10])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst0/co1 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst0/co1  (
    .I0(ALU_A[16]),
    .I1(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I2(ALU_B[16]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [16]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi [1])
  );
  defparam \cpu_inst/EX/ALU_A<4>13 .INIT = 16'hAC00;
  LUT4 \cpu_inst/EX/ALU_A<4>13  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [4]),
    .I1(\cpu_inst/RegWriteData_wb [4]),
    .I2(N9472),
    .I3(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .O(\cpu_inst/EX/ALU_A<4>_map5 )
  );
  defparam \cpu_inst/EX/ALU_A<2>13 .INIT = 16'hAC00;
  LUT4 \cpu_inst/EX/ALU_A<2>13  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [2]),
    .I1(\cpu_inst/RegWriteData_wb [2]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .I3(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .O(\cpu_inst/EX/ALU_A<2>_map5 )
  );
  defparam \cpu_inst/RegWriteData_wb<5>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<5>1  (
    .I0(MemDout_wb[5]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [5]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [5])
  );
  defparam \cpu_inst/EX/Mmux_B32_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B32_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [9]),
    .I1(\cpu_inst/RegWriteData_wb [9]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6229)
  );
  defparam \cpu_inst/EX/Mmux_B32 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B32  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [9]),
    .I2(N6229),
    .O(\cpu_inst/MemWriteData_ex [9])
  );
  defparam \cpu_inst/EX/ALU/Result<20>77 .INIT = 16'hFEEE;
  LUT4 \cpu_inst/EX/ALU/Result<20>77  (
    .I0(\cpu_inst/EX/ALU/Result<20>_map14 ),
    .I1(\cpu_inst/EX/ALU/N42 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[52] ),
    .I3(\cpu_inst/EX/ALU/Result<16>_map17 ),
    .O(\cpu_inst/EX/ALU/Result<20>_map19 )
  );
  defparam \cpu_inst/EX/ALU/Result<20>97 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<20>97  (
    .I0(\cpu_inst/EX/ALU/N87 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[60] ),
    .I2(\cpu_inst/EX/ALU/N97 ),
    .I3(\cpu_inst/EX/ALU/Result<20>_map21 ),
    .O(\cpu_inst/EX/ALU/Result<20>_map24 )
  );
  defparam \cpu_inst/EX/ALU/Result<20>119 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<20>119  (
    .I0(\cpu_inst/EX/ALU/N89 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[12] ),
    .I3(N9390),
    .O(\cpu_inst/EX/ALU/Result<20>_map31 )
  );
  defparam \cpu_inst/EX/ALU/Result<20>192 .INIT = 16'hFF28;
  LUT4 \cpu_inst/EX/ALU/Result<20>192  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(\cpu_inst/EX/ALU/Result<20>_map37 ),
    .O(ALUResult[20])
  );
  defparam \cpu_inst/EX/Mmux_A_not0000_SW0 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/Mmux_A_not0000_SW0  (
    .I0(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_2_79 ),
    .I1(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_2_80 ),
    .I2(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4]),
    .O(N6345)
  );
  defparam \cpu_inst/EX/ALU_A<1>16 .INIT = 4'h2;
  LUT2 \cpu_inst/EX/ALU_A<1>16  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [1]),
    .I1(N9468),
    .O(\cpu_inst/EX/ALU_A<1>_map7 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/add_inst0/co1 .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/add_inst0/co1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[12]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [12]),
    .I3(ALU_A[12]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst0/co1 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst0/co1  (
    .I0(ALU_A[12]),
    .I1(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I2(ALU_B[12]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [12]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [1])
  );
  defparam \cpu_inst/RegWriteData_wb<4>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<4>1  (
    .I0(MemDout_wb[4]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [4]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q_1_1_63 ),
    .O(\cpu_inst/RegWriteData_wb [4])
  );
  defparam \cpu_inst/EX/ALU_B<8>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<8>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [8]),
    .O(ALU_B[8])
  );
  defparam \cpu_inst/EX/Mmux_B31_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B31_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [8]),
    .I1(\cpu_inst/RegWriteData_wb [8]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6380)
  );
  defparam \cpu_inst/EX/Mmux_B31 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B31  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [8]),
    .I2(N6380),
    .O(\cpu_inst/MemWriteData_ex [8])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[14]),
    .I1(\cpu_inst/EX/ALU/B_adder[14] ),
    .I2(N9470),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/co1  (
    .I0(ALU_A[14]),
    .I1(\cpu_inst/EX/ALU/B_adder[14] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [2]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [3])
  );
  defparam \cpu_inst/EX/ALU/Result<23>81 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<23>81  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .I2(\cpu_inst/EX/ALU/Result<23>_map18 ),
    .I3(\cpu_inst/EX/ALU/Result<23>_map14 ),
    .O(\cpu_inst/EX/ALU/Result<23>_map20 )
  );
  defparam \cpu_inst/EX/ALU/Result<23>97 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<23>97  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[55] ),
    .O(\cpu_inst/EX/ALU/Result<23>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<23>124 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<23>124  (
    .I0(N9379),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[15] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[23] ),
    .O(\cpu_inst/EX/ALU/Result<23>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>88 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<22>88  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .I2(\cpu_inst/EX/ALU/Result<22>_map20 ),
    .I3(\cpu_inst/EX/ALU/Result<22>_map14 ),
    .O(\cpu_inst/EX/ALU/Result<22>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>104 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<22>104  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[54] ),
    .O(\cpu_inst/EX/ALU/Result<22>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>88 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<21>88  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .I2(\cpu_inst/EX/ALU/Result<21>_map20 ),
    .I3(\cpu_inst/EX/ALU/Result<21>_map14 ),
    .O(\cpu_inst/EX/ALU/Result<21>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>104 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<21>104  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[53] ),
    .O(\cpu_inst/EX/ALU/Result<21>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>131 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<21>131  (
    .I0(\cpu_inst/EX/ALU/N89 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[13] ),
    .I3(N9389),
    .O(\cpu_inst/EX/ALU/Result<21>_map32 )
  );
  defparam \cpu_inst/RegWriteData_wb<3>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<3>1  (
    .I0(MemDout_wb[3]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [3]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q_1_1_63 ),
    .O(\cpu_inst/RegWriteData_wb [3])
  );
  defparam \cpu_inst/EX/ALU_B<7>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<7>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [1]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [7]),
    .O(ALU_B[7])
  );
  defparam \cpu_inst/EX/Mmux_B30_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B30_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [7]),
    .I1(\cpu_inst/RegWriteData_wb [7]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6788)
  );
  defparam \cpu_inst/EX/Mmux_B30 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B30  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [7]),
    .I2(N6788),
    .O(\cpu_inst/MemWriteData_ex [7])
  );
  defparam \cpu_inst/RegWriteData_wb<2>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<2>1  (
    .I0(MemDout_wb[2]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [2]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q_1_1_63 ),
    .O(\cpu_inst/RegWriteData_wb [2])
  );
  defparam \cpu_inst/EX/ALU_B<6>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<6>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [0]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [6]),
    .O(ALU_B[6])
  );
  defparam \cpu_inst/EX/Mmux_B29_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B29_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [6]),
    .I1(\cpu_inst/RegWriteData_wb [6]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6793)
  );
  defparam \cpu_inst/EX/Mmux_B29 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B29  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [6]),
    .I2(N6793),
    .O(\cpu_inst/MemWriteData_ex [6])
  );
  defparam \cpu_inst/RegWriteData_wb<1>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<1>1  (
    .I0(MemDout_wb[1]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [1]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q_1_1_63 ),
    .O(\cpu_inst/RegWriteData_wb [1])
  );
  defparam \cpu_inst/EX/ForwardA_0_cmp_ne000151 .INIT = 16'h7DBE;
  LUT4 \cpu_inst/EX/ForwardA_0_cmp_ne000151  (
    .I0(\cpu_inst/dffr_IDEX_RsAddr/q[0] ),
    .I1(\cpu_inst/dffr_IDEX_RsAddr/q[3] ),
    .I2(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_1_64 ),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_1_65 ),
    .O(\cpu_inst/EX/ForwardA_0_cmp_ne0001_map17 )
  );
  defparam \cpu_inst/EX/ForwardA_0_cmp_ne000152 .INIT = 4'hE;
  LUT2 \cpu_inst/EX/ForwardA_0_cmp_ne000152  (
    .I0(\cpu_inst/EX/ForwardA_0_cmp_ne0001_map6 ),
    .I1(\cpu_inst/EX/ForwardA_0_cmp_ne0001_map17 ),
    .O(\cpu_inst/EX/ForwardA_0_cmp_ne0001 )
  );
  defparam \cpu_inst/EX/ALU_A<0>16 .INIT = 4'h2;
  LUT2 \cpu_inst/EX/ALU_A<0>16  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [0]),
    .I1(N9517),
    .O(\cpu_inst/EX/ALU_A<0>_map7 )
  );
  defparam \cpu_inst/EX/ALU_B<5>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<5>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [5]),
    .O(ALU_B[5])
  );
  defparam \cpu_inst/EX/Mmux_B28_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B28_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [5]),
    .I1(\cpu_inst/RegWriteData_wb [5]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N6927)
  );
  defparam \cpu_inst/EX/Mmux_B28 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B28  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [5]),
    .I2(N6927),
    .O(\cpu_inst/MemWriteData_ex [5])
  );
  defparam \cpu_inst/EX/ALU/Result<24>124 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<24>124  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[12] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[20] ),
    .O(\cpu_inst/EX/ALU/Result<24>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<24>135 .INIT = 16'hFEFC;
  LUT4 \cpu_inst/EX/ALU/Result<24>135  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<24>_map30 ),
    .I2(\cpu_inst/EX/ALU/Result<24>_map25 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[40] ),
    .O(\cpu_inst/EX/ALU/Result<24>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Result<24>186 .INIT = 16'hFF28;
  LUT4 \cpu_inst/EX/ALU/Result<24>186  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [5]),
    .I3(\cpu_inst/EX/ALU/Result<24>_map35 ),
    .O(ALUResult[24])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst0/co1 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst0/co1  (
    .I0(ALU_A[8]),
    .I1(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I2(ALU_B[8]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [8]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[10]),
    .I1(\cpu_inst/EX/ALU/B_adder[10] ),
    .I2(N9475),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst2/co1  (
    .I0(ALU_A[10]),
    .I1(\cpu_inst/EX/ALU/B_adder[10] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [2]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [3])
  );
  defparam \cpu_inst/EX/ALU_B<4>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<4>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [4]),
    .O(ALU_B[4])
  );
  defparam \cpu_inst/EX/Mmux_B27 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B27  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [4]),
    .I2(N7048),
    .O(\cpu_inst/MemWriteData_ex [4])
  );
  defparam \cpu_inst/EX/ALU/Result<27>124 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<27>124  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[15] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[23] ),
    .O(\cpu_inst/EX/ALU/Result<27>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<27>144 .INIT = 16'hC8C0;
  LUT4 \cpu_inst/EX/ALU/Result<27>144  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<27>_map31 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[43] ),
    .O(\cpu_inst/EX/ALU/Result<27>_map34 )
  );
  defparam \cpu_inst/EX/ALU/Result<26>144 .INIT = 16'hC8C0;
  LUT4 \cpu_inst/EX/ALU/Result<26>144  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<26>_map31 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[42] ),
    .O(\cpu_inst/EX/ALU/Result<26>_map34 )
  );
  defparam \cpu_inst/EX/ALU/Result<25>124 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<25>124  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[13] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[21] ),
    .O(\cpu_inst/EX/ALU/Result<25>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<25>135 .INIT = 16'hFEFC;
  LUT4 \cpu_inst/EX/ALU/Result<25>135  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<25>_map30 ),
    .I2(\cpu_inst/EX/ALU/Result<25>_map25 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[41] ),
    .O(\cpu_inst/EX/ALU/Result<25>_map33 )
  );
  defparam \cpu_inst/EX/ALU_B<3>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<3>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[3] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [3]),
    .O(ALU_B[3])
  );
  defparam \cpu_inst/EX/Mmux_B26 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B26  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [3]),
    .I2(N7442),
    .O(\cpu_inst/MemWriteData_ex [3])
  );
  defparam \cpu_inst/EX/ALU_B<2>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<2>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[2] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [2]),
    .O(ALU_B[2])
  );
  defparam \cpu_inst/EX/Mmux_B23 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B23  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [2]),
    .I2(N7446),
    .O(\cpu_inst/MemWriteData_ex [2])
  );
  defparam \cpu_inst/EX/ALU_B<1>1 .INIT = 8'hB8;
  LUT3 \cpu_inst/EX/ALU_B<1>1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[1] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [1]),
    .O(ALU_B[1])
  );
  defparam \cpu_inst/EX/Mmux_B12 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B12  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [1]),
    .I2(N7451),
    .O(\cpu_inst/MemWriteData_ex [1])
  );
  defparam \cpu_inst/EX/ALU/Result<28>130 .INIT = 16'hEAC0;
  LUT4 \cpu_inst/EX/ALU/Result<28>130  (
    .I0(\cpu_inst/EX/ALU/N79 ),
    .I1(\cpu_inst/EX/ALU/N200 ),
    .I2(\cpu_inst/EX/ALU/Result<28>_map30 ),
    .I3(N9383),
    .O(\cpu_inst/EX/ALU/Result<28>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<28>148 .INIT = 16'hFFEC;
  LUT4 \cpu_inst/EX/ALU/Result<28>148  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(\cpu_inst/EX/ALU/Result<28>_map33 ),
    .I2(N9393),
    .I3(\cpu_inst/EX/ALU/Result<28>_map32 ),
    .O(\cpu_inst/EX/ALU/Result<28>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<31>208 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<31>208  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<31>_map46 ),
    .I2(ALU_A[4]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[47] ),
    .O(\cpu_inst/EX/ALU/Result<31>_map49 )
  );
  defparam \cpu_inst/RegWriteData_wb<0>1 .INIT = 8'hAC;
  LUT3 \cpu_inst/RegWriteData_wb<0>1  (
    .I0(MemDout_wb[0]),
    .I1(\cpu_inst/dffr_MEMWB_ALUResult/q [0]),
    .I2(\cpu_inst/dffr_MEMWB_WB/q [1]),
    .O(\cpu_inst/RegWriteData_wb [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[6]),
    .I1(N9480),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi [2]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU/Result<30>80 .INIT = 16'h2000;
  LUT4 \cpu_inst/EX/ALU/Result<30>80  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N85 ),
    .I3(N9398),
    .O(\cpu_inst/EX/ALU/Result<30>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<30>140 .INIT = 16'hFFEC;
  LUT4 \cpu_inst/EX/ALU/Result<30>140  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(\cpu_inst/EX/ALU/Result<30>_map33 ),
    .I2(N9391),
    .I3(\cpu_inst/EX/ALU/Result<30>_map32 ),
    .O(\cpu_inst/EX/ALU/Result<30>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>80 .INIT = 16'h4000;
  LUT4 \cpu_inst/EX/ALU/Result<29>80  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N85 ),
    .I2(\cpu_inst/EX/ALU/N81 ),
    .I3(N9418),
    .O(\cpu_inst/EX/ALU/Result<29>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>122 .INIT = 16'hECA0;
  LUT4 \cpu_inst/EX/ALU/Result<29>122  (
    .I0(\cpu_inst/EX/ALU/N79 ),
    .I1(\cpu_inst/EX/ALU/N200 ),
    .I2(N9477),
    .I3(\cpu_inst/EX/ALU/N44 ),
    .O(\cpu_inst/EX/ALU/Result<29>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>140 .INIT = 16'hFFEC;
  LUT4 \cpu_inst/EX/ALU/Result<29>140  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(\cpu_inst/EX/ALU/Result<29>_map33 ),
    .I2(N9392),
    .I3(\cpu_inst/EX/ALU/Result<29>_map32 ),
    .O(\cpu_inst/EX/ALU/Result<29>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>23 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<0>23  (
    .I0(ALU_A[0]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0008 ),
    .I2(ALU_B[0]),
    .I3(\cpu_inst/EX/ALU/N01 ),
    .O(\cpu_inst/EX/ALU/Result<0>_map9 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>40 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<0>40  (
    .I0(ALU_B[0]),
    .I1(ALU_A[0]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .O(\cpu_inst/EX/ALU/Result<0>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>52 .INIT = 8'hFE;
  LUT3 \cpu_inst/EX/ALU/Result<0>52  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<0>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<0>_map15 ),
    .O(\cpu_inst/EX/ALU/Result<0>_map17 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>89 .INIT = 16'hFEFA;
  LUT4 \cpu_inst/EX/ALU/Result<0>89  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map17 ),
    .I1(\cpu_inst/EX/ALU/Result<0>_map20 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(\cpu_inst/EX/ALU/Result<0>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>307 .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<0>307  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [5]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .O(\cpu_inst/EX/ALU/Result<0>_map73 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>334 .INIT = 4'h2;
  LUT2 \cpu_inst/EX/ALU/Result<0>334  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [7]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [6]),
    .O(\cpu_inst/EX/ALU/Result<0>_map77 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>352 .INIT = 16'hEEEC;
  LUT4 \cpu_inst/EX/ALU/Result<0>352  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map77 ),
    .I1(\cpu_inst/EX/ALU/Result<0>_map58 ),
    .I2(\cpu_inst/EX/ALU/Result<0>_map65 ),
    .I3(\cpu_inst/EX/ALU/Result<0>_map74 ),
    .O(ALUResult[0])
  );
  defparam \cpu_inst/EX/ForwardA_0_and0000 .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ForwardA_0_and0000  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_2_75 ),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_17_72 ),
    .I2(N8265),
    .I3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_4_1_61 ),
    .O(\cpu_inst/EX/ForwardA_0_and0000_12 )
  );
  defparam \cpu_inst/EX/ForwardB_0_cmp_ne000048 .INIT = 16'h5D0C;
  LUT4 \cpu_inst/EX/ForwardB_0_cmp_ne000048  (
    .I0(\cpu_inst/dffr_IDEX_RtAddr/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [3]),
    .I2(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_1_64 ),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_1_65 ),
    .O(\cpu_inst/EX/ForwardB_0_cmp_ne0000_map16 )
  );
  defparam \cpu_inst/EX/Mmux_B_not00018 .INIT = 4'h6;
  LUT2 \cpu_inst/EX/Mmux_B_not00018  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_2_56 ),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [1]),
    .O(\cpu_inst/EX/Mmux_B_not0001_map4 )
  );
  defparam \cpu_inst/EX/Mmux_B_not000159 .INIT = 16'h7BDE;
  LUT4 \cpu_inst/EX/Mmux_B_not000159  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_17_70 ),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_1_74 ),
    .I2(\cpu_inst/dffr_IDEX_RtAddr/q [0]),
    .I3(\cpu_inst/dffr_IDEX_RtAddr/q [2]),
    .O(\cpu_inst/EX/Mmux_B_not0001_map24 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/co .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/co  (
    .I0(ALU_A[2]),
    .I1(N8447),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [2]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [3])
  );
  IBUF reset_n_IBUF (
    .I(reset_n),
    .O(reset_n_IBUF_1)
  );
  IBUF run_mode_IBUF (
    .I(run_mode),
    .O(run_mode_IBUF_3)
  );
  IBUF step_IBUF (
    .I(step),
    .O(\CLKgen/step_key_not0000 )
  );
  IBUF reset_n_vga_IBUF (
    .I(reset_n_vga),
    .O(reset_n_vga_IBUF_6)
  );
  OBUF vsync_OBUF (
    .I(\vga_ctrl/vsync_reg_2 ),
    .O(vsync)
  );
  OBUF pixel_clk_OBUF (
    .I(\CLKgen/counter_01 ),
    .O(pixel_clk)
  );
  OBUF vga_comp_synch_OBUF (
    .I(blue_2_OBUF_7),
    .O(vga_comp_synch)
  );
  OBUF blank_OBUF (
    .I(\vga_ctrl/data_en_reg_4 ),
    .O(blank)
  );
  OBUF hsync_OBUF (
    .I(\vga_ctrl/hsync_reg_5 ),
    .O(hsync)
  );
  OBUF vga_out_blank_z_OBUF (
    .I(\vga_ctrl/data_en_reg_4 ),
    .O(vga_out_blank_z)
  );
  OBUF blue_7_OBUF (
    .I(Instruction_id[20]),
    .O(blue[7])
  );
  OBUF blue_6_OBUF (
    .I(blue_2_OBUF_7),
    .O(blue[6])
  );
  OBUF blue_5_OBUF (
    .I(blue_2_OBUF_7),
    .O(blue[5])
  );
  OBUF blue_4_OBUF (
    .I(Instruction_id[20]),
    .O(blue[4])
  );
  OBUF blue_3_OBUF (
    .I(Instruction_id[20]),
    .O(blue[3])
  );
  OBUF blue_2_OBUF (
    .I(blue_2_OBUF_7),
    .O(blue[2])
  );
  OBUF blue_1_OBUF (
    .I(Instruction_id[20]),
    .O(blue[1])
  );
  OBUF blue_0_OBUF (
    .I(Instruction_id[20]),
    .O(blue[0])
  );
  OBUF green_7_OBUF (
    .I(green_0_OBUF_8),
    .O(green[7])
  );
  OBUF green_6_OBUF (
    .I(green_0_OBUF_8),
    .O(green[6])
  );
  OBUF green_5_OBUF (
    .I(green_0_OBUF_8),
    .O(green[5])
  );
  OBUF green_4_OBUF (
    .I(green_0_OBUF_8),
    .O(green[4])
  );
  OBUF green_3_OBUF (
    .I(green_0_OBUF_8),
    .O(green[3])
  );
  OBUF green_2_OBUF (
    .I(green_0_OBUF_8),
    .O(green[2])
  );
  OBUF green_1_OBUF (
    .I(green_0_OBUF_8),
    .O(green[1])
  );
  OBUF green_0_OBUF (
    .I(green_0_OBUF_8),
    .O(green[0])
  );
  OBUF red_7_OBUF (
    .I(green_0_OBUF_8),
    .O(red[7])
  );
  OBUF red_6_OBUF (
    .I(green_0_OBUF_8),
    .O(red[6])
  );
  OBUF red_5_OBUF (
    .I(green_0_OBUF_8),
    .O(red[5])
  );
  OBUF red_4_OBUF (
    .I(green_0_OBUF_8),
    .O(red[4])
  );
  OBUF red_3_OBUF (
    .I(green_0_OBUF_8),
    .O(red[3])
  );
  OBUF red_2_OBUF (
    .I(green_0_OBUF_8),
    .O(red[2])
  );
  OBUF red_1_OBUF (
    .I(green_0_OBUF_8),
    .O(red[1])
  );
  OBUF red_0_OBUF (
    .I(green_0_OBUF_8),
    .O(red[0])
  );
  FDR \CLKgen/counter_0  (
    .C(clk_BUFGP_0),
    .D(blue_2_OBUF_7),
    .R(\CLKgen/counter_01 ),
    .Q(\CLKgen/counter_01 )
  );
  FDRS \cpu_inst/dffr_IDEX_EX/q_0  (
    .C(cpu_clk),
    .D(N8478),
    .R(\cpu_inst/stall_reset ),
    .S(\cpu_inst/ID/Decode/SLL ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [0])
  );
  FDRS \cpu_inst/dffr_IDEX_EX/q_1  (
    .C(cpu_clk),
    .D(\cpu_inst/ID/Decode/N151 ),
    .R(\cpu_inst/stall_reset ),
    .S(\cpu_inst/ID/Decode/N10 ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [1])
  );
  FDRS \cpu_inst/dffr_IDEX_EX/q_2  (
    .C(cpu_clk),
    .D(N8479),
    .R(\cpu_inst/stall_reset ),
    .S(\cpu_inst/ID/Decode/SLL ),
    .Q(\cpu_inst/dffr_IDEX_EX/q [2])
  );
  FDRS \cpu_inst/dffr_IDEX_WB/q_0  (
    .C(cpu_clk),
    .D(N8480),
    .R(\cpu_inst/stall_reset ),
    .S(N1534),
    .Q(\cpu_inst/dffr_IDEX_WB/q [0])
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<1>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<1>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [1]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<1>_rt_16 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<2>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<2>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [2]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<2>_rt_17 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<3>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<3>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [3]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<3>_rt_18 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<4>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<4>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [4]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<4>_rt_19 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<5>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<5>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [5]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<5>_rt_20 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<6>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<6>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [6]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<6>_rt_21 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<7>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<7>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [7]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<7>_rt_22 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<8>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<8>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [8]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<8>_rt_23 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<9>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<9>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [9]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<9>_rt_24 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<10>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<10>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [10]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<10>_rt_25 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<11>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<11>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [11]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<11>_rt_26 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<12>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<12>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [12]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<12>_rt_27 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<13>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<13>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [13]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<13>_rt_28 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<14>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<14>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [14]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<14>_rt_29 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<15>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<15>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [15]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<15>_rt_30 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_cy<16>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_cy<16>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [16]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_cy<16>_rt_31 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<9>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<9>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [9]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<9>_rt_32 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<8>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<8>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [8]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<8>_rt_33 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<7>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<7>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [7]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<7>_rt_34 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<6>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<6>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [6]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<6>_rt_35 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<5>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<5>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [5]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<5>_rt_36 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<4>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<4>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<4>_rt_37 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<3>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<3>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [3]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<3>_rt_38 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<2>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<2>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [2]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<2>_rt_39 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_cy<1>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_cy<1>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [1]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_cy<1>_rt_40 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<8>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<8>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [8]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<8>_rt_41 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<7>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<7>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [7]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<7>_rt_42 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<6>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<6>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [6]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<6>_rt_43 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<5>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<5>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [5]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<5>_rt_44 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<4>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<4>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [4]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<4>_rt_45 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<3>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<3>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [3]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<3>_rt_46 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<2>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<2>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [2]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<2>_rt_47 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_cy<1>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_cy<1>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [1]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_cy<1>_rt_48 )
  );
  defparam \CLKgen/step_key/div_inst/Mcount_q_xor<17>_rt .INIT = 4'h2;
  LUT1 \CLKgen/step_key/div_inst/Mcount_q_xor<17>_rt  (
    .I0(\CLKgen/step_key/div_inst/q [17]),
    .O(\CLKgen/step_key/div_inst/Mcount_q_xor<17>_rt_49 )
  );
  defparam \vga_ctrl/Mcount_pixel_cnt_reg_xor<10>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_pixel_cnt_reg_xor<10>_rt  (
    .I0(\vga_ctrl/pixel_cnt_reg [10]),
    .O(\vga_ctrl/Mcount_pixel_cnt_reg_xor<10>_rt_50 )
  );
  defparam \vga_ctrl/Mcount_line_cnt_reg_xor<9>_rt .INIT = 4'h2;
  LUT1 \vga_ctrl/Mcount_line_cnt_reg_xor<9>_rt  (
    .I0(\vga_ctrl/line_cnt_reg [9]),
    .O(\vga_ctrl/Mcount_line_cnt_reg_xor<9>_rt_51 )
  );
  defparam \cpu_inst/EX/ForwardB_0_cmp_ne000073_SW0 .INIT = 16'h3CBE;
  LUT4 \cpu_inst/EX/ForwardB_0_cmp_ne000073_SW0  (
    .I0(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_1_64 ),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [2]),
    .I2(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .I3(\cpu_inst/dffr_IDEX_RtAddr/q [3]),
    .O(N8485)
  );
  defparam \cpu_inst/EX/Mmux_B1_SW2 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/Mmux_B1_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [0]),
    .I1(\cpu_inst/RegWriteData_wb [0]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .O(N8487)
  );
  defparam \cpu_inst/EX/Mmux_B1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/Mmux_B1  (
    .I0(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [0]),
    .I2(N8487),
    .O(\cpu_inst/MemWriteData_ex [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27 .INIT = 16'hBF80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27  (
    .I0(N8490),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [3]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1]),
    .I3(N8489),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [2])
  );
  defparam \cpu_inst/EX/ALU/Result<29>244_SW0 .INIT = 8'h28;
  LUT3 \cpu_inst/EX/ALU/Result<29>244_SW0  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [1]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/Mxor_s_xo [0]),
    .O(N8507)
  );
  defparam \cpu_inst/EX/ALU/Result<29>244_SW1 .INIT = 8'h28;
  LUT3 \cpu_inst/EX/ALU/Result<29>244_SW1  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/Mxor_s_xo [0]),
    .O(N8508)
  );
  defparam \cpu_inst/EX/ALU/Result<27>224_SW1 .INIT = 8'h28;
  LUT3 \cpu_inst/EX/ALU/Result<27>224_SW1  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(N9453),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [3]),
    .O(N8511)
  );
  defparam \cpu_inst/EX/ALU/Result<27>224 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<27>224  (
    .I0(N8510),
    .I1(N8511),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [5]),
    .I3(\cpu_inst/EX/ALU/Result<27>_map35 ),
    .O(ALUResult[27])
  );
  defparam \cpu_inst/EX/ALU/Result<26>224 .INIT = 16'hFFAC;
  LUT4 \cpu_inst/EX/ALU/Result<26>224  (
    .I0(N8514),
    .I1(N8513),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [5]),
    .I3(\cpu_inst/EX/ALU/Result<26>_map35 ),
    .O(ALUResult[26])
  );
  defparam \cpu_inst/EX/ALU/Result<25>224 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<25>224  (
    .I0(N8516),
    .I1(N8517),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [5]),
    .I3(\cpu_inst/EX/ALU/Result<25>_map35 ),
    .O(ALUResult[25])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW0 .INIT = 16'hFF28;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW0  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [3]),
    .I3(\cpu_inst/EX/ALU/Result<31>_map26 ),
    .O(N8529)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW1 .INIT = 16'hFF28;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW1  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [3]),
    .I3(\cpu_inst/EX/ALU/Result<31>_map26 ),
    .O(N8530)
  );
  defparam \cpu_inst/EX/ALU/B_adder<9>1 .INIT = 16'hF870;
  LUT4 \cpu_inst/EX/ALU/B_adder<9>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [9]),
    .I3(N9467),
    .O(\cpu_inst/EX/ALU/B_adder[9] )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/co_SW0 .INIT = 16'hF870;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/co_SW0  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [3]),
    .I3(ALU_B[3]),
    .O(N8445)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/co .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/co  (
    .I0(N8445),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [3]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [0])
  );
  defparam \cpu_inst/EX/ForwardB_0_cmp_ne000073 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ForwardB_0_cmp_ne000073  (
    .I0(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4]),
    .I1(N9483),
    .I2(N8485),
    .I3(\cpu_inst/EX/ForwardB_0_cmp_ne0000_map16 ),
    .O(\cpu_inst/EX/ForwardB_0_cmp_ne0000 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst0/co1 .INIT = 16'hB080;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst0/co1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[0] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ALU_A<0>39_78 ),
    .I3(\cpu_inst/MemWriteData_ex [0]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [1])
  );
  defparam \cpu_inst/EX/ALU/Result<23>224_SW1 .INIT = 8'h28;
  LUT3 \cpu_inst/EX/ALU/Result<23>224_SW1  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(N9452),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .O(N8546)
  );
  defparam \cpu_inst/EX/ALU/Result<23>224 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<23>224  (
    .I0(N8545),
    .I1(N8546),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(\cpu_inst/EX/ALU/Result<23>_map35 ),
    .O(ALUResult[23])
  );
  defparam \cpu_inst/EX/ALU/Result<22>231 .INIT = 16'hFFAC;
  LUT4 \cpu_inst/EX/ALU/Result<22>231  (
    .I0(N8549),
    .I1(N8548),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(\cpu_inst/EX/ALU/Result<22>_map37 ),
    .O(ALUResult[22])
  );
  defparam \cpu_inst/EX/ALU/Result<21>231 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<21>231  (
    .I0(N8551),
    .I1(N8552),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(\cpu_inst/EX/ALU/Result<21>_map37 ),
    .O(ALUResult[21])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW0_SW0 .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW0_SW0  (
    .I0(ALU_A[11]),
    .I1(N9481),
    .I2(ALU_A[10]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co_map9 ),
    .O(N8554)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW0_SW1 .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW0_SW1  (
    .I0(ALU_A[11]),
    .I1(\cpu_inst/EX/ALU/B_adder[10] ),
    .I2(ALU_A[10]),
    .I3(N9493),
    .O(N8555)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW0 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW0  (
    .I0(N9476),
    .I1(N8554),
    .I2(N8555),
    .O(N8489)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<6>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<6>1  (
    .I0(N8558),
    .I1(N8557),
    .I2(N6793),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [6])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<5>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<5>1  (
    .I0(N8561),
    .I1(N8560),
    .I2(N6927),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [5])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<4>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<4>1  (
    .I0(N8564),
    .I1(N8563),
    .I2(N7048),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [4])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<3>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<3>1  (
    .I0(N8567),
    .I1(N8566),
    .I2(N7442),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [3])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<2>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<2>1  (
    .I0(N8570),
    .I1(N8569),
    .I2(N7446),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [2])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<1>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<1>1  (
    .I0(N8573),
    .I1(N8572),
    .I2(N7451),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW3 .INIT = 16'hD8F0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW3  (
    .I0(N8499),
    .I1(N8502),
    .I2(N9492),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [3]),
    .O(N8576)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW1 .INIT = 4'hE;
  LUT2 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW1  (
    .I0(N9482),
    .I1(ALU_A[7]),
    .O(N8579)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27 .INIT = 16'hEC4C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi [3]),
    .I1(N8578),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [0]),
    .I3(N8579),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1])
  );
  defparam \cpu_inst/EX/Mmux_B_not000190_SW0 .INIT = 8'hF6;
  LUT3 \cpu_inst/EX/Mmux_B_not000190_SW0  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_17_67 ),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [1]),
    .I2(N9479),
    .O(N8589)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<22>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<22>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [22]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [22])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<23>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<23>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [23]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [23])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<24>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<24>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [24]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [24])
  );
  defparam \cpu_inst/EX/ALU/Result<19>236_SW1 .INIT = 8'h28;
  LUT3 \cpu_inst/EX/ALU/Result<19>236_SW1  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(N9450),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [3]),
    .O(N8592)
  );
  defparam \cpu_inst/EX/ALU/Result<19>236 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<19>236  (
    .I0(N8591),
    .I1(N8592),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [3]),
    .I3(\cpu_inst/EX/ALU/Result<19>_map38 ),
    .O(ALUResult[19])
  );
  defparam \cpu_inst/EX/ALU/Result<18>237 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<18>237  (
    .I0(N8594),
    .I1(N8595),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [3]),
    .I3(\cpu_inst/EX/ALU/Result<18>_map38 ),
    .O(ALUResult[18])
  );
  defparam \cpu_inst/EX/ALU/Result<17>236_SW0 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<17>236_SW0  (
    .I0(N9511),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi [1]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8597)
  );
  defparam \cpu_inst/EX/ALU/Result<17>236_SW1 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<17>236_SW1  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8598)
  );
  defparam \cpu_inst/EX/ALU/Result<17>236 .INIT = 16'hFFCA;
  LUT4 \cpu_inst/EX/ALU/Result<17>236  (
    .I0(N8597),
    .I1(N8598),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [3]),
    .I3(\cpu_inst/EX/ALU/Result<17>_map38 ),
    .O(ALUResult[17])
  );
  defparam \cpu_inst/EX/ALU_B<0>1 .INIT = 8'hCA;
  LUT3 \cpu_inst/EX/ALU_B<0>1  (
    .I0(N8600),
    .I1(N8601),
    .I2(N8487),
    .O(ALU_B[0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW2 .INIT = 16'hB8F0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW2  (
    .I0(N8499),
    .I1(N8495),
    .I2(N8498),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .O(N8603)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW3 .INIT = 16'hD8F0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW3  (
    .I0(N8496),
    .I1(N9497),
    .I2(N8498),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .O(N8604)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [3]),
    .I1(N8604),
    .I2(N9506),
    .I3(N8603),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [5])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst2/co1_SW0 .INIT = 16'hE8A0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst2/co1_SW0  (
    .I0(ALU_A[27]),
    .I1(ALU_A[26]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co_map9 ),
    .I3(N9495),
    .O(N8606)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst2/co1_SW1 .INIT = 16'hFAE8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst2/co1_SW1  (
    .I0(ALU_A[27]),
    .I1(ALU_A[26]),
    .I2(N9502),
    .I3(\cpu_inst/EX/ALU/B_adder[26] ),
    .O(N8607)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW2 .INIT = 16'hA808;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW2  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map64 ),
    .I1(N8532),
    .I2(N8575),
    .I3(N9500),
    .O(N8609)
  );
  defparam \cpu_inst/EX/ALU/Result<0>287 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/Result<0>287  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .I1(N8610),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(N8609),
    .O(\cpu_inst/EX/ALU/Result<0>_map65 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW4 .INIT = 16'hA808;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW4  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map73 ),
    .I1(N8535),
    .I2(N9485),
    .I3(N8536),
    .O(N8612)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW5 .INIT = 16'hA808;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW5  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map73 ),
    .I1(N9499),
    .I2(N8576),
    .I3(N8536),
    .O(N8613)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW6 .INIT = 16'hF2F8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW6  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(N9451),
    .I2(\cpu_inst/EX/ALU/Result<28>_map40 ),
    .I3(N8575),
    .O(N8615)
  );
  defparam \cpu_inst/EX/ALU/Result<28>215 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/Result<28>215  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .I1(N8616),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(N8615),
    .O(ALUResult[28])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW8 .INIT = 16'hFCFA;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW8  (
    .I0(N9505),
    .I1(N8505),
    .I2(\cpu_inst/EX/ALU/Result<30>_map40 ),
    .I3(N8575),
    .O(N8618)
  );
  defparam \cpu_inst/EX/ALU/Result<30>244 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/Result<30>244  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .I1(N8619),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(N8618),
    .O(ALUResult[30])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW10 .INIT = 16'hFCFA;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW10  (
    .I0(N8507),
    .I1(N8508),
    .I2(\cpu_inst/EX/ALU/Result<29>_map40 ),
    .I3(N8575),
    .O(N8621)
  );
  defparam \cpu_inst/EX/ALU/Result<29>244 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/Result<29>244  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .I1(N8622),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(N8621),
    .O(ALUResult[29])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW12 .INIT = 16'hFEAE;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW12  (
    .I0(\cpu_inst/EX/ALU/Result<31>_map49 ),
    .I1(N8529),
    .I2(N8575),
    .I3(N8530),
    .O(N8624)
  );
  defparam \cpu_inst/EX/ALU/Result<31>232 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/Result<31>232  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .I1(N8625),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(N8624),
    .O(ALUResult[31])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW1 .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[27]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [27]),
    .I3(ALU_A[27]),
    .O(N8502)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<25>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<25>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [25]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [25])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<26>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<26>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [26]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [26])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<27>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<27>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [27]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [27])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<28>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<28>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [28]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [28])
  );
  defparam \cpu_inst/EX/Mmux_B1_SW0 .INIT = 16'h888B;
  LUT4 \cpu_inst/EX/Mmux_B1_SW0  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[0] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8635),
    .O(N8600)
  );
  defparam \cpu_inst/EX/Mmux_B1_SW1 .INIT = 16'hB8BB;
  LUT4 \cpu_inst/EX/Mmux_B1_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[0] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8637),
    .O(N8601)
  );
  defparam \cpu_inst/EX/Mmux_B12_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B12_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[1] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8639),
    .O(N8572)
  );
  defparam \cpu_inst/EX/Mmux_B12_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B12_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[1] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8641),
    .O(N8573)
  );
  defparam \cpu_inst/EX/Mmux_B23_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B23_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[2] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8643),
    .O(N8569)
  );
  defparam \cpu_inst/EX/Mmux_B23_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B23_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[2] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8645),
    .O(N8570)
  );
  defparam \cpu_inst/EX/Mmux_B26_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B26_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[3] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8647),
    .O(N8566)
  );
  defparam \cpu_inst/EX/Mmux_B26_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B26_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[3] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8649),
    .O(N8567)
  );
  defparam \cpu_inst/EX/Mmux_B27_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B27_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8651),
    .O(N8563)
  );
  defparam \cpu_inst/EX/Mmux_B27_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B27_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8653),
    .O(N8564)
  );
  defparam \cpu_inst/EX/Mmux_B28_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B28_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8655),
    .O(N8560)
  );
  defparam \cpu_inst/EX/Mmux_B28_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B28_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8657),
    .O(N8561)
  );
  defparam \cpu_inst/EX/Mmux_B29_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B29_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [0]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8659),
    .O(N8557)
  );
  defparam \cpu_inst/EX/Mmux_B29_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B29_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [0]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8661),
    .O(N8558)
  );
  defparam \cpu_inst/EX/Mmux_B9_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B9_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [17]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8663)
  );
  defparam \cpu_inst/EX/Mmux_B9_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B9_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [17]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8664)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<17>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<17>1  (
    .I0(N8664),
    .I1(N8663),
    .I2(N5016),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [17])
  );
  defparam \cpu_inst/EX/Mmux_B8_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B8_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [16]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8666)
  );
  defparam \cpu_inst/EX/Mmux_B8_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B8_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [16]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8667)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<16>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<16>1  (
    .I0(N8667),
    .I1(N8666),
    .I2(N5572),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [16])
  );
  defparam \cpu_inst/EX/Mmux_B7_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B7_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [15]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8669)
  );
  defparam \cpu_inst/EX/Mmux_B7_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B7_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [15]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8670)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<15>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<15>1  (
    .I0(N8670),
    .I1(N8669),
    .I2(N5577),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [15])
  );
  defparam \cpu_inst/EX/Mmux_B6_SW1 .INIT = 16'hAA0C;
  LUT4 \cpu_inst/EX/Mmux_B6_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[14] ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [14]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8672)
  );
  defparam \cpu_inst/EX/Mmux_B6_SW2 .INIT = 16'hAAFC;
  LUT4 \cpu_inst/EX/Mmux_B6_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[14] ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [14]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8673)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<14>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<14>1  (
    .I0(N8673),
    .I1(N8672),
    .I2(N5582),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [14])
  );
  defparam \cpu_inst/EX/Mmux_B5_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B5_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [13]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8675)
  );
  defparam \cpu_inst/EX/Mmux_B5_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B5_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [13]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8676)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<13>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<13>1  (
    .I0(N8676),
    .I1(N8675),
    .I2(N5625),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [13])
  );
  defparam \cpu_inst/EX/Mmux_B4_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B4_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [12]),
    .I1(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8678)
  );
  defparam \cpu_inst/EX/Mmux_B4_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B4_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [12]),
    .I1(\cpu_inst/dffr_IDEX_Imm/q[5] ),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8679)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<12>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<12>1  (
    .I0(N8679),
    .I1(N8678),
    .I2(N5748),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [12])
  );
  defparam \cpu_inst/EX/Mmux_B3_SW1 .INIT = 16'hAA0C;
  LUT4 \cpu_inst/EX/Mmux_B3_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[11] ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [11]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8681)
  );
  defparam \cpu_inst/EX/Mmux_B3_SW2 .INIT = 16'hAAFC;
  LUT4 \cpu_inst/EX/Mmux_B3_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Imm/q[11] ),
    .I1(\cpu_inst/dffr_EXMEM_ALUResult/q [11]),
    .I2(N9478),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8682)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<11>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<11>1  (
    .I0(N8682),
    .I1(N8681),
    .I2(N6156),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [11])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<10>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<10>1  (
    .I0(N8685),
    .I1(N8684),
    .I2(N6161),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [10])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<9>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<9>1  (
    .I0(N8688),
    .I1(N8687),
    .I2(N6229),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [9])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<8>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<8>1  (
    .I0(N8691),
    .I1(N8690),
    .I2(N6380),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [8])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<7>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<7>1  (
    .I0(N8694),
    .I1(N8693),
    .I2(N6788),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [7])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst2/co1_SW0 .INIT = 16'hE8A0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst2/co1_SW0  (
    .I0(ALU_A[23]),
    .I1(ALU_A[22]),
    .I2(N9503),
    .I3(\cpu_inst/EX/ALU/B_adder[22] ),
    .O(N8696)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW0 .INIT = 8'hAC;
  LUT3 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW0  (
    .I0(N8697),
    .I1(N8696),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi [2]),
    .O(N8498)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst2/co1_SW0 .INIT = 16'h1320;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst2/co1_SW0  (
    .I0(ALU_A[30]),
    .I1(\cpu_inst/EX/ALU/Result_xor0016 [31]),
    .I2(\cpu_inst/EX/ALU/B_adder[30] ),
    .I3(N9455),
    .O(N8699)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW2 .INIT = 16'hFBEA;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW2  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map60 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [2]),
    .I2(N9498),
    .I3(N8699),
    .O(N8532)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW5 .INIT = 16'hFBEA;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW5  (
    .I0(N9514),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [2]),
    .I2(N8700),
    .I3(N8699),
    .O(N8536)
  );
  defparam \cpu_inst/EX/Mmux_B27_SW0 .INIT = 16'hFD20;
  LUT4 \cpu_inst/EX/Mmux_B27_SW0  (
    .I0(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I1(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .I2(N8711),
    .I3(\cpu_inst/dffr_IDEX_RtData/q [4]),
    .O(N7048)
  );
  defparam \cpu_inst/EX/Mmux_B26_SW0 .INIT = 16'hFD20;
  LUT4 \cpu_inst/EX/Mmux_B26_SW0  (
    .I0(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I1(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .I2(N8713),
    .I3(\cpu_inst/dffr_IDEX_RtData/q [3]),
    .O(N7442)
  );
  defparam \cpu_inst/EX/Mmux_B23_SW0 .INIT = 16'hFD20;
  LUT4 \cpu_inst/EX/Mmux_B23_SW0  (
    .I0(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I1(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .I2(N8715),
    .I3(\cpu_inst/dffr_IDEX_RtData/q [2]),
    .O(N7446)
  );
  defparam \cpu_inst/EX/Mmux_B12_SW0 .INIT = 16'hFD20;
  LUT4 \cpu_inst/EX/Mmux_B12_SW0  (
    .I0(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I1(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .I2(N8717),
    .I3(\cpu_inst/dffr_IDEX_RtData/q [1]),
    .O(N7451)
  );
  defparam \cpu_inst/EX/Mmux_A_not000154 .INIT = 16'hFFFD;
  LUT4 \cpu_inst/EX/Mmux_A_not000154  (
    .I0(\cpu_inst/dffr_MEMWB_WB/q_0_2_69 ),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_3_76 ),
    .I3(N8722),
    .O(\cpu_inst/EX/Mmux_A_not0001_map20 )
  );
  defparam \cpu_inst/EX/ALU_A<0>39 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/ALU_A<0>39  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [0]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I2(\cpu_inst/EX/ALU_A<0>_map7 ),
    .I3(\cpu_inst/EX/ALU_A<0>_map5 ),
    .O(ALU_A[0])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<29>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<29>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [29]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [29])
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<30>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<30>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [30]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [30])
  );
  defparam \cpu_inst/EX/Mmux_B30_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B30_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [1]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8724),
    .O(N8693)
  );
  defparam \cpu_inst/EX/Mmux_B30_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B30_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [1]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8726),
    .O(N8694)
  );
  defparam \cpu_inst/EX/Mmux_B11_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B11_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [19]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8728)
  );
  defparam \cpu_inst/EX/Mmux_B11_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B11_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [19]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8729)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<19>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<19>1  (
    .I0(N8729),
    .I1(N8728),
    .I2(N4999),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [19])
  );
  defparam \cpu_inst/EX/Mmux_B10_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B10_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [18]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8731)
  );
  defparam \cpu_inst/EX/Mmux_B10_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B10_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [18]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8732)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<18>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<18>1  (
    .I0(N8732),
    .I1(N8731),
    .I2(N5004),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [18])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW3 .INIT = 16'hB8F0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW3  (
    .I0(N8496),
    .I1(N9466),
    .I2(N8495),
    .I3(N8492),
    .O(N8734)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW4 .INIT = 16'hD8F0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW4  (
    .I0(N8493),
    .I1(N9504),
    .I2(N8495),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [3]),
    .O(N8735)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [3]),
    .I1(N8735),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [2]),
    .I3(N8734),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co18 .INIT = 16'hF870;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co18  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [15]),
    .I3(ALU_B[15]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co_map9 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[29]),
    .I2(ALU_B[29]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [29]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/Result<30>244_SW1 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<30>244_SW1  (
    .I0(ALU_A[30]),
    .I1(N9501),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8505)
  );
  defparam \cpu_inst/EX/Mmux_B31_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B31_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8746),
    .O(N8690)
  );
  defparam \cpu_inst/EX/Mmux_B31_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B31_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8748),
    .O(N8691)
  );
  defparam \cpu_inst/EX/Mmux_B32_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B32_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8750),
    .O(N8687)
  );
  defparam \cpu_inst/EX/Mmux_B32_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B32_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8752),
    .O(N8688)
  );
  defparam \cpu_inst/EX/Mmux_B2_SW1 .INIT = 16'h8B88;
  LUT4 \cpu_inst/EX/Mmux_B2_SW1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8754),
    .O(N8684)
  );
  defparam \cpu_inst/EX/Mmux_B2_SW2 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/Mmux_B2_SW2  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne0000 ),
    .I3(N8756),
    .O(N8685)
  );
  defparam \cpu_inst/EX/Mmux_B14_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B14_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [21]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8758)
  );
  defparam \cpu_inst/EX/Mmux_B14_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B14_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [21]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8759)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<21>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<21>1  (
    .I0(N8759),
    .I1(N8758),
    .I2(N4439),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [21])
  );
  defparam \cpu_inst/EX/Mmux_B13_SW1 .INIT = 16'hCC0A;
  LUT4 \cpu_inst/EX/Mmux_B13_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [20]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8761)
  );
  defparam \cpu_inst/EX/Mmux_B13_SW2 .INIT = 16'hCCFA;
  LUT4 \cpu_inst/EX/Mmux_B13_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [20]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0000_13 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [1]),
    .O(N8762)
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<20>1 .INIT = 8'h53;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<20>1  (
    .I0(N8762),
    .I1(N8761),
    .I2(N4994),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [20])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW2_SW0 .INIT = 16'hACCC;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW2_SW0  (
    .I0(N9496),
    .I1(N8492),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [3]),
    .I3(N8489),
    .O(N8767)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW2_SW1 .INIT = 16'hDF80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW2_SW1  (
    .I0(N9484),
    .I1(N8493),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [3]),
    .I3(N8492),
    .O(N8768)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co18 .INIT = 16'hF870;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co18  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [19]),
    .I3(ALU_B[19]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co_map9 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<40> .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<40>  (
    .I0(ALU_A[1]),
    .I1(N8774),
    .I2(\cpu_inst/EX/ALU/N50 ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[40] )
  );
  defparam \cpu_inst/EX/ALU/Result<0>259 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<0>259  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map23 ),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .I2(\cpu_inst/EX/ALU/Result<0>_map36 ),
    .I3(\cpu_inst/EX/ALU/Result<0>_map57 ),
    .O(\cpu_inst/EX/ALU/Result<0>_map58 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>81 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<10>81  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/Result<10>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<10>_map6 ),
    .I3(N8776),
    .O(\cpu_inst/EX/ALU/Result<10>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>74 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<3>74  (
    .I0(\cpu_inst/EX/ALU/Result<3>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<3>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<3>_map15 ),
    .I3(\cpu_inst/EX/ALU/Result<3>_map21 ),
    .O(\cpu_inst/EX/ALU/Result<3>_map22 )
  );
  defparam \cpu_inst/EX/ALU_A<1>39 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/ALU_A<1>39  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [1]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I2(\cpu_inst/EX/ALU_A<1>_map7 ),
    .I3(\cpu_inst/EX/ALU_A<1>_map5 ),
    .O(ALU_A[1])
  );
  defparam \cpu_inst/EX/ALU_A<24> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<24>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8782),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [24]),
    .O(ALU_A[24])
  );
  defparam \cpu_inst/EX/ALU_A<22> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<22>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8784),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [22]),
    .O(ALU_A[22])
  );
  defparam \cpu_inst/EX/ALU_A<21> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<21>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8786),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [21]),
    .O(ALU_A[21])
  );
  defparam \cpu_inst/EX/ALU/Result<14>155 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<14>155  (
    .I0(\cpu_inst/EX/ALU/Result<14>_map18 ),
    .I1(\cpu_inst/EX/ALU/Result<14>_map36 ),
    .I2(\cpu_inst/EX/ALU/N81 ),
    .I3(N8788),
    .O(\cpu_inst/EX/ALU/Result<14>_map39 )
  );
  defparam \cpu_inst/EX/ALU_A<25> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<25>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8790),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [25]),
    .O(ALU_A[25])
  );
  defparam \cpu_inst/EX/ALU_A<19> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<19>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8792),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [19]),
    .O(ALU_A[19])
  );
  defparam \cpu_inst/EX/ALU_A<20> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<20>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8794),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [20]),
    .O(ALU_A[20])
  );
  defparam \cpu_inst/EX/ALU_A<16> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<16>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8796),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [16]),
    .O(ALU_A[16])
  );
  defparam \cpu_inst/EX/ALU_A<23> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<23>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8798),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [23]),
    .O(ALU_A[23])
  );
  defparam \cpu_inst/EX/ALU_A<18> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<18>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8800),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [18]),
    .O(ALU_A[18])
  );
  defparam \cpu_inst/EX/ALU_A<17> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<17>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8802),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [17]),
    .O(ALU_A[17])
  );
  defparam \cpu_inst/EX/ALU_A<15> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<15>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8804),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [15]),
    .O(ALU_A[15])
  );
  defparam \cpu_inst/EX/ALU_A<26> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<26>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8806),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [26]),
    .O(ALU_A[26])
  );
  defparam \cpu_inst/EX/ALU_A<14> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<14>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8808),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [14]),
    .O(ALU_A[14])
  );
  defparam \cpu_inst/EX/ALU_A<13> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<13>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8810),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [13]),
    .O(ALU_A[13])
  );
  defparam \cpu_inst/EX/ALU_A<12> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<12>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8812),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [12]),
    .O(ALU_A[12])
  );
  defparam \cpu_inst/EX/ALU_A<27> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<27>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8814),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [27]),
    .O(ALU_A[27])
  );
  defparam \cpu_inst/EX/ALU_A<11> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<11>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8816),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [11]),
    .O(ALU_A[11])
  );
  defparam \cpu_inst/EX/ALU_A<10> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<10>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8818),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [10]),
    .O(ALU_A[10])
  );
  defparam \cpu_inst/EX/ALU_A<9> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<9>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8820),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [9]),
    .O(ALU_A[9])
  );
  defparam \cpu_inst/EX/ALU_A<28> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<28>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8822),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [28]),
    .O(ALU_A[28])
  );
  defparam \cpu_inst/EX/ALU_A<7> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<7>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8824),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [7]),
    .O(ALU_A[7])
  );
  defparam \cpu_inst/EX/ALU_A<8> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<8>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8826),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [8]),
    .O(ALU_A[8])
  );
  defparam \cpu_inst/EX/ALU_A<6> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<6>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8828),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [6]),
    .O(ALU_A[6])
  );
  defparam \cpu_inst/EX/ALU_A<29> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<29>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8830),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [29]),
    .O(ALU_A[29])
  );
  defparam \cpu_inst/EX/ALU_A<31> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<31>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8832),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [31]),
    .O(ALU_A[31])
  );
  defparam \cpu_inst/EX/ALU_A<30> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<30>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8834),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [30]),
    .O(ALU_A[30])
  );
  defparam \cpu_inst/EX/ALU_A<5> .INIT = 16'h1504;
  LUT4 \cpu_inst/EX/ALU_A<5>  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .I2(N8836),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [5]),
    .O(ALU_A[5])
  );
  defparam \cpu_inst/EX/ALU/Result<0>198_SW0 .INIT = 16'hF222;
  LUT4 \cpu_inst/EX/ALU/Result<0>198_SW0  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map42 ),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/N102 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[8] ),
    .O(N8838)
  );
  defparam \cpu_inst/EX/ALU/Result<10>122 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<10>122  (
    .I0(\cpu_inst/EX/ALU/N97 ),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .I3(N9413),
    .O(\cpu_inst/EX/ALU/Result<10>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>127 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<12>127  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] ),
    .O(\cpu_inst/EX/ALU/Result<12>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>118 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<15>118  (
    .I0(N9374),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ),
    .O(\cpu_inst/EX/ALU/Result<15>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Madd_B_adder_not0000<31>1 .INIT = 8'h47;
  LUT3 \cpu_inst/EX/ALU/Madd_B_adder_not0000<31>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [31]),
    .O(\cpu_inst/EX/ALU/Madd_B_adder_not0000 [31])
  );
  defparam \cpu_inst/EX/ALU/Result<25>224_SW0 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<25>224_SW0  (
    .I0(ALU_A[25]),
    .I1(N9489),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi [1]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8516)
  );
  defparam \cpu_inst/EX/ALU/Result<25>224_SW1 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<25>224_SW1  (
    .I0(ALU_A[25]),
    .I1(\cpu_inst/EX/ALU/B_adder[25] ),
    .I2(N9457),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8517)
  );
  defparam \cpu_inst/EX/ALU/Result<21>231_SW0 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<21>231_SW0  (
    .I0(ALU_A[21]),
    .I1(N9487),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi [1]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8551)
  );
  defparam \cpu_inst/EX/ALU/Result<21>231_SW1 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<21>231_SW1  (
    .I0(ALU_A[21]),
    .I1(\cpu_inst/EX/ALU/B_adder[21] ),
    .I2(N9460),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8552)
  );
  defparam \cpu_inst/EX/ALU/Result<28>135 .INIT = 16'hE040;
  LUT4 \cpu_inst/EX/ALU/Result<28>135  (
    .I0(ALU_A[0]),
    .I1(N9388),
    .I2(\cpu_inst/EX/ALU/N102 ),
    .I3(N2202),
    .O(\cpu_inst/EX/ALU/Result<28>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Result<30>127 .INIT = 16'hD080;
  LUT4 \cpu_inst/EX/ALU/Result<30>127  (
    .I0(ALU_A[0]),
    .I1(N9386),
    .I2(\cpu_inst/EX/ALU/N102 ),
    .I3(N2193),
    .O(\cpu_inst/EX/ALU/Result<30>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>127 .INIT = 16'hD080;
  LUT4 \cpu_inst/EX/ALU/Result<29>127  (
    .I0(ALU_A[0]),
    .I1(N2199),
    .I2(N9513),
    .I3(N2196),
    .O(\cpu_inst/EX/ALU/Result<29>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>199_SW0 .INIT = 8'h60;
  LUT3 \cpu_inst/EX/ALU/Result<3>199_SW0  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [3]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/Mxor_s_xo [0]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8852)
  );
  defparam \cpu_inst/EX/ALU/Result<3>232 .INIT = 16'hFEFC;
  LUT4 \cpu_inst/EX/ALU/Result<3>232  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(N8852),
    .I2(\cpu_inst/EX/ALU/Result<3>_map34 ),
    .I3(\cpu_inst/EX/ALU/Result<3>_map45 ),
    .O(ALUResult[3])
  );
  defparam \cpu_inst/EX/ALU/Result<0>2_SW0_SW0 .INIT = 4'hD;
  LUT2 \cpu_inst/EX/ALU/Result<0>2_SW0_SW0  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .O(N8854)
  );
  defparam \cpu_inst/EX/ALU/Result<0>2 .INIT = 16'h2000;
  LUT4 \cpu_inst/EX/ALU/Result<0>2  (
    .I0(\cpu_inst/EX/ALU/Result_or0018 ),
    .I1(N8854),
    .I2(\cpu_inst/EX/ALU/N201 ),
    .I3(N9425),
    .O(\cpu_inst/EX/ALU/N42 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>160_SW0 .INIT = 8'h28;
  LUT3 \cpu_inst/EX/ALU/Result<4>160_SW0  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [0]),
    .O(N8856)
  );
  defparam \cpu_inst/EX/ALU/Result<4>193 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<4>193  (
    .I0(\cpu_inst/EX/ALU/Result<4>_map22 ),
    .I1(N8856),
    .I2(\cpu_inst/EX/ALU/Result<4>_map39 ),
    .I3(\cpu_inst/EX/ALU/Result<4>_map32 ),
    .O(ALUResult[4])
  );
  defparam \cpu_inst/EX/ALU/Result<2>236 .INIT = 16'hFFF8;
  LUT4 \cpu_inst/EX/ALU/Result<2>236  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(\cpu_inst/EX/ALU/Result<2>_map45 ),
    .I2(\cpu_inst/EX/ALU/Result<2>_map33 ),
    .I3(N8864),
    .O(ALUResult[2])
  );
  defparam \cpu_inst/EX/ALU/Result<26>224_SW0 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<26>224_SW0  (
    .I0(ALU_A[26]),
    .I1(\cpu_inst/EX/ALU/B_adder[26] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8513)
  );
  defparam \cpu_inst/EX/ALU/Result<26>224_SW1 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<26>224_SW1  (
    .I0(ALU_A[26]),
    .I1(\cpu_inst/EX/ALU/B_adder[26] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8514)
  );
  defparam \cpu_inst/EX/ALU/Result<22>231_SW0 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<22>231_SW0  (
    .I0(ALU_A[22]),
    .I1(\cpu_inst/EX/ALU/B_adder[22] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8548)
  );
  defparam \cpu_inst/EX/ALU/Result<22>231_SW1 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<22>231_SW1  (
    .I0(ALU_A[22]),
    .I1(N9490),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8549)
  );
  defparam \cpu_inst/EX/ALU/Result<28>180 .INIT = 16'hFFF8;
  LUT4 \cpu_inst/EX/ALU/Result<28>180  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<28>_map23 ),
    .I2(\cpu_inst/EX/ALU/Result<28>_map39 ),
    .I3(N8868),
    .O(\cpu_inst/EX/ALU/Result<28>_map40 )
  );
  defparam \cpu_inst/EX/ALU/Result<30>172 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<30>172  (
    .I0(\cpu_inst/EX/ALU/Result<30>_map23 ),
    .I1(\cpu_inst/EX/ALU/Result<30>_map3 ),
    .I2(\cpu_inst/EX/ALU/Result<30>_map39 ),
    .I3(N8870),
    .O(\cpu_inst/EX/ALU/Result<30>_map40 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>172 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<29>172  (
    .I0(\cpu_inst/EX/ALU/Result<29>_map23 ),
    .I1(\cpu_inst/EX/ALU/Result<29>_map3 ),
    .I2(\cpu_inst/EX/ALU/Result<29>_map39 ),
    .I3(N8872),
    .O(\cpu_inst/EX/ALU/Result<29>_map40 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>255 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<1>255  (
    .I0(\cpu_inst/EX/ALU/Result<1>_map23 ),
    .I1(\cpu_inst/EX/ALU/Result<1>_map49 ),
    .I2(\cpu_inst/EX/ALU/N81 ),
    .I3(N8886),
    .O(ALUResult[1])
  );
  defparam \cpu_inst/EX/ALU_A<3>39 .INIT = 16'hDDD8;
  LUT4 \cpu_inst/EX/ALU_A<3>39  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/ALU_A<3>_map7 ),
    .I3(\cpu_inst/EX/ALU_A<3>_map5 ),
    .O(ALU_A[3])
  );
  defparam \cpu_inst/EX/ALU_A<4>39 .INIT = 16'hDDD8;
  LUT4 \cpu_inst/EX/ALU_A<4>39  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/ALU_A<4>_map7 ),
    .I3(\cpu_inst/EX/ALU_A<4>_map5 ),
    .O(ALU_A[4])
  );
  defparam \cpu_inst/EX/ALU/Result<30>9 .INIT = 16'hB800;
  LUT4 \cpu_inst/EX/ALU/Result<30>9  (
    .I0(ALU_B[31]),
    .I1(\cpu_inst/EX/ALU/N1 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[62] ),
    .I3(\cpu_inst/EX/ALU/N95 ),
    .O(\cpu_inst/EX/ALU/Result<30>_map3 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>9 .INIT = 16'hB080;
  LUT4 \cpu_inst/EX/ALU/Result<29>9  (
    .I0(ALU_B[31]),
    .I1(N9399),
    .I2(\cpu_inst/EX/ALU/N95 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[61] ),
    .O(\cpu_inst/EX/ALU/Result<29>_map3 )
  );
  defparam \cpu_inst/EX/ALU/Result<31>93 .INIT = 16'hFEFA;
  LUT4 \cpu_inst/EX/ALU/Result<31>93  (
    .I0(N8888),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Result<31>_map25 ),
    .I3(\cpu_inst/EX/ALU/Result<31>_map17 ),
    .O(\cpu_inst/EX/ALU/Result<31>_map26 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>80_SW0 .INIT = 4'hD;
  LUT2 \cpu_inst/EX/ALU/Result<14>80_SW0  (
    .I0(N9510),
    .I1(ALU_A[4]),
    .O(N8892)
  );
  defparam \cpu_inst/EX/ALU/Result<0>207 .INIT = 16'hFFEC;
  LUT4 \cpu_inst/EX/ALU/Result<0>207  (
    .I0(ALU_A[4]),
    .I1(N8838),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[48] ),
    .I3(N8897),
    .O(\cpu_inst/EX/ALU/Result<0>_map49 )
  );
  defparam \cpu_inst/EX/ALU/Result<28>104_SW0 .INIT = 16'hFFEA;
  LUT4 \cpu_inst/EX/ALU/Result<28>104_SW0  (
    .I0(\cpu_inst/EX/ALU/Result<28>_map14 ),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(N8899),
    .I3(\cpu_inst/EX/ALU/N42 ),
    .O(N8868)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/co1  (
    .I0(N8901),
    .I1(N8902),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/co1_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/co1_F  (
    .I0(ALU_A[5]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [4]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [5]),
    .O(N8901)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/co1_G .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/co1_G  (
    .I0(ALU_A[5]),
    .I1(ALU_A[4]),
    .I2(ALU_B[4]),
    .I3(ALU_B[5]),
    .O(N8902)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst1/co1  (
    .I0(N8903),
    .I1(N8904),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst1/co1_F .INIT = 16'hFAE8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst1/co1_F  (
    .I0(ALU_A[5]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [5]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [4]),
    .O(N8903)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst1/co1_G .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/add_inst1/co1_G  (
    .I0(ALU_A[5]),
    .I1(ALU_B[4]),
    .I2(ALU_A[4]),
    .I3(ALU_B[5]),
    .O(N8904)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/co1  (
    .I0(N8905),
    .I1(N8906),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/co1_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/co1_F  (
    .I0(ALU_A[13]),
    .I1(ALU_A[12]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [12]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [13]),
    .O(N8905)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/co1_G .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/co1_G  (
    .I0(ALU_A[13]),
    .I1(ALU_A[12]),
    .I2(ALU_B[12]),
    .I3(ALU_B[13]),
    .O(N8906)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/co1  (
    .I0(N8907),
    .I1(N8908),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/co1_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/co1_F  (
    .I0(ALU_A[17]),
    .I1(ALU_A[16]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [16]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [17]),
    .O(N8907)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/co1_G .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/co1_G  (
    .I0(ALU_A[17]),
    .I1(ALU_A[16]),
    .I2(ALU_B[16]),
    .I3(ALU_B[17]),
    .O(N8908)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/co1  (
    .I0(N8909),
    .I1(N8910),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/co1_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/co1_F  (
    .I0(ALU_A[29]),
    .I1(ALU_A[28]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [28]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [29]),
    .O(N8909)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/co1_G .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst1/co1_G  (
    .I0(ALU_A[29]),
    .I1(ALU_A[28]),
    .I2(ALU_B[28]),
    .I3(ALU_B[29]),
    .O(N8910)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst1/co1  (
    .I0(N8911),
    .I1(N8912),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst1/co1_F .INIT = 16'hFAE8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst1/co1_F  (
    .I0(ALU_A[29]),
    .I1(ALU_A[28]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [29]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [28]),
    .O(N8911)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst1/co1_G .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst1/co1_G  (
    .I0(ALU_A[29]),
    .I1(ALU_A[28]),
    .I2(ALU_B[28]),
    .I3(ALU_B[29]),
    .O(N8912)
  );
  defparam \cpu_inst/EX/Mmux_B27_SW0_SW0_SW0_F .INIT = 16'hAAAC;
  LUT4 \cpu_inst/EX/Mmux_B27_SW0_SW0_SW0_F  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [4]),
    .I1(\cpu_inst/RegWriteData_wb [4]),
    .I2(\cpu_inst/EX/Mmux_B_not0001_map4 ),
    .I3(\cpu_inst/EX/Mmux_B_not0001_map13 ),
    .O(N8913)
  );
  defparam \cpu_inst/EX/Mmux_B26_SW0_SW0_SW0_F .INIT = 16'hAAAC;
  LUT4 \cpu_inst/EX/Mmux_B26_SW0_SW0_SW0_F  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [3]),
    .I1(\cpu_inst/RegWriteData_wb [3]),
    .I2(\cpu_inst/EX/Mmux_B_not0001_map4 ),
    .I3(\cpu_inst/EX/Mmux_B_not0001_map13 ),
    .O(N8915)
  );
  defparam \cpu_inst/EX/Mmux_B23_SW0_SW0_SW0_F .INIT = 16'hAAAC;
  LUT4 \cpu_inst/EX/Mmux_B23_SW0_SW0_SW0_F  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [2]),
    .I1(\cpu_inst/RegWriteData_wb [2]),
    .I2(\cpu_inst/EX/Mmux_B_not0001_map4 ),
    .I3(\cpu_inst/EX/Mmux_B_not0001_map13 ),
    .O(N8917)
  );
  defparam \cpu_inst/EX/Mmux_B12_SW0_SW0_SW0_F .INIT = 16'hAAAC;
  LUT4 \cpu_inst/EX/Mmux_B12_SW0_SW0_SW0_F  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [1]),
    .I1(\cpu_inst/RegWriteData_wb [1]),
    .I2(\cpu_inst/EX/Mmux_B_not0001_map4 ),
    .I3(\cpu_inst/EX/Mmux_B_not0001_map13 ),
    .O(N8919)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst1/co1  (
    .I0(N8921),
    .I1(N8922),
    .S(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst1/co1_F .INIT = 16'hFAE8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst1/co1_F  (
    .I0(ALU_A[17]),
    .I1(ALU_A[16]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [17]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [16]),
    .O(N8921)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst1/co1_G .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst1/co1_G  (
    .I0(ALU_A[17]),
    .I1(ALU_A[16]),
    .I2(ALU_B[16]),
    .I3(ALU_B[17]),
    .O(N8922)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>231  (
    .I0(N8923),
    .I1(N8924),
    .S(ALU_A[1]),
    .O(\cpu_inst/EX/ALU/N71 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>231_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>231_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[12] ),
    .O(N8923)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>231_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>231_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[14] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] ),
    .O(N8924)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<46>  (
    .I0(N8925),
    .I1(N8926),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[46] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<46>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<46>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[6] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[14] ),
    .O(N8925)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<46>_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<46>_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[10] ),
    .O(N8926)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<45>31  (
    .I0(N8927),
    .I1(N8928),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[45] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<45>31_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<45>31_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[13] ),
    .O(N8927)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<45>31_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<45>31_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[9] ),
    .O(N8928)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<44>31  (
    .I0(N8929),
    .I1(N8930),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[44] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<44>31_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<44>31_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[4] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[12] ),
    .O(N8929)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<44>31_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<44>31_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[0] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[8] ),
    .O(N8930)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>139  (
    .I0(N8933),
    .I1(N8934),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/N60 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>139_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>139_F  (
    .I0(ALU_A[0]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>1_map4 ),
    .I2(\cpu_inst/EX/ALU/N49 ),
    .O(N8933)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>139_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<31>139_G  (
    .I0(ALU_A[0]),
    .I1(N2712),
    .I2(N2202),
    .O(N8934)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<42>  (
    .I0(N8937),
    .I1(N8938),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[42] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<42>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<42>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[10] ),
    .O(N8937)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<42>_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<42>_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[0]),
    .I2(N3214),
    .I3(N3217),
    .O(N8938)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<2>  (
    .I0(N8939),
    .I1(N8940),
    .S(ALU_A[1]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<2>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<2>_F  (
    .I0(ALU_A[0]),
    .I1(ALU_B[2]),
    .I2(ALU_B[1]),
    .O(N8939)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<2>_G .INIT = 16'h0A0C;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<2>_G  (
    .I0(N8601),
    .I1(N8600),
    .I2(ALU_A[0]),
    .I3(N8487),
    .O(N8940)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>84_SW0 .INIT = 16'hFD7F;
  LUT4 \cpu_inst/ID/Decode/ALUCode<1>84_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .O(N8941)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[5]),
    .I2(ALU_B[5]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [5]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/Result<2>163_SW0 .INIT = 16'h135F;
  LUT4 \cpu_inst/EX/ALU/Result<2>163_SW0  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] ),
    .I1(N9381),
    .I2(\cpu_inst/EX/ALU/N77 ),
    .I3(\cpu_inst/EX/ALU/N101 ),
    .O(N8944)
  );
  defparam \cpu_inst/EX/ALU/Result<3>159_SW0 .INIT = 16'h135F;
  LUT4 \cpu_inst/EX/ALU/Result<3>159_SW0  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[5] ),
    .I1(N9380),
    .I2(\cpu_inst/EX/ALU/N77 ),
    .I3(\cpu_inst/EX/ALU/N101 ),
    .O(N8946)
  );
  defparam \cpu_inst/EX/ALU/Result<28>46_SW1 .INIT = 16'hFACA;
  LUT4 \cpu_inst/EX/ALU/Result<28>46_SW1  (
    .I0(N9367),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .I2(ALU_A[28]),
    .I3(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .O(N8951)
  );
  defparam \cpu_inst/EX/ALU/Result<30>61_SW1 .INIT = 16'hFACA;
  LUT4 \cpu_inst/EX/ALU/Result<30>61_SW1  (
    .I0(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .I2(ALU_A[30]),
    .I3(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .O(N8954)
  );
  defparam \cpu_inst/EX/ALU/Result<29>61_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<29>61_SW1  (
    .I0(ALU_A[29]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8957)
  );
  defparam \cpu_inst/EX/ALU/Result<16>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<16>46_SW1  (
    .I0(ALU_A[16]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8960)
  );
  defparam \cpu_inst/EX/ALU/Result<19>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<19>46_SW1  (
    .I0(ALU_A[19]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8963)
  );
  defparam \cpu_inst/EX/ALU/Result<18>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<18>46_SW1  (
    .I0(ALU_A[18]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8966)
  );
  defparam \cpu_inst/EX/ALU/Result<17>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<17>46_SW1  (
    .I0(ALU_A[17]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8969)
  );
  defparam \cpu_inst/EX/ALU/Result<20>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<20>46_SW1  (
    .I0(ALU_A[20]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8972)
  );
  defparam \cpu_inst/EX/ALU/Result<23>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<23>46_SW1  (
    .I0(ALU_A[23]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8975)
  );
  defparam \cpu_inst/EX/ALU/Result<22>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<22>46_SW1  (
    .I0(ALU_A[22]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8978)
  );
  defparam \cpu_inst/EX/ALU/Result<21>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<21>46_SW1  (
    .I0(ALU_A[21]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8981)
  );
  defparam \cpu_inst/EX/ALU/Result<24>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<24>46_SW1  (
    .I0(ALU_A[24]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8984)
  );
  defparam \cpu_inst/EX/ALU/Result<27>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<27>46_SW1  (
    .I0(ALU_A[27]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8987)
  );
  defparam \cpu_inst/EX/ALU/Result<26>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<26>46_SW1  (
    .I0(ALU_A[26]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8990)
  );
  defparam \cpu_inst/EX/ALU/Result<25>46_SW1 .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<25>46_SW1  (
    .I0(ALU_A[25]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .O(N8993)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<2>_SW2 .INIT = 16'hFE8F;
  LUT4 \cpu_inst/IF/InstructionROM/dout<2>_SW2  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .O(N8995)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>156 .INIT = 16'hFF20;
  LUT4 \cpu_inst/ID/Decode/ALUCode<0>156  (
    .I0(\cpu_inst/ID/Decode/N9 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\cpu_inst/ID/Decode/ALUCode<0>_map35 ),
    .I3(\cpu_inst/ID/Decode/ALUCode<0>_map8 ),
    .O(\cpu_inst/ALUCode_id [0])
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall54 .INIT = 16'h0090;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/stall54  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .I1(\cpu_inst/RegWriteAddr_ex [0]),
    .I2(\cpu_inst/ID/Hazard_detector_inst/stall_map15 ),
    .I3(\cpu_inst/RegWriteAddr_ex [4]),
    .O(\cpu_inst/ID/Hazard_detector_inst/stall_map23 )
  );
  defparam \cpu_inst/EX/ALU_A<2>39 .INIT = 16'hDDD8;
  LUT4 \cpu_inst/EX/ALU_A<2>39  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I1(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I2(\cpu_inst/EX/ALU_A<2>_map7 ),
    .I3(\cpu_inst/EX/ALU_A<2>_map5 ),
    .O(ALU_A[2])
  );
  defparam \cpu_inst/EX/ALU/Result<8>105 .INIT = 16'hC8C0;
  LUT4 \cpu_inst/EX/ALU/Result<8>105  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Result<8>_map25 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[56] ),
    .O(\cpu_inst/EX/ALU/Result<8>_map28 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>135 .INIT = 16'hC8C0;
  LUT4 \cpu_inst/EX/ALU/Result<13>135  (
    .I0(\cpu_inst/EX/ALU/N89 ),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Result<13>_map34 ),
    .I3(\cpu_inst/EX/ALU/N14 ),
    .O(\cpu_inst/EX/ALU/Result<13>_map37 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z722 .INIT = 16'h2220;
  LUT4 \cpu_inst/ID/zero_test_inst/Z722  (
    .I0(\cpu_inst/ALUCode_id [3]),
    .I1(\cpu_inst/ALUCode_id [4]),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map167 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map204 ),
    .O(JumpFlag[0])
  );
  defparam \cpu_inst/EX/ALU/Result<7>82 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<7>82  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/Result<7>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<7>_map6 ),
    .I3(N8999),
    .O(\cpu_inst/EX/ALU/Result<7>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>82 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<6>82  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/Result<6>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<6>_map6 ),
    .I3(N9001),
    .O(\cpu_inst/EX/ALU/Result<6>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>82 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<5>82  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/Result<5>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<5>_map6 ),
    .I3(N9003),
    .O(\cpu_inst/EX/ALU/Result<5>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<24>100_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<24>100_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[56] ),
    .I3(N9005),
    .O(N8848)
  );
  defparam \cpu_inst/EX/ALU/Result<25>100_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<25>100_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[57] ),
    .I3(N9007),
    .O(N8850)
  );
  defparam \cpu_inst/EX/ALU/Result<4>83 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/EX/ALU/Result<4>83  (
    .I0(\cpu_inst/EX/ALU/Result<4>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<4>_map9 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(N9009),
    .O(\cpu_inst/EX/ALU/Result<4>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<27>152_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<27>152_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(N9415),
    .I3(\cpu_inst/EX/ALU/Result<27>_map14 ),
    .O(N9011)
  );
  defparam \cpu_inst/EX/ALU/Result<26>152_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<26>152_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[58] ),
    .I3(\cpu_inst/EX/ALU/Result<26>_map14 ),
    .O(N9013)
  );
  defparam \cpu_inst/EX/ALU/Result<5>235 .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<5>235  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst1/Mxor_s_xo [0]),
    .I1(N9017),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<5>_map40 ),
    .O(ALUResult[5])
  );
  defparam \cpu_inst/EX/ALU/Result<7>230 .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<7>230  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I1(N9019),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<7>_map39 ),
    .O(ALUResult[7])
  );
  defparam \cpu_inst/EX/ALU/Result<13>111_SW0 .INIT = 16'hFEFC;
  LUT4 \cpu_inst/EX/ALU/Result<13>111_SW0  (
    .I0(\cpu_inst/EX/ALU/N93 ),
    .I1(\cpu_inst/EX/ALU/N80 ),
    .I2(\cpu_inst/EX/ALU/Result<13>_map28 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[61] ),
    .O(N9031)
  );
  defparam \vga_ctrl/vsync_reg_or000021_SW0 .INIT = 16'hFFFE;
  LUT4 \vga_ctrl/vsync_reg_or000021_SW0  (
    .I0(\vga_ctrl/line_cnt_reg [3]),
    .I1(\vga_ctrl/line_cnt_reg [4]),
    .I2(\vga_ctrl/line_cnt_reg [9]),
    .I3(\vga_ctrl/line_cnt_reg [6]),
    .O(N9035)
  );
  defparam \vga_ctrl/vsync_reg_or000021 .INIT = 16'hFFFE;
  LUT4 \vga_ctrl/vsync_reg_or000021  (
    .I0(\vga_ctrl/vsync_reg_or0000_map7 ),
    .I1(\vga_ctrl/line_cnt_reg [2]),
    .I2(\vga_ctrl/line_cnt_reg [1]),
    .I3(N9035),
    .O(\vga_ctrl/vsync_reg_or0000 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<16>_SW2 .INIT = 16'hEBF9;
  LUT4 \cpu_inst/IF/InstructionROM/dout<16>_SW2  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9037)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<16> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/InstructionROM/dout<16>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N9037),
    .O(\cpu_inst/Instruction_if[16] )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<4>131 .INIT = 16'h444E;
  LUT4 \cpu_inst/IF/PC_in_mux0000<4>131  (
    .I0(JumpFlag[1]),
    .I1(\cpu_inst/IF/PC_in_mux0000<4>_map29 ),
    .I2(JumpFlag[0]),
    .I3(N9044),
    .O(\cpu_inst/IF/PC_in_mux0000 [4])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<3>99 .INIT = 16'h5410;
  LUT4 \cpu_inst/IF/PC_in_mux0000<3>99  (
    .I0(JumpFlag[2]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/NextPC_if [3]),
    .I3(\cpu_inst/IF/PC_in_mux0000<3>_map23 ),
    .O(\cpu_inst/IF/PC_in_mux0000<3>_map28 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<7>100 .INIT = 16'h5410;
  LUT4 \cpu_inst/IF/PC_in_mux0000<7>100  (
    .I0(JumpFlag[2]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/NextPC_if [7]),
    .I3(\cpu_inst/IF/PC_in_mux0000<7>_map20 ),
    .O(\cpu_inst/IF/PC_in_mux0000<7>_map25 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<6>100 .INIT = 16'h5410;
  LUT4 \cpu_inst/IF/PC_in_mux0000<6>100  (
    .I0(JumpFlag[2]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/NextPC_if [6]),
    .I3(\cpu_inst/IF/PC_in_mux0000<6>_map20 ),
    .O(\cpu_inst/IF/PC_in_mux0000<6>_map25 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<5>105 .INIT = 16'h5410;
  LUT4 \cpu_inst/IF/PC_in_mux0000<5>105  (
    .I0(JumpFlag[2]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/NextPC_if [5]),
    .I3(\cpu_inst/IF/PC_in_mux0000<5>_map23 ),
    .O(\cpu_inst/IF/PC_in_mux0000<5>_map28 )
  );
  defparam \disp/char_selection_3_mux0000296_SW0 .INIT = 8'hFE;
  LUT3 \disp/char_selection_3_mux0000296_SW0  (
    .I0(\disp/char_selection_3_mux0000_map80 ),
    .I1(\disp/char_selection_3_mux0000_map77 ),
    .I2(\disp/char_selection_3_mux0000_map72 ),
    .O(N9054)
  );
  defparam \disp/char_selection_3_mux0000296 .INIT = 16'hA888;
  LUT4 \disp/char_selection_3_mux0000296  (
    .I0(\disp/char_selection_4_cmp_eq0004 ),
    .I1(N9054),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I3(\disp/char_selection_4_cmp_eq0003 ),
    .O(\disp/char_selection_3_mux0000_map83 )
  );
  defparam \disp/char_selection_3_mux0000317_SW0 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_3_mux0000317_SW0  (
    .I0(\disp/char_selection_4_cmp_eq0007 ),
    .I1(\disp/char_selection_3_mux0000_map34 ),
    .I2(\disp/char_selection_3_mux0000_map26 ),
    .I3(\disp/char_selection_3_mux0000_map23 ),
    .O(N9056)
  );
  defparam \disp/char_selection_3_mux0000317 .INIT = 16'hFFFE;
  LUT4 \disp/char_selection_3_mux0000317  (
    .I0(\disp/char_selection_3_mux0000_map83 ),
    .I1(\disp/char_selection_3_mux0000_map69 ),
    .I2(\disp/char_selection_3_mux0000_map52 ),
    .I3(N9056),
    .O(\disp/char_selection_3_mux0000_map85 )
  );
  defparam \disp/char_selection_2_mux0000323_SW0 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_2_mux0000323_SW0  (
    .I0(\disp/char_selection_4_cmp_eq0007 ),
    .I1(\disp/char_selection_2_mux0000_map34 ),
    .I2(\disp/char_selection_2_mux0000_map26 ),
    .I3(\disp/char_selection_2_mux0000_map23 ),
    .O(N9058)
  );
  defparam \disp/char_selection_2_mux0000323 .INIT = 16'hFFFE;
  LUT4 \disp/char_selection_2_mux0000323  (
    .I0(\disp/char_selection_2_mux0000_map85 ),
    .I1(\disp/char_selection_2_mux0000_map69 ),
    .I2(\disp/char_selection_2_mux0000_map52 ),
    .I3(N9058),
    .O(\disp/char_selection_2_mux0000_map87 )
  );
  defparam \disp/char_selection_1_mux0000302_SW0 .INIT = 16'hFFA8;
  LUT4 \disp/char_selection_1_mux0000302_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\disp/char_selection_3_cmp_eq0003 ),
    .I2(\disp/char_selection_3_cmp_eq0002 ),
    .I3(\disp/char_selection_1_mux0000_map75 ),
    .O(N9060)
  );
  defparam \disp/char_selection_1_mux0000302 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_1_mux0000302  (
    .I0(\disp/char_selection_4_cmp_eq0004 ),
    .I1(\disp/char_selection_1_mux0000_map82 ),
    .I2(\disp/char_selection_1_mux0000_map79 ),
    .I3(N9060),
    .O(\disp/char_selection_1_mux0000_map85 )
  );
  defparam \disp/char_selection_1_mux0000323_SW0 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_1_mux0000323_SW0  (
    .I0(\disp/char_selection_4_cmp_eq0007 ),
    .I1(\disp/char_selection_1_mux0000_map34 ),
    .I2(\disp/char_selection_1_mux0000_map26 ),
    .I3(\disp/char_selection_1_mux0000_map23 ),
    .O(N9062)
  );
  defparam \disp/char_selection_1_mux0000323 .INIT = 16'hFFFE;
  LUT4 \disp/char_selection_1_mux0000323  (
    .I0(\disp/char_selection_1_mux0000_map85 ),
    .I1(\disp/char_selection_1_mux0000_map69 ),
    .I2(\disp/char_selection_1_mux0000_map52 ),
    .I3(N9062),
    .O(\disp/char_selection_1_mux0000_map87 )
  );
  defparam \disp/char_selection_0_mux0000310_SW0 .INIT = 16'hFFA8;
  LUT4 \disp/char_selection_0_mux0000310_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\disp/char_selection_3_cmp_eq0004 ),
    .I2(\disp/char_selection_3_cmp_eq0003 ),
    .I3(\disp/char_selection_0_mux0000_map77 ),
    .O(N9064)
  );
  defparam \disp/char_selection_0_mux0000310 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_0_mux0000310  (
    .I0(\disp/char_selection_4_cmp_eq0004 ),
    .I1(\disp/char_selection_0_mux0000_map84 ),
    .I2(\disp/char_selection_0_mux0000_map81 ),
    .I3(N9064),
    .O(\disp/char_selection_0_mux0000_map87 )
  );
  defparam \disp/char_selection_0_mux0000331_SW0 .INIT = 16'hAAA8;
  LUT4 \disp/char_selection_0_mux0000331_SW0  (
    .I0(\disp/char_selection_4_cmp_eq0007 ),
    .I1(\disp/char_selection_0_mux0000_map36 ),
    .I2(\disp/char_selection_0_mux0000_map28 ),
    .I3(\disp/char_selection_0_mux0000_map25 ),
    .O(N9066)
  );
  defparam \disp/char_selection_0_mux0000331 .INIT = 16'hFFFE;
  LUT4 \disp/char_selection_0_mux0000331  (
    .I0(\disp/char_selection_0_mux0000_map87 ),
    .I1(\disp/char_selection_0_mux0000_map71 ),
    .I2(\disp/char_selection_0_mux0000_map54 ),
    .I3(N9066),
    .O(\disp/char_selection_0_mux0000_map89 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<7>62_SW0 .INIT = 16'hC993;
  LUT4 \cpu_inst/IF/PC_in_mux0000<7>62_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [7]),
    .I2(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [6]),
    .O(N9068)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<7>62_SW1 .INIT = 16'hC993;
  LUT4 \cpu_inst/IF/PC_in_mux0000<7>62_SW1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [7]),
    .I2(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst1/coi [2]),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [6]),
    .O(N9069)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<7>62 .INIT = 16'hE14B;
  LUT4 \cpu_inst/IF/PC_in_mux0000<7>62  (
    .I0(\cpu_inst/ID/adder_32bits_BranchAddr/cio [0]),
    .I1(N9068),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I3(N9069),
    .O(\cpu_inst/IF/PC_in_mux0000<7>_map20 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>227_SW2 .INIT = 16'h9A95;
  LUT4 \cpu_inst/EX/ALU/Result<10>227_SW2  (
    .I0(ALU_A[10]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [2]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [2]),
    .O(N9071)
  );
  defparam \cpu_inst/EX/ALU/Result<10>227 .INIT = 16'hFF82;
  LUT4 \cpu_inst/EX/ALU/Result<10>227  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/B_adder[10] ),
    .I2(N9071),
    .I3(\cpu_inst/EX/ALU/Result<10>_map38 ),
    .O(ALUResult[10])
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<7>21 .INIT = 8'h80;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<7>21  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .I2(ALU_B[31]),
    .O(\cpu_inst/EX/ALU/N80 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>98 .INIT = 16'hE040;
  LUT4 \cpu_inst/EX/ALU/Result<6>98  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] ),
    .I2(N9508),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] ),
    .O(\cpu_inst/EX/ALU/Result<6>_map26 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>125 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<8>125  (
    .I0(N9373),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .O(\cpu_inst/EX/ALU/Result<8>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<28>97 .INIT = 16'hABA8;
  LUT4 \cpu_inst/EX/ALU/Result<28>97  (
    .I0(ALU_B[31]),
    .I1(\cpu_inst/EX/ALU/N1 ),
    .I2(ALU_A[2]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .O(\cpu_inst/EX/ALU/Result<28>_map23 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>187 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<1>187  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[1]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map3 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map8 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map46 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>11 .INIT = 16'h6240;
  LUT4 \cpu_inst/EX/ALU/Result<0>11  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/EX/ALU/N84 ),
    .I3(\cpu_inst/EX/ALU/N78 ),
    .O(\cpu_inst/EX/ALU/N01 )
  );
  defparam \cpu_inst/ID/Decode/RegWrite2 .INIT = 16'hF222;
  LUT4 \cpu_inst/ID/Decode/RegWrite2  (
    .I0(\cpu_inst/ID/Decode/N10 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I2(\cpu_inst/ID/Decode/SLL_map15 ),
    .I3(\cpu_inst/ID/Decode/SLL_map20 ),
    .O(N8480)
  );
  defparam \cpu_inst/EX/ALU/Result_xor0016<31>1 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/Result_xor0016<31>1  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I1(ALU_A[31]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .O(\cpu_inst/EX/ALU/Result_xor0016 [31])
  );
  defparam \cpu_inst/EX/ALU/Result<2>168 .INIT = 16'h80D0;
  LUT4 \cpu_inst/EX/ALU/Result<2>168  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .I2(\cpu_inst/EX/ALU/N98 ),
    .I3(N2671),
    .O(\cpu_inst/EX/ALU/Result<2>_map42 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>164 .INIT = 16'h80D0;
  LUT4 \cpu_inst/EX/ALU/Result<3>164  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] ),
    .I2(\cpu_inst/EX/ALU/N98 ),
    .I3(N2669),
    .O(\cpu_inst/EX/ALU/Result<3>_map42 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>31 .INIT = 16'hE444;
  LUT4 \cpu_inst/EX/ALU/Result<0>31  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I1(N9364),
    .I2(\cpu_inst/EX/ALU/N78 ),
    .I3(\cpu_inst/dffr_IDEX_EX/q [4]),
    .O(\cpu_inst/EX/ALU/N66 )
  );
  defparam \vga_ctrl/pixel_cnt_reg_or00001 .INIT = 16'hD555;
  LUT4 \vga_ctrl/pixel_cnt_reg_or00001  (
    .I0(reset_n_vga_IBUF_6),
    .I1(\vga_ctrl/line_cnt_reg_or00001_map3 ),
    .I2(\vga_ctrl/line_cnt_reg_or00001_map7 ),
    .I3(\vga_ctrl/line_cnt_reg_or00001_map13 ),
    .O(\vga_ctrl/pixel_cnt_reg_or0000 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>41 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<0>41  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I2(\cpu_inst/EX/ALU/N84 ),
    .I3(\cpu_inst/EX/ALU/N78 ),
    .O(\cpu_inst/EX/ALU/N75 )
  );
  defparam \cpu_inst/EX/ALU/Result<23>135 .INIT = 16'hEFCD;
  LUT4 \cpu_inst/EX/ALU/Result<23>135  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<23>_map30 ),
    .I2(N9073),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[39] ),
    .O(\cpu_inst/EX/ALU/Result<23>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>142_SW0 .INIT = 16'h1BFF;
  LUT4 \cpu_inst/EX/ALU/Result<22>142_SW0  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[18] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[10] ),
    .I3(ALU_A[2]),
    .O(N9075)
  );
  defparam \cpu_inst/EX/ALU/Result<22>142 .INIT = 16'hEFCD;
  LUT4 \cpu_inst/EX/ALU/Result<22>142  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<22>_map32 ),
    .I2(N9075),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[38] ),
    .O(\cpu_inst/EX/ALU/Result<22>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>142_SW0 .INIT = 16'h5D7F;
  LUT4 \cpu_inst/EX/ALU/Result<21>142_SW0  (
    .I0(ALU_A[2]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[9] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[17] ),
    .O(N9077)
  );
  defparam \cpu_inst/EX/ALU/Result<21>142 .INIT = 16'hFF8B;
  LUT4 \cpu_inst/EX/ALU/Result<21>142  (
    .I0(N9424),
    .I1(ALU_A[4]),
    .I2(N9077),
    .I3(\cpu_inst/EX/ALU/Result<21>_map32 ),
    .O(\cpu_inst/EX/ALU/Result<21>_map35 )
  );
  defparam \cpu_inst/ID/Decode/R_type21_SW0 .INIT = 16'hFFEF;
  LUT4 \cpu_inst/ID/Decode/R_type21_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .O(N9079)
  );
  defparam \cpu_inst/ID/Decode/R_type21 .INIT = 16'h0002;
  LUT4 \cpu_inst/ID/Decode/R_type21  (
    .I0(\cpu_inst/ID/Decode/N20 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I3(N9079),
    .O(N8479)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>61 .INIT = 16'h0001;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>61  (
    .I0(ALU_A[0]),
    .I1(ALU_A[2]),
    .I2(ALU_A[3]),
    .I3(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/N200 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>41 .INIT = 16'h0002;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>41  (
    .I0(ALU_A[0]),
    .I1(ALU_A[3]),
    .I2(ALU_A[4]),
    .I3(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/N79 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>274 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<0>274  (
    .I0(ALU_A[31]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [31]),
    .I3(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(\cpu_inst/EX/ALU/Result<0>_map60 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>131 .INIT = 8'h01;
  LUT3 \cpu_inst/ID/Decode/ALUCode<1>131  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .O(\cpu_inst/ID/Decode/ALUCode<1>_map31 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<6>11_SW0 .INIT = 16'hAAA8;
  LUT4 \vga_ctrl/Msub_y_pos_xor<6>11_SW0  (
    .I0(\vga_ctrl/line_cnt_reg [3]),
    .I1(\vga_ctrl/line_cnt_reg [1]),
    .I2(\vga_ctrl/line_cnt_reg [0]),
    .I3(\vga_ctrl/line_cnt_reg [2]),
    .O(N1611)
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/stall35 .INIT = 16'hE14B;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/stall35  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [3]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .I3(\cpu_inst/dffr_IDEX_Imm/q[14] ),
    .O(\cpu_inst/ID/Hazard_detector_inst/stall_map15 )
  );
  defparam \cpu_inst/ID/Hazard_detector_inst/PC_IFWrite1 .INIT = 16'h15FF;
  LUT4 \cpu_inst/ID/Hazard_detector_inst/PC_IFWrite1  (
    .I0(\cpu_inst/ID/Hazard_detector_inst/stall_map45 ),
    .I1(\cpu_inst/ID/Hazard_detector_inst/stall_map23 ),
    .I2(\cpu_inst/ID/Hazard_detector_inst/stall_map10 ),
    .I3(\cpu_inst/dffr_IDEX_WB/q [1]),
    .O(\cpu_inst/PC_IFWrite )
  );
  defparam \cpu_inst/EX/ALU/Result<0>283 .INIT = 8'h02;
  LUT3 \cpu_inst/EX/ALU/Result<0>283  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [5]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [4]),
    .O(\cpu_inst/EX/ALU/Result<0>_map64 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<27>_SW0 .INIT = 8'h29;
  LUT3 \cpu_inst/IF/InstructionROM/dout<27>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N1484)
  );
  defparam \cpu_inst/IF/InstructionROM/Mrom_dout_mux00001511 .INIT = 16'h0602;
  LUT4 \cpu_inst/IF/InstructionROM/Mrom_dout_mux00001511  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .O(\cpu_inst/IF/InstructionROM/Mrom_dout_mux000011 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<17>_SW0 .INIT = 8'hFE;
  LUT3 \cpu_inst/IF/InstructionROM/dout<17>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .O(N1463)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<1>_SW0 .INIT = 8'hFE;
  LUT3 \cpu_inst/IF/InstructionROM/dout<1>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(N1479)
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<0>1 .INIT = 8'h6C;
  LUT3 \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<0>1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/NextPC_if [4])
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<1>1 .INIT = 16'h6AAA;
  LUT4 \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<1>1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/NextPC_if [5])
  );
  defparam \cpu_inst/EX/ALU/Result<18>237_SW0 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<18>237_SW0  (
    .I0(ALU_A[18]),
    .I1(N9488),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8594)
  );
  defparam \cpu_inst/EX/ALU/Result<18>237_SW1 .INIT = 16'h9600;
  LUT4 \cpu_inst/EX/ALU/Result<18>237_SW1  (
    .I0(ALU_A[18]),
    .I1(\cpu_inst/EX/ALU/B_adder[18] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8595)
  );
  defparam \cpu_inst/EX/ALU/Result<22>71 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<22>71  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[62] ),
    .I3(N9516),
    .O(\cpu_inst/EX/ALU/Result<22>_map17 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>71 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<21>71  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .I2(N9384),
    .I3(\cpu_inst/EX/ALU/N87 ),
    .O(\cpu_inst/EX/ALU/Result<21>_map17 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>83_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<9>83_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[41] ),
    .I3(\cpu_inst/EX/ALU/Result<9>_map17 ),
    .O(N8878)
  );
  defparam \cpu_inst/EX/ALU/Result<19>77_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<19>77_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[51] ),
    .I3(\cpu_inst/EX/ALU/Result<19>_map14 ),
    .O(N8882)
  );
  defparam \cpu_inst/EX/ALU/Result<17>77_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<17>77_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[49] ),
    .I3(\cpu_inst/EX/ALU/Result<17>_map14 ),
    .O(N8884)
  );
  defparam \cpu_inst/EX/ALU/Result<16>77_SW0 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<16>77_SW0  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[48] ),
    .I3(\cpu_inst/EX/ALU/Result<16>_map14 ),
    .O(N8880)
  );
  defparam \cpu_inst/ID/zero_test_inst/Z678 .INIT = 16'h0302;
  LUT4 \cpu_inst/ID/zero_test_inst/Z678  (
    .I0(\cpu_inst/ID/Decode/ALUCode<2>_map5 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I2(\cpu_inst/JrAddr [31]),
    .I3(\cpu_inst/ID/Decode/ALUCode<2>_map24 ),
    .O(\cpu_inst/ID/zero_test_inst/Z_map201 )
  );
  defparam \cpu_inst/ID/Decode/JR1 .INIT = 8'h40;
  LUT3 \cpu_inst/ID/Decode/JR1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I1(\cpu_inst/ID/Decode/N20 ),
    .I2(\cpu_inst/ID/Decode/N161 ),
    .O(JumpFlag[2])
  );
  defparam \cpu_inst/EX/ALU/Result<1>122 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<1>122  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[41] ),
    .I3(\cpu_inst/EX/ALU/Result<1>_map30 ),
    .O(\cpu_inst/EX/ALU/Result<1>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>102 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<4>102  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .I2(N9423),
    .I3(\cpu_inst/EX/ALU/Result<4>_map25 ),
    .O(\cpu_inst/EX/ALU/Result<4>_map27 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<29> .INIT = 16'h0001;
  LUT4 \cpu_inst/IF/InstructionROM/dout<29>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I3(N1461),
    .O(\cpu_inst/Instruction_if[29] )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<4>84 .INIT = 16'h5040;
  LUT4 \cpu_inst/ID/Decode/ALUCode<4>84  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I1(\cpu_inst/ID/Decode/ALUCode<4>_map3 ),
    .I2(\cpu_inst/ID/Decode/N20 ),
    .I3(\cpu_inst/ID/Decode/ALUCode<4>_map20 ),
    .O(\cpu_inst/ALUCode_id [4])
  );
  defparam \cpu_inst/EX/ALU/Result<26>125_SW0 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<26>125_SW0  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[14] ),
    .I3(N9387),
    .O(N9081)
  );
  defparam \cpu_inst/EX/ALU/Result<4>110 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<4>110  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[60] ),
    .I3(N9403),
    .O(\cpu_inst/EX/ALU/Result<4>_map30 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<7>_SW1 .INIT = 8'hE7;
  LUT3 \cpu_inst/IF/InstructionROM/dout<7>_SW1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .O(N9087)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<7> .INIT = 16'h0002;
  LUT4 \cpu_inst/IF/InstructionROM/dout<7>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I3(N9087),
    .O(\cpu_inst/Instruction_if[7] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<6>_SW1 .INIT = 8'hE7;
  LUT3 \cpu_inst/IF/InstructionROM/dout<6>_SW1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9089)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<6> .INIT = 16'h0001;
  LUT4 \cpu_inst/IF/InstructionROM/dout<6>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(N9089),
    .O(\cpu_inst/Instruction_if[6] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<24>_SW1 .INIT = 16'hF9AD;
  LUT4 \cpu_inst/IF/InstructionROM/dout<24>_SW1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9093)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<24> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/InstructionROM/dout<24>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N9093),
    .O(\cpu_inst/Instruction_if[24] )
  );
  defparam \cpu_inst/EX/ALU/Result<31>61 .INIT = 16'h0010;
  LUT4 \cpu_inst/EX/ALU/Result<31>61  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .I2(N9375),
    .I3(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<31>_map17 )
  );
  defparam \cpu_inst/EX/ALU/old_Binvert_21_cmp_eq00001 .INIT = 16'h0002;
  LUT4 \cpu_inst/EX/ALU/old_Binvert_21_cmp_eq00001  (
    .I0(N9464),
    .I1(\cpu_inst/dffr_IDEX_EX/q [7]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [6]),
    .I3(\cpu_inst/dffr_IDEX_EX/q [5]),
    .O(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>69 .INIT = 16'h0002;
  LUT4 \cpu_inst/EX/ALU/Result<1>69  (
    .I0(N9377),
    .I1(ALU_A[4]),
    .I2(ALU_A[3]),
    .I3(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<1>_map20 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<11>1 .INIT = 8'h02;
  LUT3 \cpu_inst/IF/InstructionROM/dout<11>1  (
    .I0(\cpu_inst/IF/InstructionROM/Mrom_dout_mux000011 ),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .O(\cpu_inst/Instruction_if[11] )
  );
  defparam \cpu_inst/ID/Decode/RegDst11 .INIT = 16'h0020;
  LUT4 \cpu_inst/ID/Decode/RegDst11  (
    .I0(\cpu_inst/ID/Decode/N1 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\cpu_inst/ID/Decode/N20 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .O(N8478)
  );
  defparam \cpu_inst/IF/Instruction_if<10>1 .INIT = 8'h02;
  LUT3 \cpu_inst/IF/Instruction_if<10>1  (
    .I0(\cpu_inst/IF/InstructionROM/Mrom_dout_mux000010 ),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .O(\cpu_inst/Instruction_if[10] )
  );
  defparam \disp/vga_pixel1311 .INIT = 16'h2008;
  LUT4 \disp/vga_pixel1311  (
    .I0(x_pos[5]),
    .I1(\vga_ctrl/pixel_cnt_reg [6]),
    .I2(\vga_ctrl/N111 ),
    .I3(\vga_ctrl/pixel_cnt_reg [7]),
    .O(\disp/N311 )
  );
  defparam \disp/char_selection_4_cmp_eq000111 .INIT = 16'h0009;
  LUT4 \disp/char_selection_4_cmp_eq000111  (
    .I0(\vga_ctrl/pixel_cnt_reg [6]),
    .I1(\vga_ctrl/N111 ),
    .I2(\vga_ctrl/pixel_cnt_reg [7]),
    .I3(x_pos[5]),
    .O(\disp/N36 )
  );
  defparam \disp/vga_pixel60 .INIT = 8'h59;
  LUT3 \disp/vga_pixel60  (
    .I0(\vga_ctrl/pixel_cnt_reg [7]),
    .I1(\vga_ctrl/N111 ),
    .I2(\vga_ctrl/pixel_cnt_reg [6]),
    .O(\disp/vga_pixel_map23 )
  );
  defparam \disp/vga_pixel105_SW0 .INIT = 16'hFFBF;
  LUT4 \disp/vga_pixel105_SW0  (
    .I0(y_pos[6]),
    .I1(x_pos[6]),
    .I2(x_pos[5]),
    .I3(x_pos[4]),
    .O(N9097)
  );
  defparam \disp/vga_pixel105 .INIT = 16'h0024;
  LUT4 \disp/vga_pixel105  (
    .I0(\vga_ctrl/N10 ),
    .I1(\vga_ctrl/line_cnt_reg [7]),
    .I2(\vga_ctrl/line_cnt_reg [8]),
    .I3(N9097),
    .O(\disp/vga_pixel_map38 )
  );
  defparam \disp/char_selection_3_mux00004 .INIT = 16'hA280;
  LUT4 \disp/char_selection_3_mux00004  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .O(\disp/char_selection_3_mux0000_map2 )
  );
  defparam \disp/char_selection_2_mux00004 .INIT = 16'hA280;
  LUT4 \disp/char_selection_2_mux00004  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .O(\disp/char_selection_2_mux0000_map2 )
  );
  defparam \disp/char_selection_1_mux00004 .INIT = 16'hA280;
  LUT4 \disp/char_selection_1_mux00004  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [1]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .O(\disp/char_selection_1_mux0000_map2 )
  );
  defparam \disp/char_selection_1_mux000035 .INIT = 16'hA280;
  LUT4 \disp/char_selection_1_mux000035  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(ALU_A[25]),
    .I3(ALU_A[29]),
    .O(\disp/char_selection_1_mux0000_map16 )
  );
  defparam \disp/char_selection_1_mux0000158 .INIT = 16'hA280;
  LUT4 \disp/char_selection_1_mux0000158  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(ALUResult[25]),
    .I3(ALUResult[29]),
    .O(\disp/char_selection_1_mux0000_map49 )
  );
  defparam \disp/char_selection_1_mux0000225 .INIT = 16'hA280;
  LUT4 \disp/char_selection_1_mux0000225  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(ALU_B[25]),
    .I3(ALU_B[29]),
    .O(\disp/char_selection_1_mux0000_map66 )
  );
  defparam \disp/char_selection_0_mux000043 .INIT = 16'hA280;
  LUT4 \disp/char_selection_0_mux000043  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(ALU_A[24]),
    .I3(ALU_A[28]),
    .O(\disp/char_selection_0_mux0000_map18 )
  );
  defparam \disp/char_selection_0_mux0000166 .INIT = 16'hA280;
  LUT4 \disp/char_selection_0_mux0000166  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(ALUResult[24]),
    .I3(ALUResult[28]),
    .O(\disp/char_selection_0_mux0000_map51 )
  );
  defparam \disp/char_selection_0_mux0000233 .INIT = 16'hA280;
  LUT4 \disp/char_selection_0_mux0000233  (
    .I0(\disp/N36 ),
    .I1(x_pos[4]),
    .I2(ALU_B[24]),
    .I3(ALU_B[28]),
    .O(\disp/char_selection_0_mux0000_map68 )
  );
  defparam \disp/vga_pixel20 .INIT = 16'hEC4C;
  LUT4 \disp/vga_pixel20  (
    .I0(\vga_ctrl/pixel_cnt_reg [6]),
    .I1(\vga_ctrl/pixel_cnt_reg [8]),
    .I2(\vga_ctrl/pixel_cnt_reg [7]),
    .I3(N9099),
    .O(\disp/vga_pixel_map8 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<3>11 .INIT = 16'h5556;
  LUT4 \vga_ctrl/Msub_y_pos_xor<3>11  (
    .I0(\vga_ctrl/line_cnt_reg [3]),
    .I1(\vga_ctrl/line_cnt_reg [1]),
    .I2(\vga_ctrl/line_cnt_reg [0]),
    .I3(\vga_ctrl/line_cnt_reg [2]),
    .O(y_pos[3])
  );
  defparam \cpu_inst/EX/ALU/Result<8>83 .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<8>83  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[40] ),
    .I3(N9101),
    .O(\cpu_inst/EX/ALU/Result<8>_map22 )
  );
  defparam \cpu_inst/EX/ALU/Result<31>89_SW0 .INIT = 16'hFFEF;
  LUT4 \cpu_inst/EX/ALU/Result<31>89_SW0  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [6]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I3(\cpu_inst/dffr_IDEX_EX/q [5]),
    .O(N9103)
  );
  defparam \cpu_inst/EX/ALU/Result<6>235_SW1 .INIT = 16'hA959;
  LUT4 \cpu_inst/EX/ALU/Result<6>235_SW1  (
    .I0(ALU_A[6]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi [2]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [0]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi [2]),
    .O(N9105)
  );
  defparam \cpu_inst/EX/ALU/Result<6>235 .INIT = 16'hFF82;
  LUT4 \cpu_inst/EX/ALU/Result<6>235  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/B_adder[6] ),
    .I2(N9105),
    .I3(\cpu_inst/EX/ALU/Result<6>_map40 ),
    .O(ALUResult[6])
  );
  defparam \cpu_inst/ID/Decode/SLL40_SW1 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/Decode/SLL40_SW1  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[14] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[11] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .O(N9107)
  );
  defparam \cpu_inst/ID/Decode/SLL40 .INIT = 16'hFFFE;
  LUT4 \cpu_inst/ID/Decode/SLL40  (
    .I0(\cpu_inst/ID/Decode/SLL_map9 ),
    .I1(\cpu_inst/ID/Decode/SLL_map2 ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[7] ),
    .I3(N9107),
    .O(\cpu_inst/ID/Decode/SLL_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>235_SW0 .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/Result<5>235_SW0  (
    .I0(ALU_A[4]),
    .I1(N9109),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [0]),
    .O(N9017)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<31>_SW0 .INIT = 16'hFDDB;
  LUT4 \cpu_inst/IF/InstructionROM/dout<31>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9111)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<31> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/InstructionROM/dout<31>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N9111),
    .O(\cpu_inst/Instruction_if[31] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<2> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/InstructionROM/dout<2>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N8995),
    .O(\cpu_inst/Instruction_if[2] )
  );
  defparam \cpu_inst/EX/ALU/Result<27>100_SW0 .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<27>100_SW0  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/N1 ),
    .I2(ALU_B[31]),
    .I3(N9402),
    .O(N8874)
  );
  defparam \cpu_inst/EX/ALU/Result<26>100_SW0 .INIT = 16'hB800;
  LUT4 \cpu_inst/EX/ALU/Result<26>100_SW0  (
    .I0(ALU_B[31]),
    .I1(\cpu_inst/EX/ALU/N1 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[58] ),
    .I3(\cpu_inst/EX/ALU/N95 ),
    .O(N8876)
  );
  defparam \cpu_inst/EX/ALU/Result<0>239 .INIT = 16'h396C;
  LUT4 \cpu_inst/EX/ALU/Result<0>239  (
    .I0(N8487),
    .I1(ALU_A[0]),
    .I2(N8601),
    .I3(N8600),
    .O(\cpu_inst/EX/ALU/Result<0>_map55 )
  );
  defparam \cpu_inst/EX/ALU/Result<31>167_SW0 .INIT = 4'hE;
  LUT2 \cpu_inst/EX/ALU/Result<31>167_SW0  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .O(N9113)
  );
  defparam \cpu_inst/EX/ALU/Result<31>167 .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<31>167  (
    .I0(N9113),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Result<31>_map39 ),
    .I3(N9385),
    .O(\cpu_inst/EX/ALU/Result<31>_map44 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>131 .INIT = 16'h80D0;
  LUT4 \cpu_inst/EX/ALU/Result<9>131  (
    .I0(ALU_A[4]),
    .I1(N9417),
    .I2(\cpu_inst/EX/ALU/N81 ),
    .I3(N9115),
    .O(\cpu_inst/EX/ALU/Result<9>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>105 .INIT = 16'h80D0;
  LUT4 \cpu_inst/EX/ALU/Result<10>105  (
    .I0(ALU_A[4]),
    .I1(N9416),
    .I2(\cpu_inst/EX/ALU/N81 ),
    .I3(N9119),
    .O(\cpu_inst/EX/ALU/Result<10>_map28 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<3>_SW0 .INIT = 16'hF99A;
  LUT4 \cpu_inst/IF/InstructionROM/dout<3>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .O(N9121)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<3> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/InstructionROM/dout<3>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N9121),
    .O(\cpu_inst/Instruction_if[3] )
  );
  defparam \cpu_inst/EX/ALU/Result<20>149_SW0 .INIT = 8'hA8;
  LUT3 \cpu_inst/EX/ALU/Result<20>149_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<20>_map31 ),
    .I2(N9123),
    .O(N8866)
  );
  defparam \cpu_inst/IF/Instruction_if<12>_SW0 .INIT = 16'hFA9F;
  LUT4 \cpu_inst/IF/Instruction_if<12>_SW0  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(N9125)
  );
  defparam \cpu_inst/IF/Instruction_if<12> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/Instruction_if<12>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N9125),
    .O(\cpu_inst/Instruction_if[12] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<21>_SW1 .INIT = 16'hFBDB;
  LUT4 \cpu_inst/IF/InstructionROM/dout<21>_SW1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9127)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<21> .INIT = 8'h01;
  LUT3 \cpu_inst/IF/InstructionROM/dout<21>  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(N9127),
    .O(\cpu_inst/Instruction_if[21] )
  );
  defparam \disp/vga_pixel20_SW0 .INIT = 16'h6AAA;
  LUT4 \disp/vga_pixel20_SW0  (
    .I0(\vga_ctrl/pixel_cnt_reg [8]),
    .I1(\vga_ctrl/pixel_cnt_reg [5]),
    .I2(\vga_ctrl/pixel_cnt_reg [4]),
    .I3(\vga_ctrl/pixel_cnt_reg [3]),
    .O(N9099)
  );
  defparam \disp/char_selection_4_cmp_eq00031 .INIT = 8'h90;
  LUT3 \disp/char_selection_4_cmp_eq00031  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .I2(\disp/N36 ),
    .O(\disp/char_selection_4_cmp_eq0003 )
  );
  defparam \disp/char_selection_4_cmp_eq00021 .INIT = 8'h60;
  LUT3 \disp/char_selection_4_cmp_eq00021  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .I2(\disp/N311 ),
    .O(\disp/char_selection_4_cmp_eq0002 )
  );
  defparam \disp/char_selection_4_cmp_eq00012 .INIT = 8'h60;
  LUT3 \disp/char_selection_4_cmp_eq00012  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .I2(\disp/N36 ),
    .O(\disp/char_selection_4_cmp_eq0001 )
  );
  defparam \disp/char_selection_3_cmp_eq00041 .INIT = 8'h90;
  LUT3 \disp/char_selection_3_cmp_eq00041  (
    .I0(\vga_ctrl/pixel_cnt_reg [4]),
    .I1(\vga_ctrl/pixel_cnt_reg [3]),
    .I2(\disp/N311 ),
    .O(\disp/char_selection_3_cmp_eq0004 )
  );
  defparam \vga_ctrl/Msub_x_pos_temp_xor<6>12 .INIT = 16'h6AAA;
  LUT4 \vga_ctrl/Msub_x_pos_temp_xor<6>12  (
    .I0(\vga_ctrl/pixel_cnt_reg [6]),
    .I1(\vga_ctrl/pixel_cnt_reg [5]),
    .I2(\vga_ctrl/pixel_cnt_reg [4]),
    .I3(\vga_ctrl/pixel_cnt_reg [3]),
    .O(x_pos[6])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<4>131_SW0 .INIT = 16'h55D5;
  LUT4 \cpu_inst/IF/PC_in_mux0000<4>131_SW0  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I1(\cpu_inst/ID/Decode/N161 ),
    .I2(\cpu_inst/ID/Decode/N20 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .O(N9044)
  );
  defparam \cpu_inst/EX/ALU/Result<9>226_SW0 .INIT = 16'h9A95;
  LUT4 \cpu_inst/EX/ALU/Result<9>226_SW0  (
    .I0(ALU_A[9]),
    .I1(N9474),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [1]),
    .O(N9129)
  );
  defparam \cpu_inst/EX/ALU/Result<9>226 .INIT = 16'hFF82;
  LUT4 \cpu_inst/EX/ALU/Result<9>226  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/B_adder[9] ),
    .I2(N9129),
    .I3(\cpu_inst/EX/ALU/Result<9>_map38 ),
    .O(ALUResult[9])
  );
  defparam \cpu_inst/EX/ALU/Result<14>130 .INIT = 8'hAB;
  LUT3 \cpu_inst/EX/ALU/Result<14>130  (
    .I0(\cpu_inst/EX/ALU/Result<14>_map35 ),
    .I1(ALU_A[2]),
    .I2(N9131),
    .O(\cpu_inst/EX/ALU/Result<14>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>133_SW1 .INIT = 16'h2301;
  LUT4 \cpu_inst/EX/ALU/Result<10>133_SW1  (
    .I0(ALU_A[2]),
    .I1(ALU_A[3]),
    .I2(N9507),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .O(N9133)
  );
  defparam \cpu_inst/EX/ALU/Result<10>133 .INIT = 16'hFDEC;
  LUT4 \cpu_inst/EX/ALU/Result<10>133  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<10>_map30 ),
    .I2(N9134),
    .I3(N9133),
    .O(\cpu_inst/EX/ALU/Result<10>_map36 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_1_52 )
  );
  defparam \cpu_inst/EX/Mmux_A_not000173_1 .INIT = 16'hFFEF;
  LUT4 \cpu_inst/EX/Mmux_A_not000173_1  (
    .I0(\cpu_inst/EX/Mmux_A_not0001_map20 ),
    .I1(N9471),
    .I2(\cpu_inst/EX/ForwardA_0_cmp_ne0001 ),
    .I3(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .O(\cpu_inst/EX/Mmux_A_not000173_53 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_1_55 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_2_56 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_1_57 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_2_58 )
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_1_1  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_1_1_59 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_4_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_4_1_61 )
  );
  FDR \cpu_inst/dffr_MEMWB_WB/q_0_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_WB/q_0_1_62 )
  );
  FDR \cpu_inst/dffr_MEMWB_WB/q_1_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_WB/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_WB/q_1_1_63 )
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_1  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_1_64 )
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_1  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_1_65 )
  );
  defparam \cpu_inst/EX/Mmux_B_not000190_1 .INIT = 16'hFFEF;
  LUT4 \cpu_inst/EX/Mmux_B_not000190_1  (
    .I0(\cpu_inst/EX/Mmux_B_not0001_map24 ),
    .I1(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .I2(N9518),
    .I3(N8589),
    .O(\cpu_inst/EX/Mmux_B_not000190_66 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_17  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_17_67 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_18  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_18_68 )
  );
  FDR \cpu_inst/dffr_MEMWB_WB/q_0_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_WB/q_0_2_69 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_17  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_17_70 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_18  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_18_71 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_17  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_17_72 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_18  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_18_73 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_1  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_1_74 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_2  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_2_75 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_3  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_3_76 )
  );
  FDR \cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_4  (
    .C(cpu_clk),
    .D(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .R(reset),
    .Q(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_4_77 )
  );
  defparam \cpu_inst/EX/ALU_A<0>39_1 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/ALU_A<0>39_1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [0]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I2(\cpu_inst/EX/ALU_A<0>_map7 ),
    .I3(N9473),
    .O(\cpu_inst/EX/ALU_A<0>39_78 )
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_2  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [0]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_2_79 )
  );
  FDR \cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_2  (
    .C(cpu_clk),
    .D(\cpu_inst/RegWriteAddr_ex [3]),
    .R(reset),
    .Q(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_3_2_80 )
  );
  defparam \cpu_inst/EX/ALU_A<1>39_1 .INIT = 16'hBBB8;
  LUT4 \cpu_inst/EX/ALU_A<1>39_1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [1]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [2]),
    .I2(\cpu_inst/EX/ALU_A<1>_map7 ),
    .I3(N9469),
    .O(\cpu_inst/EX/ALU_A<1>39_81 )
  );
  MUXF5 \cpu_inst/EX/ALU/Result<31>68_SW0  (
    .I0(N9140),
    .I1(N9141),
    .S(ALU_B[31]),
    .O(N8888)
  );
  defparam \cpu_inst/EX/ALU/Result<31>68_SW0_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Result<31>68_SW0_F  (
    .I0(ALU_A[31]),
    .I1(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I2(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .O(N9140)
  );
  defparam \cpu_inst/EX/ALU/Result<31>68_SW0_G .INIT = 16'hFFA8;
  LUT4 \cpu_inst/EX/ALU/Result<31>68_SW0_G  (
    .I0(ALU_A[31]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0001 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0003 ),
    .O(N9141)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<31>134  (
    .I0(N9142),
    .I1(N9143),
    .S(ALU_A[0]),
    .O(\cpu_inst/EX/ALU/Result<31>_map39 )
  );
  defparam \cpu_inst/EX/ALU/Result<31>134_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Result<31>134_F  (
    .I0(ALU_A[1]),
    .I1(ALU_B[29]),
    .I2(ALU_B[31]),
    .O(N9142)
  );
  defparam \cpu_inst/EX/ALU/Result<31>134_G .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Result<31>134_G  (
    .I0(ALU_A[1]),
    .I1(ALU_B[30]),
    .I2(ALU_B[28]),
    .O(N9143)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<51>  (
    .I0(N9144),
    .I1(N9145),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[51] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<51>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<51>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] ),
    .O(N9144)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<51>_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<51>_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[31] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ),
    .O(N9145)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<50>  (
    .I0(N9146),
    .I1(N9147),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[50] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<50>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<50>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[26] ),
    .O(N9146)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<50>_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<50>_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .O(N9147)
  );
  MUXF5 \cpu_inst/ID/Decode/ALUCode<1>154  (
    .I0(N9148),
    .I1(N9149),
    .S(\cpu_inst/ID/Decode/ALUCode<1>_map31 ),
    .O(\cpu_inst/ALUCode_id [1])
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>154_F .INIT = 8'h02;
  LUT3 \cpu_inst/ID/Decode/ALUCode<1>154_F  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .O(N9148)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>154_G .INIT = 8'hF8;
  LUT3 \cpu_inst/ID/Decode/ALUCode<1>154_G  (
    .I0(\cpu_inst/ID/Decode/ALUCode<1>_map24 ),
    .I1(\cpu_inst/ID/Decode/ALUCode<1>_map27 ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .O(N9149)
  );
  MUXF5 \cpu_inst/ID/Decode/ALUCode<4>56  (
    .I0(N9150),
    .I1(N9151),
    .S(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .O(\cpu_inst/ID/Decode/ALUCode<4>_map20 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<4>56_F .INIT = 16'h0090;
  LUT4 \cpu_inst/ID/Decode/ALUCode<4>56_F  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .O(N9150)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<4>56_G .INIT = 16'h0001;
  LUT4 \cpu_inst/ID/Decode/ALUCode<4>56_G  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .O(N9151)
  );
  MUXF5 \cpu_inst/ID/Decode/RegWrite1  (
    .I0(N9152),
    .I1(N9153),
    .S(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .O(\cpu_inst/ID/Decode/N1 )
  );
  defparam \cpu_inst/ID/Decode/RegWrite1_F .INIT = 16'h5D54;
  LUT4 \cpu_inst/ID/Decode/RegWrite1_F  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .O(N9152)
  );
  defparam \cpu_inst/ID/Decode/RegWrite1_G .INIT = 16'h08EE;
  LUT4 \cpu_inst/ID/Decode/RegWrite1_G  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .O(N9153)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW0  (
    .I0(N9154),
    .I1(N9155),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi [2]),
    .O(N8578)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW0_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW0_F  (
    .I0(ALU_A[7]),
    .I1(\cpu_inst/EX/ALU/B_adder[6] ),
    .I2(ALU_A[6]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co_map9 ),
    .O(N9154)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW0_G .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co27_SW0_G  (
    .I0(ALU_A[7]),
    .I1(\cpu_inst/EX/ALU/B_adder[6] ),
    .I2(ALU_A[6]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co_map9 ),
    .O(N9155)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW0  (
    .I0(N9156),
    .I1(N9157),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi [2]),
    .O(N8495)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW0_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW0_F  (
    .I0(ALU_A[19]),
    .I1(\cpu_inst/EX/ALU/B_adder[18] ),
    .I2(ALU_A[18]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co_map9 ),
    .O(N9156)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW0_G .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW0_G  (
    .I0(ALU_A[19]),
    .I1(\cpu_inst/EX/ALU/B_adder[18] ),
    .I2(ALU_A[18]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co_map9 ),
    .O(N9157)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW0  (
    .I0(N9158),
    .I1(N9159),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [2]),
    .O(N8492)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW0_F .INIT = 16'hEA80;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW0_F  (
    .I0(ALU_A[15]),
    .I1(\cpu_inst/EX/ALU/B_adder[14] ),
    .I2(ALU_A[14]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co_map9 ),
    .O(N9158)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW0_G .INIT = 16'hFEA8;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW0_G  (
    .I0(ALU_A[15]),
    .I1(\cpu_inst/EX/ALU/B_adder[14] ),
    .I2(ALU_A[14]),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co_map9 ),
    .O(N9159)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<2>91  (
    .I0(N9160),
    .I1(N9161),
    .S(JumpFlag[1]),
    .O(\cpu_inst/IF/PC_in_mux0000 [2])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<2>91_F .INIT = 8'hF2;
  LUT3 \cpu_inst/IF/PC_in_mux0000<2>91_F  (
    .I0(\cpu_inst/IF/PC_in_mux0000<2>_map16 ),
    .I1(JumpFlag[2]),
    .I2(\cpu_inst/IF/PC_in_mux0000<2>_map20 ),
    .O(N9160)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<2>91_G .INIT = 8'h02;
  LUT3 \cpu_inst/IF/PC_in_mux0000<2>91_G  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I1(JumpFlag[2]),
    .I2(JumpFlag[0]),
    .O(N9161)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<1>  (
    .I0(N9162),
    .I1(N9163),
    .S(JumpFlag[0]),
    .O(\cpu_inst/IF/PC_in_mux0000 [1])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<1>_F .INIT = 16'h5410;
  LUT4 \cpu_inst/IF/PC_in_mux0000<1>_F  (
    .I0(JumpFlag[1]),
    .I1(JumpFlag[2]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [1]),
    .I3(\cpu_inst/JrAddr [1]),
    .O(N9162)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<1>_G .INIT = 8'h02;
  LUT3 \cpu_inst/IF/PC_in_mux0000<1>_G  (
    .I0(\cpu_inst/dffre_IFID_NextPC/q [1]),
    .I1(JumpFlag[1]),
    .I2(JumpFlag[2]),
    .O(N9163)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<0>  (
    .I0(N9164),
    .I1(N9165),
    .S(JumpFlag[0]),
    .O(\cpu_inst/IF/PC_in_mux0000 [0])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<0>_F .INIT = 16'h5410;
  LUT4 \cpu_inst/IF/PC_in_mux0000<0>_F  (
    .I0(JumpFlag[1]),
    .I1(JumpFlag[2]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [0]),
    .I3(\cpu_inst/JrAddr [0]),
    .O(N9164)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<0>_G .INIT = 8'h02;
  LUT3 \cpu_inst/IF/PC_in_mux0000<0>_G  (
    .I0(\cpu_inst/dffre_IFID_NextPC/q [0]),
    .I1(JumpFlag[1]),
    .I2(JumpFlag[2]),
    .O(N9165)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<11>226  (
    .I0(N9166),
    .I1(N9167),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1]),
    .O(ALUResult[11])
  );
  defparam \cpu_inst/EX/ALU/Result<11>226_F .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<11>226_F  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [3]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<11>_map38 ),
    .O(N9166)
  );
  defparam \cpu_inst/EX/ALU/Result<11>226_G .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<11>226_G  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [3]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<11>_map38 ),
    .O(N9167)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<14>231  (
    .I0(N9168),
    .I1(N9169),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [2]),
    .O(ALUResult[14])
  );
  defparam \cpu_inst/EX/ALU/Result<14>231_F .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<14>231_F  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [2]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<14>_map39 ),
    .O(N9168)
  );
  defparam \cpu_inst/EX/ALU/Result<14>231_G .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<14>231_G  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst2/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [2]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<14>_map39 ),
    .O(N9169)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<13>231  (
    .I0(N9170),
    .I1(N9171),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [2]),
    .O(ALUResult[13])
  );
  defparam \cpu_inst/EX/ALU/Result<13>231_F .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<13>231_F  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [1]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<13>_map39 ),
    .O(N9170)
  );
  defparam \cpu_inst/EX/ALU/Result<13>231_G .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<13>231_G  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst1/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<13>_map39 ),
    .O(N9171)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<15>222  (
    .I0(N9172),
    .I1(N9173),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [2]),
    .O(ALUResult[15])
  );
  defparam \cpu_inst/EX/ALU/Result<15>222_F .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<15>222_F  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/coi [3]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<15>_map37 ),
    .O(N9172)
  );
  defparam \cpu_inst/EX/ALU/Result<15>222_G .INIT = 16'hFF60;
  LUT4 \cpu_inst/EX/ALU/Result<15>222_G  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [3]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<15>_map37 ),
    .O(N9173)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<58>  (
    .I0(N9174),
    .I1(N9175),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[58] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<58>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<58>_F  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[26] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[28] ),
    .O(N9174)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<58>_G .INIT = 16'hF1E0;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<58>_G  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[31]),
    .I3(ALU_B[30]),
    .O(N9175)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<57>  (
    .I0(N9176),
    .I1(N9177),
    .S(ALU_A[1]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[57] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<57>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<57>_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[25] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[29] ),
    .O(N9176)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<57>_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<57>_G  (
    .I0(ALU_A[2]),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] ),
    .O(N9177)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<53>  (
    .I0(N9178),
    .I1(N9179),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[53] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<53>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<53>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[29] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] ),
    .O(N9178)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<53>_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<53>_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[1]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[25] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] ),
    .O(N9179)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<43>  (
    .I0(N9180),
    .I1(N9181),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[43] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<43>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<43>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[11] ),
    .O(N9180)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<43>_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<43>_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[0]),
    .I2(N3211),
    .I3(N3214),
    .O(N9181)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<55>  (
    .I0(N9182),
    .I1(N9183),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[55] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<55>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<55>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[31] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ),
    .O(N9182)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<55>_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<55>_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[1]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[29] ),
    .O(N9183)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<54>  (
    .I0(N9184),
    .I1(N9185),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[54] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<54>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<54>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .O(N9184)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<54>_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<54>_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[1]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[26] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[28] ),
    .O(N9185)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>  (
    .I0(N9186),
    .I1(N9187),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[40] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>_F .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[4] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[8] ),
    .O(N9186)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>_G .INIT = 16'h0002;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<40>_G  (
    .I0(ALU_B[0]),
    .I1(ALU_A[0]),
    .I2(ALU_A[1]),
    .I3(ALU_A[2]),
    .O(N9187)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<1>115  (
    .I0(N9188),
    .I1(N9189),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<1>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>115_F .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<1>115_F  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[3] ),
    .I1(\cpu_inst/EX/ALU/N77 ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/N46 ),
    .O(N9188)
  );
  defparam \cpu_inst/EX/ALU/Result<1>115_G .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<1>115_G  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[7] ),
    .I1(\cpu_inst/EX/ALU/N77 ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[5] ),
    .O(N9189)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<0>115  (
    .I0(N9190),
    .I1(N9191),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<0>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>115_F .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<0>115_F  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[2] ),
    .I1(\cpu_inst/EX/ALU/N77 ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/N45 ),
    .O(N9190)
  );
  defparam \cpu_inst/EX/ALU/Result<0>115_G .INIT = 16'hECA0;
  LUT4 \cpu_inst/EX/ALU/Result<0>115_G  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] ),
    .I1(\cpu_inst/EX/ALU/N77 ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] ),
    .O(N9191)
  );
  MUXF5 \cpu_inst/IF/InstructionROM/dout<27>  (
    .I0(N9192),
    .I1(N9193),
    .S(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .O(\cpu_inst/Instruction_if[27] )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<27>_F .INIT = 8'h02;
  LUT3 \cpu_inst/IF/InstructionROM/dout<27>_F  (
    .I0(N1484),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .O(N9192)
  );
  defparam \cpu_inst/IF/InstructionROM/dout<27>_G .INIT = 16'h0001;
  LUT4 \cpu_inst/IF/InstructionROM/dout<27>_G  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9193)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<4>107  (
    .I0(N9194),
    .I1(N9195),
    .S(JumpFlag[0]),
    .O(\cpu_inst/IF/PC_in_mux0000<4>_map29 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<4>107_F .INIT = 8'hE4;
  LUT3 \cpu_inst/IF/PC_in_mux0000<4>107_F  (
    .I0(JumpFlag[2]),
    .I1(\cpu_inst/NextPC_if [4]),
    .I2(\cpu_inst/JrAddr [4]),
    .O(N9194)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<4>107_G .INIT = 16'h0096;
  LUT4 \cpu_inst/IF/PC_in_mux0000<4>107_G  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I1(\cpu_inst/ID/adder_32bits_BranchAddr/cio [0]),
    .I2(\cpu_inst/dffre_IFID_NextPC/q [4]),
    .I3(JumpFlag[2]),
    .O(N9195)
  );
  MUXF5 \disp/char_selection_3_mux000036  (
    .I0(N9196),
    .I1(N9197),
    .S(x_pos[4]),
    .O(\disp/char_selection_3_mux0000_map17 )
  );
  defparam \disp/char_selection_3_mux000036_F .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000036_F  (
    .I0(\disp/N311 ),
    .I1(ALU_A[7]),
    .I2(\disp/N36 ),
    .I3(ALU_A[31]),
    .O(N9196)
  );
  defparam \disp/char_selection_3_mux000036_G .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux000036_G  (
    .I0(\disp/N311 ),
    .I1(ALU_A[3]),
    .I2(\disp/N36 ),
    .I3(ALU_A[27]),
    .O(N9197)
  );
  MUXF5 \disp/char_selection_3_mux0000159  (
    .I0(N9198),
    .I1(N9199),
    .S(x_pos[4]),
    .O(\disp/char_selection_3_mux0000_map50 )
  );
  defparam \disp/char_selection_3_mux0000159_F .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000159_F  (
    .I0(\disp/N311 ),
    .I1(ALUResult[7]),
    .I2(\disp/N36 ),
    .I3(ALUResult[31]),
    .O(N9198)
  );
  defparam \disp/char_selection_3_mux0000159_G .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000159_G  (
    .I0(\disp/N311 ),
    .I1(ALUResult[3]),
    .I2(\disp/N36 ),
    .I3(ALUResult[27]),
    .O(N9199)
  );
  MUXF5 \disp/char_selection_3_mux0000226  (
    .I0(N9200),
    .I1(N9201),
    .S(x_pos[4]),
    .O(\disp/char_selection_3_mux0000_map67 )
  );
  defparam \disp/char_selection_3_mux0000226_F .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000226_F  (
    .I0(\disp/N311 ),
    .I1(ALU_B[7]),
    .I2(\disp/N36 ),
    .I3(ALU_B[31]),
    .O(N9200)
  );
  defparam \disp/char_selection_3_mux0000226_G .INIT = 16'hF888;
  LUT4 \disp/char_selection_3_mux0000226_G  (
    .I0(\disp/N311 ),
    .I1(ALU_B[3]),
    .I2(\disp/N36 ),
    .I3(ALU_B[27]),
    .O(N9201)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<3>141  (
    .I0(N9202),
    .I1(N9203),
    .S(JumpFlag[2]),
    .O(\cpu_inst/IF/PC_in_mux0000 [3])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<3>141_F .INIT = 16'h7340;
  LUT4 \cpu_inst/IF/PC_in_mux0000<3>141_F  (
    .I0(JumpFlag[0]),
    .I1(JumpFlag[1]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I3(\cpu_inst/IF/PC_in_mux0000<3>_map28 ),
    .O(N9202)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<3>141_G .INIT = 16'h5510;
  LUT4 \cpu_inst/IF/PC_in_mux0000<3>141_G  (
    .I0(JumpFlag[1]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/JrAddr [3]),
    .I3(\cpu_inst/IF/PC_in_mux0000<3>_map28 ),
    .O(N9203)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<7>149  (
    .I0(N9204),
    .I1(N9205),
    .S(JumpFlag[2]),
    .O(\cpu_inst/IF/PC_in_mux0000 [7])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<7>149_F .INIT = 16'h7340;
  LUT4 \cpu_inst/IF/PC_in_mux0000<7>149_F  (
    .I0(JumpFlag[0]),
    .I1(JumpFlag[1]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I3(\cpu_inst/IF/PC_in_mux0000<7>_map25 ),
    .O(N9204)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<7>149_G .INIT = 16'h5510;
  LUT4 \cpu_inst/IF/PC_in_mux0000<7>149_G  (
    .I0(JumpFlag[1]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/JrAddr [7]),
    .I3(\cpu_inst/IF/PC_in_mux0000<7>_map25 ),
    .O(N9205)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<6>149  (
    .I0(N9206),
    .I1(N9207),
    .S(JumpFlag[2]),
    .O(\cpu_inst/IF/PC_in_mux0000 [6])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<6>149_F .INIT = 16'h7340;
  LUT4 \cpu_inst/IF/PC_in_mux0000<6>149_F  (
    .I0(JumpFlag[0]),
    .I1(JumpFlag[1]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I3(\cpu_inst/IF/PC_in_mux0000<6>_map25 ),
    .O(N9206)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<6>149_G .INIT = 16'h5510;
  LUT4 \cpu_inst/IF/PC_in_mux0000<6>149_G  (
    .I0(JumpFlag[1]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/JrAddr [6]),
    .I3(\cpu_inst/IF/PC_in_mux0000<6>_map25 ),
    .O(N9207)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<5>153  (
    .I0(N9208),
    .I1(N9209),
    .S(JumpFlag[2]),
    .O(\cpu_inst/IF/PC_in_mux0000 [5])
  );
  defparam \cpu_inst/IF/PC_in_mux0000<5>153_F .INIT = 16'h7340;
  LUT4 \cpu_inst/IF/PC_in_mux0000<5>153_F  (
    .I0(JumpFlag[0]),
    .I1(JumpFlag[1]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I3(\cpu_inst/IF/PC_in_mux0000<5>_map28 ),
    .O(N9208)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<5>153_G .INIT = 16'h5510;
  LUT4 \cpu_inst/IF/PC_in_mux0000<5>153_G  (
    .I0(JumpFlag[1]),
    .I1(JumpFlag[0]),
    .I2(\cpu_inst/JrAddr [5]),
    .I3(\cpu_inst/IF/PC_in_mux0000<5>_map28 ),
    .O(N9209)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<5>144  (
    .I0(N9210),
    .I1(N9211),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<5>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>144_F .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<5>144_F  (
    .I0(ALU_A[4]),
    .I1(ALU_A[1]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map8 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<1>2_map3 ),
    .O(N9210)
  );
  defparam \cpu_inst/EX/ALU/Result<5>144_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<5>144_G  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[9] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .O(N9211)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<13>124  (
    .I0(N9212),
    .I1(N9213),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<13>_map34 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>124_F .INIT = 16'h6240;
  LUT4 \cpu_inst/EX/ALU/Result<13>124_F  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[29] ),
    .O(N9212)
  );
  defparam \cpu_inst/EX/ALU/Result<13>124_G .INIT = 8'h40;
  LUT3 \cpu_inst/EX/ALU/Result<13>124_G  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[25] ),
    .O(N9213)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<7>139  (
    .I0(N9214),
    .I1(N9215),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<7>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>139_F .INIT = 16'h4501;
  LUT4 \cpu_inst/EX/ALU/Result<7>139_F  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(N2669),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] ),
    .O(N9214)
  );
  defparam \cpu_inst/EX/ALU/Result<7>139_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<7>139_G  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[11] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ),
    .O(N9215)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<6>144  (
    .I0(N9216),
    .I1(N9217),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<6>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>144_F .INIT = 16'h4501;
  LUT4 \cpu_inst/EX/ALU/Result<6>144_F  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(N2671),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .O(N9216)
  );
  defparam \cpu_inst/EX/ALU/Result<6>144_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<6>144_G  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[10] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .O(N9217)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<2>121_SW0  (
    .I0(N9218),
    .I1(N9219),
    .S(ALU_A[4]),
    .O(N8778)
  );
  defparam \cpu_inst/EX/ALU/Result<2>121_SW0_F .INIT = 16'h80C4;
  LUT4 \cpu_inst/EX/ALU/Result<2>121_SW0_F  (
    .I0(ALU_A[2]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .I3(N8772),
    .O(N9218)
  );
  defparam \cpu_inst/EX/ALU/Result<2>121_SW0_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<2>121_SW0_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .O(N9219)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<15>125  (
    .I0(N9220),
    .I1(N9221),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<15>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>125_F .INIT = 16'hC4C0;
  LUT4 \cpu_inst/EX/ALU/Result<15>125_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Result<15>_map33 ),
    .I3(\cpu_inst/EX/ALU/N12 ),
    .O(N9220)
  );
  defparam \cpu_inst/EX/ALU/Result<15>125_G .INIT = 16'hF800;
  LUT4 \cpu_inst/EX/ALU/Result<15>125_G  (
    .I0(\cpu_inst/EX/ALU/N85 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[31] ),
    .I2(\cpu_inst/EX/ALU/Result<15>_map33 ),
    .I3(\cpu_inst/EX/ALU/N81 ),
    .O(N9221)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<19>155  (
    .I0(N9222),
    .I1(N9223),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<19>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<19>155_F .INIT = 16'hCC40;
  LUT4 \cpu_inst/EX/ALU/Result<19>155_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/N59 ),
    .I3(\cpu_inst/EX/ALU/Result<19>_map31 ),
    .O(N9222)
  );
  defparam \cpu_inst/EX/ALU/Result<19>155_G .INIT = 16'hF800;
  LUT4 \cpu_inst/EX/ALU/Result<19>155_G  (
    .I0(\cpu_inst/EX/ALU/N85 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] ),
    .I2(\cpu_inst/EX/ALU/Result<19>_map31 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(N9223)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<12>134  (
    .I0(N9224),
    .I1(N9225),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<12>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>134_F .INIT = 16'hC4C0;
  LUT4 \cpu_inst/EX/ALU/Result<12>134_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Result<12>_map35 ),
    .I3(\cpu_inst/EX/ALU/N15 ),
    .O(N9224)
  );
  defparam \cpu_inst/EX/ALU/Result<12>134_G .INIT = 16'hF800;
  LUT4 \cpu_inst/EX/ALU/Result<12>134_G  (
    .I0(\cpu_inst/EX/ALU/N85 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .I2(\cpu_inst/EX/ALU/Result<12>_map35 ),
    .I3(\cpu_inst/EX/ALU/N81 ),
    .O(N9225)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<18>156  (
    .I0(N9226),
    .I1(N9227),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<18>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<18>156_F .INIT = 16'hC4C0;
  LUT4 \cpu_inst/EX/ALU/Result<18>156_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<18>_map31 ),
    .I3(\cpu_inst/EX/ALU/N58 ),
    .O(N9226)
  );
  defparam \cpu_inst/EX/ALU/Result<18>156_G .INIT = 16'hF800;
  LUT4 \cpu_inst/EX/ALU/Result<18>156_G  (
    .I0(\cpu_inst/EX/ALU/N85 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] ),
    .I2(\cpu_inst/EX/ALU/Result<18>_map31 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(N9227)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<17>155  (
    .I0(N9228),
    .I1(N9229),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<17>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<17>155_F .INIT = 16'hC4C0;
  LUT4 \cpu_inst/EX/ALU/Result<17>155_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<17>_map31 ),
    .I3(\cpu_inst/EX/ALU/N57 ),
    .O(N9228)
  );
  defparam \cpu_inst/EX/ALU/Result<17>155_G .INIT = 16'hF800;
  LUT4 \cpu_inst/EX/ALU/Result<17>155_G  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] ),
    .I1(\cpu_inst/EX/ALU/N85 ),
    .I2(\cpu_inst/EX/ALU/Result<17>_map31 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(N9229)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<16>142  (
    .I0(N9230),
    .I1(N9231),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<16>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>142_F .INIT = 16'hC4C0;
  LUT4 \cpu_inst/EX/ALU/Result<16>142_F  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<16>_map30 ),
    .I3(\cpu_inst/EX/ALU/N56 ),
    .O(N9230)
  );
  defparam \cpu_inst/EX/ALU/Result<16>142_G .INIT = 16'hF800;
  LUT4 \cpu_inst/EX/ALU/Result<16>142_G  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[0] ),
    .I1(\cpu_inst/EX/ALU/N85 ),
    .I2(\cpu_inst/EX/ALU/Result<16>_map30 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .O(N9231)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<0>145  (
    .I0(N9232),
    .I1(N9233),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<0>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>145_F .INIT = 8'hEC;
  LUT3 \cpu_inst/EX/ALU/Result<0>145_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Result<0>_map30 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[40] ),
    .O(N9232)
  );
  defparam \cpu_inst/EX/ALU/Result<0>145_G .INIT = 16'hFDEC;
  LUT4 \cpu_inst/EX/ALU/Result<0>145_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Result<0>_map30 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[56] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[48] ),
    .O(N9233)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<3>115  (
    .I0(N9234),
    .I1(N9235),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<3>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>115_F .INIT = 8'hEC;
  LUT3 \cpu_inst/EX/ALU/Result<3>115_F  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Result<3>_map26 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[51] ),
    .O(N9234)
  );
  defparam \cpu_inst/EX/ALU/Result<3>115_G .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<3>115_G  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[59] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[43] ),
    .I3(\cpu_inst/EX/ALU/Result<3>_map26 ),
    .O(N9235)
  );
  MUXF5 \cpu_inst/ID/Decode/ALUCode<1>84  (
    .I0(N9236),
    .I1(N9237),
    .S(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .O(\cpu_inst/ID/Decode/ALUCode<1>_map24 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>84_F .INIT = 8'h13;
  LUT3 \cpu_inst/ID/Decode/ALUCode<1>84_F  (
    .I0(\cpu_inst/ID/Decode/SLL_map20 ),
    .I1(N8941),
    .I2(\cpu_inst/ID/Decode/SLL_map15 ),
    .O(N9236)
  );
  defparam \cpu_inst/ID/Decode/ALUCode<1>84_G .INIT = 16'h0060;
  LUT4 \cpu_inst/ID/Decode/ALUCode<1>84_G  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .O(N9237)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<6>101  (
    .I0(N9238),
    .I1(N9239),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<6>_map27 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>101_F .INIT = 16'hFF20;
  LUT4 \cpu_inst/EX/ALU/Result<6>101_F  (
    .I0(\cpu_inst/EX/ALU/N50 ),
    .I1(ALU_A[3]),
    .I2(ALU_A[1]),
    .I3(\cpu_inst/EX/ALU/Result<6>_map26 ),
    .O(N9238)
  );
  defparam \cpu_inst/EX/ALU/Result<6>101_G .INIT = 8'hF8;
  LUT3 \cpu_inst/EX/ALU/Result<6>101_G  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[62] ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Result<6>_map26 ),
    .O(N9239)
  );
  defparam \cpu_inst/EX/ALU/Result<5>101_F .INIT = 16'hF2F0;
  LUT4 \cpu_inst/EX/ALU/Result<5>101_F  (
    .I0(ALU_A[1]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Result<5>_map26 ),
    .I3(N9382),
    .O(N9240)
  );
  defparam \cpu_inst/EX/ALU/Result<5>101_G .INIT = 8'hF8;
  LUT3 \cpu_inst/EX/ALU/Result<5>101_G  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[61] ),
    .I1(ALU_A[3]),
    .I2(N9512),
    .O(N9241)
  );
  MUXF5 \cpu_inst/ID/zero_test_inst/Z119  (
    .I0(N9242),
    .I1(N9243),
    .S(\cpu_inst/ALUCode_id [2]),
    .O(\cpu_inst/ID/zero_test_inst/Z_map35 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z119_F .INIT = 8'hA8;
  LUT3 \cpu_inst/ID/zero_test_inst/Z119_F  (
    .I0(\cpu_inst/ALUCode_id [0]),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map15 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map30 ),
    .O(N9242)
  );
  defparam \cpu_inst/ID/zero_test_inst/Z119_G .INIT = 16'hBA10;
  LUT4 \cpu_inst/ID/zero_test_inst/Z119_G  (
    .I0(\cpu_inst/ID/RsSel ),
    .I1(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\cpu_inst/ID/MultiRegisters/_varindex0000 [31]),
    .I3(\cpu_inst/RegWriteData_wb [31]),
    .O(N9243)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<7>230_SW0  (
    .I0(N9244),
    .I1(N9245),
    .S(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [0]),
    .O(N9019)
  );
  defparam \cpu_inst/EX/ALU/Result<7>230_SW0_F .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/Result<7>230_SW0_F  (
    .I0(ALU_A[6]),
    .I1(\cpu_inst/EX/ALU/B_adder[6] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/coi [2]),
    .O(N9244)
  );
  defparam \cpu_inst/EX/ALU/Result<7>230_SW0_G .INIT = 8'hE8;
  LUT3 \cpu_inst/EX/ALU/Result<7>230_SW0_G  (
    .I0(ALU_A[6]),
    .I1(\cpu_inst/EX/ALU/B_adder[6] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst1/coi [2]),
    .O(N9245)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<28>46  (
    .I0(N9246),
    .I1(N9247),
    .S(ALU_B[28]),
    .O(\cpu_inst/EX/ALU/Result<28>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<28>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<28>46_F  (
    .I0(ALU_A[28]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9246)
  );
  defparam \cpu_inst/EX/ALU/Result<28>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<28>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8951),
    .O(N9247)
  );
  defparam \cpu_inst/EX/ALU/Result<30>61_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<30>61_F  (
    .I0(ALU_A[30]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9248)
  );
  defparam \cpu_inst/EX/ALU/Result<29>61_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<29>61_F  (
    .I0(ALU_A[29]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9250)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<16>46  (
    .I0(N9252),
    .I1(N9253),
    .S(ALU_B[16]),
    .O(\cpu_inst/EX/ALU/Result<16>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<16>46_F  (
    .I0(ALU_A[16]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9252)
  );
  defparam \cpu_inst/EX/ALU/Result<16>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<16>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8960),
    .O(N9253)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<19>46  (
    .I0(N9254),
    .I1(N9255),
    .S(ALU_B[19]),
    .O(\cpu_inst/EX/ALU/Result<19>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<19>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<19>46_F  (
    .I0(ALU_A[19]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9254)
  );
  defparam \cpu_inst/EX/ALU/Result<19>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<19>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8963),
    .O(N9255)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<18>46  (
    .I0(N9256),
    .I1(N9257),
    .S(ALU_B[18]),
    .O(\cpu_inst/EX/ALU/Result<18>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<18>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<18>46_F  (
    .I0(ALU_A[18]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9256)
  );
  defparam \cpu_inst/EX/ALU/Result<18>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<18>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8966),
    .O(N9257)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<17>46  (
    .I0(N9258),
    .I1(N9259),
    .S(ALU_B[17]),
    .O(\cpu_inst/EX/ALU/Result<17>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<17>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<17>46_F  (
    .I0(ALU_A[17]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9258)
  );
  defparam \cpu_inst/EX/ALU/Result<17>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<17>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8969),
    .O(N9259)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<20>46  (
    .I0(N9260),
    .I1(N9261),
    .S(ALU_B[20]),
    .O(\cpu_inst/EX/ALU/Result<20>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<20>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<20>46_F  (
    .I0(ALU_A[20]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9260)
  );
  defparam \cpu_inst/EX/ALU/Result<20>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<20>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8972),
    .O(N9261)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<23>46  (
    .I0(N9262),
    .I1(N9263),
    .S(ALU_B[23]),
    .O(\cpu_inst/EX/ALU/Result<23>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<23>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<23>46_F  (
    .I0(ALU_A[23]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9262)
  );
  defparam \cpu_inst/EX/ALU/Result<23>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<23>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8975),
    .O(N9263)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<22>46  (
    .I0(N9264),
    .I1(N9265),
    .S(ALU_B[22]),
    .O(\cpu_inst/EX/ALU/Result<22>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<22>46_F  (
    .I0(ALU_A[22]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9264)
  );
  defparam \cpu_inst/EX/ALU/Result<22>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<22>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8978),
    .O(N9265)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<21>46  (
    .I0(N9266),
    .I1(N9267),
    .S(ALU_B[21]),
    .O(\cpu_inst/EX/ALU/Result<21>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<21>46_F  (
    .I0(ALU_A[21]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9266)
  );
  defparam \cpu_inst/EX/ALU/Result<21>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<21>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8981),
    .O(N9267)
  );
  defparam \cpu_inst/EX/ALU/Result<24>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<24>46_F  (
    .I0(ALU_A[24]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9268)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<27>46  (
    .I0(N9270),
    .I1(N9271),
    .S(ALU_B[27]),
    .O(\cpu_inst/EX/ALU/Result<27>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<27>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<27>46_F  (
    .I0(ALU_A[27]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9270)
  );
  defparam \cpu_inst/EX/ALU/Result<27>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<27>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8987),
    .O(N9271)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<26>46  (
    .I0(N9272),
    .I1(N9273),
    .S(ALU_B[26]),
    .O(\cpu_inst/EX/ALU/Result<26>_map14 )
  );
  defparam \cpu_inst/EX/ALU/Result<26>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<26>46_F  (
    .I0(ALU_A[26]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9272)
  );
  defparam \cpu_inst/EX/ALU/Result<26>46_G .INIT = 16'hFF80;
  LUT4 \cpu_inst/EX/ALU/Result<26>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8990),
    .O(N9273)
  );
  defparam \cpu_inst/EX/ALU/Result<25>46_F .INIT = 16'hFAD8;
  LUT4 \cpu_inst/EX/ALU/Result<25>46_F  (
    .I0(ALU_A[25]),
    .I1(\cpu_inst/EX/ALU/Result<31>_map10 ),
    .I2(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0002 ),
    .O(N9274)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<11>112  (
    .I0(N9276),
    .I1(N9277),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<11>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>112_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<11>112_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[59] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[43] ),
    .O(N9276)
  );
  defparam \cpu_inst/EX/ALU/Result<11>112_G .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<11>112_G  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[4]),
    .I2(ALU_B[31]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[51] ),
    .O(N9277)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<12>112  (
    .I0(N9278),
    .I1(N9279),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<12>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>112_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<12>112_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[60] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[44] ),
    .O(N9278)
  );
  defparam \cpu_inst/EX/ALU/Result<12>112_G .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<12>112_G  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[4]),
    .I2(ALU_B[31]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[52] ),
    .O(N9279)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<9>112  (
    .I0(N9280),
    .I1(N9281),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<9>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>112_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<9>112_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[57] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[41] ),
    .O(N9280)
  );
  defparam \cpu_inst/EX/ALU/Result<9>112_G .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<9>112_G  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[4]),
    .I2(ALU_B[31]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[49] ),
    .O(N9281)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<9>131_SW0  (
    .I0(N9282),
    .I1(N9283),
    .S(ALU_A[2]),
    .O(N9115)
  );
  defparam \cpu_inst/EX/ALU/Result<9>131_SW0_F .INIT = 8'h27;
  LUT3 \cpu_inst/EX/ALU/Result<9>131_SW0_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[9] ),
    .O(N9282)
  );
  defparam \cpu_inst/EX/ALU/Result<9>131_SW0_G .INIT = 8'h72;
  LUT3 \cpu_inst/EX/ALU/Result<9>131_SW0_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] ),
    .I2(N2673),
    .O(N9283)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<8>136  (
    .I0(N9284),
    .I1(N9285),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Result<8>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>136_F .INIT = 8'hF2;
  LUT3 \cpu_inst/EX/ALU/Result<8>136_F  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[40] ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Result<8>_map32 ),
    .O(N9284)
  );
  defparam \cpu_inst/EX/ALU/Result<8>136_G .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<8>136_G  (
    .I0(ALU_A[4]),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[48] ),
    .I3(\cpu_inst/EX/ALU/Result<8>_map32 ),
    .O(N9285)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<16>100  (
    .I0(N9286),
    .I1(N9287),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<16>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>100_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<16>100_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[56] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[48] ),
    .O(N9286)
  );
  defparam \cpu_inst/EX/ALU/Result<16>100_G .INIT = 16'hB080;
  LUT4 \cpu_inst/EX/ALU/Result<16>100_G  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ALU/N95 ),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .O(N9287)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<19>100  (
    .I0(N9288),
    .I1(N9289),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<19>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<19>100_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<19>100_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[59] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[51] ),
    .O(N9288)
  );
  defparam \cpu_inst/EX/ALU/Result<19>100_G .INIT = 16'hB080;
  LUT4 \cpu_inst/EX/ALU/Result<19>100_G  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ALU/N95 ),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .O(N9289)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<17>100  (
    .I0(N9290),
    .I1(N9291),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<17>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<17>100_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<17>100_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[57] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[49] ),
    .O(N9290)
  );
  defparam \cpu_inst/EX/ALU/Result<17>100_G .INIT = 16'hB080;
  LUT4 \cpu_inst/EX/ALU/Result<17>100_G  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ALU/N95 ),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .O(N9291)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<14>106  (
    .I0(N9292),
    .I1(N9293),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<14>_map29 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>106_F .INIT = 8'hEC;
  LUT3 \cpu_inst/EX/ALU/Result<14>106_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Result<14>_map28 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[54] ),
    .O(N9292)
  );
  defparam \cpu_inst/EX/ALU/Result<14>106_G .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<14>106_G  (
    .I0(ALU_A[3]),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[62] ),
    .I3(\cpu_inst/EX/ALU/Result<14>_map28 ),
    .O(N9293)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<15>106  (
    .I0(N9294),
    .I1(N9295),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<15>_map28 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>106_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<15>106_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[55] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[47] ),
    .O(N9294)
  );
  defparam \cpu_inst/EX/ALU/Result<15>106_G .INIT = 16'hB080;
  LUT4 \cpu_inst/EX/ALU/Result<15>106_G  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/EX/ALU/N95 ),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .O(N9295)
  );
  MUXF5 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/co  (
    .I0(N9296),
    .I1(N9297),
    .S(\cpu_inst/EX/ALU/B_adder_addsub0000 [1]),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/co_F .INIT = 16'hE8C0;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/co_F  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [1]),
    .I3(ALU_B[1]),
    .O(N9296)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/co_G .INIT = 16'hFCD4;
  LUT4 \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/co_G  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [1]),
    .I3(ALU_B[1]),
    .O(N9297)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<11>131_SW0  (
    .I0(N9300),
    .I1(N9301),
    .S(ALU_A[2]),
    .O(N9117)
  );
  defparam \cpu_inst/EX/ALU/Result<11>131_SW0_F .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Result<11>131_SW0_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[11] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[19] ),
    .O(N9300)
  );
  defparam \cpu_inst/EX/ALU/Result<11>131_SW0_G .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Result<11>131_SW0_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[23] ),
    .O(N9301)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<30>122  (
    .I0(N9302),
    .I1(N9303),
    .S(ALU_A[1]),
    .O(\cpu_inst/EX/ALU/Result<30>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<30>122_F .INIT = 16'hEAC0;
  LUT4 \cpu_inst/EX/ALU/Result<30>122_F  (
    .I0(ALU_B[30]),
    .I1(ALU_B[29]),
    .I2(\cpu_inst/EX/ALU/N79 ),
    .I3(\cpu_inst/EX/ALU/N200 ),
    .O(N9302)
  );
  defparam \cpu_inst/EX/ALU/Result<30>122_G .INIT = 16'hECA0;
  LUT4 \cpu_inst/EX/ALU/Result<30>122_G  (
    .I0(ALU_B[27]),
    .I1(ALU_B[28]),
    .I2(\cpu_inst/EX/ALU/N79 ),
    .I3(\cpu_inst/EX/ALU/N200 ),
    .O(N9303)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<2>103  (
    .I0(N9304),
    .I1(N9305),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<2>_map26 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>103_F .INIT = 16'hECA0;
  LUT4 \cpu_inst/EX/ALU/Result<2>103_F  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[2] ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .O(N9304)
  );
  defparam \cpu_inst/EX/ALU/Result<2>103_G .INIT = 16'hEAC0;
  LUT4 \cpu_inst/EX/ALU/Result<2>103_G  (
    .I0(\cpu_inst/EX/ALU/N77 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[8] ),
    .O(N9305)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<14>103  (
    .I0(N9306),
    .I1(N9307),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<14>_map28 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>103_F .INIT = 16'h0D08;
  LUT4 \cpu_inst/EX/ALU/Result<14>103_F  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[16] ),
    .I2(\cpu_inst/EX/ALU/N1 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[14] ),
    .O(N9306)
  );
  defparam \cpu_inst/EX/ALU/Result<14>103_G .INIT = 16'h0D08;
  LUT4 \cpu_inst/EX/ALU/Result<14>103_G  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[20] ),
    .I2(\cpu_inst/EX/ALU/N1 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[18] ),
    .O(N9307)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<48>  (
    .I0(N9312),
    .I1(N9313),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[48] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<48>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<48>_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .O(N9312)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<48>_G .INIT = 8'hD8;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<48>_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] ),
    .O(N9313)
  );
  defparam \cpu_inst/EX/ALU/Result<30>96_SW0 .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<30>96_SW0  (
    .I0(ALU_B[30]),
    .I1(N9249),
    .I2(N9248),
    .I3(\cpu_inst/EX/ALU/N42 ),
    .O(N8870)
  );
  defparam \cpu_inst/EX/ALU/Result<29>96_SW0 .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<29>96_SW0  (
    .I0(ALU_B[29]),
    .I1(N9251),
    .I2(N9250),
    .I3(\cpu_inst/EX/ALU/N42 ),
    .O(N8872)
  );
  defparam \cpu_inst/EX/ALU/Result<24>56 .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<24>56  (
    .I0(ALU_B[24]),
    .I1(N9269),
    .I2(N9268),
    .I3(\cpu_inst/EX/ALU/N42 ),
    .O(\cpu_inst/EX/ALU/Result<24>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<25>56 .INIT = 16'hFFD8;
  LUT4 \cpu_inst/EX/ALU/Result<25>56  (
    .I0(ALU_B[25]),
    .I1(N9275),
    .I2(N9274),
    .I3(\cpu_inst/EX/ALU/N42 ),
    .O(\cpu_inst/EX/ALU/Result<25>_map15 )
  );
  BUFG cpu_clk_BUFG (
    .I(cpu_clk1_82),
    .O(cpu_clk)
  );
  BUFG \CLKgen/counter_1_BUFG  (
    .I(\CLKgen/counter_11 ),
    .O(\CLKgen/counter [1])
  );
  BUFG \CLKgen/counter_0_BUFG  (
    .I(\CLKgen/counter_01 ),
    .O(\CLKgen/counter [0])
  );
  BUFGP clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV \CLKgen/step_key/div_inst/Mcount_q_lut<0>_INV_0  (
    .I(\CLKgen/step_key/div_inst/q [0]),
    .O(\Result<0>1 )
  );
  INV \vga_ctrl/Mcount_pixel_cnt_reg_lut<0>_INV_0  (
    .I(\vga_ctrl/pixel_cnt_reg [0]),
    .O(\vga_ctrl/Result [0])
  );
  INV \vga_ctrl/Mcount_line_cnt_reg_lut<0>_INV_0  (
    .I(\vga_ctrl/line_cnt_reg [0]),
    .O(\vga_ctrl/Result<0>1 )
  );
  INV \vga_ctrl/Msub_x_pos_temp_xor<3>11_INV_0  (
    .I(\vga_ctrl/pixel_cnt_reg [3]),
    .O(x_pos[3])
  );
  INV reset1_INV_0 (
    .I(reset_n_IBUF_1),
    .O(reset)
  );
  INV \cpu_inst/IF/adder_32bits_NextPC/adder_4bits_inst/add_inst2/Mxor_s1_INV_0  (
    .I(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(\cpu_inst/NextPC_if [2])
  );
  INV \CLKgen/step_key/debounce/Madd__add0000_xor<0>11_INV_0  (
    .I(\CLKgen/step_key/debounce/counter/q [0]),
    .O(\CLKgen/step_key/debounce/_add0000 [0])
  );
  INV \CLKgen/step_key/debounce/Mrom_current_state_q_rom000011_INV_0  (
    .I(\CLKgen/step_key/debounce/state/q [0]),
    .O(\CLKgen/step_key/debounce/Mrom_current_state_q_rom0000 )
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<20>1  (
    .I0(N9318),
    .I1(N9319),
    .S(ALU_A[0]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[20] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<20>1_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<20>1_F  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I1(\cpu_inst/MemWriteData_ex [20]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(N9318)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<20>1_G .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<20>1_G  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I1(\cpu_inst/MemWriteData_ex [21]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(N9319)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<18>1  (
    .I0(N9320),
    .I1(N9321),
    .S(ALU_A[0]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[18] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<18>1_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<18>1_F  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I1(\cpu_inst/MemWriteData_ex [18]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(N9320)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<18>1_G .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<18>1_G  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I1(\cpu_inst/MemWriteData_ex [19]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .O(N9321)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<5>119  (
    .I0(N9322),
    .I1(N9323),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<5>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>119_F .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<5>119_F  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(N9240),
    .I2(ALU_A[3]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[45] ),
    .O(N9322)
  );
  defparam \cpu_inst/EX/ALU/Result<5>119_G .INIT = 16'h88A8;
  LUT4 \cpu_inst/EX/ALU/Result<5>119_G  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(N9241),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[53] ),
    .I3(ALU_A[3]),
    .O(N9323)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<28>  (
    .I0(N9324),
    .I1(N9325),
    .S(ALU_A[1]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<28>_F .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<28>_F  (
    .I0(ALU_A[0]),
    .I1(ALU_B[28]),
    .I2(ALU_B[29]),
    .O(N9324)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<28>_G .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<28>_G  (
    .I0(ALU_A[0]),
    .I1(ALU_B[30]),
    .I2(ALU_B[31]),
    .O(N9325)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<6>108  (
    .I0(N9326),
    .I1(N9327),
    .S(ALU_A[4]),
    .O(\cpu_inst/EX/ALU/Result<6>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>108_F .INIT = 16'hA280;
  LUT4 \cpu_inst/EX/ALU/Result<6>108_F  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .O(N9326)
  );
  defparam \cpu_inst/EX/ALU/Result<6>108_G .INIT = 16'h5410;
  LUT4 \cpu_inst/EX/ALU/Result<6>108_G  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[26] ),
    .O(N9327)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<10>105_SW0  (
    .I0(N9328),
    .I1(N9329),
    .S(ALU_A[2]),
    .O(N9119)
  );
  defparam \cpu_inst/EX/ALU/Result<10>105_SW0_F .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Result<10>105_SW0_F  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[10] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .O(N9328)
  );
  defparam \cpu_inst/EX/ALU/Result<10>105_SW0_G .INIT = 8'h1B;
  LUT3 \cpu_inst/EX/ALU/Result<10>105_SW0_G  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .O(N9329)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<6>621 .INIT = 16'h9996;
  LUT4 \cpu_inst/IF/PC_in_mux0000<6>621  (
    .I0(\cpu_inst/dffre_IFID_NextPC/q [6]),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/ID/adder_32bits_BranchAddr/cio [0]),
    .O(N9330)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<6>622 .INIT = 16'h6696;
  LUT4 \cpu_inst/IF/PC_in_mux0000<6>622  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [6]),
    .I2(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/ID/adder_32bits_BranchAddr/cio [0]),
    .O(N9331)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<6>62_f5  (
    .I0(N9331),
    .I1(N9330),
    .S(\cpu_inst/ID/adder_32bits_BranchAddr/mux_adder_inst1/adder_abits_inst1/coi [2]),
    .O(\cpu_inst/IF/PC_in_mux0000<6>_map20 )
  );
  defparam \cpu_inst/IF/PC_in_mux0000<5>691 .INIT = 16'h9996;
  LUT4 \cpu_inst/IF/PC_in_mux0000<5>691  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I1(\cpu_inst/dffre_IFID_NextPC/q [5]),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [4]),
    .O(N9332)
  );
  defparam \cpu_inst/IF/PC_in_mux0000<5>692 .INIT = 16'h963C;
  LUT4 \cpu_inst/IF/PC_in_mux0000<5>692  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I2(\cpu_inst/dffre_IFID_NextPC/q [5]),
    .I3(\cpu_inst/dffre_IFID_NextPC/q [4]),
    .O(N9333)
  );
  MUXF5 \cpu_inst/IF/PC_in_mux0000<5>69_f5  (
    .I0(N9333),
    .I1(N9332),
    .S(\cpu_inst/ID/adder_32bits_BranchAddr/cio [0]),
    .O(\cpu_inst/IF/PC_in_mux0000<5>_map23 )
  );
  defparam \cpu_inst/IF/InstructionROM/dout<19>1 .INIT = 16'h5756;
  LUT4 \cpu_inst/IF/InstructionROM/dout<19>1  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .I2(\cpu_inst/IF/dffre_PC_REG/q [3]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [2]),
    .O(N9335)
  );
  MUXF5 \cpu_inst/IF/InstructionROM/dout<19>_f5  (
    .I0(Instruction_id[20]),
    .I1(N9335),
    .S(\cpu_inst/IF/InstructionROM/dout_and0000 ),
    .O(\cpu_inst/Instruction_if[19] )
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<3>21 .INIT = 16'h7FFF;
  LUT4 \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<3>21  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/adder_32bits_NextPC/cio [0]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(N9336)
  );
  defparam \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<3>22 .INIT = 16'h8000;
  LUT4 \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<3>22  (
    .I0(\cpu_inst/IF/dffre_PC_REG/q [5]),
    .I1(\cpu_inst/IF/dffre_PC_REG/q [6]),
    .I2(\cpu_inst/IF/adder_32bits_NextPC/cio [0]),
    .I3(\cpu_inst/IF/dffre_PC_REG/q [4]),
    .O(N9337)
  );
  MUXF5 \cpu_inst/IF/adder_32bits_NextPC/mux_adder_inst1/sum<3>2_f5  (
    .I0(N9337),
    .I1(N9336),
    .S(\cpu_inst/IF/dffre_PC_REG/q [7]),
    .O(\cpu_inst/NextPC_if [7])
  );
  defparam \cpu_inst/ID/Decode/RegWrite41 .INIT = 16'h2AAA;
  LUT4 \cpu_inst/ID/Decode/RegWrite41  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .O(N9338)
  );
  MUXF5 \cpu_inst/ID/Decode/RegWrite4_f5  (
    .I0(N9338),
    .I1(Instruction_id[20]),
    .S(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .O(\cpu_inst/ID/Decode/N151 )
  );
  defparam \cpu_inst/ID/Decode/J11 .INIT = 16'h0002;
  LUT4 \cpu_inst/ID/Decode/J11  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[29] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .O(N9339)
  );
  MUXF5 \cpu_inst/ID/Decode/J1_f5  (
    .I0(N9339),
    .I1(Instruction_id[20]),
    .S(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .O(JumpFlag[1])
  );
  defparam \vga_ctrl/data_en_reg_or000022 .INIT = 16'h7FFF;
  LUT4 \vga_ctrl/data_en_reg_or000022  (
    .I0(\vga_ctrl/pixel_cnt_reg [5]),
    .I1(\vga_ctrl/pixel_cnt_reg [6]),
    .I2(\vga_ctrl/pixel_cnt_reg [4]),
    .I3(\vga_ctrl/pixel_cnt_reg [3]),
    .O(N9340)
  );
  MUXF5 \vga_ctrl/data_en_reg_or00002_f5  (
    .I0(blue_2_OBUF_7),
    .I1(N9340),
    .S(\vga_ctrl/pixel_cnt_reg [7]),
    .O(\vga_ctrl/N2 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<41>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<41>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[15] ),
    .O(N9342)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<41>2 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<41>2  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[11] ),
    .O(N9343)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<41>_f5  (
    .I0(N9343),
    .I1(N9342),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[41] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<49>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<49>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[25] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[29] ),
    .O(N9344)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<49>2 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<49>2  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] ),
    .O(N9345)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<49>_f5  (
    .I0(N9345),
    .I1(N9344),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[49] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<41>1 .INIT = 16'h7351;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<41>1  (
    .I0(ALU_A[2]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] ),
    .O(N9346)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<41>2 .INIT = 16'h6240;
  LUT4 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<41>2  (
    .I0(ALU_A[2]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] ),
    .O(N9347)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<41>_f5  (
    .I0(N9347),
    .I1(N9346),
    .S(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[9] ),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[41] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<47>1 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<47>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[7] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] ),
    .O(N9348)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<47>2 .INIT = 8'hE4;
  LUT3 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<47>2  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[15] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[11] ),
    .O(N9349)
  );
  MUXF5 \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<47>_f5  (
    .I0(N9349),
    .I1(N9348),
    .S(ALU_A[3]),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[47] )
  );
  defparam \cpu_inst/EX/ALU/Result<2>1281 .INIT = 16'hA888;
  LUT4 \cpu_inst/EX/ALU/Result<2>1281  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<2>_map26 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[58] ),
    .I3(\cpu_inst/EX/ALU/N103 ),
    .O(N9350)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<2>128_f5  (
    .I0(N9350),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .S(N8778),
    .O(\cpu_inst/EX/ALU/Result<2>_map33 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>1031 .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<3>1031  (
    .I0(\cpu_inst/EX/ALU/N101 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[7] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .O(N9351)
  );
  defparam \cpu_inst/EX/ALU/Result<3>1032 .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<3>1032  (
    .I0(\cpu_inst/EX/ALU/N101 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[3] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[5] ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .O(N9352)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<3>103_f5  (
    .I0(N9352),
    .I1(N9351),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<3>_map26 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>991 .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<4>991  (
    .I0(\cpu_inst/EX/ALU/N101 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[8] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .O(N9353)
  );
  defparam \cpu_inst/EX/ALU/Result<4>992 .INIT = 16'hF888;
  LUT4 \cpu_inst/EX/ALU/Result<4>992  (
    .I0(\cpu_inst/EX/ALU/N101 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[4] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .O(N9354)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<4>99_f5  (
    .I0(N9354),
    .I1(N9353),
    .S(ALU_A[2]),
    .O(\cpu_inst/EX/ALU/Result<4>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<27>224_SW01 .INIT = 16'h566A;
  LUT4 \cpu_inst/EX/ALU/Result<27>224_SW01  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi [2]),
    .I2(\cpu_inst/EX/ALU/B_adder[26] ),
    .I3(ALU_A[26]),
    .O(N9355)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<27>224_SW0_f5  (
    .I0(Instruction_id[20]),
    .I1(N9355),
    .S(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8510)
  );
  defparam \cpu_inst/EX/ALU/Result<23>224_SW01 .INIT = 16'h566A;
  LUT4 \cpu_inst/EX/ALU/Result<23>224_SW01  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi [2]),
    .I2(\cpu_inst/EX/ALU/B_adder[22] ),
    .I3(ALU_A[22]),
    .O(N9356)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<23>224_SW0_f5  (
    .I0(Instruction_id[20]),
    .I1(N9356),
    .S(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8545)
  );
  defparam \cpu_inst/EX/ALU/Result<19>236_SW01 .INIT = 16'h566A;
  LUT4 \cpu_inst/EX/ALU/Result<19>236_SW01  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/coi [2]),
    .I2(\cpu_inst/EX/ALU/B_adder[18] ),
    .I3(ALU_A[18]),
    .O(N9357)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<19>236_SW0_f5  (
    .I0(Instruction_id[20]),
    .I1(N9357),
    .S(\cpu_inst/EX/ALU/Result_or0019 ),
    .O(N8591)
  );
  defparam \disp/vga_pixel2261 .INIT = 16'h4555;
  LUT4 \disp/vga_pixel2261  (
    .I0(\vga_ctrl/pixel_cnt_reg [8]),
    .I1(\vga_ctrl/N111 ),
    .I2(\vga_ctrl/pixel_cnt_reg [7]),
    .I3(\vga_ctrl/pixel_cnt_reg [6]),
    .O(N9358)
  );
  defparam \disp/vga_pixel2262 .INIT = 4'hD;
  LUT2 \disp/vga_pixel2262  (
    .I0(\vga_ctrl/N2 ),
    .I1(\vga_ctrl/pixel_cnt_reg [8]),
    .O(N9359)
  );
  MUXF5 \disp/vga_pixel226_f5  (
    .I0(N9359),
    .I1(N9358),
    .S(\vga_ctrl/pixel_cnt_reg [9]),
    .O(\disp/vga_pixel_map59 )
  );
  defparam \vga_ctrl/Msub_y_pos_xor<6>12 .INIT = 16'hFF80;
  LUT4 \vga_ctrl/Msub_y_pos_xor<6>12  (
    .I0(\vga_ctrl/line_cnt_reg [4]),
    .I1(\vga_ctrl/N11 ),
    .I2(\vga_ctrl/line_cnt_reg [3]),
    .I3(\vga_ctrl/line_cnt_reg [5]),
    .O(N9360)
  );
  defparam \vga_ctrl/Msub_y_pos_xor<6>13 .INIT = 8'h13;
  LUT3 \vga_ctrl/Msub_y_pos_xor<6>13  (
    .I0(\vga_ctrl/line_cnt_reg [4]),
    .I1(\vga_ctrl/line_cnt_reg [5]),
    .I2(N1611),
    .O(N9361)
  );
  MUXF5 \vga_ctrl/Msub_y_pos_xor<6>1_f5  (
    .I0(N9361),
    .I1(N9360),
    .S(\vga_ctrl/line_cnt_reg [6]),
    .O(y_pos[6])
  );
  defparam \cpu_inst/EX/ALU/Result<14>130_SW01 .INIT = 16'hA1AB;
  LUT4 \cpu_inst/EX/ALU/Result<14>130_SW01  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .I2(ALU_A[4]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .O(N9362)
  );
  defparam \cpu_inst/EX/ALU/Result<14>130_SW02 .INIT = 16'hFF1B;
  LUT4 \cpu_inst/EX/ALU/Result<14>130_SW02  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[14] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .I3(ALU_A[4]),
    .O(N9363)
  );
  MUXF5 \cpu_inst/EX/ALU/Result<14>130_SW0_f5  (
    .I0(N9363),
    .I1(N9362),
    .S(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] ),
    .O(N9131)
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq000711 .INIT = 16'h0002;
  LUT4_D \cpu_inst/EX/ALU/Result_cmp_eq000711  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [6]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [7]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I3(\cpu_inst/dffr_IDEX_EX/q [5]),
    .LO(N9364),
    .O(\cpu_inst/EX/ALU/N202 )
  );
  defparam \cpu_inst/EX/ALU/Result_or001921 .INIT = 8'h02;
  LUT3_D \cpu_inst/EX/ALU/Result_or001921  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [5]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [6]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [7]),
    .LO(N9365),
    .O(\cpu_inst/EX/ALU/N84 )
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq00031 .INIT = 8'h80;
  LUT3_D \cpu_inst/EX/ALU/Result_cmp_eq00031  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .LO(N9366),
    .O(\cpu_inst/EX/ALU/Result_cmp_eq0003 )
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq00021 .INIT = 8'h40;
  LUT3_D \cpu_inst/EX/ALU/Result_cmp_eq00021  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/EX/ALU/N78 ),
    .LO(N9367),
    .O(\cpu_inst/EX/ALU/Result_cmp_eq0002 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<4>8 .INIT = 16'hAA8A;
  LUT4_L \cpu_inst/ID/Decode/ALUCode<4>8  (
    .I0(\cpu_inst/ID/Decode/SLL ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .LO(\cpu_inst/ID/Decode/ALUCode<4>_map3 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>121 .INIT = 16'h0001;
  LUT4_D \cpu_inst/ID/Decode/ALUCode<0>121  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[2] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[5] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[1] ),
    .LO(N9368),
    .O(\cpu_inst/ID/Decode/N13 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>17 .INIT = 4'h2;
  LUT2_L \cpu_inst/ID/Decode/ALUCode<0>17  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .LO(\cpu_inst/ID/Decode/ALUCode<0>_map7 )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<0>127 .INIT = 16'hFF02;
  LUT4_L \cpu_inst/ID/Decode/ALUCode<0>127  (
    .I0(\cpu_inst/ID/Decode/ALUCode<0>_map30 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[0] ),
    .I2(\cpu_inst/ID/Decode/SLL ),
    .I3(\cpu_inst/ID/Decode/ALUCode<0>_map16 ),
    .LO(\cpu_inst/ID/Decode/ALUCode<0>_map35 )
  );
  defparam \cpu_inst/ID/Decode/SLL21 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/ID/Decode/SLL21  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[6] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .LO(\cpu_inst/ID/Decode/SLL_map9 )
  );
  defparam \cpu_inst/ID/Decode/SLL59 .INIT = 16'h0020;
  LUT4_D \cpu_inst/ID/Decode/SLL59  (
    .I0(\cpu_inst/ID/Decode/N13 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[4] ),
    .I2(\cpu_inst/ID/Decode/N9 ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[3] ),
    .LO(N9369),
    .O(\cpu_inst/ID/Decode/SLL_map20 )
  );
  defparam \cpu_inst/ID/Decode/RegWrite51 .INIT = 16'h0001;
  LUT4_D \cpu_inst/ID/Decode/RegWrite51  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[27] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[28] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[31] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .LO(N9370),
    .O(\cpu_inst/ID/Decode/N20 )
  );
  defparam \cpu_inst/ID/MultiRegisters/RsData_cmp_eq00001 .INIT = 8'h01;
  LUT3_D \cpu_inst/ID/MultiRegisters/RsData_cmp_eq00001  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[24] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[22] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[21] ),
    .LO(N9371),
    .O(\cpu_inst/ID/MultiRegisters/RsData_cmp_eq0000 )
  );
  defparam \cpu_inst/ID/MultiRegisters/RtData_cmp_eq00001 .INIT = 16'h0001;
  LUT4_D \cpu_inst/ID/MultiRegisters/RtData_cmp_eq00001  (
    .I0(\cpu_inst/dffre_IFID_Instruction/q[17] ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[16] ),
    .I2(\cpu_inst/dffre_IFID_Instruction/q[19] ),
    .I3(\cpu_inst/dffre_IFID_Instruction/q[18] ),
    .LO(N9372),
    .O(\cpu_inst/ID/MultiRegisters/RtData_cmp_eq0000 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>31 .INIT = 4'h2;
  LUT2_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>31  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .LO(N9373),
    .O(\cpu_inst/EX/ALU/N93 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>41 .INIT = 4'h2;
  LUT2_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>41  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .LO(N9374),
    .O(\cpu_inst/EX/ALU/N98 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<31>1 .INIT = 8'h10;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<31>1  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[31]),
    .LO(N9375),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[31] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<0>1 .INIT = 8'h02;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<0>1  (
    .I0(ALU_B[0]),
    .I1(ALU_A[0]),
    .I2(ALU_A[1]),
    .LO(N9376),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[0] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<1>1 .INIT = 16'h0D08;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<1>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[0]),
    .I2(ALU_A[1]),
    .I3(ALU_B[1]),
    .LO(N9377),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] )
  );
  defparam \cpu_inst/ID/Decode/ALUCode<2>72 .INIT = 16'hA888;
  LUT4_D \cpu_inst/ID/Decode/ALUCode<2>72  (
    .I0(\cpu_inst/ID/Decode/ALUCode<2>_map23 ),
    .I1(\cpu_inst/dffre_IFID_Instruction/q[26] ),
    .I2(\cpu_inst/ID/Decode/ALUCode<2>_map13 ),
    .I3(\cpu_inst/ID/Decode/ALUCode<2>_map16 ),
    .LO(N9378),
    .O(\cpu_inst/ID/Decode/ALUCode<2>_map24 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>31 .INIT = 4'h1;
  LUT2_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<0>31  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .LO(N9379),
    .O(\cpu_inst/EX/ALU/N89 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<3>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<3>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[3]),
    .I2(ALU_B[4]),
    .LO(N9380),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[3] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<2>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<2>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[2]),
    .I2(ALU_B[3]),
    .LO(N9381),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[2] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<5>11 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<5>11  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[7] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[11] ),
    .LO(N9382),
    .O(\cpu_inst/EX/ALU/N41 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>21 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>21  (
    .I0(ALU_A[1]),
    .I1(ALU_B[27]),
    .I2(ALU_B[25]),
    .LO(N9383),
    .O(\cpu_inst/EX/ALU/N49 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<61>1 .INIT = 16'hABA8;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<61>1  (
    .I0(ALU_B[31]),
    .I1(ALU_A[2]),
    .I2(ALU_A[1]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[29] ),
    .LO(N9384),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[61] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<62>_SW0 .INIT = 8'hE4;
  LUT3_L \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<62>_SW0  (
    .I0(ALU_A[2]),
    .I1(ALU_B[30]),
    .I2(ALU_B[31]),
    .LO(N2190)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<23> .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<23>  (
    .I0(ALU_A[0]),
    .I1(N2192),
    .I2(N2193),
    .LO(N9385),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[23] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<22>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<22>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[21]),
    .I2(ALU_B[19]),
    .LO(N9386),
    .O(N2196)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<22> .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<22>  (
    .I0(ALU_A[0]),
    .I1(N2193),
    .I2(N2196),
    .LO(N9387),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[22] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<21>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<21>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[20]),
    .I2(ALU_B[18]),
    .LO(N9388),
    .O(N2199)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<21> .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<21>  (
    .I0(ALU_A[0]),
    .I1(N2196),
    .I2(N2199),
    .LO(N9389),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[21] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<20> .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<20>  (
    .I0(ALU_A[0]),
    .I1(N2199),
    .I2(N2202),
    .LO(N9390),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[20] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>260 .INIT = 16'hFE54;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>260  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>2_map5 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<30>2_map11 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[18] ),
    .LO(N9391),
    .O(\cpu_inst/EX/ALU/N69 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>260 .INIT = 16'hFE54;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>260  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>2_map5 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<29>2_map11 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[17] ),
    .LO(N9392),
    .O(\cpu_inst/EX/ALU/N68 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>360 .INIT = 16'hFE54;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>360  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>3_map5 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>3_map11 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[16] ),
    .LO(N9393),
    .O(\cpu_inst/EX/ALU/N67 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0027_Result1 .INIT = 4'h6;
  LUT2_D \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0027_Result1  (
    .I0(\cpu_inst/RtData_id [4]),
    .I1(\cpu_inst/JrAddr [4]),
    .LO(N9394),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0027 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0024_Result1 .INIT = 4'h6;
  LUT2_D \cpu_inst/ID/zero_test_inst/Mxor_Z_xor0024_Result1  (
    .I0(\cpu_inst/RtData_id [7]),
    .I1(\cpu_inst/JrAddr [7]),
    .LO(N9395),
    .O(\cpu_inst/ID/zero_test_inst/Z_xor0024 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000_SW0 .INIT = 4'hE;
  LUT2_L \cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000_SW0  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q [4]),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_18_73 ),
    .LO(N2467)
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RsSel11 .INIT = 4'h2;
  LUT2_L \cpu_inst/ID/RsSel_RtSel_inst/RsSel11  (
    .I0(\cpu_inst/dffr_MEMWB_WB/q_0_2_69 ),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_2_4_77 ),
    .LO(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_map6 )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RsSel67 .INIT = 8'h08;
  LUT3_D \cpu_inst/ID/RsSel_RtSel_inst/RsSel67  (
    .I0(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_map20 ),
    .I1(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_map9 ),
    .I2(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000_15 ),
    .LO(N9396),
    .O(\cpu_inst/ID/RsSel )
  );
  defparam \cpu_inst/ID/RsSel_RtSel_inst/RtSel78 .INIT = 16'h0800;
  LUT4_D \cpu_inst/ID/RsSel_RtSel_inst/RtSel78  (
    .I0(\cpu_inst/ID/RsSel_RtSel_inst/RtSel_map25 ),
    .I1(\cpu_inst/ID/RsSel_RtSel_inst/RtSel_map17 ),
    .I2(\cpu_inst/ID/RsSel_RtSel_inst/RsSel_cmp_eq0000_15 ),
    .I3(\cpu_inst/ID/RsSel_RtSel_inst/RtSel_map4 ),
    .LO(N9397),
    .O(\cpu_inst/ID/RtSel )
  );
  defparam \cpu_inst/EX/ALU/Result<31>11 .INIT = 16'h0400;
  LUT4_D \cpu_inst/EX/ALU/Result<31>11  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I2(\cpu_inst/EX/ALU/Result_or0018 ),
    .I3(\cpu_inst/EX/ALU/N201 ),
    .LO(N9398),
    .O(\cpu_inst/EX/ALU/N81 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<23>11 .INIT = 4'hE;
  LUT2_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<23>11  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .LO(N9399),
    .O(\cpu_inst/EX/ALU/N1 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<9>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<9>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[9]),
    .I2(ALU_B[10]),
    .LO(N9400),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<8>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<8>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[8]),
    .I2(ALU_B[9]),
    .LO(N9401),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[8] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<59>1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<59>1  (
    .I0(ALU_A[2]),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] ),
    .LO(N9402),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[59] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<52>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<52>1  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .LO(N9403),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[52] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<29>1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<29>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[30]),
    .I2(ALU_B[29]),
    .LO(N9404),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[29] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<23>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<23>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[23]),
    .I2(ALU_B[24]),
    .LO(N9405),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[23] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<21>1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<21>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[22]),
    .I2(ALU_B[21]),
    .LO(N9406),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[21] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<17>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<17>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[17]),
    .I2(ALU_B[18]),
    .LO(N9407),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[17] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<15>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<15>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[15]),
    .I2(ALU_B[16]),
    .LO(N9408),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[15] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<13>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<13>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[13]),
    .I2(ALU_B[14]),
    .LO(N9409),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<26>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<26>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[26] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[28] ),
    .LO(N9410),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[26] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<25>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<25>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[25] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[27] ),
    .LO(N9411),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[25] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<21>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<21>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[21] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[23] ),
    .LO(N9412),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<18>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<18>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[18] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[20] ),
    .LO(N9413),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<15>1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<15>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[17] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[15] ),
    .LO(N9414),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[15] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<59>1 .INIT = 16'h5410;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<59>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[27] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[31] ),
    .LO(N9415),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[59] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<58>1 .INIT = 16'h5410;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<58>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[26] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[30] ),
    .LO(N9416),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[58] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<57>1 .INIT = 16'h5410;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<57>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[25] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[29] ),
    .LO(N9417),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[57] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<29>1 .INIT = 16'h7340;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<29>1  (
    .I0(ALU_A[0]),
    .I1(ALU_A[1]),
    .I2(ALU_B[31]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[29] ),
    .LO(N9418),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[29] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<7>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<7>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[7]),
    .I2(ALU_B[8]),
    .LO(N9419),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[7] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<5>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<5>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[5]),
    .I2(ALU_B[6]),
    .LO(N9420),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[5] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<11>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<11>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[11]),
    .I2(ALU_B[12]),
    .LO(N9421),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[11] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<10>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<10>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[10]),
    .I2(ALU_B[11]),
    .LO(N9422),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<44> .INIT = 8'h8D;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<44>  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[16] ),
    .I2(N2651),
    .LO(N9423),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[44] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<37>1 .INIT = 16'h5410;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<37>1  (
    .I0(ALU_A[3]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[5] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[1] ),
    .LO(N9424),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[37] )
  );
  defparam \cpu_inst/EX/ALU/Result_shift0002<31>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Result_shift0002<31>1  (
    .I0(\cpu_inst/EX/ALU/Result_or0018 ),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Result_shift0002 [31]),
    .LO(N9425),
    .O(\cpu_inst/EX/ALU/Result_shift0002 [31])
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<13>1 .INIT = 8'h8D;
  LUT3_L \cpu_inst/EX/ALU/Mshift_Result_shift0004_Result<13>1  (
    .I0(ALU_A[3]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[21] ),
    .I2(N2673),
    .LO(\cpu_inst/EX/ALU/N14 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<19>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<19>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[18]),
    .I2(ALU_B[16]),
    .LO(N9426),
    .O(N2712)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<19> .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<19>  (
    .I0(ALU_A[0]),
    .I1(N2712),
    .I2(N2202),
    .LO(N9427),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[19] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<18>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<18>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[17]),
    .I2(ALU_B[15]),
    .LO(N9428),
    .O(N2715)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<17>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<17>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[16]),
    .I2(ALU_B[14]),
    .LO(N9429),
    .O(N2718)
  );
  defparam \cpu_inst/ID/zero_test_inst/Z5 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z5  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0031 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0001 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0002 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0003 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map3 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z50 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z50  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0000 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0016 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0017 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0018 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map18 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z153 .INIT = 16'h0001;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z153  (
    .I0(\cpu_inst/JrAddr [3]),
    .I1(\cpu_inst/JrAddr [4]),
    .I2(\cpu_inst/JrAddr [5]),
    .I3(\cpu_inst/JrAddr [6]),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map48 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z229 .INIT = 16'h0001;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z229  (
    .I0(\cpu_inst/JrAddr [0]),
    .I1(\cpu_inst/JrAddr [10]),
    .I2(\cpu_inst/JrAddr [11]),
    .I3(\cpu_inst/JrAddr [12]),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map72 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z375 .INIT = 16'h0001;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z375  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_xor0007 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_xor0008 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_xor0009 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_xor0010 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map121 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z491 .INIT = 16'h8000;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z491  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map137 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map144 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map152 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map159 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map161 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z568 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z568  (
    .I0(\cpu_inst/JrAddr [12]),
    .I1(\cpu_inst/JrAddr [13]),
    .I2(\cpu_inst/JrAddr [14]),
    .I3(\cpu_inst/JrAddr [0]),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map170 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z611 .INIT = 8'hFE;
  LUT3_L \cpu_inst/ID/zero_test_inst/Z611  (
    .I0(\cpu_inst/JrAddr [11]),
    .I1(\cpu_inst/JrAddr [28]),
    .I2(\cpu_inst/JrAddr [29]),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map184 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z682 .INIT = 16'hAAA2;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z682  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map201 ),
    .I1(\cpu_inst/ALUCode_id [0]),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map196 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map182 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map202 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<6>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<6>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[6]),
    .I2(ALU_B[7]),
    .LO(N9430),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[6] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<12>1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<12>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[13]),
    .I2(ALU_B[12]),
    .LO(N9431),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[12] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<9>_SW0 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<9>_SW0  (
    .I0(ALU_A[1]),
    .I1(ALU_B[9]),
    .I2(ALU_B[7]),
    .LO(N9432),
    .O(N3207)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<9>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<9>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[8]),
    .I2(ALU_B[6]),
    .LO(N9433),
    .O(N3208)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<7>_SW1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<7>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[4]),
    .I2(ALU_B[6]),
    .LO(N9434),
    .O(N3214)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<7> .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<7>  (
    .I0(ALU_A[0]),
    .I1(N3214),
    .I2(N3211),
    .LO(N9435),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[7] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<6>_SW1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<6>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[3]),
    .I2(ALU_B[5]),
    .LO(N9436),
    .O(N3217)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<4>_SW1 .INIT = 8'hCA;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<4>_SW1  (
    .I0(ALU_B[3]),
    .I1(ALU_B[1]),
    .I2(\cpu_inst/EX/ALU_A<1>39_81 ),
    .LO(N9437),
    .O(N3223)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<3>_SW1 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<3>_SW1  (
    .I0(ALU_B[0]),
    .I1(ALU_B[2]),
    .I2(\cpu_inst/EX/ALU_A<1>39_81 ),
    .LO(N3226)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<16>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<16>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[15]),
    .I2(ALU_B[13]),
    .LO(N9438),
    .O(N3229)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<14>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<14>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[13]),
    .I2(ALU_B[11]),
    .LO(N9439),
    .O(N3235)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<13>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<13>_SW1  (
    .I0(ALU_A[1]),
    .I1(ALU_B[12]),
    .I2(ALU_B[10]),
    .LO(N9440),
    .O(N3238)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<13> .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<13>  (
    .I0(ALU_A[0]),
    .I1(N3235),
    .I2(N3238),
    .LO(N9441),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[13] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<12>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<12>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[11]),
    .I2(ALU_B[9]),
    .LO(N9442),
    .O(N3241)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<11>_SW1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh<11>_SW1  (
    .I0(\cpu_inst/EX/ALU_A<1>39_81 ),
    .I1(ALU_B[10]),
    .I2(ALU_B[8]),
    .LO(N9443),
    .O(N3244)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<52>_SW0 .INIT = 8'h1B;
  LUT3_L \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<52>_SW0  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .LO(N3251)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<14>1 .INIT = 8'hD8;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<14>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[15]),
    .I2(ALU_B[14]),
    .LO(N9444),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[14] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<22>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<22>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[22]),
    .I2(ALU_B[23]),
    .LO(N9445),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[22] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<16>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<16>1  (
    .I0(ALU_A[0]),
    .I1(ALU_B[16]),
    .I2(ALU_B[17]),
    .LO(N9446),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[16] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<24>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<24>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[24] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[26] ),
    .LO(N9447),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<20>1 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh<20>1  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[20] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[22] ),
    .LO(N9448),
    .O(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] )
  );
  defparam \cpu_inst/EX/ALU/Result<1>52 .INIT = 8'hFE;
  LUT3_L \cpu_inst/EX/ALU/Result<1>52  (
    .I0(\cpu_inst/EX/ALU/Result<1>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<1>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<1>_map15 ),
    .LO(\cpu_inst/EX/ALU/Result<1>_map17 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[3]),
    .I2(ALU_B[3]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [3]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[4]),
    .I2(ALU_B[4]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [4]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/sum0 [0])
  );
  defparam \cpu_inst/EX/ALU_B<30>1 .INIT = 8'hB8;
  LUT3_D \cpu_inst/EX/ALU_B<30>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [30]),
    .LO(N9449),
    .O(ALU_B[30])
  );
  defparam \cpu_inst/EX/Mmux_B24_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B24_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [30]),
    .I1(\cpu_inst/RegWriteData_wb [30]),
    .I2(\cpu_inst/EX/Mmux_B_not0001 ),
    .LO(N3519)
  );
  defparam \cpu_inst/EX/ALU/Result<2>17 .INIT = 16'hABA8;
  LUT4_L \cpu_inst/EX/ALU/Result<2>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[2]),
    .I2(ALU_B[2]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .LO(\cpu_inst/EX/ALU/Result<2>_map6 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[19]),
    .I2(ALU_B[19]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [19]),
    .LO(N9450),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst0/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[28]),
    .I2(ALU_B[28]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [28]),
    .LO(N9451),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum0 [0])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[23]),
    .I2(ALU_B[23]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [23]),
    .LO(N9452),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/Result<3>73 .INIT = 16'h2000;
  LUT4_L \cpu_inst/EX/ALU/Result<3>73  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[3] ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N85 ),
    .I3(\cpu_inst/EX/ALU/N90 ),
    .LO(\cpu_inst/EX/ALU/Result<3>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>136 .INIT = 16'hFFEA;
  LUT4_L \cpu_inst/EX/ALU/Result<3>136  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .I2(\cpu_inst/EX/ALU/Result<3>_map32 ),
    .I3(\cpu_inst/EX/ALU/Result<3>_map22 ),
    .LO(\cpu_inst/EX/ALU/Result<3>_map34 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[27]),
    .I2(ALU_B[27]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [27]),
    .LO(N9453),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/Mmux_B21_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B21_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [28]),
    .I1(\cpu_inst/RegWriteData_wb [28]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N3828)
  );
  defparam \cpu_inst/EX/Mmux_B20_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B20_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [27]),
    .I1(\cpu_inst/RegWriteData_wb [27]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N3835)
  );
  defparam \cpu_inst/EX/Mmux_B19_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B19_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [26]),
    .I1(\cpu_inst/RegWriteData_wb [26]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N3841)
  );
  defparam \cpu_inst/EX/ALU_B<25>1 .INIT = 8'hB8;
  LUT3_D \cpu_inst/EX/ALU_B<25>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [25]),
    .LO(N9454),
    .O(ALU_B[25])
  );
  defparam \cpu_inst/EX/Mmux_B18_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B18_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [25]),
    .I1(\cpu_inst/RegWriteData_wb [25]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N3857)
  );
  defparam \cpu_inst/EX/ALU/Result<4>121 .INIT = 8'hA8;
  LUT3_L \cpu_inst/EX/ALU/Result<4>121  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<4>_map27 ),
    .I2(\cpu_inst/EX/ALU/Result<4>_map30 ),
    .LO(\cpu_inst/EX/ALU/Result<4>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>154 .INIT = 16'hFFEA;
  LUT4_L \cpu_inst/EX/ALU/Result<7>154  (
    .I0(\cpu_inst/EX/ALU/Result<7>_map22 ),
    .I1(\cpu_inst/EX/ALU/N81 ),
    .I2(\cpu_inst/EX/ALU/Result<7>_map37 ),
    .I3(\cpu_inst/EX/ALU/Result<7>_map31 ),
    .LO(\cpu_inst/EX/ALU/Result<7>_map39 )
  );
  defparam \cpu_inst/EX/ALU/Result<6>159 .INIT = 16'hFEFC;
  LUT4_L \cpu_inst/EX/ALU/Result<6>159  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(\cpu_inst/EX/ALU/Result<6>_map32 ),
    .I2(\cpu_inst/EX/ALU/Result<6>_map22 ),
    .I3(\cpu_inst/EX/ALU/Result<6>_map38 ),
    .LO(\cpu_inst/EX/ALU/Result<6>_map40 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>159 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<5>159  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(\cpu_inst/EX/ALU/Result<5>_map38 ),
    .I2(\cpu_inst/EX/ALU/Result<5>_map32 ),
    .I3(\cpu_inst/EX/ALU/Result<5>_map22 ),
    .LO(\cpu_inst/EX/ALU/Result<5>_map40 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[31]),
    .I2(ALU_B[31]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [31]),
    .LO(N9455),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU_B<24>1 .INIT = 8'hB8;
  LUT3_D \cpu_inst/EX/ALU_B<24>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [24]),
    .LO(N9456),
    .O(ALU_B[24])
  );
  defparam \cpu_inst/EX/Mmux_B17_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B17_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [24]),
    .I1(\cpu_inst/RegWriteData_wb [24]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N4417)
  );
  defparam \cpu_inst/EX/Mmux_B16_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B16_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [23]),
    .I1(\cpu_inst/RegWriteData_wb [23]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N4422)
  );
  defparam \cpu_inst/EX/Mmux_B15_SW0 .INIT = 8'hAC;
  LUT3_L \cpu_inst/EX/Mmux_B15_SW0  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [22]),
    .I1(\cpu_inst/RegWriteData_wb [22]),
    .I2(\cpu_inst/EX/Mmux_B_not000190_66 ),
    .LO(N4427)
  );
  defparam \cpu_inst/EX/ALU/Result<8>150 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<8>150  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<8>_map36 ),
    .I2(\cpu_inst/EX/ALU/Result<8>_map22 ),
    .I3(\cpu_inst/EX/ALU/Result<8>_map28 ),
    .LO(\cpu_inst/EX/ALU/Result<8>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>52 .INIT = 8'hFE;
  LUT3_L \cpu_inst/EX/ALU/Result<9>52  (
    .I0(\cpu_inst/EX/ALU/Result<9>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<9>_map9 ),
    .I2(\cpu_inst/EX/ALU/Result<9>_map15 ),
    .LO(\cpu_inst/EX/ALU/Result<9>_map17 )
  );
  defparam \cpu_inst/EX/ALU/Result<11>40 .INIT = 8'h60;
  LUT3_L \cpu_inst/EX/ALU/Result<11>40  (
    .I0(ALU_B[11]),
    .I1(ALU_A[11]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .LO(\cpu_inst/EX/ALU/Result<11>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>150 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<10>150  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<10>_map36 ),
    .I2(\cpu_inst/EX/ALU/Result<10>_map22 ),
    .I3(\cpu_inst/EX/ALU/Result<10>_map28 ),
    .LO(\cpu_inst/EX/ALU/Result<10>_map38 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst0/co1 .INIT = 16'hFFD8;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst0/co1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[28]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [28]),
    .I3(ALU_A[28]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst0/co1 .INIT = 16'hA280;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst0/co1  (
    .I0(ALU_A[28]),
    .I1(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I2(ALU_B[28]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [28]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[30]),
    .I1(\cpu_inst/EX/ALU/B_adder[30] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [2]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst2/co1 .INIT = 8'hE8;
  LUT3_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst2/co1  (
    .I0(ALU_A[30]),
    .I1(\cpu_inst/EX/ALU/B_adder[30] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [2]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [3])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/add_inst0/co1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/add_inst0/co1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[24]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [24]),
    .I3(ALU_A[24]),
    .LO(N9457),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst0/co1 .INIT = 16'hA280;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/add_inst0/co1  (
    .I0(ALU_A[24]),
    .I1(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I2(ALU_B[24]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [24]),
    .LO(N9458),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi [1])
  );
  defparam \cpu_inst/EX/ALU/Result<12>40 .INIT = 8'h60;
  LUT3_L \cpu_inst/EX/ALU/Result<12>40  (
    .I0(ALU_B[12]),
    .I1(ALU_A[12]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .LO(\cpu_inst/EX/ALU/Result<12>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<12>154 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<12>154  (
    .I0(\cpu_inst/EX/ALU/Result<12>_map21 ),
    .I1(\cpu_inst/EX/ALU/Result<12>_map30 ),
    .I2(\cpu_inst/EX/ALU/Result<12>_map37 ),
    .I3(\cpu_inst/EX/ALU/Result<12>_map18 ),
    .LO(\cpu_inst/EX/ALU/Result<12>_map39 )
  );
  defparam \cpu_inst/EX/ALU/Result<15>65 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<15>65  (
    .I0(\cpu_inst/EX/ALU/Result<15>_map9 ),
    .I1(\cpu_inst/EX/ALU/Result<15>_map6 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/Result<15>_map15 ),
    .LO(\cpu_inst/EX/ALU/Result<15>_map18 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>40 .INIT = 8'h60;
  LUT3_L \cpu_inst/EX/ALU/Result<14>40  (
    .I0(ALU_B[14]),
    .I1(ALU_A[14]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .LO(\cpu_inst/EX/ALU/Result<14>_map15 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>40 .INIT = 8'h60;
  LUT3_L \cpu_inst/EX/ALU/Result<13>40  (
    .I0(ALU_B[13]),
    .I1(ALU_A[13]),
    .I2(\cpu_inst/EX/ALU/N75 ),
    .LO(\cpu_inst/EX/ALU/Result<13>_map15 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/add_inst1/co1 .INIT = 8'hE8;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/add_inst1/co1  (
    .I0(ALU_A[25]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/B_adder[25] ),
    .LO(N9459),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/add_inst0/co1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/add_inst0/co1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[20]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [20]),
    .I3(ALU_A[20]),
    .LO(N9460),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst0/co1 .INIT = 16'hA280;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst0/co1  (
    .I0(ALU_A[20]),
    .I1(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I2(ALU_B[20]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [20]),
    .LO(N9461),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/add_inst1/co1 .INIT = 8'hE8;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/add_inst1/co1  (
    .I0(ALU_A[21]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/B_adder[21] ),
    .LO(N9462),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU_A<3>16 .INIT = 4'h2;
  LUT2_L \cpu_inst/EX/ALU_A<3>16  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [3]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .LO(\cpu_inst/EX/ALU_A<3>_map7 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>71 .INIT = 4'h2;
  LUT2_D \cpu_inst/EX/ALU/Result<16>71  (
    .I0(\cpu_inst/EX/ALU/N81 ),
    .I1(ALU_A[4]),
    .LO(N9463),
    .O(\cpu_inst/EX/ALU/Result<16>_map17 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>531 .INIT = 4'h1;
  LUT2_D \cpu_inst/EX/ALU/Result<0>531  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .LO(N9464),
    .O(\cpu_inst/EX/ALU/N204 )
  );
  defparam \cpu_inst/EX/ALU/Result_or001911 .INIT = 8'h01;
  LUT3_D \cpu_inst/EX/ALU/Result_or001911  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [7]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [6]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [5]),
    .LO(N9465),
    .O(\cpu_inst/EX/ALU/N78 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst0/co1 .INIT = 16'hFFD8;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst0/co1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[16]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [16]),
    .I3(ALU_A[16]),
    .LO(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst2/co1 .INIT = 8'hE8;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/add_inst2/co1  (
    .I0(ALU_A[18]),
    .I1(\cpu_inst/EX/ALU/B_adder[18] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [2]),
    .LO(N9466),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst1/coi [3])
  );
  defparam \cpu_inst/EX/ALU_A<4>16 .INIT = 4'h2;
  LUT2_L \cpu_inst/EX/ALU_A<4>16  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [4]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .LO(\cpu_inst/EX/ALU_A<4>_map7 )
  );
  defparam \cpu_inst/EX/ALU_A<2>16 .INIT = 4'h2;
  LUT2_L \cpu_inst/EX/ALU_A<2>16  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [2]),
    .I1(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .LO(\cpu_inst/EX/ALU_A<2>_map7 )
  );
  defparam \cpu_inst/EX/ALU_B<9>1 .INIT = 8'hB8;
  LUT3_D \cpu_inst/EX/ALU_B<9>1  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/MemWriteData_ex [9]),
    .LO(N9467),
    .O(ALU_B[9])
  );
  defparam \cpu_inst/EX/Mmux_A_not0000 .INIT = 16'hFF57;
  LUT4_D \cpu_inst/EX/Mmux_A_not0000  (
    .I0(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I1(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .I2(N6345),
    .I3(\cpu_inst/EX/ForwardA_0_cmp_ne0001 ),
    .LO(N9468),
    .O(\cpu_inst/EX/Mmux_A_not0000_14 )
  );
  defparam \cpu_inst/EX/ALU_A<1>13 .INIT = 16'hAC00;
  LUT4_D \cpu_inst/EX/ALU_A<1>13  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [1]),
    .I1(\cpu_inst/RegWriteData_wb [1]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .I3(\cpu_inst/EX/Mmux_A_not0000_14 ),
    .LO(N9469),
    .O(\cpu_inst/EX/ALU_A<1>_map5 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/add_inst1/co1 .INIT = 8'hE8;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/add_inst1/co1  (
    .I0(ALU_A[13]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/B_adder[13] ),
    .LO(N9470),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU/Result<23>154 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<23>154  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<23>_map33 ),
    .I2(\cpu_inst/EX/ALU/Result<23>_map20 ),
    .I3(\cpu_inst/EX/ALU/Result<23>_map23 ),
    .LO(\cpu_inst/EX/ALU/Result<23>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>131 .INIT = 16'hA280;
  LUT4_L \cpu_inst/EX/ALU/Result<22>131  (
    .I0(\cpu_inst/EX/ALU/N89 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[14] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[22] ),
    .LO(\cpu_inst/EX/ALU/Result<22>_map32 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>161 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<22>161  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<22>_map35 ),
    .I2(\cpu_inst/EX/ALU/Result<22>_map22 ),
    .I3(\cpu_inst/EX/ALU/Result<22>_map25 ),
    .LO(\cpu_inst/EX/ALU/Result<22>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>161 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<21>161  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<21>_map35 ),
    .I2(\cpu_inst/EX/ALU/Result<21>_map22 ),
    .I3(\cpu_inst/EX/ALU/Result<21>_map25 ),
    .LO(\cpu_inst/EX/ALU/Result<21>_map37 )
  );
  defparam \cpu_inst/EX/ForwardA_0_cmp_ne000118 .INIT = 16'hFFF6;
  LUT4_L \cpu_inst/EX/ForwardA_0_cmp_ne000118  (
    .I0(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_1_1_59 ),
    .I1(\cpu_inst/dffr_IDEX_RsAddr/q[1] ),
    .I2(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [2]),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4]),
    .LO(\cpu_inst/EX/ForwardA_0_cmp_ne0001_map6 )
  );
  defparam \cpu_inst/EX/Mmux_A_not000126 .INIT = 16'h7BDE;
  LUT4_D \cpu_inst/EX/Mmux_A_not000126  (
    .I0(\cpu_inst/dffr_IDEX_RsAddr/q[1] ),
    .I1(\cpu_inst/dffr_IDEX_RsAddr/q[0] ),
    .I2(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_18_68 ),
    .I3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_18_71 ),
    .LO(N9471),
    .O(\cpu_inst/EX/Mmux_A_not0001_map10 )
  );
  defparam \cpu_inst/EX/Mmux_A_not000173 .INIT = 16'hFFEF;
  LUT4_D \cpu_inst/EX/Mmux_A_not000173  (
    .I0(\cpu_inst/EX/Mmux_A_not0001_map20 ),
    .I1(\cpu_inst/EX/Mmux_A_not0001_map10 ),
    .I2(\cpu_inst/EX/ForwardA_0_cmp_ne0001 ),
    .I3(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .LO(N9472),
    .O(\cpu_inst/EX/Mmux_A_not0001 )
  );
  defparam \cpu_inst/EX/ALU_A<0>13 .INIT = 16'hAC00;
  LUT4_D \cpu_inst/EX/ALU_A<0>13  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [0]),
    .I1(\cpu_inst/RegWriteData_wb [0]),
    .I2(\cpu_inst/EX/Mmux_A_not000173_53 ),
    .I3(\cpu_inst/EX/Mmux_A_not00001 ),
    .LO(N9473),
    .O(\cpu_inst/EX/ALU_A<0>_map5 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/add_inst0/co1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/add_inst0/co1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[8]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [8]),
    .I3(ALU_A[8]),
    .LO(N9474),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [1])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/add_inst1/co1 .INIT = 8'hE8;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/add_inst1/co1  (
    .I0(ALU_A[9]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [1]),
    .I2(\cpu_inst/EX/ALU/B_adder[9] ),
    .LO(N9475),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [2])
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst1/co1 .INIT = 8'hE8;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/add_inst1/co1  (
    .I0(ALU_A[9]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [1]),
    .I2(\cpu_inst/EX/ALU/B_adder[9] ),
    .LO(N9476),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst0/coi [2])
  );
  defparam \cpu_inst/EX/ALU/Result<28>122 .INIT = 8'hE4;
  LUT3_D \cpu_inst/EX/ALU/Result<28>122  (
    .I0(ALU_A[1]),
    .I1(ALU_B[28]),
    .I2(ALU_B[26]),
    .LO(N9477),
    .O(\cpu_inst/EX/ALU/Result<28>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<28>171 .INIT = 16'hC8C0;
  LUT4_L \cpu_inst/EX/ALU/Result<28>171  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<28>_map36 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[44] ),
    .LO(\cpu_inst/EX/ALU/Result<28>_map39 )
  );
  defparam \cpu_inst/EX/ALU/Result<30>163 .INIT = 16'hC8C0;
  LUT4_L \cpu_inst/EX/ALU/Result<30>163  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<30>_map36 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[46] ),
    .LO(\cpu_inst/EX/ALU/Result<30>_map39 )
  );
  defparam \cpu_inst/EX/ALU/Result<29>163 .INIT = 16'hC8C0;
  LUT4_L \cpu_inst/EX/ALU/Result<29>163  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/N90 ),
    .I2(\cpu_inst/EX/ALU/Result<29>_map36 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[45] ),
    .LO(\cpu_inst/EX/ALU/Result<29>_map39 )
  );
  defparam \cpu_inst/EX/Mmux_B_not0000 .INIT = 16'hFF57;
  LUT4_D \cpu_inst/EX/Mmux_B_not0000  (
    .I0(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I1(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .I2(N6345),
    .I3(\cpu_inst/EX/ForwardB_0_cmp_ne000073_54 ),
    .LO(N9478),
    .O(\cpu_inst/EX/Mmux_B_not0000_13 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>17 .INIT = 16'hABA8;
  LUT4_L \cpu_inst/EX/ALU/Result<0>17  (
    .I0(\cpu_inst/EX/ALU/N66 ),
    .I1(ALU_A[0]),
    .I2(ALU_B[0]),
    .I3(\cpu_inst/EX/ALU/Result_cmp_eq0004 ),
    .LO(\cpu_inst/EX/ALU/Result<0>_map6 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>181 .INIT = 16'hECA0;
  LUT4_L \cpu_inst/EX/ALU/Result<0>181  (
    .I0(\cpu_inst/EX/ALU/N45 ),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[2] ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .LO(\cpu_inst/EX/ALU/Result<0>_map42 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>248 .INIT = 16'hF888;
  LUT4_L \cpu_inst/EX/ALU/Result<0>248  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/Result<0>_map55 ),
    .I2(\cpu_inst/EX/ALU/Result<0>_map49 ),
    .I3(\cpu_inst/EX/ALU/N81 ),
    .LO(\cpu_inst/EX/ALU/Result<0>_map57 )
  );
  defparam \cpu_inst/EX/ForwardA_0_and0000_SW0 .INIT = 4'hE;
  LUT2_L \cpu_inst/EX/ForwardA_0_and0000_SW0  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_1_1_55 ),
    .I1(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_0_1_52 ),
    .LO(N8265)
  );
  defparam \cpu_inst/EX/Mmux_B_not000132 .INIT = 16'hFF7B;
  LUT4_D \cpu_inst/EX/Mmux_B_not000132  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_2_58 ),
    .I1(\cpu_inst/dffr_MEMWB_WB/q_0_1_62 ),
    .I2(\cpu_inst/dffr_IDEX_RtAddr/q [3]),
    .I3(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_4_1_61 ),
    .LO(N9479),
    .O(\cpu_inst/EX/Mmux_B_not0001_map13 )
  );
  defparam \cpu_inst/EX/ALU/B_adder<6>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<6>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [6]),
    .I3(ALU_B[6]),
    .LO(N9480),
    .O(\cpu_inst/EX/ALU/B_adder[6] )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/co_SW0 .INIT = 16'hF870;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/co_SW0  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [2]),
    .I3(ALU_B[2]),
    .LO(N8447)
  );
  defparam \cpu_inst/EX/ALU/B_adder<10>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<10>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [10]),
    .I3(ALU_B[10]),
    .LO(N9481),
    .O(\cpu_inst/EX/ALU/B_adder[10] )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co18 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co18  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [7]),
    .I3(ALU_B[7]),
    .LO(N9482),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst1/co_map9 )
  );
  defparam \cpu_inst/EX/ForwardB_0_cmp_ne000073_SW1 .INIT = 16'h3CBE;
  LUT4_D \cpu_inst/EX/ForwardB_0_cmp_ne000073_SW1  (
    .I0(\cpu_inst/dffr_IDEX_RtAddr/q [0]),
    .I1(\cpu_inst/dffr_IDEX_RtAddr/q [1]),
    .I2(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_1_1_59 ),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q_0_1_65 ),
    .LO(N9483),
    .O(N8543)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co27_SW1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[11]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [11]),
    .I3(ALU_A[11]),
    .LO(N9484),
    .O(N8490)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW2 .INIT = 16'hB8F0;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW2  (
    .I0(N8502),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst1/coi [3]),
    .I2(N8501),
    .I3(N8498),
    .LO(N9485),
    .O(N8575)
  );
  defparam \cpu_inst/EX/ALU/B_adder<14>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<14>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [14]),
    .I3(ALU_B[14]),
    .LO(N9486),
    .O(\cpu_inst/EX/ALU/B_adder[14] )
  );
  defparam \cpu_inst/EX/ALU/B_adder<21>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<21>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [21]),
    .I3(ALU_B[21]),
    .LO(N9487),
    .O(\cpu_inst/EX/ALU/B_adder[21] )
  );
  defparam \cpu_inst/EX/ALU/B_adder<18>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<18>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [18]),
    .I3(ALU_B[18]),
    .LO(N9488),
    .O(\cpu_inst/EX/ALU/B_adder[18] )
  );
  defparam \cpu_inst/EX/ALU/B_adder<25>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<25>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [25]),
    .I3(ALU_B[25]),
    .LO(N9489),
    .O(\cpu_inst/EX/ALU/B_adder[25] )
  );
  defparam \cpu_inst/EX/ALU/B_adder<22>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<22>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [22]),
    .I3(ALU_B[22]),
    .LO(N9490),
    .O(\cpu_inst/EX/ALU/B_adder[22] )
  );
  defparam \cpu_inst/EX/Mmux_B_not000190 .INIT = 16'hFFEF;
  LUT4_D \cpu_inst/EX/Mmux_B_not000190  (
    .I0(\cpu_inst/EX/Mmux_B_not0001_map24 ),
    .I1(N8589),
    .I2(\cpu_inst/EX/ForwardB_0_cmp_ne000073_54 ),
    .I3(\cpu_inst/EX/ForwardA_0_and0000_12 ),
    .LO(N9491),
    .O(\cpu_inst/EX/Mmux_B_not0001 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW0 .INIT = 8'hAC;
  LUT3_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW0  (
    .I0(N8607),
    .I1(N8606),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/adder_abits_inst0/coi [2]),
    .LO(N9492),
    .O(N8501)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW3 .INIT = 16'hA808;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW3  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map64 ),
    .I1(N8532),
    .I2(N8576),
    .I3(N8533),
    .LO(N8610)
  );
  defparam \cpu_inst/EX/ALU/Result<0>3111 .INIT = 16'hDF80;
  LUT4_L \cpu_inst/EX/ALU/Result<0>3111  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst1/coi [3]),
    .I1(N8613),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [4]),
    .I3(N8612),
    .LO(\cpu_inst/EX/ALU/Result<0>_map74 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW7 .INIT = 16'hF2F8;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW7  (
    .I0(\cpu_inst/EX/ALU/Result_or0019 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum0 [0]),
    .I2(\cpu_inst/EX/ALU/Result<28>_map40 ),
    .I3(N8576),
    .LO(N8616)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW9 .INIT = 16'hFCFA;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW9  (
    .I0(N8504),
    .I1(N8505),
    .I2(\cpu_inst/EX/ALU/Result<30>_map40 ),
    .I3(N8576),
    .LO(N8619)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW11 .INIT = 16'hFCFA;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW11  (
    .I0(N8507),
    .I1(N8508),
    .I2(\cpu_inst/EX/ALU/Result<29>_map40 ),
    .I3(N8576),
    .LO(N8622)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW13 .INIT = 16'hFEAE;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co27_SW13  (
    .I0(\cpu_inst/EX/ALU/Result<31>_map49 ),
    .I1(N8529),
    .I2(N8576),
    .I3(N8530),
    .LO(N8625)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co18 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co18  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [11]),
    .I3(ALU_B[11]),
    .LO(N9493),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/co_map9 )
  );
  defparam \cpu_inst/EX/ALU/B_adder<13>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<13>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [13]),
    .I3(ALU_B[13]),
    .LO(N9494),
    .O(\cpu_inst/EX/ALU/B_adder[13] )
  );
  defparam \cpu_inst/EX/ALU/B_adder<26>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<26>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [26]),
    .I3(ALU_B[26]),
    .LO(N9495),
    .O(\cpu_inst/EX/ALU/B_adder[26] )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27_SW1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[15]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [15]),
    .I3(ALU_A[15]),
    .LO(N9496),
    .O(N8493)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co27_SW1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[23]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [23]),
    .I3(ALU_A[23]),
    .LO(N9497),
    .O(N8499)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW0 .INIT = 16'h57FF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW0  (
    .I0(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I1(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_ALUResult/q [0]),
    .LO(N8635)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW1 .INIT = 16'h4440;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW1  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [0]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8637)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW2 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW2  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [1]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8639)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW3 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW3  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [1]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8641)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW4 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW4  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [2]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8643)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW5 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW5  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [2]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8645)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW6 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW6  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [3]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8647)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW7 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW7  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [3]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8649)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW8 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW8  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [4]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8651)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW9 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW9  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [4]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8653)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW10 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW10  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [5]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8655)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW11 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW11  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [5]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8657)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW12 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW12  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [6]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8659)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW13 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW13  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [6]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8661)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst2/co1_SW1 .INIT = 16'hFAE8;
  LUT4_L \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/adder_abits_inst0/add_inst2/co1_SW1  (
    .I0(ALU_A[23]),
    .I1(ALU_A[22]),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co_map9 ),
    .I3(\cpu_inst/EX/ALU/B_adder[22] ),
    .LO(N8697)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst2/co1_SW1 .INIT = 16'h0132;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst2/co1_SW1  (
    .I0(ALU_A[30]),
    .I1(\cpu_inst/EX/ALU/Result_xor0016 [31]),
    .I2(\cpu_inst/EX/ALU/B_adder[30] ),
    .I3(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/add_inst3/Mxor_s_xo [0]),
    .LO(N9498),
    .O(N8700)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW4 .INIT = 16'hFBEA;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW4  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map67 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [2]),
    .I2(N8700),
    .I3(N8699),
    .LO(N9499),
    .O(N8535)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW3 .INIT = 16'hFBEA;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/sum<3>1_SW3  (
    .I0(\cpu_inst/EX/ALU/Result<0>_map60 ),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst1/coi [2]),
    .I2(N8700),
    .I3(N8699),
    .LO(N9500),
    .O(N8533)
  );
  defparam \cpu_inst/EX/ALU/B_adder<30>1 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/B_adder<30>1  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [30]),
    .I3(ALU_B[30]),
    .LO(N9501),
    .O(\cpu_inst/EX/ALU/B_adder[30] )
  );
  defparam \cpu_inst/EX/Mmux_A_not000154_SW0 .INIT = 4'h6;
  LUT2_L \cpu_inst/EX/Mmux_A_not000154_SW0  (
    .I0(\cpu_inst/dffr_MEMWB_RegWriteAddr/q_3_1_57 ),
    .I1(\cpu_inst/dffr_IDEX_RsAddr/q[3] ),
    .LO(N8722)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW14 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW14  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [7]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8724)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW15 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW15  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [7]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8726)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co18 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co18  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [27]),
    .I3(ALU_B[27]),
    .LO(N9502),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst6/co_map9 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co18 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co18  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/EX/ALU/N204 ),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [23]),
    .I3(ALU_B[23]),
    .LO(N9503),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst5/co_map9 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW1 .INIT = 16'hFFD8;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/co27_SW1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_B[19]),
    .I2(\cpu_inst/EX/ALU/B_adder_addsub0000 [19]),
    .I3(ALU_A[19]),
    .LO(N9504),
    .O(N8496)
  );
  defparam \cpu_inst/EX/ALU/Result<30>244_SW0 .INIT = 16'h9600;
  LUT4_D \cpu_inst/EX/ALU/Result<30>244_SW0  (
    .I0(ALU_A[30]),
    .I1(\cpu_inst/EX/ALU/B_adder[30] ),
    .I2(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst7/adder_abits_inst0/coi [2]),
    .I3(\cpu_inst/EX/ALU/Result_or0019 ),
    .LO(N9505),
    .O(N8504)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW16 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW16  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [8]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8746)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW17 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW17  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [8]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8748)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW18 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW18  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [9]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8750)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW19 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW19  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [9]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8752)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW20 .INIT = 16'h8880;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW20  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [10]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8754)
  );
  defparam \cpu_inst/EX/Mmux_B_not0000_SW21 .INIT = 16'hBBBF;
  LUT4_L \cpu_inst/EX/Mmux_B_not0000_SW21  (
    .I0(\cpu_inst/dffr_EXMEM_ALUResult/q [10]),
    .I1(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I2(N6345),
    .I3(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .LO(N8756)
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27 .INIT = 16'hF870;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst3/co27  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst2/adder_abits_inst1/coi [3]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [1]),
    .I2(N8767),
    .I3(N8768),
    .LO(N9506),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/cio [3])
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<42>_SW2 .INIT = 8'h27;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<42>_SW2  (
    .I0(ALU_A[1]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[12] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] ),
    .LO(N9507),
    .O(N8772)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<40>_SW2 .INIT = 8'hD8;
  LUT3_L \cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh<40>_SW2  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[14] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[10] ),
    .LO(N8774)
  );
  defparam \cpu_inst/EX/ALU/Result<18>166 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<18>166  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<18>_map24 ),
    .I2(\cpu_inst/EX/ALU/Result<18>_map19 ),
    .I3(\cpu_inst/EX/ALU/Result<18>_map37 ),
    .LO(\cpu_inst/EX/ALU/Result<18>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<10>81_SW0 .INIT = 16'hFF20;
  LUT4_L \cpu_inst/EX/ALU/Result<10>81_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[42] ),
    .I3(\cpu_inst/EX/ALU/Result<10>_map15 ),
    .LO(N8776)
  );
  defparam \cpu_inst/EX/ALU_A<24>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<24>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [24]),
    .I1(\cpu_inst/RegWriteData_wb [24]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8782)
  );
  defparam \cpu_inst/EX/ALU_A<22>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<22>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [22]),
    .I1(\cpu_inst/RegWriteData_wb [22]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8784)
  );
  defparam \cpu_inst/EX/ALU_A<21>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<21>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [21]),
    .I1(\cpu_inst/RegWriteData_wb [21]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8786)
  );
  defparam \cpu_inst/EX/ALU_A<25>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<25>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [25]),
    .I1(\cpu_inst/RegWriteData_wb [25]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8790)
  );
  defparam \cpu_inst/EX/ALU_A<19>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<19>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [19]),
    .I1(\cpu_inst/RegWriteData_wb [19]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8792)
  );
  defparam \cpu_inst/EX/ALU_A<20>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<20>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [20]),
    .I1(\cpu_inst/RegWriteData_wb [20]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8794)
  );
  defparam \cpu_inst/EX/ALU_A<16>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<16>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [16]),
    .I1(\cpu_inst/RegWriteData_wb [16]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8796)
  );
  defparam \cpu_inst/EX/ALU_A<23>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<23>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [23]),
    .I1(\cpu_inst/RegWriteData_wb [23]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8798)
  );
  defparam \cpu_inst/EX/ALU_A<18>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<18>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [18]),
    .I1(\cpu_inst/RegWriteData_wb [18]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8800)
  );
  defparam \cpu_inst/EX/ALU_A<17>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<17>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [17]),
    .I1(\cpu_inst/RegWriteData_wb [17]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8802)
  );
  defparam \cpu_inst/EX/ALU_A<15>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<15>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [15]),
    .I1(\cpu_inst/RegWriteData_wb [15]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8804)
  );
  defparam \cpu_inst/EX/ALU_A<26>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<26>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [26]),
    .I1(\cpu_inst/RegWriteData_wb [26]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8806)
  );
  defparam \cpu_inst/EX/ALU_A<14>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<14>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [14]),
    .I1(\cpu_inst/RegWriteData_wb [14]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8808)
  );
  defparam \cpu_inst/EX/ALU_A<13>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<13>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [13]),
    .I1(\cpu_inst/RegWriteData_wb [13]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8810)
  );
  defparam \cpu_inst/EX/ALU_A<12>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<12>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [12]),
    .I1(\cpu_inst/RegWriteData_wb [12]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8812)
  );
  defparam \cpu_inst/EX/ALU_A<27>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<27>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [27]),
    .I1(\cpu_inst/RegWriteData_wb [27]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8814)
  );
  defparam \cpu_inst/EX/ALU_A<11>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<11>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [11]),
    .I1(\cpu_inst/RegWriteData_wb [11]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8816)
  );
  defparam \cpu_inst/EX/ALU_A<10>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<10>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [10]),
    .I1(\cpu_inst/RegWriteData_wb [10]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8818)
  );
  defparam \cpu_inst/EX/ALU_A<9>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<9>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [9]),
    .I1(\cpu_inst/RegWriteData_wb [9]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8820)
  );
  defparam \cpu_inst/EX/ALU_A<28>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<28>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [28]),
    .I1(\cpu_inst/RegWriteData_wb [28]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8822)
  );
  defparam \cpu_inst/EX/ALU_A<7>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<7>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [7]),
    .I1(\cpu_inst/RegWriteData_wb [7]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8824)
  );
  defparam \cpu_inst/EX/ALU_A<8>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<8>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [8]),
    .I1(\cpu_inst/RegWriteData_wb [8]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8826)
  );
  defparam \cpu_inst/EX/ALU_A<6>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<6>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [6]),
    .I1(\cpu_inst/RegWriteData_wb [6]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8828)
  );
  defparam \cpu_inst/EX/ALU_A<29>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<29>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [29]),
    .I1(\cpu_inst/RegWriteData_wb [29]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8830)
  );
  defparam \cpu_inst/EX/ALU_A<31>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<31>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [31]),
    .I1(\cpu_inst/RegWriteData_wb [31]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8832)
  );
  defparam \cpu_inst/EX/ALU_A<30>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<30>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [30]),
    .I1(\cpu_inst/RegWriteData_wb [30]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8834)
  );
  defparam \cpu_inst/EX/ALU_A<5>_SW2 .INIT = 8'h53;
  LUT3_L \cpu_inst/EX/ALU_A<5>_SW2  (
    .I0(\cpu_inst/dffr_IDEX_RsData/q [5]),
    .I1(\cpu_inst/RegWriteData_wb [5]),
    .I2(\cpu_inst/EX/Mmux_A_not0001 ),
    .LO(N8836)
  );
  defparam \cpu_inst/EX/ALU/Result<14>127 .INIT = 16'hA280;
  LUT4_L \cpu_inst/EX/ALU/Result<14>127  (
    .I0(\cpu_inst/EX/ALU/N98 ),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[26] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .LO(\cpu_inst/EX/ALU/Result<14>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>103 .INIT = 16'h5410;
  LUT4_L \cpu_inst/EX/ALU/Result<13>103  (
    .I0(\cpu_inst/EX/ALU/N1 ),
    .I1(ALU_A[2]),
    .I2(N2649),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[17] ),
    .LO(\cpu_inst/EX/ALU/Result<13>_map28 )
  );
  defparam \cpu_inst/EX/ALU/Result<18>90 .INIT = 16'h5410;
  LUT4_L \cpu_inst/EX/ALU/Result<18>90  (
    .I0(\cpu_inst/EX/ALU/N1 ),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[18] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[22] ),
    .LO(\cpu_inst/EX/ALU/Result<18>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Result<20>90 .INIT = 16'h5410;
  LUT4_L \cpu_inst/EX/ALU/Result<20>90  (
    .I0(\cpu_inst/EX/ALU/N1 ),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[20] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[24] ),
    .LO(\cpu_inst/EX/ALU/Result<20>_map21 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>51 .INIT = 8'h01;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>51  (
    .I0(ALU_A[1]),
    .I1(ALU_A[3]),
    .I2(ALU_A[4]),
    .LO(N9508),
    .O(\cpu_inst/EX/ALU/N101 )
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>21 .INIT = 8'h02;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<0>21  (
    .I0(ALU_A[1]),
    .I1(ALU_A[3]),
    .I2(ALU_A[4]),
    .LO(N9509),
    .O(\cpu_inst/EX/ALU/N77 )
  );
  defparam \cpu_inst/EX/ALU/Result<24>153 .INIT = 16'hFFEC;
  LUT4_L \cpu_inst/EX/ALU/Result<24>153  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<24>_map15 ),
    .I2(\cpu_inst/EX/ALU/Result<24>_map33 ),
    .I3(N8848),
    .LO(\cpu_inst/EX/ALU/Result<24>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<25>153 .INIT = 16'hFFEC;
  LUT4_L \cpu_inst/EX/ALU/Result<25>153  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(\cpu_inst/EX/ALU/Result<25>_map15 ),
    .I2(\cpu_inst/EX/ALU/Result<25>_map33 ),
    .I3(N8850),
    .LO(\cpu_inst/EX/ALU/Result<25>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>204_SW0 .INIT = 16'hFF60;
  LUT4_L \cpu_inst/EX/ALU/Result<2>204_SW0  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst2/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [2]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<2>_map23 ),
    .LO(N8864)
  );
  defparam \cpu_inst/EX/ALU/Result<20>158 .INIT = 16'hFFF8;
  LUT4_L \cpu_inst/EX/ALU/Result<20>158  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/Result<20>_map24 ),
    .I2(\cpu_inst/EX/ALU/Result<20>_map19 ),
    .I3(N8866),
    .LO(\cpu_inst/EX/ALU/Result<20>_map37 )
  );
  defparam \cpu_inst/EX/ALU/Result<9>149 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<9>149  (
    .I0(\cpu_inst/EX/ALU/Result<9>_map36 ),
    .I1(\cpu_inst/EX/ALU/Result<9>_map30 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(N8878),
    .LO(\cpu_inst/EX/ALU/Result<9>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<16>164 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<16>164  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(N8880),
    .I2(\cpu_inst/EX/ALU/Result<16>_map36 ),
    .I3(\cpu_inst/EX/ALU/Result<16>_map25 ),
    .LO(\cpu_inst/EX/ALU/Result<16>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<19>165 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<19>165  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(\cpu_inst/EX/ALU/Result<19>_map37 ),
    .I2(N8882),
    .I3(\cpu_inst/EX/ALU/Result<19>_map25 ),
    .LO(\cpu_inst/EX/ALU/Result<19>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<17>165 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<17>165  (
    .I0(\cpu_inst/EX/ALU/Result<17>_map37 ),
    .I1(\cpu_inst/EX/ALU/Result<17>_map25 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(N8884),
    .LO(\cpu_inst/EX/ALU/Result<17>_map38 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>223_SW0 .INIT = 16'hFF60;
  LUT4_L \cpu_inst/EX/ALU/Result<1>223_SW0  (
    .I0(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/add_inst1/Mxor_s_xo [0]),
    .I1(\cpu_inst/EX/ALU/adder_32bits_ALU/adder_4bits_inst/coi [1]),
    .I2(\cpu_inst/EX/ALU/Result_or0019 ),
    .I3(\cpu_inst/EX/ALU/Result<1>_map37 ),
    .LO(N8886)
  );
  defparam \cpu_inst/EX/ALU/Result<31>21 .INIT = 16'h0100;
  LUT4_D \cpu_inst/EX/ALU/Result<31>21  (
    .I0(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I2(\cpu_inst/EX/ALU/Result_or0018 ),
    .I3(\cpu_inst/EX/ALU/N201 ),
    .LO(N9510),
    .O(\cpu_inst/EX/ALU/N90 )
  );
  defparam \cpu_inst/EX/ALU/Result<14>155_SW0 .INIT = 16'hF222;
  LUT4_L \cpu_inst/EX/ALU/Result<14>155_SW0  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[46] ),
    .I1(N8892),
    .I2(\cpu_inst/EX/ALU/N95 ),
    .I3(\cpu_inst/EX/ALU/Result<14>_map29 ),
    .LO(N8788)
  );
  defparam \cpu_inst/EX/ALU/Result<0>198_SW1 .INIT = 8'h40;
  LUT3_L \cpu_inst/EX/ALU/Result<0>198_SW1  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/N71 ),
    .LO(N8897)
  );
  defparam \cpu_inst/EX/ALU/Result<1>182 .INIT = 16'hF222;
  LUT4_L \cpu_inst/EX/ALU/Result<1>182  (
    .I0(\cpu_inst/EX/ALU/Result<1>_map42 ),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[9] ),
    .I3(\cpu_inst/EX/ALU/N102 ),
    .LO(\cpu_inst/EX/ALU/Result<1>_map45 )
  );
  defparam \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1 .INIT = 16'h396C;
  LUT4_D \cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/Mxor_s_xo<0>1  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(ALU_A[17]),
    .I2(ALU_B[17]),
    .I3(\cpu_inst/EX/ALU/B_adder_addsub0000 [17]),
    .LO(N9511),
    .O(\cpu_inst/EX/ALU/adder_32bits_ALU/mux_adder_inst4/adder_abits_inst0/add_inst1/Mxor_s_xo [0])
  );
  defparam \cpu_inst/EX/ALU/Result<2>163 .INIT = 16'h888F;
  LUT4_L \cpu_inst/EX/ALU/Result<2>163  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[10] ),
    .I1(\cpu_inst/EX/ALU/N102 ),
    .I2(ALU_A[2]),
    .I3(N8944),
    .LO(\cpu_inst/EX/ALU/Result<2>_map41 )
  );
  defparam \cpu_inst/EX/ALU/Result<3>159 .INIT = 16'h888F;
  LUT4_L \cpu_inst/EX/ALU/Result<3>159  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[11] ),
    .I1(\cpu_inst/EX/ALU/N102 ),
    .I2(ALU_A[2]),
    .I3(N8946),
    .LO(\cpu_inst/EX/ALU/Result<3>_map41 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z516 .INIT = 8'hF8;
  LUT3_L \cpu_inst/ID/zero_test_inst/Z516  (
    .I0(\cpu_inst/ID/zero_test_inst/Z_map65 ),
    .I1(\cpu_inst/ID/zero_test_inst/Z_map96 ),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map162 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map163 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>82_SW0 .INIT = 16'hFF20;
  LUT4_L \cpu_inst/EX/ALU/Result<7>82_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[39] ),
    .I3(\cpu_inst/EX/ALU/Result<7>_map15 ),
    .LO(N8999)
  );
  defparam \cpu_inst/EX/ALU/Result<6>82_SW0 .INIT = 16'hFF20;
  LUT4_L \cpu_inst/EX/ALU/Result<6>82_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[38] ),
    .I3(\cpu_inst/EX/ALU/Result<6>_map15 ),
    .LO(N9001)
  );
  defparam \cpu_inst/EX/ALU/Result<5>82_SW0 .INIT = 16'hFF20;
  LUT4_L \cpu_inst/EX/ALU/Result<5>82_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[37] ),
    .I3(\cpu_inst/EX/ALU/Result<5>_map15 ),
    .LO(N9003)
  );
  defparam \cpu_inst/EX/ALU/Result<4>83_SW0 .INIT = 16'hFF20;
  LUT4_L \cpu_inst/EX/ALU/Result<4>83_SW0  (
    .I0(\cpu_inst/EX/ALU/N90 ),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[36] ),
    .I3(\cpu_inst/EX/ALU/Result<4>_map15 ),
    .LO(N9009)
  );
  defparam \cpu_inst/EX/ALU/Result<27>152 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<27>152  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(N9011),
    .I2(\cpu_inst/EX/ALU/Result<27>_map34 ),
    .I3(N8874),
    .LO(\cpu_inst/EX/ALU/Result<27>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<26>152 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<26>152  (
    .I0(\cpu_inst/EX/ALU/N42 ),
    .I1(N8876),
    .I2(\cpu_inst/EX/ALU/Result<26>_map34 ),
    .I3(N9013),
    .LO(\cpu_inst/EX/ALU/Result<26>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<13>111 .INIT = 16'hC8C0;
  LUT4_L \cpu_inst/EX/ALU/Result<13>111  (
    .I0(\cpu_inst/EX/ALU/N97 ),
    .I1(\cpu_inst/EX/ALU/N95 ),
    .I2(N9031),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[53] ),
    .LO(\cpu_inst/EX/ALU/Result<13>_map30 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>96 .INIT = 16'hD800;
  LUT4_L \cpu_inst/EX/ALU/Result<7>96  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[13] ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] ),
    .I3(\cpu_inst/EX/ALU/N77 ),
    .LO(\cpu_inst/EX/ALU/Result<7>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>98 .INIT = 16'hD080;
  LUT4_D \cpu_inst/EX/ALU/Result<5>98  (
    .I0(ALU_A[2]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[9] ),
    .I2(\cpu_inst/EX/ALU/N101 ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[5] ),
    .LO(N9512),
    .O(\cpu_inst/EX/ALU/Result<5>_map26 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z329 .INIT = 16'h9009;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z329  (
    .I0(\cpu_inst/RtData_id [30]),
    .I1(\cpu_inst/JrAddr [30]),
    .I2(\cpu_inst/RtData_id [29]),
    .I3(\cpu_inst/JrAddr [29]),
    .LO(\cpu_inst/ID/zero_test_inst/Z_map105 )
  );
  defparam \cpu_inst/EX/ALU/Result<23>135_SW0 .INIT = 16'h5D7F;
  LUT4_L \cpu_inst/EX/ALU/Result<23>135_SW0  (
    .I0(ALU_A[2]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[11] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[19] ),
    .LO(N9073)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>51 .INIT = 8'h02;
  LUT3_D \cpu_inst/EX/ALU/Mshift_Result_shift0003_Result<28>51  (
    .I0(ALU_A[3]),
    .I1(ALU_A[4]),
    .I2(ALU_A[2]),
    .LO(N9513),
    .O(\cpu_inst/EX/ALU/N102 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>293 .INIT = 16'h082A;
  LUT4_D \cpu_inst/EX/ALU/Result<0>293  (
    .I0(ALU_A[31]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .LO(N9514),
    .O(\cpu_inst/EX/ALU/Result<0>_map67 )
  );
  defparam \cpu_inst/EX/ALU/Result<31>180 .INIT = 16'hFF20;
  LUT4_L \cpu_inst/EX/ALU/Result<31>180  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N60 ),
    .I3(\cpu_inst/EX/ALU/Result<31>_map44 ),
    .LO(\cpu_inst/EX/ALU/Result<31>_map46 )
  );
  defparam \cpu_inst/EX/ALU/Result<27>125 .INIT = 16'hFF02;
  LUT4_L \cpu_inst/EX/ALU/Result<27>125  (
    .I0(\cpu_inst/EX/ALU/N60 ),
    .I1(ALU_A[4]),
    .I2(ALU_A[2]),
    .I3(\cpu_inst/EX/ALU/Result<27>_map30 ),
    .LO(\cpu_inst/EX/ALU/Result<27>_map31 )
  );
  defparam \cpu_inst/EX/ALU/Result<1>134 .INIT = 16'hA280;
  LUT4_L \cpu_inst/EX/ALU/Result<1>134  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[57] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[49] ),
    .LO(\cpu_inst/EX/ALU/Result<1>_map35 )
  );
  defparam \cpu_inst/EX/ALU/Result<7>105 .INIT = 16'h6240;
  LUT4_L \cpu_inst/EX/ALU/Result<7>105  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[47] ),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[55] ),
    .LO(\cpu_inst/EX/ALU/Result<7>_map29 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>97 .INIT = 16'h5410;
  LUT4_L \cpu_inst/EX/ALU/Result<8>97  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/N55 ),
    .I3(\cpu_inst/EX/ALU/N15 ),
    .LO(\cpu_inst/EX/ALU/Result<8>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<26>125 .INIT = 16'hFF10;
  LUT4_L \cpu_inst/EX/ALU/Result<26>125  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N69 ),
    .I3(N9081),
    .LO(\cpu_inst/EX/ALU/Result<26>_map31 )
  );
  defparam \cpu_inst/EX/ALU/Result<4>146 .INIT = 16'h5410;
  LUT4_L \cpu_inst/EX/ALU/Result<4>146  (
    .I0(ALU_A[4]),
    .I1(ALU_A[2]),
    .I2(\cpu_inst/EX/ALU/N71 ),
    .I3(\cpu_inst/EX/ALU/N55 ),
    .LO(\cpu_inst/EX/ALU/Result<4>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<22>77 .INIT = 16'hFF10;
  LUT4_L \cpu_inst/EX/ALU/Result<22>77  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[54] ),
    .I3(\cpu_inst/EX/ALU/Result<22>_map17 ),
    .LO(\cpu_inst/EX/ALU/Result<22>_map20 )
  );
  defparam \cpu_inst/EX/ALU/Result<21>77 .INIT = 16'hFF10;
  LUT4_L \cpu_inst/EX/ALU/Result<21>77  (
    .I0(ALU_A[4]),
    .I1(ALU_A[3]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[53] ),
    .I3(\cpu_inst/EX/ALU/Result<21>_map17 ),
    .LO(\cpu_inst/EX/ALU/Result<21>_map20 )
  );
  defparam \cpu_inst/EX/ALU/Result<24>111 .INIT = 8'h10;
  LUT3_L \cpu_inst/EX/ALU/Result<24>111  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N67 ),
    .LO(\cpu_inst/EX/ALU/Result<24>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<25>111 .INIT = 8'h10;
  LUT3_L \cpu_inst/EX/ALU/Result<25>111  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/N68 ),
    .LO(\cpu_inst/EX/ALU/Result<25>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<2>69 .INIT = 16'h0002;
  LUT4_L \cpu_inst/EX/ALU/Result<2>69  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[2] ),
    .I1(ALU_A[4]),
    .I2(ALU_A[3]),
    .I3(ALU_A[2]),
    .LO(\cpu_inst/EX/ALU/Result<2>_map20 )
  );
  defparam \cpu_inst/EX/ALU/Result<0>69 .INIT = 16'h0002;
  LUT4_L \cpu_inst/EX/ALU/Result<0>69  (
    .I0(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[0] ),
    .I1(ALU_A[4]),
    .I2(ALU_A[3]),
    .I3(ALU_A[2]),
    .LO(\cpu_inst/EX/ALU/Result<0>_map20 )
  );
  defparam \cpu_inst/EX/ALU/Result_cmp_eq00041 .INIT = 16'h0020;
  LUT4_D \cpu_inst/EX/ALU/Result_cmp_eq00041  (
    .I0(\cpu_inst/EX/ALU/N204 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [6]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [5]),
    .I3(\cpu_inst/dffr_IDEX_EX/q [7]),
    .LO(N9515),
    .O(\cpu_inst/EX/ALU/Result_cmp_eq0004 )
  );
  defparam \cpu_inst/EX/ALU/Result<8>83_SW0 .INIT = 16'hFFFE;
  LUT4_L \cpu_inst/EX/ALU/Result<8>83_SW0  (
    .I0(\cpu_inst/EX/ALU/Result<8>_map6 ),
    .I1(\cpu_inst/EX/ALU/Result<8>_map9 ),
    .I2(\cpu_inst/EX/ALU/N42 ),
    .I3(\cpu_inst/EX/ALU/Result<8>_map15 ),
    .LO(N9101)
  );
  defparam \cpu_inst/EX/ALU/Result<31>89 .INIT = 16'h5410;
  LUT4_L \cpu_inst/EX/ALU/Result<31>89  (
    .I0(N9103),
    .I1(\cpu_inst/dffr_IDEX_EX/q [7]),
    .I2(\cpu_inst/EX/ALU/Result_xor0016 [31]),
    .I3(\cpu_inst/EX/ALU/Result_shift0002 [31]),
    .LO(\cpu_inst/EX/ALU/Result<31>_map25 )
  );
  defparam \cpu_inst/EX/ALU/Result<5>235_SW0_SW0 .INIT = 8'hE4;
  LUT3_L \cpu_inst/EX/ALU/Result<5>235_SW0_SW0  (
    .I0(\cpu_inst/EX/ALU/old_Binvert_21_cmp_eq0000 ),
    .I1(\cpu_inst/EX/ALU/B_adder_addsub0000 [4]),
    .I2(ALU_B[4]),
    .LO(N9109)
  );
  defparam \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<15>11 .INIT = 16'hB080;
  LUT4_D \cpu_inst/EX/ALU/Mshift_Result_shift0005_Result<15>11  (
    .I0(\cpu_inst/dffr_IDEX_Sa/q [2]),
    .I1(\cpu_inst/dffr_IDEX_EX/q [1]),
    .I2(ALU_A[4]),
    .I3(\cpu_inst/MemWriteData_ex [31]),
    .LO(N9516),
    .O(\cpu_inst/EX/ALU/N87 )
  );
  defparam \cpu_inst/EX/ALU/Result<24>100_SW0_SW0 .INIT = 16'hA280;
  LUT4_L \cpu_inst/EX/ALU/Result<24>100_SW0_SW0  (
    .I0(\cpu_inst/EX/ALU/N95 ),
    .I1(\cpu_inst/EX/ALU/N1 ),
    .I2(ALU_B[31]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[56] ),
    .LO(N9005)
  );
  defparam \cpu_inst/EX/ALU/Result<23>74 .INIT = 16'hABA8;
  LUT4_L \cpu_inst/EX/ALU/Result<23>74  (
    .I0(ALU_B[31]),
    .I1(ALU_A[3]),
    .I2(ALU_A[4]),
    .I3(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[55] ),
    .LO(\cpu_inst/EX/ALU/Result<23>_map18 )
  );
  defparam \cpu_inst/EX/ALU/Result<25>100_SW0_SW0 .INIT = 16'hB800;
  LUT4_L \cpu_inst/EX/ALU/Result<25>100_SW0_SW0  (
    .I0(ALU_B[31]),
    .I1(\cpu_inst/EX/ALU/N1 ),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[57] ),
    .I3(\cpu_inst/EX/ALU/N95 ),
    .LO(N9007)
  );
  defparam \cpu_inst/EX/ALU/Result<11>131 .INIT = 16'h80D0;
  LUT4_L \cpu_inst/EX/ALU/Result<11>131  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[59] ),
    .I2(\cpu_inst/EX/ALU/N81 ),
    .I3(N9117),
    .LO(\cpu_inst/EX/ALU/Result<11>_map36 )
  );
  defparam \cpu_inst/EX/ALU/Result<20>149_SW0_SW1 .INIT = 16'hD888;
  LUT4_L \cpu_inst/EX/ALU/Result<20>149_SW0_SW1  (
    .I0(ALU_A[4]),
    .I1(\cpu_inst/EX/ALU/Mshift_Result_shift0003_Sh[36] ),
    .I2(ALU_A[2]),
    .I3(\cpu_inst/EX/ALU/N56 ),
    .LO(N9123)
  );
  defparam \cpu_inst/EX/ALU/Result<28>66_SW0 .INIT = 16'h0010;
  LUT4_L \cpu_inst/EX/ALU/Result<28>66_SW0  (
    .I0(ALU_A[2]),
    .I1(ALU_A[4]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0004_Sh[28] ),
    .I3(ALU_A[3]),
    .LO(N8899)
  );
  defparam \cpu_inst/EX/ALU/Result<10>133_SW2 .INIT = 8'hD8;
  LUT3_L \cpu_inst/EX/ALU/Result<10>133_SW2  (
    .I0(ALU_A[3]),
    .I1(ALU_B[31]),
    .I2(\cpu_inst/EX/ALU/Mshift_Result_shift0005_Sh[58] ),
    .LO(N9134)
  );
  defparam \cpu_inst/EX/Mmux_B27_SW0_SW0_SW01 .INIT = 8'hB8;
  LUT3_L \cpu_inst/EX/Mmux_B27_SW0_SW0_SW01  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [4]),
    .I1(\cpu_inst/EX/Mmux_B_not0001_map24 ),
    .I2(N8913),
    .LO(N8711)
  );
  defparam \cpu_inst/EX/Mmux_B26_SW0_SW0_SW01 .INIT = 8'hB8;
  LUT3_L \cpu_inst/EX/Mmux_B26_SW0_SW0_SW01  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [3]),
    .I1(\cpu_inst/EX/Mmux_B_not0001_map24 ),
    .I2(N8915),
    .LO(N8713)
  );
  defparam \cpu_inst/EX/Mmux_B23_SW0_SW0_SW01 .INIT = 8'hB8;
  LUT3_L \cpu_inst/EX/Mmux_B23_SW0_SW0_SW01  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [2]),
    .I1(\cpu_inst/EX/Mmux_B_not0001_map24 ),
    .I2(N8917),
    .LO(N8715)
  );
  defparam \cpu_inst/EX/Mmux_B12_SW0_SW0_SW01 .INIT = 8'hB8;
  LUT3_L \cpu_inst/EX/Mmux_B12_SW0_SW0_SW01  (
    .I0(\cpu_inst/dffr_IDEX_RtData/q [1]),
    .I1(\cpu_inst/EX/Mmux_B_not0001_map24 ),
    .I2(N8919),
    .LO(N8717)
  );
  defparam \cpu_inst/EX/Mmux_A_not0000_1 .INIT = 16'hFF57;
  LUT4_D \cpu_inst/EX/Mmux_A_not0000_1  (
    .I0(\cpu_inst/dffr_EXMEM_WB/q [0]),
    .I1(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [1]),
    .I2(N6345),
    .I3(\cpu_inst/EX/ForwardA_0_cmp_ne0001 ),
    .LO(N9517),
    .O(\cpu_inst/EX/Mmux_A_not00001 )
  );
  defparam \cpu_inst/EX/ForwardB_0_cmp_ne000073_1 .INIT = 16'hFFFE;
  LUT4_D \cpu_inst/EX/ForwardB_0_cmp_ne000073_1  (
    .I0(\cpu_inst/dffr_EXMEM_RegWriteAddr/q [4]),
    .I1(N8543),
    .I2(N8485),
    .I3(\cpu_inst/EX/ForwardB_0_cmp_ne0000_map16 ),
    .LO(N9518),
    .O(\cpu_inst/EX/ForwardB_0_cmp_ne000073_54 )
  );
  defparam \cpu_inst/ID/zero_test_inst/Z722_1 .INIT = 16'h2220;
  LUT4_L \cpu_inst/ID/zero_test_inst/Z722_1  (
    .I0(\cpu_inst/ALUCode_id [3]),
    .I1(\cpu_inst/ALUCode_id [4]),
    .I2(\cpu_inst/ID/zero_test_inst/Z_map167 ),
    .I3(\cpu_inst/ID/zero_test_inst/Z_map204 ),
    .LO(\cpu_inst/ID/zero_test_inst/Z722_60 )
  );
  defparam \cpu_inst/EX/ALU/Result<30>61_G .INIT = 16'hFF80;
  LUT4_L \cpu_inst/EX/ALU/Result<30>61_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8954),
    .LO(N9249)
  );
  defparam \cpu_inst/EX/ALU/Result<29>61_G .INIT = 16'hFF80;
  LUT4_L \cpu_inst/EX/ALU/Result<29>61_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8957),
    .LO(N9251)
  );
  defparam \cpu_inst/EX/ALU/Result<24>46_G .INIT = 16'hFF80;
  LUT4_L \cpu_inst/EX/ALU/Result<24>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8984),
    .LO(N9269)
  );
  defparam \cpu_inst/EX/ALU/Result<25>46_G .INIT = 16'hFF80;
  LUT4_L \cpu_inst/EX/ALU/Result<25>46_G  (
    .I0(\cpu_inst/EX/ALU/N78 ),
    .I1(\cpu_inst/dffr_IDEX_EX/q [4]),
    .I2(\cpu_inst/dffr_IDEX_EX/q [3]),
    .I3(N8993),
    .LO(N9275)
  );
  defparam \CLKgen/step_key/sync/ff2/Mshreg_q_0 .INIT = 16'h0000;
  SRL16 \CLKgen/step_key/sync/ff2/Mshreg_q_0  (
    .A0(Instruction_id[20]),
    .A1(Instruction_id[20]),
    .A2(Instruction_id[20]),
    .A3(Instruction_id[20]),
    .CLK(\CLKgen/counter [1]),
    .D(\CLKgen/step_key_not0000 ),
    .Q(\CLKgen/step_key/sync/ff2/Mshreg_q_0_83 )
  );
  FD \CLKgen/step_key/sync/ff2/q_0  (
    .C(\CLKgen/counter [1]),
    .D(\CLKgen/step_key/sync/ff2/Mshreg_q_0_83 ),
    .Q(\CLKgen/step_key/sync/ff2/q [0])
  );
  DisplayROM \disp/char_tab  (
    .clk(\CLKgen/counter [0]),
    .dout({\disp/rom_dout [7], \disp/rom_dout [6], \disp/rom_dout [5], \disp/rom_dout [4], \disp/rom_dout [3], \disp/rom_dout [2], \disp/rom_dout [1]
, \disp/rom_dout [0]}),
    .addr({\disp/char_selection [3], \disp/char_selection [2], \disp/char_selection [1], \disp/char_selection [0], y_pos[4], y_pos[3], y_pos[2], 
y_pos[1]})
  );
  DataRAM \cpu_inst/DataRAM  (
    .clk(cpu_clk),
    .we(\cpu_inst/dffr_EXMEM_M/q [0]),
    .dout({MemDout_wb[31], MemDout_wb[30], MemDout_wb[29], MemDout_wb[28], MemDout_wb[27], MemDout_wb[26], MemDout_wb[25], MemDout_wb[24], 
MemDout_wb[23], MemDout_wb[22], MemDout_wb[21], MemDout_wb[20], MemDout_wb[19], MemDout_wb[18], MemDout_wb[17], MemDout_wb[16], MemDout_wb[15], 
MemDout_wb[14], MemDout_wb[13], MemDout_wb[12], MemDout_wb[11], MemDout_wb[10], MemDout_wb[9], MemDout_wb[8], MemDout_wb[7], MemDout_wb[6], 
MemDout_wb[5], MemDout_wb[4], MemDout_wb[3], MemDout_wb[2], MemDout_wb[1], MemDout_wb[0]}),
    .din({\cpu_inst/dffr_EXMEM_MemWriteData/q [31], \cpu_inst/dffr_EXMEM_MemWriteData/q [30], \cpu_inst/dffr_EXMEM_MemWriteData/q [29], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [28], \cpu_inst/dffr_EXMEM_MemWriteData/q [27], \cpu_inst/dffr_EXMEM_MemWriteData/q [26], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [25], \cpu_inst/dffr_EXMEM_MemWriteData/q [24], \cpu_inst/dffr_EXMEM_MemWriteData/q [23], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [22], \cpu_inst/dffr_EXMEM_MemWriteData/q [21], \cpu_inst/dffr_EXMEM_MemWriteData/q [20], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [19], \cpu_inst/dffr_EXMEM_MemWriteData/q [18], \cpu_inst/dffr_EXMEM_MemWriteData/q [17], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [16], \cpu_inst/dffr_EXMEM_MemWriteData/q [15], \cpu_inst/dffr_EXMEM_MemWriteData/q [14], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [13], \cpu_inst/dffr_EXMEM_MemWriteData/q [12], \cpu_inst/dffr_EXMEM_MemWriteData/q [11], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [10], \cpu_inst/dffr_EXMEM_MemWriteData/q [9], \cpu_inst/dffr_EXMEM_MemWriteData/q [8], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [7], \cpu_inst/dffr_EXMEM_MemWriteData/q [6], \cpu_inst/dffr_EXMEM_MemWriteData/q [5], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [4], \cpu_inst/dffr_EXMEM_MemWriteData/q [3], \cpu_inst/dffr_EXMEM_MemWriteData/q [2], 
\cpu_inst/dffr_EXMEM_MemWriteData/q [1], \cpu_inst/dffr_EXMEM_MemWriteData/q [0]}),
    .addr({\cpu_inst/dffr_EXMEM_ALUResult/q [7], \cpu_inst/dffr_EXMEM_ALUResult/q [6], \cpu_inst/dffr_EXMEM_ALUResult/q [5], 
\cpu_inst/dffr_EXMEM_ALUResult/q [4], \cpu_inst/dffr_EXMEM_ALUResult/q [3], \cpu_inst/dffr_EXMEM_ALUResult/q [2]})
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

