//register design for this file
module D_ff(input clk, input reset, input regWrite, input d, output reg q);
	always @ (negedge clk)
    	begin
        	if(reset==1'b1)
        		q=0;
        	else
                begin
                    if(regWrite == 1'b1)
                        q=d;
                end
    	end
endmodule

module D_ff_flush(input clk, input reset, input flush, input regWrite, input d, output reg q);
	always @ (negedge clk)
    	begin
        	if(reset==1'b1 || flush==1'b1)
        		q=0;
        	else
                begin
            		if(regWrite == 1'b1)
            			q=d;
                end
        end
endmodule

module register1bit(input clk, input reset, input regWrite, input dataIn, output regOut);
	D_ff d0(clk, reset, regWrite, dataIn, regOut);
endmodule

module register2bit(input clk, input reset, input regWrite, input [1:0] dataIn, output [1:0] regOut);
	D_ff d0(clk, reset, regWrite, dataIn[0], regOut[0]);
    D_ff d1(clk, reset, regWrite, dataIn[1], regOut[1]);
endmodule

module register5bit(input clk, input reset, input regWrite, input [4:0] dataIn, output  [4:0] regOut);
	D_ff d0(clk, reset, regWrite, dataIn[0], regOut[0]);
	D_ff d1(clk, reset, regWrite, dataIn[1], regOut[1]);
	D_ff d2(clk, reset, regWrite, dataIn[2], regOut[2]);
	D_ff d3(clk, reset, regWrite, dataIn[3], regOut[3]);
	D_ff d4(clk, reset, regWrite, dataIn[4], regOut[4]);
endmodule

module register32bit(input clk, input reset, input regWrite, input [31:0] dataIn, output  [31:0] regOut);
	D_ff d0(clk, reset, regWrite, dataIn[0], regOut[0]);
	D_ff d1(clk, reset, regWrite, dataIn[1], regOut[1]);
	D_ff d2(clk, reset, regWrite, dataIn[2], regOut[2]);
	D_ff d3(clk, reset, regWrite, dataIn[3], regOut[3]);
	D_ff d4(clk, reset, regWrite, dataIn[4], regOut[4]);
	D_ff d5(clk, reset, regWrite, dataIn[5], regOut[5]);
	D_ff d6(clk, reset, regWrite, dataIn[6], regOut[6]);
	D_ff d7(clk, reset, regWrite, dataIn[7], regOut[7]);
	D_ff d8(clk, reset, regWrite, dataIn[8], regOut[8]);
	D_ff d9(clk, reset, regWrite, dataIn[9], regOut[9]);
	D_ff d10(clk, reset, regWrite, dataIn[10], regOut[10]);
	D_ff d11(clk, reset, regWrite, dataIn[11], regOut[11]);
	D_ff d12(clk, reset, regWrite, dataIn[12], regOut[12]);
	D_ff d13(clk, reset, regWrite, dataIn[13], regOut[13]);
	D_ff d14(clk, reset, regWrite, dataIn[14], regOut[14]);
	D_ff d15(clk, reset, regWrite, dataIn[15], regOut[15]);
	D_ff d16(clk, reset, regWrite, dataIn[16], regOut[16]);
	D_ff d17(clk, reset, regWrite, dataIn[17], regOut[17]);
	D_ff d18(clk, reset, regWrite, dataIn[18], regOut[18]);
	D_ff d19(clk, reset, regWrite, dataIn[19], regOut[19]);
	D_ff d20(clk, reset, regWrite, dataIn[20], regOut[20]);
	D_ff d21(clk, reset, regWrite, dataIn[21], regOut[21]);
	D_ff d22(clk, reset, regWrite, dataIn[22], regOut[22]);
	D_ff d23(clk, reset, regWrite, dataIn[23], regOut[23]);
	D_ff d24(clk, reset, regWrite, dataIn[24], regOut[24]);
	D_ff d25(clk, reset, regWrite, dataIn[25], regOut[25]);
	D_ff d26(clk, reset, regWrite, dataIn[26], regOut[26]);
	D_ff d27(clk, reset, regWrite, dataIn[27], regOut[27]);
	D_ff d28(clk, reset, regWrite, dataIn[28], regOut[28]);
	D_ff d29(clk, reset, regWrite, dataIn[29], regOut[29]);
	D_ff d30(clk, reset, regWrite, dataIn[30], regOut[30]);
	D_ff d31(clk, reset, regWrite, dataIn[31], regOut[31]);
endmodule

module register32bit_flush(input clk, input reset, input regWrite, input flush, input [31:0] dataIn, output [31:0] regOut);
	D_ff_flush d0(clk, reset, regWrite, flush, dataIn[0], regOut[0]);
	D_ff_flush d1(clk, reset, regWrite, flush, dataIn[1], regOut[1]);
	D_ff_flush d2(clk, reset, regWrite, flush, dataIn[2], regOut[2]);
	D_ff_flush d3(clk, reset, regWrite, flush, dataIn[3], regOut[3]);
	D_ff_flush d4(clk, reset, regWrite, flush, dataIn[4], regOut[4]);
	D_ff_flush d5(clk, reset, regWrite, flush, dataIn[5], regOut[5]);
	D_ff_flush d6(clk, reset, regWrite, flush, dataIn[6], regOut[6]);
	D_ff_flush d7(clk, reset, regWrite, flush, dataIn[7], regOut[7]);
	D_ff_flush d8(clk, reset, regWrite, flush, dataIn[8], regOut[8]);
	D_ff_flush d9(clk, reset, regWrite, flush, dataIn[9], regOut[9]);
	D_ff_flush d10(clk, reset, regWrite, flush, dataIn[10], regOut[10]);
	D_ff_flush d11(clk, reset, regWrite, flush, dataIn[11], regOut[11]);
	D_ff_flush d12(clk, reset, regWrite, flush, dataIn[12], regOut[12]);
	D_ff_flush d13(clk, reset, regWrite, flush, dataIn[13], regOut[13]);
	D_ff_flush d14(clk, reset, regWrite, flush, dataIn[14], regOut[14]);
	D_ff_flush d15(clk, reset, regWrite, flush, dataIn[15], regOut[15]);
	D_ff_flush d16(clk, reset, regWrite, flush, dataIn[16], regOut[16]);
	D_ff_flush d17(clk, reset, regWrite, flush, dataIn[17], regOut[17]);
	D_ff_flush d18(clk, reset, regWrite, flush, dataIn[18], regOut[18]);
	D_ff_flush d19(clk, reset, regWrite, flush, dataIn[19], regOut[19]);
	D_ff_flush d20(clk, reset, regWrite, flush, dataIn[20], regOut[20]);
	D_ff_flush d21(clk, reset, regWrite, flush, dataIn[21], regOut[21]);
	D_ff_flush d22(clk, reset, regWrite, flush, dataIn[22], regOut[22]);
	D_ff_flush d23(clk, reset, regWrite, flush, dataIn[23], regOut[23]);
	D_ff_flush d24(clk, reset, regWrite, flush, dataIn[24], regOut[24]);
	D_ff_flush d25(clk, reset, regWrite, flush, dataIn[25], regOut[25]);
	D_ff_flush d26(clk, reset, regWrite, flush, dataIn[26], regOut[26]);
	D_ff_flush d27(clk, reset, regWrite, flush, dataIn[27], regOut[27]);
	D_ff_flush d28(clk, reset, regWrite, flush, dataIn[28], regOut[28]);
	D_ff_flush d29(clk, reset, regWrite, flush, dataIn[29], regOut[29]);
	D_ff_flush d30(clk, reset, regWrite, flush, dataIn[30], regOut[30]);
	D_ff_flush d31(clk, reset, regWrite, flush, dataIn[31], regOut[31]);
endmodule

module register48bit_flush(input clk, input reset, input regWrite, input flush, input [47:0] dataIn, output [47:0] regOut);
	D_ff_flush d0(clk, reset, regWrite, flush, dataIn[0], regOut[0]);
	D_ff_flush d1(clk, reset, regWrite, flush, dataIn[1], regOut[1]);
	D_ff_flush d2(clk, reset, regWrite, flush, dataIn[2], regOut[2]);
	D_ff_flush d3(clk, reset, regWrite, flush, dataIn[3], regOut[3]);
	D_ff_flush d4(clk, reset, regWrite, flush, dataIn[4], regOut[4]);
	D_ff_flush d5(clk, reset, regWrite, flush, dataIn[5], regOut[5]);
	D_ff_flush d6(clk, reset, regWrite, flush, dataIn[6], regOut[6]);
	D_ff_flush d7(clk, reset, regWrite, flush, dataIn[7], regOut[7]);
	D_ff_flush d8(clk, reset, regWrite, flush, dataIn[8], regOut[8]);
	D_ff_flush d9(clk, reset, regWrite, flush, dataIn[9], regOut[9]);
	D_ff_flush d10(clk, reset, regWrite, flush, dataIn[10], regOut[10]);
	D_ff_flush d11(clk, reset, regWrite, flush, dataIn[11], regOut[11]);
	D_ff_flush d12(clk, reset, regWrite, flush, dataIn[12], regOut[12]);
	D_ff_flush d13(clk, reset, regWrite, flush, dataIn[13], regOut[13]);
	D_ff_flush d14(clk, reset, regWrite, flush, dataIn[14], regOut[14]);
	D_ff_flush d15(clk, reset, regWrite, flush, dataIn[15], regOut[15]);
	D_ff_flush d16(clk, reset, regWrite, flush, dataIn[16], regOut[16]);
	D_ff_flush d17(clk, reset, regWrite, flush, dataIn[17], regOut[17]);
	D_ff_flush d18(clk, reset, regWrite, flush, dataIn[18], regOut[18]);
	D_ff_flush d19(clk, reset, regWrite, flush, dataIn[19], regOut[19]);
	D_ff_flush d20(clk, reset, regWrite, flush, dataIn[20], regOut[20]);
	D_ff_flush d21(clk, reset, regWrite, flush, dataIn[21], regOut[21]);
	D_ff_flush d22(clk, reset, regWrite, flush, dataIn[22], regOut[22]);
	D_ff_flush d23(clk, reset, regWrite, flush, dataIn[23], regOut[23]);
	D_ff_flush d24(clk, reset, regWrite, flush, dataIn[24], regOut[24]);
	D_ff_flush d25(clk, reset, regWrite, flush, dataIn[25], regOut[25]);
	D_ff_flush d26(clk, reset, regWrite, flush, dataIn[26], regOut[26]);
	D_ff_flush d27(clk, reset, regWrite, flush, dataIn[27], regOut[27]);
	D_ff_flush d28(clk, reset, regWrite, flush, dataIn[28], regOut[28]);
	D_ff_flush d29(clk, reset, regWrite, flush, dataIn[29], regOut[29]);
	D_ff_flush d30(clk, reset, regWrite, flush, dataIn[30], regOut[30]);
	D_ff_flush d31(clk, reset, regWrite, flush, dataIn[31], regOut[31]);
    D_ff_flush d32(clk, reset, regWrite, flush, dataIn[32], regOut[32]);
    D_ff_flush d33(clk, reset, regWrite, flush, dataIn[33], regOut[33]);
    D_ff_flush d34(clk, reset, regWrite, flush, dataIn[34], regOut[34]);
    D_ff_flush d35(clk, reset, regWrite, flush, dataIn[35], regOut[35]);
    D_ff_flush d36(clk, reset, regWrite, flush, dataIn[36], regOut[36]);
    D_ff_flush d37(clk, reset, regWrite, flush, dataIn[37], regOut[37]);
    D_ff_flush d38(clk, reset, regWrite, flush, dataIn[38], regOut[38]);
    D_ff_flush d39(clk, reset, regWrite, flush, dataIn[39], regOut[39]);
    D_ff_flush d40(clk, reset, regWrite, flush, dataIn[40], regOut[40]);
    D_ff_flush d41(clk, reset, regWrite, flush, dataIn[41], regOut[41]);
    D_ff_flush d42(clk, reset, regWrite, flush, dataIn[42], regOut[42]);
    D_ff_flush d43(clk, reset, regWrite, flush, dataIn[43], regOut[43]);
    D_ff_flush d44(clk, reset, regWrite, flush, dataIn[44], regOut[44]);
    D_ff_flush d45(clk, reset, regWrite, flush, dataIn[45], regOut[45]);
    D_ff_flush d46(clk, reset, regWrite, flush, dataIn[46], regOut[46]);
    D_ff_flush d47(clk, reset, regWrite, flush, dataIn[47], regOut[47]);
endmodule
//register design ends


module pipeline_IF_ID(input clk, input reset, input p_ifid_regWrite, input flush, input [31:0] p_ifid_pc_in, input [47:0] instr_in,
	output [31:0] p_ifid_pc_out, output [47:0] instr_out);

    register32bit_flush preg_ifid_pc(clk, reset, p_ifid_regWrite, flush, p_ifid_pc_in, p_ifid_pc_out);
    register48bit_flush preg_ifid_instr(clk, reset, p_ifid_regWrite, flush, instr_in, instr_out);

endmodule //pipeline_IF_ID ends


module pipeline_ID_EX (input clk, input reset, input p_idex_regWrite, input [31:0] p_idex_pc_in,
    input [1:0] aluOp, input [1:0] aluSrcB,
    input regWrite_32, input regWrite_16, input [31:0] reg_rs1_32, input [31:0] reg_rs2_32, input [31:0] reg_rs1_16, input [31:0] reg_rs2_16, input [1:0] writeDataSelect_32,
	input [4:0] rs1_32, input [4:0] rs2_32, input [4:0] rs1_16, input [4:0] rs2_16,
    input [4:0] regDest_32, input [4:0] rt_16, input [4:0] rd_16, input regDest16_select,
	input [31:0] memAddress, input [31:0] add_imm, input [31:0] slt_imm, input [31:0] srai,
    input memRead, input memWrite, input memAdderSrcA, input memAdderSrcB, input aluMemSelect,
	input [1:0] stallA, input [1:0] stallB,
    output [31:0] p_idex_pc_out,
    output [1:0] aluOp_out, output [1:0] aluSrcB_out,
    output regWrite_32_out, output regWrite_16_out, output [31:0] reg_rs1_32_out, output [31:0] reg_rs2_32_out, output [31:0] reg_rs1_16_out, output [31:0] reg_rs2_16_out, output [1:0] writeDataSelect_32_out,
	output [4:0] rs1_32_out, output [4:0] rs2_32_out, output [4:0] rs1_16_out, output [4:0] rs2_16_out,
	output [4:0] regDest_32_out, output [4:0] rt_16_out, output [4:0] rd_16_out, output regDest16_select_out,
    output [31:0] memAddress_out, output [31:0] add_imm_out, output [31:0] slt_imm_out, output [31:0] srai_out,
    output memRead_out, output memWrite_out, output memAdderSrcA_out, output memAdderSrcB_out, output aluMemSelect_out,
	output [1:0] stallAout, output [1:0] stallBout);

    register32bit preg_idex_pc(clk, reset, p_idex_regWrite, p_idex_pc_in, p_idex_pc_out);
    register32bit preg_regRs1_32(clk, reset, p_idex_regWrite, reg_rs1_32, reg_rs1_32_out);
    register32bit preg_regRs2_32(clk, reset, p_idex_regWrite, reg_rs2_32, reg_rs2_32_out);
    register32bit preg_regRs1_16(clk, reset, p_idex_regWrite, reg_rs1_16, reg_rs1_16_out);
    register32bit preg_regRs2_16(clk, reset, p_idex_regWrite, reg_rs2_16, reg_rs2_16_out);
    register32bit preg_memAddress(clk, reset, p_idex_regWrite, memAddress, memAddress_out);
    register32bit preg_addImm(clk, reset, p_idex_regWrite, add_imm, add_imm_out);
    register32bit preg_sltImm(clk, reset, p_idex_regWrite, slt_imm, slt_imm_out);
    register32bit preg_sraImm(clk, reset, p_idex_regWrite, srai, srai_out);

    register1bit preg_regWrite_32(clk, reset, p_idex_regWrite, regWrite_32, regWrite_32_out);
    register1bit preg_regWrite_16(clk, reset, p_idex_regWrite, regWrite_16, regWrite_16_out);
    register1bit preg_rds16(clk, reset, p_idex_regWrite, regDest16_select, regDest16_select_out);
    register1bit preg_memRead(clk, reset, p_idex_regWrite, memRead, memRead_out);
    register1bit preg_memWrite(clk, reset, p_idex_regWrite, memWrite, memWrite_out);
    register1bit preg_memadderSrcA(clk, reset, p_idex_regWrite, memAdderSrcA, memAdderSrcA_out);
    register1bit preg_memadderSrcB(clk, reset, p_idex_regWrite, memAdderSrcB, memAdderSrcB_out);
    register1bit preg_memAdderSel(clk, reset, p_idex_regWrite, aluMemSelect, aluMemSelect_out);
    
	register2bit preg_aluOp(clk, reset, p_idex_regWrite, aluOp, aluOp_out);
    register2bit preg_wds(clk, reset, p_idex_regWrite, writeDataSelect_32, writeDataSelect_32_out);
	register2bit preg_alusb(clk, reset, p_idex_regWrite, aluSrcB, aluSrcB_out);
	register2bit preg_stallA(clk, reset, p_idex_regWrite, stallA, stallAout);
	register2bit preg_stallB(clk, reset, p_idex_regWrite, stallB, stallBout);
	
    register5bit preg_rd32(clk, reset, p_idex_regWrite, regDest_32, regDest_32_out);
    register5bit preg_rt16(clk, reset, p_idex_regWrite, rt_16, rt_16_out);
    register5bit preg_rd16(clk, reset, p_idex_regWrite, rd_16, rd_16_out);
	register5bit preg_rs1_32(clk, reset, p_idex_regWrite, rs1_32, rs1_32_out);
	register5bit preg_rs2_32(clk, reset, p_idex_regWrite, rs2_32, rs2_32_out);
	register5bit preg_rs1_16(clk, reset, p_idex_regWrite, rs1_16, rs1_16_out);
	register5bit preg_rs2_16(clk, reset, p_idex_regWrite, rs2_16, rs2_16_out);
	
endmodule //pipeline_ID_EX ends


module pipeline_EX_MEM (input clk, input reset, input p_exmem_regWrite, input [31:0] p_exmem_pc_in,
    input regWrite_32, input regWrite_16, input [4:0] regDest_16, input [4:0] regDest_32, input [1:0] writeDataSelect_32,
    input memRead, input memWrite, input aluMemSelect,
    input [31:0] aluResult,
    input [31:0] memAdderResult, input [31:0] memAddress,
    output [31:0] p_exmem_pc_out,
    output regWrite_32_out, output regWrite_16_out, output [4:0] regDest_16_out, output [4:0] regDest_32_out, output [1:0] writeDataSelect_32_out,
    output memRead_out, output memWrite_out, output aluMemSelect_out,
    output [31:0] aluResult_out,
    output [31:0] memAdderResult_out, output [31:0] memAddress_out);

    register32bit preg_exmem_pc(clk, reset, p_exmem_regWrite, p_exmem_pc_in, p_exmem_pc_out);
    register32bit preg_aluResult(clk, reset, p_exmem_regWrite, aluResult, aluResult_out);
    register32bit preg_memAdderResult(clk, reset, p_exmem_regWrite, memAdderResult, memAdderResult_out);
    register32bit preg_memAddress(clk, reset, p_exmem_regWrite, memAddress, memAddress_out);

    register1bit preg_regWrite_32(clk, reset, p_exmem_regWrite, regWrite_32, regWrite_32_out);
    register1bit preg_regWrite_16(clk, reset, p_exmem_regWrite, regWrite_16, regWrite_16_out);
    register1bit preg_memRead(clk, reset, p_exmem_regWrite, memRead, memRead_out);
    register1bit preg_memWrite(clk, reset, p_exmem_regWrite, memWrite, memWrite_out);
    register1bit preg_memAdderSel(clk, reset, p_exmem_regWrite, aluMemSelect, aluMemSelect_out);

    register2bit preg_wds(clk, reset, p_exmem_regWrite, writeDataSelect_32, writeDataSelect_32_out);

    register5bit preg_regDest16(clk, reset, p_exmem_regWrite, regDest_16, regDest_16_out);
    register5bit preg_regDest32(clk, reset, p_exmem_regWrite, regDest_32, regDest_32_out);

endmodule //pipeline_EX_MEM ends


module pipeline_MEM_WB (input clk, input reset, input p_memwb_regWrite,
    input regWrite_32, input regWrite_16, input [4:0] regDest_16, input [4:0] regDest_32,
    input [31:0] aluMuxResult, input [31:0] memResult, input [31:0] memAdderResult, input aluMemSelect,
    output regWrite_32_out, output regWrite_16_out, output [4:0] regDest_16_out, output [4:0] regDest_32_out,
    output [31:0] aluMuxResult_out, output [31:0] memResult_out, output [31:0] memAdderResult_out, output aluMemSelect_out);

    register32bit preg_aluResult(clk, reset, p_memwb_regWrite, aluMuxResult, aluMuxResult_out);
    register32bit preg_memResult(clk, reset, p_memwb_regWrite, memResult, memResult_out);
    register32bit preg_memAdderResult(clk, reset, p_memwb_regWrite, memAdderResult, memAdderResult_out);

    register5bit preg_regDest16(clk, reset, p_memwb_regWrite, regDest_16, regDest_16_out);
    register5bit preg_regDest32(clk, reset, p_memwb_regWrite, regDest_32, regDest_32_out);

    register1bit preg_regWrite_32(clk, reset, p_memwb_regWrite, regWrite_32, regWrite_32_out);
    register1bit preg_regWrite_16(clk, reset, p_memwb_regWrite, regWrite_16, regWrite_16_out);
    register1bit preg_memAdderSel(clk, reset, p_memwb_regWrite, aluMemSelect, aluMemSelect_out);

endmodule //pipeline_MEM_WB ends


module registerSet_WB_dependency (input clk, input reset, input rs_wbd_regWrite,
	input regWrite_32, input regWrite_16, input [4:0] regDest_32, input [4:0] regDest_16,
	input [31:0] writeData_32, input [31:0] writeData_16,
	output regWrite_32_out, output regWrite_16_out, output [4:0] regDest_32_out, output [4:0] regDest_16_out,
	output [31:0] writeData_32_out, output [31:0] writeData_16_out);

	register32bit rsreg_wbd_wd32(clk, reset, rs_wbd_regWrite, writeData_32, writeData_32_out);
	register32bit rsreg_wbd_wd16(clk, reset, rs_wbd_regWrite, writeData_16, writeData_16_out);

	register5bit rsreg_wbd_rd32(clk, reset, rs_wbd_regWrite, regDest_32, regDest_32_out);
	register5bit rsreg_wbd_rd16(clk, reset, rs_wbd_regWrite, regDest_16, regDest_16_out);

	register1bit rsreg_wbd_regwr32(clk, reset, rs_wbd_regWrite, regWrite_32, regWrite_32_out);
	register1bit rsreg_wbd_regwr16(clk, reset, rs_wbd_regWrite, regWrite_16, regWrite_16_out);

endmodule // registerSet_WB_dependency ends
