module main(input clk, input reset, out reg [7:0] Result);

wire [7:0] PCIn, PCOut;
wire fwd;

register8bit_PC PC(clk, reset, fwd, branchPCMuxout, PCOut);

wire [7:0] PCadderOut;

wire [31:0] branchAddr, branchPCMuxout;
wire branchPCSig;

adderPC PCnew(PCOut, PCadderOut);

mux2to1_8bit PCMux(PCadderOut, branchAddr, branchPCSig, branchPCMuxout);
wire [15:0] instrIn, PCinstrOut;
//Instruction_Memory im1( branchPCMuxout, output [7:0] instrIn);
memorycell m1(branchPCMuxout, instrIn);
wire ifidWrite, ifidflush;
wire [7:0] ifidPcOut;

IF_ID p1(clk, reset, (~fwd), ifidflush , instrIn, PCadderOut, PCinstrOut, ifidPcOut);

wire branch, regWrite;
wire [1:0] aluOp;
controlUnit C1(PCinstrOut[15:14], branch, aluOp, regWrite);

wire [7:0] writeData, regrs, regrt;

wire regWriteOut;
wire [2:0] rdOut;
registerFile R1(clk, reset, regWriteOut, PCinstrOut[13:11], PCinstrOut[10:8], rdOut, Result, regrs, regrt);


wire comparatorOut;

comparator C2(regRs, regRt, comparatorOut);

branchAdder b2(ifidPcOut, PCinstrOut[7:0], branchAddr);

branchCtrlHazard b1( comparatorOut, PCinstrOut[15:14], branchPCSig, ifidflush);


wire idexWrite, idexflush, p2_regWriteOut,p2_branchOut;
wire [1:0] p2_aluOpOut;
wire [2:0] p2_rdOut
wire [7:0] p2_rs, p2_rt, p2_rd, p2_regRsOut,p2_regRtOut, regRtOut, idexpcIn;

ID_EX p2(clk, reset, (~fwd), input p2_regWrite, input idexflush, aluOp, branch, idexpcIn,
        PCinstrOut[13:11], PCinstrOut[10:8], regRs, regRt, PCinstrOut[7:5], p2_regRsOut,
        p2_regRtOut, p2_regWriteOut,p2_branchOut, p2_aluOpOut, p2_rd, p2_rs, p2_rt);



forwardOperand F1(p2_rs, p2_rt, rdOut, regWriteOut, fwd);

wire [7:0] aluResult, Result;

alu a1(p2_regRsOut, p2_regRtOut, p2_aluOpOut, aluResult );

EX_WB p3( clk, reset, (~fwd), p2_regWriteOut, p2_rd, aluResult, regWriteOut, rdOut, Result);

endmodule
