module alu(input [7:0] in1, input [7:0] in2, input [1:0] aluOp, output reg [7:0] aluResult );

  always @ ( in1 or in2 or aluOp )

    begin

      case(aluOp)
        2'b00: begin aluResult= 0 ; end
        2'b01: begin aluResult = in1 + in2; end
        2'b10: begin aluResult = in1 && in2; end
        2'b11: begin aluResult = 0; end
      endcase

    end

endmodule
module comparator(input signed [7:0] in1, input signed [7:0] in2, output reg comparatorOut);
	always@(in1 or in2)
	begin
		if(in1==in2)
			comparatorOut=1'b1;
		else
			comparatorOut=1'b0;
	end
endmodule

module branchAdder(input [7:0] in1, input [7:0] in2, output reg [7:0] branchAddr);

always @ ( in1 or in2 ) begin
    branchAddr = in1 + in2;
end

endmodule

module branchCtrlHazard ( input comparatorOut, input branchInstr,
    output reg branchPcSrc, output reg IFID_flush);

    always @(comparatorOut or branchInstr)
    begin
        if(branchInstr == 1'b1)
        begin
            if(comparatorOut == 1'b1 && branchInstr == 1'b1)
            begin
                branchPcSrc = 1'b1;
                IFID_flush = 1'b1;
            end

            else
            begin
                branchPcSrc = 1'b0;
                IFID_flush = 1'b0;
            end
        end

    end

endmodule // branchCtrlHazard ends
  module controlUnit(input [1:0] opcode, output reg branch, output reg [1:0] aluOp, output reg regWrite);

  always@(opcode)
    begin
        case(opcode)

        2'b00: begin branch=1'b0; aluOp=opcode; regWrite=1'b0; end
        2'b01: begin branch=1'b0; aluOp=opcode; regWrite=1'b1; end
        2'b10: begin branch=1'b0; aluOp=opcode; regWrite=1'b1; end
        2'b11: begin branch=1'b1; aluOp=opcode; regWrite=1'b0; end

        endcase
    end

endmodule
module forwardOperand(input [2:0] rs, input [2:0] rt, input [2:0] rdOutEx, input regWriteEx, output reg fwd);

always@(regWriteEx or rs or rt or rdOutEx)
begin

    fwd=1'b1;


    if (rs==rdOutEx && regWriteEx==1'b1) begin fwd=1'b0; end

    else if (rt==rdOutEx && regWriteEx==1'b1) begin fwd=1'b0; end

end
endmodule
// PC

// Flip flops for the PC register
module D_ff_PC(input clk, input reset, input regWrite, input d, output reg q);
	always@(negedge clk)
		begin
			if(reset)
				q=0;
			else
				if(regWrite == 1) begin q=d; end
		end
endmodule
// PC register
module register8bit_PC(input clk, input reset, input regWrite, input [7:0] writeData, output  [7:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	D_ff_PC d2(clk,reset,regWrite,writeData[2],outR[2]);
	D_ff_PC d3(clk,reset,regWrite,writeData[3],outR[3]);
	D_ff_PC d4(clk,reset,regWrite,writeData[4],outR[4]);
	D_ff_PC d5(clk,reset,regWrite,writeData[5],outR[5]);
	D_ff_PC d6(clk,reset,regWrite,writeData[6],outR[6]);
	D_ff_PC d7(clk,reset,regWrite,writeData[7],outR[7]);
endmodule

// End of PC

module adderPC(input [7:0] pcOut, input fwd, output reg [7:0] pcAdderOut);

	always @ (pcOut) begin
		if (fwd == 1'b1) pcAdderOut = pcOut + 8'b0000_0010;
	end

endmodule

module mux2to1_8bit(input [7:0] in1, input [7:0] in2, input sel, output reg [7:0] muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule
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
     		D_ff d2(clk, reset, regWrite, dataIn[2], regOut[2]);
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

/*module register16bit(input clk, input reset, input regWrite, input [15:0] dataIn, output [15:0] regOut);
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
endmodule*/


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



module IF_ID(input clk, input reset, input ifidWrite, input flush, input [15:0] instrIn, input [7:0] pcIn,
            output [15:0] instrOut, output [7:0] pcOut);

      register8bit_flush pc(clk, reset, flush, ifidWrite, pcIn, pcOut);
      register16bit_flush instr(clk, reset, flush,  ifidWrite, instrIn, instrOut);

endmodule



module ID_EX(input clk, input reset, input idexWrite, input regWrite, input flush, input [1:0] aluOp, input branch, input [7:0] pcIn,
             input [2:0] rs, input [2:0] rt, input [7:0] regRs, input [7:0] regRt, input [2:0] rd, output [7:0] regRsOut,
	 output [7:0] pcOut, output [7:0] regRtOut, output regWriteOut, output branchOut, output [1:0] aluOpOut, output [2:0] rdOut, output [2:0] rsOut, output [2:0] rtOut);

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


module EX_WB(input clk, input reset, input exwbWrite, input regWrite, input [2:0] rd, input [7:0] aluResult, output regWriteOut, output [2:0] rdOut, output [7:0] Result);

      register1bit regWr(clk, reset, exwbWrite, regWrite, regWriteOut);

      register3bit rd1(clk, reset, exwbWrite, rd, rdOut);

      register8bit aluResult1(clk, reset, exwbWrite, aluResult, Result);
endmodule
//Register File: 8 registers of 8 bits each

module decoder3to8(input [2:0] destReg, output reg [7:0] decOut);
	always @(destReg)
	begin
		case(destReg)
			3'd0: decOut = 8'b0000_0001;
			3'd1: decOut = 8'b0000_0010;
			3'd2: decOut = 8'b0000_0100;
			3'd3: decOut = 8'b0000_1000;
			3'd4: decOut = 8'b0001_0000;
			3'd5: decOut = 8'b0010_0000;
			3'd6: decOut = 8'b0100_0000;
			3'd7: decOut = 8'b1000_0000;
		endcase
	end
endmodule

module mux8to1(input [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7, input [2:0] Sel, output reg [7:0] outBus );

	always@(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7, Sel)
		case (Sel)
			3'd0: outBus = outR0;
			3'd1: outBus = outR1;
			3'd2: outBus = outR2;
			3'd3: outBus = outR3;
			3'd4: outBus = outR4;
			3'd5: outBus = outR5;
			3'd6: outBus = outR6;
			3'd7: outBus = outR7;
		endcase
endmodule

module D_ff_reg(input clk, input reset, input regWrite, input decOut, input d, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1)
		q=0;
	else
		if(regWrite == 1 && decOut==1)
		begin
			q=d;
		end
	end
endmodule


module register8bit_regFile( input clk, input reset, input regWrite, input decOut, input [7:0] writeData, output  [7:0] outR );

	D_ff_reg d0(clk, reset, regWrite, decOut, writeData[0], outR[0]);
	D_ff_reg d1(clk, reset, regWrite, decOut, writeData[1], outR[1]);
	D_ff_reg d2(clk, reset, regWrite, decOut, writeData[2], outR[2]);
	D_ff_reg d3(clk, reset, regWrite, decOut, writeData[3], outR[3]);
	D_ff_reg d4(clk, reset, regWrite, decOut, writeData[4], outR[4]);
	D_ff_reg d5(clk, reset, regWrite, decOut, writeData[5], outR[5]);
	D_ff_reg d6(clk, reset, regWrite, decOut, writeData[6], outR[6]);
	D_ff_reg d7(clk, reset, regWrite, decOut, writeData[7], outR[7]);

endmodule

module registerSet( input clk, input reset, input regWrite, input [7:0] decOut, input [7:0] writeData, output [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);

		assign outR0 = 8'b0000_0000;
		assign outR1 = 8'b0000_0001;
		assign outR2 = 8'b0000_0010;
		assign outR3 = 8'b0000_0000;
		assign outR4 = 8'b0000_0000;
		assign outR5 = 8'b0000_0101;
		assign outR6 = 8'b0000_0000;
		assign outR7 = 8'b0000_0000;



		register8bit_regFile r0( clk, reset, regWrite, decOut[0], writeData, outR0 );
		register8bit_regFile r1( clk, reset, regWrite, decOut[1], writeData, outR1 );
		register8bit_regFile r2( clk, reset, regWrite, decOut[2], writeData, outR2 );
		register8bit_regFile r3( clk, reset, regWrite, decOut[3], writeData, outR3 );
		register8bit_regFile r4( clk, reset, regWrite, decOut[4], writeData, outR4 );
		register8bit_regFile r5( clk, reset, regWrite, decOut[5], writeData, outR5 );
		register8bit_regFile r6( clk, reset, regWrite, decOut[6], writeData, outR6 );
		register8bit_regFile r7( clk, reset, regWrite, decOut[7], writeData, outR7 );
endmodule

module registerFile(input clk, input reset, input regWrite, input [2:0] rs, input [2:0] rt, input [2:0] rd,
			input [7:0] writeData, output [7:0] regrs, output [7:0] regrt);

 	wire [7:0] decOut;
	wire [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7;

	decoder3to8 dec1_inRegFile(rd, decOut);

	registerSet regSet(clk, reset, regWrite, decOut, writeData, outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
 	mux8to1 mux1_inRegFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,rs,regrs);
 	mux8to1 mux2_inRegFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,rt,regrt);


endmodule

//Module Data memory
module memorycell(input [7:0] address, output reg [15:0] data);
  //output reg [15:0] data;
  //input [1:0]rw;
  //input [7:0]inp;
  //input [7:0]address;
  reg [7:0]mem[0:100];
  initial
  begin
    //ins memory
    mem[0]=8'b0000_0011;
    mem[1]=8'b0100_0101;
    mem[2]=8'b0000_0100;
    mem[3]=8'b0110_0101;
    mem[4]=8'b0000_0100;
    mem[5]=8'b1001_0101;
    mem[6]=8'b0000_0100;
    mem[7]=8'b1000_0111;
    mem[8]=8'b0000_0111;
    mem[9]=8'b1101_0110;
    mem[10]=8'b0000_0000;
    mem[11]=8'b0000_0000;
    mem[12]=8'b0000_0111;
    mem[13]=8'b1101_0101;
    mem[14]=8'b0;
    mem[15]=8'b0;
    mem[16]=8'b0;
    mem[17]=8'b0;
    mem[18]=8'b0;
    mem[19]=8'b0;
    mem[20]=8'b0;
end

  always@(address)
  begin
     data={mem[address][7:0],mem[address+1'b1][7:0]};
  end

endmodule

module mainmodule(input clk, input reset, output [7:0] Result);

wire [7:0] PCIn, PCOut;
wire fwd;
wire [7:0] branchPCMuxout;
register8bit_PC PC(clk, reset, 1'b1, branchPCMuxout, PCOut);

wire [7:0] PCadderOut;

wire [7:0] branchAddr;
wire branchPCSig;

adderPC PCnew(PCOut, 1'b1, PCadderOut);
wire [15:0] instrIn;
mux2to1_8bit PCMux(PCadderOut, 8'h6, 1'b0, branchPCMuxout);
//Instruction_Memory im1( branchPCMuxout, reset, instrIn);
memorycell m1(branchPCMuxout, instrIn);

wire ifidWrite, ifidflush;
wire [7:0] ifidPcOut;
wire [15:0] PCinstrOut;
IF_ID p1(clk, reset, 1'b1, 1'b0 , instrIn, PCadderOut, PCinstrOut, ifidPcOut);

wire branch, regWrite;
wire [1:0] aluOp;
controlUnit C1(PCinstrOut[15:14], branch, aluOp, regWrite);

wire [7:0] writeData, regrs, regrt;
wire regWriteOut;
wire [2:0] rdOut;
registerFile R1(clk, reset, regWriteOut, PCinstrOut[13:11], PCinstrOut[10:8], rdOut, Result, regrs, regrt);


wire comparatorOut;

//comparator C2(regrs, regrt, comparatorOut);

//branchAdder b2(ifidPcOut, PCinstrOut[7:0], branchAddr);

//branchCtrlHazard b1( comparatorOut, branch, branchPCSig, ifidflush);


wire idexWrite, idexflush, p2_regWriteOut,p2_branchOut;
wire [1:0] p2_aluOpOut;
wire [2:0] p2_rs, p2_rt, p2_rd, p2_rdOut;
wire [7:0] regRs, regRt, p2_pcOut, p2_regRsOut,p2_regRtOut, regRtOut, idexpcIn;

ID_EX p2(clk, reset, 1'b1, regWrite, 1'b0, aluOp, branch, ifidPcOut,
        PCinstrOut[13:11], PCinstrOut[10:8], regrs, regrt, PCinstrOut[7:5], p2_regRsOut,
        p2_pcOut, p2_regRtOut, p2_regWriteOut,p2_branchOut, p2_aluOpOut, p2_rd, p2_rs, p2_rt);



//forwardOperand F1(p2_rs, p2_rt, rdOut, regWriteOut, fwd);

wire [7:0] aluResult;

alu a1(p2_regRsOut, p2_regRtOut, p2_aluOpOut, aluResult );


EX_WB p3( clk, reset, 1'b1, p2_regWriteOut, p2_rd, aluResult, regWriteOut, rdOut, Result);

endmodule


module projectTestBench;
	reg clk;
	reg reset;
	wire [7:0] Result;

	mainmodule uut (clk, reset, Result);

	initial
	begin
		clk=1; reset=1;
		#10  reset=0;

		#500 $finish;
	end

	always
	#5 clk=~clk;


endmodule
