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

		outR0 = 8'b0000_0000;
		outR1 = 8'b0000_0001;
		outR2 = 8'b0000_0010;
		outR3 = 8'b0000_0000;
		outR4 = 8'b0000_0000;
		outR5 = 8'b0000_0101;
		outR6 = 8'b0000_0000;
		outR7 = 8'b0000_0000;



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
