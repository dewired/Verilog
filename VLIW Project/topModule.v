module topmodule(input clk, input reset, output [31:0] aluOut, output [31:0] memOut);

	wire PCWrite;
	wire [31:0] PCIn, PCOut;

	register32bit_PC PC(clk, reset, PCWrite, PCIn, PCOut); 
	
	wire [31:0] PCadderOut;
	
	wire [31:0] branchAddr,jumpAddr, branchPCMuxout;
	wire branchPCSig, jumpPCSig;
	
	adder adderPC(PCOut,32'd4, PCadderOut);
	
	mux2to1_32bit branchPCMux(PCadderOut, branchAddr, branchPCSig, branchPCMuxout);
	mux2to1_32bit jumpPCMux(branchPCMuxout,jumpAddr, jumpPCSig, PCIn);
	
	wire [47:0] IR;
	
	testIM IM(clk,reset,PCOut[4:0],IR);
	
	wire p_ifid_regWrite,ifidflush;
	wire [31:0] p_ifid_PCadderout;
	wire [47:0] p_IR;
	
	pipeline_IF_ID pipeIFID(clk,reset,p_ifid_regWrite,ifidflush,PCadderOut,IR,p_ifid_PCadderout,p_IR);
	
	wire jump,branch,regWrite_32;
	wire [1:0] aluOp,aluSrcB,writeDataSel_32;
	control_circuit_32 ctrlCkt32(p_IR[6:0],p_IR[14:12],p_IR[31:25],jump,branch,aluSrcB,aluOp,writeDataSel_32,regWrite_32);
	
	wire rs2_16Sel,adderSrcA,adderSrcB,regDest16_Sel,memRead,memWrite,aluMemSelect,regWrite_16;
	control_circuit_16 ctrlCkt16(p_IR[33:32],p_IR[47:44],rs2_16Sel,adderSrcA,adderSrcB,regDest16_Sel,memRead,memWrite,aluMemSelect,regWrite_16);
	
	wire [4:0] rs2_16;
	mux2to1_5bit rs2_16mux(p_IR[38:34],{2'b0,p_IR[36:34]},rs2_16Sel,rs2_16);
	
	wire idexmemRead,idexregWrite_16,pcWrSigLUH,ifidWrLUH,flushCtrlSigLUH,branchDataHazEnable,idexregWrite_32,exmemregWrite_16,exmem_memRead,branchControlHazEnable,pcWriteBDH,ifidWrBDH,flushCtrlSigBDH,comparatorOut;
	wire [1:0] stallA,stallB;
	wire [4:0] idexregDest16,idexrd_32, idexrd_16_mv,exmemregDest16;
	loadUseHazard LUH(idexmemRead,idexregWrite_16,idexregDest16,{2'b0,p_IR[41:39]},rs2_16,p_IR[19:15],p_IR[24:20],
						pcWrSigLUH,ifidWrLUH,flushCtrlSigLUH,branchDataHazEnable);
	branchDataHazard BDH(branchDataHazEnable,branch,p_IR[19:15],p_IR[24:20],idexrd_32, idexrd_16_mv,exmemregDest16,idexregWrite_32,idexregWrite_16,exmemregWrite_16,exmem_memRead,
						branchControlHazEnable,stallA,stallB,pcWriteBDH,ifidWrBDH,flushCtrlSigBDH);
	
	wire memwbregWrite_32,memwbregWrite_16;
	wire [4:0] memwbregDest16,memwbregDest32;
	wire [31:0] memwbwriteData32,memwbwriteData16,regrs1_16,regrs1_32,regrs2_16,regrs2_32;
	registerFile regFile(clk,reset,memwbregWrite_32,memwbregWrite_16,p_IR[19:15],p_IR[24:20],{2'b0,p_IR[41:39]},rs2_16,
						 memwbregDest32,memwbregDest16,memwbwriteData32,memwbwriteData16,regrs1_32,regrs2_32,regrs1_16,regrs2_16);
	
	assign PCWrite=pcWrSigLUH & pcWriteBDH;
	assign p_ifid_regWrite=ifidWrLUH & ifidWrBDH;
	assign flushCtrlSig=flushCtrlSigLUH | flushCtrlSigBDH;
	
	wire [31:0] sextImm13;
	signExt12to32 sextbranchaddr({p_IR[31],p_IR[7],p_IR[30:25],p_IR[11:8]},branchAddr);
	signExt13to32 sextjumpaddr({p_IR[31:20],0},sextImm13);
	
	adder branchAddrAdder(sextImm13,regrs1_32,jumpAddr);
	
	wire [31:0] addiext,sltext,sraiext;
	signExt12to32 sextaddi(p_IR[31:20],addiext);
	assign sltext={20'b0,p_IR[31:20]};
	zeroExt5to32 zext(p_IR[24:20],sraiext);
	
	wire [31:0] regrs1_32in,regrs2_32in,exmemadderOut,writeData_32;
	wire [1:0] stallAout,stallBout;
	
	mux4to1_32bit regFilemuxA(regrs1_32,writeData_32,exmemadderOut,memwbwriteData16,stallAout,regrs1_32in);
	mux4to1_32bit regFilemuxB(regrs2_32,writeData_32,exmemadderOut,memwbwriteData16,stallBout,regrs2_32in);
	
	comparator_neg comp(regrs1_32in,regrs2_32in,comparatorOut);
	
	branchCtrlHazard BCH(branchControlHazEnable,comparatorOut,branch,jump,
						branchPCSig,jumpPCSig,ifidflush);

	wire regWrite_32in,regWrite_16in,regDest16_Selin,memReadin,memWritein,adderSrcAin,adderSrcBin,aluMemSelectin;
	wire [1:0] aluOpin,aluSrcBin,writeDataSel_32in;
	
	mux2to1_2bit maluOp(aluOp,2'b00,flushCtrlSig,aluOpin);
	mux2to1_2bit maluSrcB(aluSrcB,2'b00,flushCtrlSig,aluSrcBin);
	mux2to1_1bit mregWrite_32(regWrite_32,1'b0,flushCtrlSig,regWrite_32in);
	mux2to1_1bit mregWrite_16(regWrite_16,1'b0,flushCtrlSig,regWrite_16in);
	mux2to1_2bit mWDS16(writeDataSel_32,2'b00,flushCtrlSig,writeDataSel_32in);
	mux2to1_1bit mRDS16(regDest16_Sel,1'b0,flushCtrlSig,regDest16_Selin);
	mux2to1_1bit mmemrd(memRead,1'b0,flushCtrlSig,memReadin);
	mux2to1_1bit mmemwrite(memWrite,1'b0,flushCtrlSig,memWritein);
	mux2to1_1bit maddsrca(adderSrcA,1'b0,flushCtrlSig,adderSrcAin);
	mux2to1_1bit maddsrcb(adderSrcB,1'b0,flushCtrlSig,adderSrcBin);
	mux2to1_1bit mams(aluMemSelect,1'b0,flushCtrlSig,aluMemSelectin);	
	
	wire [31:0] idexpc, idexregrs1_32,idexregrs2_32,idexregrs1_16,idexregrs2_16, idexmemaddr,idexaddi,idexslti,idexsrai;
	wire idexregdest_16sel,idexmemWrite,idexadderSrcA,idexadderSrcB,idexaluMemSelect;
	wire [4:0] idexrs1_32,idexrs2_32,idexrs1_16,idexrs2_16,idexrd_16_lw;
	wire [1:0] idexaluOP,idexaluSrcB,idexwriteDataSel_32;
	
	pipeline_ID_EX pipeIDEX(clk,reset,1'b1,p_ifid_PCadderout,
							aluOpin,aluSrcBin,
							regWrite_32in,regWrite_16in,regrs1_32in,regrs2_32in,regrs1_16,regrs2_16,writeDataSel_32in,
							p_IR[19:15],p_IR[24:20],{2'b0,p_IR[41:39]},rs2_16,
							p_IR[11:7],p_IR[43:39],{2'b0,p_IR[36:34]},regDest16_Selin,
							{25'd0,p_IR[37],p_IR[44:42],p_IR[38],2'b0},addiext,sltext,sraiext,
							memReadin,memWritein,adderSrcAin,adderSrcBin,aluMemSelectin,
							stallA,stallB,
							idexpc,idexaluOP,idexaluSrcB,
							idexregWrite_32,idexregWrite_16,idexregrs1_32,idexregrs2_32,idexregrs1_16,idexregrs2_16,idexwriteDataSel_32,
							idexrs1_32,idexrs2_32,idexrs1_16,idexrs2_16,
							idexrd_32,idexrd_16_mv,idexrd_16_lw,idexregdest_16sel,
							idexmemaddr,idexaddi,idexslti,idexsrai,
							idexmemRead,idexmemWrite,idexadderSrcA,idexadderSrcB,idexaluMemSelect,
							stallAout,stallBout);
								
	wire [2:0] fwdmuxA_32,fwdmuxB_32,fwdmuxA_16,fwdmuxB_16;
	wire exmemregWrite_32,wbregregWrite_16,wbregregWrite_32;
	wire [4:0] exmemrd_32, wbregregDest32,wbregregDest16;
	forwarding_circuit fc(idexrs1_32,idexrs2_32,idexrs1_16,idexrs2_16,
						  exmemrd_32,memwbregDest32,wbregregDest32,exmemregDest16,memwbregDest16,wbregregDest16,
						  exmemregWrite_32,memwbregWrite_32,wbregregWrite_32,exmemregWrite_16,memwbregWrite_16,wbregregWrite_16,
						  fwdmuxA_32,fwdmuxB_32,fwdmuxA_16,fwdmuxB_16);

	wire [31:0] fwdmux16Aout,fwdmux16Bout,fwdmux32Aout,fwdmux32Bout, wbregwriteData32,wbregwriteData16;
							
	mux8to1_32bit fwdmux32A(idexregrs1_32,exmemadderOut,writeData_32,memwbwriteData16,memwbwriteData32,wbregwriteData16,wbregwriteData32,32'd0,fwdmuxA_32,fwdmux32Aout);
	mux8to1_32bit fwdmux32B(idexregrs2_32,exmemadderOut,writeData_32,memwbwriteData16,memwbwriteData32,wbregwriteData16,wbregwriteData32,32'd0,fwdmuxB_32,fwdmux32Bout);
	mux8to1_32bit fwdmux16A(idexregrs1_16,exmemadderOut,writeData_32,memwbwriteData16,memwbwriteData32,wbregwriteData16,wbregwriteData32,32'd0,fwdmuxA_16,fwdmux16Aout);
	mux8to1_32bit fwdmux16B(idexregrs2_16,exmemadderOut,writeData_32,memwbwriteData16,memwbwriteData32,wbregwriteData16,wbregwriteData32,32'd0,fwdmuxB_16,fwdmux16Bout);
	
	wire [31:0] aluInB;
	mux4to1_32bit aluSrcBmux(fwdmux32Bout,idexsrai,idexaddi,idexslti,idexaluSrcB,aluInB);
	
	wire aluexout;
	wire negFlag;
	ALU alu(fwdmux32Aout,aluInB,idexaluOP,aluexout,negFlag);
	
	wire [31:0] adderInA, adderInB,adderOut;
	mux2to1_32bit adderSrcAmux(32'd0,fwdmux16Aout,idexadderSrcA,adderInA);
	mux2to1_32bit adderSrcBmux(fwdmux16Bout,idexmemaddr,idexadderSrcB,adderInB);
	
	adder exadder(adderInA,adderInB,adderOut);
	
	mux2to1_32bit mux32(idexrd_16_mv,idexrd_16_lw,idexregdest_16sel,idexregDest16);
	
	wire [31:0] exmempc, exmemaluOut,exmemaddressOut;
	wire exmem_memWrite,exmemaluMemSel,temp;
	wire [1:0] exmemwriteDataSel_32;
	
	mux2to1_1bit sltiusel(idexwriteDataSel_32[0],(idexwriteDataSel_32[1]&negFlag),idexwriteDataSel_32[1],temp);
	
	pipeline_EX_MEM pipe_ex_mem(clk,reset,1'b1,idexpc,
								idexregWrite_32,idexregWrite_16,idexregDest16,idexrd_32,{idexwriteDataSel_32[1],temp},
								idexmemRead,idexmemWrite,idexaluMemSelect,
								aluexout,adderOut,fwdmux16Bout,
								exmempc,
								exmemregWrite_32,exmemregWrite_16,exmemregDest16,exmemrd_32,exmemwriteDataSel_32,
								exmem_memRead,exmem_memWrite,exmemaluMemSel,
								exmemaluOut,exmemadderOut,exmemaddressOut);
	
	mux4to1_32bit WDS32(exmemaluOut,exmempc,32'd0,32'd1,exmemwriteDataSel_32,writeData_32);
	
	wire [31:0] DMOut;
	testDM DM(clk,reset,exmem_memRead,exmem_memWrite,exmemadderOut,exmemaddressOut,DMOut);
	
	wire memwbaluMemSel;
	wire [31:0] memwbDMOut,memwbadderOut;
	
	pipeline_MEM_WB pipe_MEM_WB(clk,reset,1'b1,exmemregWrite_32,exmemregWrite_16,exmemregDest16,exmemrd_32,
								writeData_32,DMOut,exmemadderOut,exmemaluMemSel,
								memwbregWrite_32,memwbregWrite_16,memwbregDest16,memwbregDest32,
								memwbwriteData32,memwbDMOut,memwbadderOut,memwbaluMemSel);
								
	mux2to1_32bit alumemselmux(memwbadderOut,memwbDMOut,memwbaluMemSel,memwbwriteData16);
	
	registerSet_WB_dependency postwbreg(clk,reset,1'b1,memwbregWrite_32,memwbregWrite_16,memwbregDest32,memwbregDest16,memwbwriteData32,memwbwriteData16,
									wbregregWrite_32,wbregregWrite_16,wbregregDest32,wbregregDest16,wbregwriteData32,wbregwriteData16);
									
	assign aluOut=memwbwriteData32;
	assign memOut=memwbwriteData16;
								
	
endmodule
