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

module adderPC(input [7:0] pcOut, output [7:0] pcAdderOut);

	always @ (pcOut) begin
		pcAdderOut = pcOut + 8'b0000_0010;
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
