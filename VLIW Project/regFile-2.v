//Register File: 32 registers of 32 bits each

module decoder5to32(input [4:0] destReg, output reg [31:0] decOut);
	always @(destReg)
	begin
		case(destReg)
			5'd0: decOut = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
			5'd1: decOut = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
			5'd2: decOut = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
			5'd3: decOut = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
			5'd4: decOut = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
			5'd5: decOut = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
			5'd6: decOut = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
			5'd7: decOut = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
			5'd8: decOut = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
			5'd9: decOut = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
			5'd10: decOut = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
			5'd11: decOut = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
			5'd12: decOut = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
			5'd13: decOut = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
			5'd14: decOut = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
			5'd15: decOut = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
			5'd16: decOut = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
			5'd17: decOut = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
			5'd18: decOut = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
			5'd19: decOut = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
			5'd20: decOut = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
			5'd21: decOut = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
			5'd22: decOut = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
			5'd23: decOut = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
			5'd24: decOut = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
			5'd25: decOut = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
			5'd26: decOut = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
			5'd27: decOut = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
			5'd28: decOut = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
			5'd29: decOut = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
			5'd30: decOut = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
			5'd31: decOut = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		endcase
	end
endmodule

module mux32to1(input [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
	outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,
	input [4:0] Sel, output reg [31:0] outBus );
	
	always@(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
		outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,
		Sel)
		case (Sel)
			5'd0: outBus = outR0;
			5'd1: outBus = outR1;
			5'd2: outBus = outR2;
			5'd3: outBus = outR3;
			5'd4: outBus = outR4;
			5'd5: outBus = outR5;
			5'd6: outBus = outR6;
			5'd7: outBus = outR7;
			5'd8: outBus = outR8;
			5'd9: outBus = outR9;
			5'd10: outBus = outR10;
			5'd11: outBus = outR11;
			5'd12: outBus = outR12;
			5'd13: outBus = outR13;
			5'd14: outBus = outR14;
			5'd15: outBus = outR15;
			5'd16: outBus = outR16;
			5'd17: outBus = outR17;
			5'd18: outBus = outR18;
			5'd19: outBus = outR19;
			5'd20: outBus = outR20;
			5'd21: outBus = outR21;
			5'd22: outBus = outR22;
			5'd23: outBus = outR23;
			5'd24: outBus = outR24;
			5'd25: outBus = outR25;
			5'd26: outBus = outR26;
			5'd27: outBus = outR27;
			5'd28: outBus = outR28;
			5'd29: outBus = outR29;
			5'd30: outBus = outR30;
			5'd31: outBus = outR31;
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

//data_write_select helps select the control signal and the data in the WB stage
module data_write_select(input regWrite_32, input decOut1, input regWrite_16, input decOut2, input [31:0] writeData_32, input [31:0] writeData_16, output reg regWrite, output reg decOut, output reg [31:0] writeData);
	always@(regWrite_32 or regWrite_16 or decOut1 or decOut2 or writeData_32 or writeData_16)
	begin
		if(decOut1==0 && decOut2==0)
		begin
			regWrite=1'b0;
			decOut=1'b0;
			writeData= 32'd0;
		end
		else if(decOut1)
		begin
			regWrite=regWrite_32;
			decOut=decOut1;
			writeData=writeData_32;
		end
		else
		begin
			regWrite=regWrite_16;
			decOut=decOut2;
			writeData=writeData_16;
		end
	end
endmodule

module register32bit_regFile( input clk, input reset, input regWrite_32, input decOut1, input regWrite_16, input decOut2, input [31:0] writeData_32, input [31:0] writeData_16, output  [31:0] outR );
	
	wire regWrite,decOut;
	wire [31:0] writeData;
	
	data_write_select dws(regWrite_32,decOut1,regWrite_16,decOut2,writeData_32,writeData_16,regWrite,decOut,writeData);
	
	D_ff_reg d0(clk, reset, regWrite, decOut, writeData[0], outR[0]);
	D_ff_reg d1(clk, reset, regWrite, decOut, writeData[1], outR[1]);
	D_ff_reg d2(clk, reset, regWrite, decOut, writeData[2], outR[2]);
	D_ff_reg d3(clk, reset, regWrite, decOut, writeData[3], outR[3]);
	D_ff_reg d4(clk, reset, regWrite, decOut, writeData[4], outR[4]);
	D_ff_reg d5(clk, reset, regWrite, decOut, writeData[5], outR[5]);
	D_ff_reg d6(clk, reset, regWrite, decOut, writeData[6], outR[6]);
	D_ff_reg d7(clk, reset, regWrite, decOut, writeData[7], outR[7]);
	D_ff_reg d8(clk, reset, regWrite, decOut, writeData[8], outR[8]);
	D_ff_reg d9(clk, reset, regWrite, decOut, writeData[9], outR[9]);
	D_ff_reg d10(clk, reset, regWrite, decOut, writeData[10], outR[10]);
	D_ff_reg d11(clk, reset, regWrite, decOut, writeData[11], outR[11]);
	D_ff_reg d12(clk, reset, regWrite, decOut, writeData[12], outR[12]);
	D_ff_reg d13(clk, reset, regWrite, decOut, writeData[13], outR[13]);
	D_ff_reg d14(clk, reset, regWrite, decOut, writeData[14], outR[14]);
	D_ff_reg d15(clk, reset, regWrite, decOut, writeData[15], outR[15]);
	D_ff_reg d16(clk, reset, regWrite, decOut, writeData[16], outR[16]);
	D_ff_reg d17(clk, reset, regWrite, decOut, writeData[17], outR[17]);
	D_ff_reg d18(clk, reset, regWrite, decOut, writeData[18], outR[18]);
	D_ff_reg d19(clk, reset, regWrite, decOut, writeData[19], outR[19]);
	D_ff_reg d20(clk, reset, regWrite, decOut, writeData[20], outR[20]);
	D_ff_reg d21(clk, reset, regWrite, decOut, writeData[21], outR[21]);
	D_ff_reg d22(clk, reset, regWrite, decOut, writeData[22], outR[22]);
	D_ff_reg d23(clk, reset, regWrite, decOut, writeData[23], outR[23]);
	D_ff_reg d24(clk, reset, regWrite, decOut, writeData[24], outR[24]);
	D_ff_reg d25(clk, reset, regWrite, decOut, writeData[25], outR[25]);
	D_ff_reg d26(clk, reset, regWrite, decOut, writeData[26], outR[26]);
	D_ff_reg d27(clk, reset, regWrite, decOut, writeData[27], outR[27]);
	D_ff_reg d28(clk, reset, regWrite, decOut, writeData[28], outR[28]);
	D_ff_reg d29(clk, reset, regWrite, decOut, writeData[29], outR[29]);
	D_ff_reg d30(clk, reset, regWrite, decOut, writeData[30], outR[30]);
	D_ff_reg d31(clk, reset, regWrite, decOut, writeData[31], outR[31]);
	

endmodule

module registerSet( input clk, input reset, input regWrite_32, input [31:0] decOut1, input regWrite_16, input [31:0] decOut2, input [31:0] writeData_32, input [31:0] writeData_16, output [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31 );
		register32bit_regFile r0( clk, reset, regWrite_32, decOut1[0], regWrite_16, decOut2[0], writeData_32, writeData_16, outR0 );
		register32bit_regFile r1( clk, reset, regWrite_32, decOut1[1], regWrite_16, decOut2[1], writeData_32, writeData_16, outR1 );
		register32bit_regFile r2( clk, reset, regWrite_32, decOut1[2], regWrite_16, decOut2[2], writeData_32, writeData_16, outR2 );
		register32bit_regFile r3( clk, reset, regWrite_32, decOut1[3], regWrite_16, decOut2[3], writeData_32, writeData_16, outR3 );
		register32bit_regFile r4( clk, reset, regWrite_32, decOut1[4], regWrite_16, decOut2[4], writeData_32, writeData_16, outR4 );
		register32bit_regFile r5( clk, reset, regWrite_32, decOut1[5], regWrite_16, decOut2[5], writeData_32, writeData_16, outR5 );
		register32bit_regFile r6( clk, reset, regWrite_32, decOut1[6], regWrite_16, decOut2[6], writeData_32, writeData_16, outR6 );
		register32bit_regFile r7( clk, reset, regWrite_32, decOut1[7], regWrite_16, decOut2[7], writeData_32, writeData_16, outR7 );
		register32bit_regFile r8( clk, reset, regWrite_32, decOut1[8], regWrite_16, decOut2[8], writeData_32, writeData_16, outR8 );
		register32bit_regFile r9( clk, reset, regWrite_32, decOut1[9], regWrite_16, decOut2[9], writeData_32, writeData_16, outR9 );
		register32bit_regFile r10( clk, reset, regWrite_32, decOut1[10], regWrite_16, decOut2[10], writeData_32, writeData_16, outR10 );
		register32bit_regFile r11( clk, reset, regWrite_32, decOut1[11], regWrite_16, decOut2[11], writeData_32, writeData_16, outR11 );
		register32bit_regFile r12( clk, reset, regWrite_32, decOut1[12], regWrite_16, decOut2[12], writeData_32, writeData_16, outR12 );
		register32bit_regFile r13( clk, reset, regWrite_32, decOut1[13], regWrite_16, decOut2[13], writeData_32, writeData_16, outR13 );
		register32bit_regFile r14( clk, reset, regWrite_32, decOut1[14], regWrite_16, decOut2[14], writeData_32, writeData_16, outR14 );
		register32bit_regFile r15( clk, reset, regWrite_32, decOut1[15], regWrite_16, decOut2[15], writeData_32, writeData_16, outR15 );
		register32bit_regFile r16( clk, reset, regWrite_32, decOut1[16], regWrite_16, decOut2[16], writeData_32, writeData_16, outR16 );
		register32bit_regFile r17( clk, reset, regWrite_32, decOut1[17], regWrite_16, decOut2[17], writeData_32, writeData_16, outR17 );
		register32bit_regFile r18( clk, reset, regWrite_32, decOut1[18], regWrite_16, decOut2[18], writeData_32, writeData_16, outR18 );
		register32bit_regFile r19( clk, reset, regWrite_32, decOut1[19], regWrite_16, decOut2[19], writeData_32, writeData_16, outR19 );
		register32bit_regFile r20( clk, reset, regWrite_32, decOut1[20], regWrite_16, decOut2[20], writeData_32, writeData_16, outR20 );
		register32bit_regFile r21( clk, reset, regWrite_32, decOut1[21], regWrite_16, decOut2[21], writeData_32, writeData_16, outR21 );
		register32bit_regFile r22( clk, reset, regWrite_32, decOut1[22], regWrite_16, decOut2[22], writeData_32, writeData_16, outR22 );
		register32bit_regFile r23( clk, reset, regWrite_32, decOut1[23], regWrite_16, decOut2[23], writeData_32, writeData_16, outR23 );
		register32bit_regFile r24( clk, reset, regWrite_32, decOut1[24], regWrite_16, decOut2[24], writeData_32, writeData_16, outR24 );
		register32bit_regFile r25( clk, reset, regWrite_32, decOut1[25], regWrite_16, decOut2[25], writeData_32, writeData_16, outR25 );
		register32bit_regFile r26( clk, reset, regWrite_32, decOut1[26], regWrite_16, decOut2[26], writeData_32, writeData_16, outR26 );
		register32bit_regFile r27( clk, reset, regWrite_32, decOut1[27], regWrite_16, decOut2[27], writeData_32, writeData_16, outR27 );
		register32bit_regFile r28( clk, reset, regWrite_32, decOut1[28], regWrite_16, decOut2[28], writeData_32, writeData_16, outR28 );
		register32bit_regFile r29( clk, reset, regWrite_32, decOut1[29], regWrite_16, decOut2[29], writeData_32, writeData_16, outR29 );
		register32bit_regFile r30( clk, reset, regWrite_32, decOut1[30], regWrite_16, decOut2[30], writeData_32, writeData_16, outR30 );
		register32bit_regFile r31( clk, reset, regWrite_32, decOut1[31], regWrite_16, decOut2[31], writeData_32, writeData_16, outR31 );
endmodule

module registerFile(input clk, input reset, input regWrite_32, input regWrite_16, input [4:0] rs1_32, input [4:0] rs2_32, input [4:0] rs1_16, input [4:0] rs2_16, 
	input [4:0] rd_32,  input [4:0] rd_16, input [31:0] writeData_32, input [31:0] writeData_16, output [31:0] regrs1_32, output [31:0] regrs2_32, output [31:0] regrs1_16, output [31:0] regrs2_16 );

 	wire [31:0] decOut1;
 	wire [31:0] decOut2;
    	
	wire [31:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31; 
	   
	decoder5to32 dec1_inRegFile(rd_32, decOut1);
	decoder5to32 dec2_inRegFile(rd_16, decOut2);
	    
	registerSet regSet(clk, reset, regWrite_32, decOut1, regWrite_16, decOut2, writeData_32, writeData_16, outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31);
    
 	mux32to1 mux1_inRegFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,rs1_32,regrs1_32);
 	mux32to1 mux2_inRegFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,rs2_32,regrs2_32);
	mux32to1 mux3_inRegFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,rs1_16,regrs1_16);
 	mux32to1 mux4_inRegFile(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,rs2_16,regrs2_16);

	
endmodule