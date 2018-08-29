//Register File desgin begins
module D_ff (input clk, input reset, input regWrite1, input decOut1b1, input regWrite2, input decOut1b2, input d1, input d2, output reg q);
	always @ (posedge clk)
	begin
	if(reset==1'b1)
		q=0;
	else
		if(regWrite1 == 1'b1 && decOut1b1 ==1'b1) begin q=d1; end
		if(regWrite2 == 1'b1 && decOut1b2 ==1'b1) begin q=d2; end
	end
endmodule

module register32bit( input clk, input reset, input regWrite1, input decOut1b1, input regWrite2, input decOut1b2, input [31:0] writeData1, input [31:0] writeData2, output  [31:0] outR );
	D_ff d0(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[0], writeData2[0], outR[0]);
	D_ff d1(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[1], writeData2[1], outR[1]);
	D_ff d2(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[2], writeData2[2], outR[2]);
	D_ff d3(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[3], writeData2[3], outR[3]);
	D_ff d4(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[4], writeData2[4], outR[4]);
	D_ff d5(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[5], writeData2[5], outR[5]);
	D_ff d6(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[6], writeData2[6], outR[6]);
	D_ff d7(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[7], writeData2[7], outR[7]);
	D_ff d8(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[8], writeData2[8], outR[8]);
	D_ff d9(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[9], writeData2[9], outR[9]);
	D_ff d10(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[10], writeData2[10], outR[10]);
	D_ff d11(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[11], writeData2[11], outR[11]);
	D_ff d12(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[12], writeData2[12], outR[12]);
	D_ff d13(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[13], writeData2[13], outR[13]);
	D_ff d14(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[14], writeData2[14], outR[14]);
	D_ff d15(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[15], writeData2[15], outR[15]);
  D_ff d16(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[16], writeData2[16], outR[16]);
	D_ff d17(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[17], writeData2[17], outR[17]);
	D_ff d18(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[18], writeData2[18], outR[18]);
	D_ff d19(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[19], writeData2[19], outR[19]);
	D_ff d20(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[20], writeData2[20], outR[20]);
	D_ff d21(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[21], writeData2[21], outR[21]);
	D_ff d22(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[22], writeData2[22], outR[22]);
	D_ff d23(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[23], writeData2[23], outR[23]);
  D_ff d24(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[24], writeData2[24], outR[24]);
	D_ff d25(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[25], writeData2[25], outR[25]);
	D_ff d26(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[26], writeData2[26], outR[26]);
	D_ff d27(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[27], writeData2[27], outR[27]);
	D_ff d28(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[28], writeData2[28], outR[28]);
	D_ff d29(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[29], writeData2[29], outR[29]);
	D_ff d30(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[30], writeData2[30], outR[30]);
	D_ff d31(clk, reset, regWrite1, decOut1b1, regWrite2, decOut1b2, writeData1[31], writeData2[31], outR[31]);
endmodule

module registerSet( input clk, input reset, input regWrite1, input [7:0] decOut1, input regWrite2, input [7:0] decOut2, input [31:0] writeData1, input [31:0] writeData2, output [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7 );
		register32bit r0( clk, reset, regWrite1, decOut1[0], regWrite2, decOut2[0], writeData1, writeData2, outR0 );
		register32bit r1( clk, reset, regWrite1, decOut1[1], regWrite2, decOut2[1], writeData1, writeData2, outR1 );
		register32bit r2( clk, reset, regWrite1, decOut1[2], regWrite2, decOut2[2], writeData1, writeData2, outR2 );
		register32bit r3( clk, reset, regWrite1, decOut1[3], regWrite2, decOut2[3], writeData1, writeData2, outR3 );
		register32bit r4( clk, reset, regWrite1, decOut1[4], regWrite2, decOut2[4], writeData1, writeData2, outR4 );
		register32bit r5( clk, reset, regWrite1, decOut1[5], regWrite2, decOut2[5], writeData1, writeData2, outR5 );
		register32bit r6( clk, reset, regWrite1, decOut1[6], regWrite2, decOut2[6], writeData1, writeData2, outR6 );
		register32bit r7( clk, reset, regWrite1, decOut1[7], regWrite2, decOut2[7], writeData1, writeData2, outR7 );
endmodule

module decoder3to8( input [2:0] destReg, output reg [7:0] decOut);
  always @(destReg)
    begin
      case(destReg)
        3'b000: decOut = 8'b00000001;
        3'b001: decOut = 8'b00000010;
        3'b010: decOut = 8'b00000100;
        3'b011: decOut = 8'b00001000;
        3'b100: decOut = 8'b00010000;
        3'b101: decOut = 8'b00100000;
        3'b110: decOut = 8'b01000000;
        3'b111: decOut = 8'b10000000;
    endcase
  end
endmodule

module mux8to1(input [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7, input [2:0] Sel, output reg [31:0] muxOut );
  always @(Sel or outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7)
  begin
    case(Sel)
      3'b000 : muxOut = outR0;
      3'b001 : muxOut = outR1;
      3'b010 : muxOut = outR2;
      3'b011 : muxOut = outR3;
      3'b100 : muxOut = outR4;
      3'b101 : muxOut = outR5;
      3'b110 : muxOut = outR6;
      3'b111 : muxOut = outR7;
  endcase
end
endmodule

module registerFile(input clk, input reset, input regWrite1, input regWrite2, input [2:0] srcRegA, input [2:0] srcRegB, input [2:0] srcRegC, input [2:0] srcRegD,
	input [2:0] writeReg1,  input [2:0] writeReg2, input [31:0] writeData1, input [31:0] writeData2, output [31:0] outBusA, output [31:0] outBusB, output [31:0] outBusC, output [31:0] outBusD );

 	wire [7:0] decOut1;
 	wire [7:0] decOut2;

	wire [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7;

	decoder3to8 decoder1_insideRegisterFile(writeReg1, decOut1);
	decoder3to8 decoder2_insideRegisterFile(writeReg2, decOut2);

  registerSet rSet0(clk, reset, regWrite1, decOut1, regWrite2, decOut2, writeData1, writeData2, outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);

 	mux8to1 m1_insideRegisterFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegA,outBusA);
 	mux8to1 m2_insideRegisterFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegB,outBusB);
 	mux8to1 m3_insideRegisterFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegC,outBusC);
 	mux8to1 m4_insideRegisterFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegD,outBusD);

endmodule
//Register File desgin ends
