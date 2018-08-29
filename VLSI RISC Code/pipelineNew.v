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

module register3bit(input clk, input reset, input regWrite, input [2:0] dataIn, output [2:0] regOut);
	   D_ff d0(clk, reset, regWrite, dataIn[0], regOut[0]);
     D_ff d1(clk, reset, regWrite, dataIn[1], regOut[1]);
     D_ff d2(clk, reset, regWrite, dataIn[1], regOut[1]);
endmodule

module register8bit(input clk, input reset, input regWrite, input [7:0] dataIn, output  [7:0] regOut);
	D_ff d0(clk, reset, regWrite, dataIn[0], regOut[0]);
	D_ff d1(clk, reset, regWrite, dataIn[1], regOut[1]);
	D_ff d2(clk, reset, regWrite, dataIn[2], regOut[2]);
	D_ff d3(clk, reset, regWrite, dataIn[3], regOut[3]);
	D_ff d4(clk, reset, regWrite, dataIn[4], regOut[4]);
  D_ff d5(clk, reset, regWrite, dataIn[5], regOut[5]);
	D_ff d6(clk, reset, regWrite, dataIn[6], regOut[6]);
	D_ff d7(clk, reset, regWrite, dataIn[7], regOut[7]);
endmodule

module register16bit(input clk, input reset, input regWrite, input [15:0] dataIn, output [15:0] regOut);
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
	D_ff d15(clk, reset, regWrite\, dataIn[15], regOut[15]);
endmodule


module register8bit_flush(input clk, input reset, input regWrite, input flush, input [7:0] dataIn, output [7:0] regOut);
	D_ff_flush d0(clk, reset, regWrite, flush, dataIn[0], regOut[0]);
	D_ff_flush d1(clk, reset, regWrite, flush, dataIn[1], regOut[1]);
	D_ff_flush d2(clk, reset, regWrite, flush, dataIn[2], regOut[2]);
	D_ff_flush d3(clk, reset, regWrite, flush, dataIn[3], regOut[3]);
	D_ff_flush d4(clk, reset, regWrite, flush, dataIn[4], regOut[4]);
	D_ff_flush d5(clk, reset, regWrite, flush, dataIn[5], regOut[5]);
	D_ff_flush d6(clk, reset, regWrite, flush, dataIn[6], regOut[6]);
	D_ff_flush d7(clk, reset, regWrite, flush, dataIn[7], regOut[7]);

endmodule



module register16bit_flush(input clk, input reset, input regWrite, input flush, input [15:0] dataIn, output [15:0] regOut);
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
endmodule



module IF_ID(input clk, input reset, input ifidWrite, input flush, input [15:0] instrIn, input [7:0] pcIn
            output [15:0] instrOut, output [7:0] pcOut);

      register8bit_flush pc(clk, reset, ifidWrite, flush, pcIn, pcOut);
      register16bit_flush instr(clk, reset, ifidWrite, flush, instrIn, instrOut);

endmodule



module ID_EX(input clk, input reset, input idexWrite, input regWrite, input flush, input [1:0] aluOp, input branch, input [7:0] pcIn,
             input [2:0] rs, input [2:0] rt, input [7:0] regRs, input [7:0] regRt, input [2:0] rd, output [7:0] regRsOut,
						 output [7:0] regRtOut, output regWriteOut, output branchOut, output [1:0] aluOpOut, output [2:0] rdOut, output [2:0] rsOut, output [2:0] rtOut);

      register8bit pc(clk, reset, idexWrite, pcIn, pcOut);
      register8bit regRs1(clk, reset, idexWrite, regRs, regRsOut);
      register8bit regRt1(clk, reset, idexWrite, regRt, regRtOut);

      register3bit rd1(clk, reset, idexWrite, rd, rdOut);
			register3bit rs1(clk, reset, idexWrite, rs, rsOut);
			register3bit rt1(clk, reset, idexWrite, rt, rtOut);

      register1bit regWr(clk, reset, idexWrite, regWrite, regWriteOut);
      register1bit branch1(clk, reset, idexWrite, branch, branchOut);

      register2bit aluOp1(clk, reset, idexWrite, aluOp, aluOpOut);

endmodule


module EX_WB(input clk, input reset, input exwbWrite, input regWrite, input rd, input [7:0] aluResult, output regWriteOut, output [2:0] rdOut, output [7:0] Result);

      register1bit regWr(clk, reset, exwbWrite, regWrite, regWriteOut);

      register3bit rd(clk, reset, exwbWrite, rd, rdOut);

      register8bit aluResult(clk, reset, exwbWrite, aluResult, Result);
endmodule
