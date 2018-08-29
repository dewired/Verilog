//we change the ouputt of the flip flop only if regWrite is 1
module D_ff(input clk, input reset, input regWrite, input d, output reg q);
	always@(negedge clk)
		begin
			if(reset== 1'b1)
				q=0;
			else
				if(regWrite == 1) begin q=d; end
		end
endmodule
 
module Mux16to1_4bit(input [3:0] tag0,input [3:0] tag1,input [3:0] tag2,input [3:0] tag3,input [3:0] tag4,input [3:0] tag5,input [3:0] tag6,input [3:0] tag7,input [3:0] tag8,input [3:0] tag9,input [3:0] tag10,input [3:0] tag11,input [3:0] tag12,input [3:0] tag13,input [3:0] tag14,input [3:0] tag15,input[3:0] sel,output reg [3:0] muxOut);
always @ (tag0 or tag1 or tag2 or tag3 or tag4 or tag5 or tag6 or tag7 or tag8 or tag9 or tag10 or tag11 or tag12 or tag13 or tag14 or tag15 or sel)
    begin
        case (sel)
    	4'd0:muxOut=tag0;
	4'd1:muxOut=tag1;
	4'd2:muxOut=tag2;
	4'd3:muxOut=tag3;
	4'd4:muxOut=tag4;
	4'd5:muxOut=tag5;
	4'd6:muxOut=tag6;
	4'd7:muxOut=tag7;
	4'd8:muxOut=tag8;
	4'd9:muxOut=tag9;
	4'd10:muxOut=tag10;
	4'd11:muxOut=tag11;
	4'd12:muxOut=tag12;
	4'd13:muxOut=tag13;
	4'd14:muxOut=tag14;
	4'd15:muxOut=tag15;
        endcase
    end
    endmodule
 
module Mux16to1_64bit(input [63:0] tag0,input [63:0] tag1,input [63:0] tag2,input [63:0] tag3,input [63:0] tag4,input [63:0] tag5,input [63:0] tag6,input [63:0] tag7,input [63:0] tag8,input [63:0] tag9,input [63:0] tag10,input [63:0] tag11,input [63:0] tag12,input [63:0] tag13,input [63:0] tag14,input [63:0] tag15,input[3:0] sel,output reg [63:0] muxOut);
    always @ (tag0 or tag1 or tag2 or tag3 or tag4 or tag5 or tag6 or tag7 or tag8 or tag9 or tag10 or tag11 or tag12 or tag13 or tag14 or tag15 or sel)
    begin
	    case (sel)
		    4'd0:muxOut=tag0;
		    4'd1:muxOut=tag1;
		    4'd2:muxOut=tag2;
		    4'd3:muxOut=tag3;
		    4'd4:muxOut=tag4;
		    4'd5:muxOut=tag5;
		    4'd6:muxOut=tag6;
		    4'd7:muxOut=tag7;
		    4'd8:muxOut=tag8;
		    4'd9:muxOut=tag9;
		    4'd10:muxOut=tag10;
		    4'd11:muxOut=tag11;
		    4'd12:muxOut=tag12;
		    4'd13:muxOut=tag13;
		    4'd14:muxOut=tag14;
		    4'd15:muxOut=tag15;
	    endcase
    end
    endmodule
 
module Mux16to1_2bit(input [1:0] in0,input [1:0] in1,input [1:0] in2,input [1:0] in3,input [1:0] in4,input [1:0] in5,input [1:0] in6,input [1:0] in7,input [1:0] in8,input [1:0] in9,input [1:0] in10,input [1:0] in11,input [1:0] in12,input [1:0] in13,input [1:0] in14,input [1:0] in15,input[3:0] sel,output reg [1:0] muxOut);
always @ (in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or in9 or in10 or in11 or in12 or in13 or in14 or in15 or sel)
    begin
        case (sel)
    	4'd0:muxOut=in0;
	4'd1:muxOut=in1;
	4'd2:muxOut=in2;
	4'd3:muxOut=in3;
	4'd4:muxOut=in4;
	4'd5:muxOut=in5;
	4'd6:muxOut=in6;
	4'd7:muxOut=in7;
	4'd8:muxOut=in8;
	4'd9:muxOut=in9;
	4'd10:muxOut=in10;
	4'd11:muxOut=in11;
	4'd12:muxOut=in12;
	4'd13:muxOut=in13;
	4'd14:muxOut=in14;
	4'd15:muxOut=in15;
        endcase
    end
    endmodule
 
module Mux16to1_16bit(input [15:0] tag0,input [15:0] tag1,input [15:0] tag2,input [15:0] tag3,input [15:0] tag4,input [15:0] tag5,input [15:0] tag6,input [15:0] tag7,input [15:0] tag8,input [15:0] tag9,input [15:0] tag10,input [15:0] tag11,input [15:0] tag12,input [15:0] tag13,input [15:0] tag14,input [15:0] tag15,input[3:0] sel,output reg [15:0] muxOut);
always @ (tag0 or tag1 or tag2 or tag3 or tag4 or tag5 or tag6 or tag7 or tag8 or tag9 or tag10 or tag11 or tag12 or tag13 or tag14 or tag15 or sel)
    begin
        case (sel)
    	4'd0:muxOut=tag0;
	4'd1:muxOut=tag1;
	4'd2:muxOut=tag2;
	4'd3:muxOut=tag3;
	4'd4:muxOut=tag4;
	4'd5:muxOut=tag5;
	4'd6:muxOut=tag6;
	4'd7:muxOut=tag7;
	4'd8:muxOut=tag8;
	4'd9:muxOut=tag9;
	4'd10:muxOut=tag10;
	4'd11:muxOut=tag11;
	4'd12:muxOut=tag12;
	4'd13:muxOut=tag13;
	4'd14:muxOut=tag14;
	4'd15:muxOut=tag15;
        endcase
    end
endmodule
 
module Mux16to1_1bit(input tag0,input tag1,input tag2,input tag3,input tag4,input tag5,input tag6,input tag7,input tag8,input tag9,input tag10,input tag11,input tag12,input tag13,input tag14,input tag15,input[3:0] sel,output reg muxOut);

always @ (tag0 or tag1 or tag2 or tag3 or tag4 or tag5 or tag6 or tag7 or tag8 or tag9 or tag10 or tag11 or tag12 or tag13 or tag14 or tag15 or sel)
    begin
        case (sel)
			4'd0:muxOut=tag0;
			4'd1:muxOut=tag1;
			4'd2:muxOut=tag2;
			4'd3:muxOut=tag3;
			4'd4:muxOut=tag4;
			4'd5:muxOut=tag5;
			4'd6:muxOut=tag6;
			4'd7:muxOut=tag7;
			4'd8:muxOut=tag8;
			4'd9:muxOut=tag9;
			4'd10:muxOut=tag10;
			4'd11:muxOut=tag11;
			4'd12:muxOut=tag12;
			4'd13:muxOut=tag13;
			4'd14:muxOut=tag14;
			4'd15:muxOut=tag15;
        endcase
    end
endmodule
 
module Mux16to1_22bit(input [21:0] tag0,input [21:0] tag1,input [21:0] tag2,input [21:0] tag3,input [21:0] tag4,input [21:0] tag5,input [21:0] tag6,input [21:0] tag7,input [21:0] tag8,input [21:0] tag9,input [21:0] tag10,input [21:0] tag11,input [21:0] tag12,input [21:0] tag13,input [21:0] tag14,input [21:0] tag15,input[3:0] sel,output reg [21:0] muxOut);
always @ (tag0 or tag1 or tag2 or tag3 or tag4 or tag5 or tag6 or tag7 or tag8 or tag9 or tag10 or tag11 or tag12 or tag13 or tag14 or tag15 or sel)
    begin
        case (sel)
    	4'd0:muxOut=tag0;
	4'd1:muxOut=tag1;
	4'd2:muxOut=tag2;
	4'd3:muxOut=tag3;
	4'd4:muxOut=tag4;
	4'd5:muxOut=tag5;
	4'd6:muxOut=tag6;
	4'd7:muxOut=tag7;
	4'd8:muxOut=tag8;
	4'd9:muxOut=tag9;
	4'd10:muxOut=tag10;
	4'd11:muxOut=tag11;
	4'd12:muxOut=tag12;
	4'd13:muxOut=tag13;
	4'd14:muxOut=tag14;
	4'd15:muxOut=tag15;
        endcase
    end
    endmodule
 
module Mux4to2_1bit(input in0,input in1,input in2,input in3,input sel,output reg muxOut);
	always@(in0 or in1 or in2 or in3 or sel)
		case(sel)
			1'b00:muxOut=in0;
			1'b01:muxOut=in1;
			1'b10:muxOut=in2;
			1'b11:muxOut=in3;
		endcase
endmodule
 
module Mux4to1_16bit(input [15:0] in0,input [15:0] in1,input [15:0] in2,input [15:0] in3, input[1:0] sel, output reg [15:0] muxOut);
    always @ (in0 or in1 or in2 or in3 or sel)
        begin
            case (sel)
        	    4'd0:muxOut=in0;
    	        4'd1:muxOut=in1;
    	        4'd2:muxOut=in2;
    	        4'd3:muxOut=in3;
            endcase
        end
endmodule
 
module Mux4to1_64bit(input [63:0] in0,input [63:0] in1,input [63:0] in2,input [63:0] in3,input[1:0] sel,output reg [63:0] muxOut);
    always @ (in0 or in1 or in2 or in3 or sel)
    begin
	    case (sel)
		    4'd0:muxOut=in0;
		    4'd1:muxOut=in1;
		    4'd2:muxOut=in2;
		    4'd3:muxOut=in3;
	    endcase
    end
    endmodule
 
module Mux2to1_2bit(input [1:0] in0, input [1:0] in1, input sel, output reg [1:0] muxOut);
    always @ (LineIndex or LRUWay or Hit)
    begin
        case (Hit)
            1'b0: muxOut = in0;
            1'b1: muxOut = in1;
        endcase
    end
endmodule
 
module CounterUsedInLru (input clk, input reset,input en, input decOut, input dcr, output reg [1:0] counterOut);
  wire [1:0] dcrOut, muxOut;
	reg[1:0] currentCount;
	always@(currentCount)
		begin
			counterOut = currentCount;
		end
	always@(negedge clk)
		begin
			if(reset)
			begin currentCount = 2'b00; end
 
			else if (en==1'b1)
			begin
				if(decOut)
				begin currentCount = 2'b11; end
 
				else if(dcr)
					case(counterOut)
						2'b11: begin currentCount = 2'b10; end
						2'b10: begin currentCount = 2'b01; end
						2'b01: begin currentCount = 2'b00; end
						2'b00: begin currentCount = 2'b00; end
					endcase
			end
		end
endmodule
 
module prio_Enc(input reset, input [1:0] in0, input [1:0] in1, input [1:0] in2, input [1:0] in3, output reg [1:0] LRUWay);
	 always@(in0 or in1 or in2 or in3 or reset)
    begin
	if(reset)
		begin LRUWay=2'b00; end
 
        if(in0==2'b00)
            begin LRUWay=2'b00; end
        else if(in1==2'b00)
            begin LRUWay=2'b01; end
        else if(in2==2'b00)
            begin LRUWay=2'b10; end
        else if(in3==2'b00)
            begin LRUWay=2'b11; end
    end
endmodule
 
module ComparatorUsedInLru(input [1:0] in1, input [1:0] in2, output reg greater);
   always@(in1 or in2)
	  begin
      greater = (in1 > in2) ? 1:0;
	  end
endmodule
 
module Mux4to1_2bit(input [1:0] in1, input [1:0] in2, input [1:0] in3, input [1:0] in4, input [1:0] sel, output reg [1:0] muxOut);
  always @ ( in1 or in2 or in3 or in4 or sel )
  begin
    case ( sel )
      2'b00: muxOut = in1;
      2'b01: muxOut = in2;
      2'b10: muxOut = in3;
      2'b11: muxOut = in4;
    endcase
  end
endmodule
 
module LRU(input [1:0] LineIndex, input clk, input reset,input en, input Hit, output [1:0] LRUWay);
	wire [3:0] decOut;
	wire [1:0] mux1Out,counterOut0,counterOut1,counterOut2,counterOut3,mux2Out;
	wire dcr0, dcr1, dcr2, dcr3, comp0, comp1, comp2, comp3;
 
	Mux2to1_2bit m1( LRUWay, LineIndex, Hit, mux1Out);
 
	Decoder2to4 d1( mux1Out, decOut);
 
	CounterUsedInLru C0( clk, reset,en, decOut[0], dcr0, counterOut0);
	CounterUsedInLru C1( clk, reset,en,  decOut[1], dcr1, counterOut1);
	CounterUsedInLru  C2( clk, reset,en,  decOut[2], dcr2, counterOut2);
	CounterUsedInLru  C3( clk, reset,en,  decOut[3], dcr3, counterOut3);
 
	Mux4to1_2bit m2( counterOut0, counterOut1, counterOut2, counterOut3, mux1Out, mux2Out);
 
	ComparatorUsedInLru c0(counterOut0, mux2Out, comp0);
	ComparatorUsedInLru c1(counterOut1, mux2Out, comp1);
	ComparatorUsedInLru c2(counterOut2, mux2Out, comp2);
	ComparatorUsedInLru c3(counterOut3, mux2Out, comp3);
 
  assign dcr0 = comp0 & ~decOut[0];
  assign dcr1 = comp1 & ~decOut[1];
  assign dcr2 = comp2 & ~decOut[2];
  assign dcr3 = comp3 & ~decOut[3];
 
	prio_Enc p1( reset, counterOut0, counterOut1, counterOut2, counterOut3, LRUWay);
 
endmodule
module GroupLRU(input[1:0] LineIndex, input clk,input reset,input en,input[15:0] decOutIndex, input Hit,output [1:0] LRUWay);
 
	Mux16to1_2bit muxForLru(  in0,  in1,  in2,  in3,  in4,  in5,  in6,  in7,  in8,  in9,  in10,  in11,  in12,  in13,  in14,  in15, sel,  muxOut);
	LRU lru0(LineIndex,clk,reset,decOutIndex[0]&&en,Hit,LRUWay0);
	LRU lru1(LineIndex,clk,reset,decOutIndex[1]&&en,Hit,LRUWay1);
	LRU lru2(LineIndex,clk,reset,decOutIndex[2]&&en,Hit,LRUWay2);
	LRU lru3(LineIndex,clk,reset,decOutIndex[3]&&en,Hit,LRUWay3);
	LRU lru4(LineIndex,clk,reset,decOutIndex[4]&&en,Hit,LRUWay4);
	LRU lru5(LineIndex,clk,reset,decOutIndex[5]&&en,Hit,LRUWay5);
	LRU lru6(LineIndex,clk,reset,decOutIndex[6]&&en,Hit,LRUWay6);
	LRU lru7(LineIndex,clk,reset,decOutIndex[7]&&en,Hit,LRUWay7);
	LRU lru8(LineIndex,clk,reset,decOutIndex[8]&&en,Hit,LRUWay8);
	LRU lru9(LineIndex,clk,reset,decOutIndex[9]&&en,Hit,LRUWay9);
	LRU lru10(LineIndex,clk,reset,decOutIndex[10]&&en,Hit,LRUWay10);
	LRU lru11(LineIndex,clk,reset,decOutIndex[11]&&en,Hit,LRUWay11);
	LRU lru12(LineIndex,clk,reset,decOutIndex[12]&&en,Hit,LRUWay12);
	LRU lru13(LineIndex,clk,reset,decOutIndex[13]&&en,Hit,LRUWay13);
	LRU lru14(LineIndex,clk,reset,decOutIndex[14]&&en,Hit,LRUWay14);
	LRU lru15(LineIndex,clk,reset,decOutIndex[15]&&en,Hit,LRUWay15);
 
	endmodule
 
	//CacheBlock, CacheWay, viArray, dirtyArray
 
module Register16Bit(input clk,input reset, input regWrite,input[15:0] data,output [15:0] regOut);
	D_ff df0(clk, reset, regWrite, data[0], regOut[0]);
	D_ff df1(clk, reset, regWrite, data[1], regOut[1]);
	D_ff df2(clk, reset, regWrite, data[2], regOut[2]);
	D_ff df3(clk, reset, regWrite, data[3], regOut[3]);
	D_ff df4(clk, reset, regWrite, data[4], regOut[4]);
	D_ff df5(clk, reset, regWrite, data[5], regOut[5]);
	D_ff df6(clk, reset, regWrite, data[6], regOut[6]);
	D_ff df7(clk, reset, regWrite, data[7], regOut[7]);
	D_ff df8(clk, reset, regWrite, data[8], regOut[8]);
	D_ff df9(clk, reset, regWrite, data[9], regOut[9]);
	D_ff df10(clk, reset, regWrite, data[10], regOut[10]);
	D_ff df11(clk, reset, regWrite, data[11], regOut[11]);
	D_ff df12(clk, reset, regWrite, data[12], regOut[12]);
	D_ff df13(clk, reset, regWrite, data[13], regOut[13]);
	D_ff df14(clk, reset, regWrite, data[14], regOut[14]);
	D_ff df15(clk, reset, regWrite, data[15], regOut[15]);
 
endmodule
//
module CacheBlock(input clk, input reset , input indexEn,input [1:0] regWrite, input[15:0] wordIn, input wordWr,input BlockWr,input[63:0] blockIn, output[15:0] wordOut,output[63:0] blockOut);
	wire [15:0] data0,data1,data2,data3;
	wire[3:0] we, offsetDecOut;
	assign blockOut={regOut3,regOut2,regOut1,regOut0};
	Register16Bit reg16bit0(clk,reset,we[0]&&indexEn,data0,regOut0);
	Register16Bit reg16bit1(clk,reset,we[1]&&indexEn,data1,regOut1);
	Register16Bit reg16bit2(clk,reset,we[2]&&indexEn,data2,regOut2);
	Register16Bit reg16bit3(clk,reset,we[3]&&indexEn,data3,regOut3);
	Decoder2to4(regWrite, offsetDecOut);
	always@(clk,reset,wordWr, BlockWr)
	begin
		case(BlockWr)
			1'b0:begin
				we=offsetDecOut;
 
				data1=wordIn;
				data2=wordIn;
				data3=wordIn;
				end
			1'b1:begin
				we=4'b1111;
				data0=blockOut[15:0];
				data1=blockOut[31:16];
				data2=blockOut[47:32];
				data3=blockOut[63:48];
			end
		endcase
	end
endmodule
module CacheWay (input clk, input reset,input[15:0] regWrite,input[1:0] offset ,input wordWr,input[15:0] wordIn,input BlockWr, input[63:0] blockIn,input[3:0] rowLine,output [15:0] wordOut,output [63:0]blockOut );
	wire[63:0] cacheBlockOut0,cacheBlockOut1,cacheBlockOut2,cacheBlockOut3,cacheBlockOut4,cacheBlockOut5,cacheBlockOut6,cacheBlockOut7,cacheBlockOut8,cacheBlockOut9,cacheBlockOut10,cacheBlockOut11,cacheBlockOut12,cacheBlockOut13,cacheBlockOut14,cacheBlockOut15;
	wire[15:0] cacheWordOut0,cacheWordOut1,cacheWordOut2,cacheWordOut3,cacheWordOut4,cacheWordOut5,cacheWordOut6,cacheWordOut7,cacheWordOut8,cacheWordOut9,cacheWordOut10,cacheWordOut11,cacheWordOut12,cacheWordOut13,cacheWordOut14,cacheWordOut15;
	CacheBlock cBlock0(clk,reset ,regWrite[0], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut0,blockOut0);
	CacheBlock cBlock1(clk,reset ,regWrite[1], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut1,blockOut1);
	CacheBlock cBlock2(clk,reset ,regWrite[2], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut2,blockOut2);
	CacheBlock cBlock3(clk,reset ,regWrite[3], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut3,blockOut3);
	CacheBlock cBlock4(clk,reset ,regWrite[4], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut4,blockOut4);
	CacheBlock cBlock5(clk,reset ,regWrite[5], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut5,blockOut5);
	CacheBlock cBlock6(clk,reset ,regWrite[6], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut6,blockOut6);
	CacheBlock cBlock7(clk,reset ,regWrite[7], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut7,blockOut7);
	CacheBlock cBlock8(clk,reset ,regWrite[8], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut8,blockOut8);
	CacheBlock cBlock9(clk,reset ,regWrite[9], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut9,blockOut9);
	CacheBlock cBlock10(clk,reset ,regWrite[10], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut10,blockOut10);
	CacheBlock cBlock11(clk,reset ,regWrite[11], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut11,blockOut11);
	CacheBlock cBlock12(clk,reset ,regWrite[12], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut12,blockOut12);
	CacheBlock cBlock13(clk,reset ,regWrite[13], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut13,blockOut13);
	CacheBlock cBlock14(clk,reset ,regWrite[14], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut14,blockOut14);
	CacheBlock cBlock15(clk,reset ,regWrite[15], offset,  wordIn, wordWr,BlockWr,blockIn, wordOut15,blockOut15);
	Mux16to1_16bit mux1(  wordOut0,  wordOut1,  wordOut2,  wordOut3,  wordOut4,  wordOut5,  wordOut6,  wordOut7,  wordOut8,  wordOut9,  wordOut10,  wordOut11,  wordOut12,  wordOut13,  wordOut14,  wordOut15, rowLine,   wordOut);
	Mux16to1_64bit mux2(  blockOut0,  blockOut1,  blockOut2,  blockOut3,  blockOut4,  blockOut5,  blockOut6,  blockOut7,  blockOut8,  blockOut9,  blockOut10,  blockOut11,  blockOut12,  blockOut13,  blockOut14,  blockOut15, rowLine,   blockOut);
endmodule
//control units :- write enable for halt tag array and main tag array
//		wordWriteEnable and blockWriteEnable for Cache,
 
module CacheControl(input clk, input reset, input memWr, input hit, input hTagHit, input [2:0] counterInput, output reg counterReset, output reg memWrCtrl,output reg [15:0] weTag, output enableLRU, output reg [15:0] wordEnableCache, output reg [15:0] blockEnableCache);
	wire[3:0] state;
	parameter state1=3'd1,state2=3'd2,state3=3'd3;
	always@(negedge clk or hit)
	begin
		case(state)
		begin
			state1: begin
				weCache=16'b0000000000000000;
				weTag=16'd0000000000000000;
				memWrCtrlr=1'b0;
				if (hit==1'b1)
            if(memWr==1'b1)
					       state=state2;
				else
					state=state3;
			end
			state2:begin
				wordWr=1'b1;
        memWrCtrl=1'b1;
				state=state3;
			end
			state3:begin
				counterReset=1'b1;
				state=state4;
			end
			state4:begin
				counterReset=1'b0;
				if(counterInput==3'b111)
					state=state5;
			end
			state5:begin
				blockEnableCache=16'b1111111111111111;
				weTag=16'b1111111111111111;
 
			end
			state6:begin
				if(hit==1'b1)
					state=state2;
				else
					state=state1;
			end
		endcase
		end
endmodule
 
 
module Cache(input clk, input reset, input memRd,input memWr,input[21:0] mainTagIn,input[3:0] haltTagIn,input[3:0] indexIn,input[1:0] offsetIn,input[15:0] word,input[63:0] block, output reg stall, output reg [15:0] wordOut, output reg [15:0] blockOut);
	wire[15:0] rowEnable,blockSel,indexDecOut,wordOut0,wordOut1,wordOut2,wordOut3,blockOut0,blockOut1,blockOut2,blockOut3,dirtyDataIn,;
	wire[63:0] blockOut ;
	wire [3:0] rowEnable,hTagHit,mTagHit,lruDecOut;
	wire dirty,dirtyOut0,dirtyOut1,dirtyOut2,dirtyOut3,dirtyOut,enableLRU,memWrCtrl;
	wire[1:0] LRUWay;
	Decoder2to4 decoderLru(LRUWay,lruDecOut);
	assign totalHit = hTagHit&mTagHit;
	Mux4to2_1bit muxDirty(dirtyOut0,dirtyOut1,dirtyOut2,dirtyOut3,LRUWay,dirtyOut);
	GroupLRU glru(waySel, clk,reset,enableLRU,decOutIndex, totalHit,LRUWay);
	DirtyArray dirtyArry0(clk,reset,indexDecOut, dirtyDataIn,lruDecOut&&memWrCtrl, dirtyOut0);
	DirtyArray dirtyArry1(clk,reset,indexDecOut, dirtyDataIn,lruDecOuty&&memWrCtrl, dirtyOut1);
	DirtyArray dirtyArry2(clk,reset,indexDecOut, dirtyDataIn,lruDecOut&&memWrCtrl, dirtyOut2);
	DirtyArray dirtyArry3(clk,reset,indexDecOut, dirtyDataIn,lruDecOut&&memWrCtrl, dirtyOut3);
	CacheWay cacheWay0 ( clk,reset, indexDecOut,word,block,indexDecOut,offsetIn, wordOut0, blockOut0);
	CacheWay cacheWay1 ( clk,reset, indexDecOut,word,block,indexDecOut,offsetIn, wordOut1, blockOut1);
	CacheWay cacheWay2 ( clk,reset, indexDecOut,word,block,indexDecOut,offsetIn, wordOut2, blockOut2);
	CacheWay cacheWay3 ( clk,reset, indexDecOut,word,block,indexDecOut,offsetIn, wordOut3, blockOut3);
	HaltTagArray hTagArr0(clk,reset, input [15:0] we, haltTagIn, hTagHit[0], rowEnable[0]);
	HaltTagArray hTagArr1(clk,reset, input [15:0] we, haltTagIn,hTagHit[1], rowEnable[1]);
	HaltTagArray hTagArr2(clk,reset, input [15:0] we, haltTagIn,hTagHit[2], rowEnable[2]);
	HaltTagArray hTagArr3(clk,reset, input [15:0] we, haltTagIn,hTagHit[3], rowEnable[3]);
	Decoder4to16 decoder(indexIn, indexDecOut);
	MainTagArray mTagArr0( clk,  reset, rowEnable&indexDecOut,  Tag, indexIn, mTagHit[0],muxOut);
	MainTagArray mTagArr1( clk,  reset,  rowEnable&indexDecOut,  Tag, indexIn, mTagHit[1],muxOut);
	MainTagArray mTagArr2( clk,  reset,  rowEnable,&indexDecOut  Tag, indexIn, mTagHit[2],muxOut);
	MainTagArray mTagArr3( clk,  reset,  rowEnable&indexDecOut,  Tag, indexIn, mTagHit[3], muxOut);
	always@(clk)
		case(mTagHit):
			4'b0001	:begin
				waySel=2'b00;
			end
			4'b0010:begin
				waySel=2'b01;
			end
			4'b0100:begin
				waySel=2'b10;
			end
			4'b1000:begin
				waySel=2'b11;
			end
		endcase
  Mux4to1_16bit muxWordOut(wordOut0,wordOut1,wordOut2,wordOut3, waySel, wordOut);
  Mux4to1_64bit muxBlockOut(blockOut0,blockOut1,blockOut2,blockOut3, LRUWay, muxblockOut);
  if(dirtyOut)
    blockOut = muxblockOut;
  else
    blockOut = 64'b0;
 
endmodule
 
module DirtyArray(input clk, input reset, input[15:0] we,input[15:0] data, input enable,output dirtyOut);
	D_ff d0(clk, reset, we[0]&&enable,data[0] , dirty[0]);
 
	D_ff d1(clk, reset, we[1]&&enable,data[1] , dirty[1]);
	D_ff d2(clk, reset, we[2]&&enable,data[2], dirty[2]);
	D_ff d3(clk, reset, we[3]&&enable,data[3], dirty[3]);
	D_ff d4(clk, reset, we[4]&&enable,data[4], dirty[4]);
	D_ff d5(clk, reset, we[5]&&enable,data[5], dirty[5]);
	D_ff d6(clk, reset, we[6]&&enable,data[6], dirty[6]);
	D_ff d7(clk, reset, we[7]&&enable,data[7], dirty[7]);
	D_ff d8(clk, reset, we[8]&&enable,data[8], dirty[8]);
	D_ff d9(clk, reset, we[9]&&enable,data[9], dirty[9]);
	D_ff d10(clk, reset, we[10]&&enable,data[10], dirty[10]);
	D_ff d11(clk, reset, we[11]&&enable,data[11], dirty[11]);
	D_ff d12(clk, reset, we[12]&&enable,data[12], dirty[12]);
	D_ff d13(clk, reset, we[13]&&enable,data[13], dirty[13]);
	D_ff d14(clk, reset, we[14]&&enable,data[14], dirty[14]);
	D_ff d15(clk, reset, we[15]&&enable,data[15], dirty[15]);
	Mux16to1_1bit muxForDirty(  dirty[0],  dirty[1],  dirty[2],  dirty[3],  dirty[4],  dirty[5],  dirty[6],  dirty[7],  dirty[8],  dirty[9],  dirty[10],  dirty[11],  dirty[12],  dirty[13],  dirty[14],  dirty[15],sel, dirtyOut);
 
 
endmodule
 
module viArray(input clk, input reset, input [15:0] we,input waySel, output [15:0] valid);
	D_ff d0(clk, reset, we[0]&&waysel, 1'b1, valid[0]);
	D_ff d1(clk, reset, we[1]&&waysel, 1'b1, valid[1]);
	D_ff d2(clk, reset, we[2]&&waysel, 1'b1, valid[2]);
	D_ff d3(clk, reset, we[3]&&waysel, 1'b1, valid[3]);
	D_ff d4(clk, reset, we[4]&&waysel, 1'b1, valid[4]);
	D_ff d5(clk, reset, we[5]&&waysel, 1'b1, valid[5]);
	D_ff d6(clk, reset, we[6]&&waysel, 1'b1, valid[6]);
	D_ff d7(clk, reset, we[7]&&waysel, 1'b1, valid[7]);
	D_ff d8(clk, reset, we[8]&&waysel, 1'b1, valid[8]);
	D_ff d9(clk, reset, we[9]&&waysel, 1'b1, valid[9]);
	D_ff d10(clk, reset, we[10]&&waysel, 1'b1, valid[10]);
	D_ff d11(clk, reset, we[11]&&waysel, 1'b1, valid[11]);
	D_ff d12(clk, reset, we[12]&&waysel, 1'b1, valid[12]);
	D_ff d13(clk, reset, we[13]&&waysel, 1'b1, valid[13]);
	D_ff d14(clk, reset, we[14]&&waysel, 1'b1, valid[14]);
	D_ff d15(clk, reset, we[15]&&waysel, 1'b1, valid[15]);
 
 
 
endmodule
 
 
module HaltTagRegister(input clk, input reset, input set, input [3:0] inputTag, output [3:0] outputTag);
	D_ff ht0(clk, reset,set, inputTag[0],outputTag[0]);
	D_ff ht1(clk, reset,set, inputTag[1],outputTag[1]);
	D_ff ht2(clk, reset,set, inputTag[2],outputTag[2]);
	D_ff ht3(clk, reset,set, inputTag[3],outputTag[3]);
 
 
endmodule
module MainTagRegister(input clk, input reset, input set, input [21:0] inputTag, output [21:0] outputTag);
	D_ff mt0(clk, reset,set, inputTag[0],outputTag[0]);
	D_ff mt1(clk, reset,set, inputTag[1],outputTag[1]);
	D_ff mt2(clk, reset,set, inputTag[2],outputTag[2]);
	D_ff mt3(clk, reset,set, inputTag[3],outputTag[3]);
	D_ff mt4(clk, reset,set, inputTag[4],outputTag[4]);
	D_ff mt5(clk, reset,set, inputTag[5],outputTag[5]);
	D_ff mt6(clk, reset,set, inputTag[6],outputTag[6]);
	D_ff mt7(clk, reset,set, inputTag[7],outputTag[7]);
	D_ff mt8(clk, reset,set, inputTag[8],outputTag[8]);
	D_ff mt9(clk, reset,set, inputTag[9],outputTag[9]);
	D_ff mt10(clk, reset,set, inputTag[10],outputTag[10]);
	D_ff mt11(clk, reset,set, inputTag[11],outputTag[11]);
	D_ff mt12(clk, reset,set, inputTag[12],outputTag[12]);
	D_ff mt13(clk, reset,set, inputTag[13],outputTag[13]);
	D_ff mt14(clk, reset,set, inputTag[14],outputTag[14]);
	D_ff mt15(clk, reset,set, inputTag[15],outputTag[15]);
	D_ff mt16(clk, reset,set, inputTag[16],outputTag[16]);
	D_ff mt17(clk, reset,set, inputTag[17],outputTag[17]);
	D_ff mt18(clk, reset,set, inputTag[18],outputTag[18]);
	D_ff mt19(clk, reset,set, inputTag[19],outputTag[19]);
	D_ff mt20(clk, reset,set, inputTag[20],outputTag[20]);
	D_ff mt21(clk, reset,set, inputTag[21],outputTag[21]);
 
endmodule
 
module HaltTagArray(input clk, input reset, input [15:0] we, input [3:0] inputTag,input[3:0] tagOutSel,output reg[3:0] TagOut,output hTagHit,output[15:0] rowEnable,input waySel
	);
	wire [15:0] equal, valid;
	wire[3:0] Tag0,Tag1,Tag2,Tag3,Tag4,Tag5,Tag6,Tag7,Tag8,Tag9,Tag10,Tag11,Tag12,Tag13,Tag14,Tag15;
	Mux16to1_4bit hTagMux(Tag0,Tag1,Tag2,Tag3,Tag4,Tag5,Tag6,Tag7,Tag8,Tag9,Tag10,Tag11,Tag12,Tag13,Tag14,Tag15,tagOutSel,TagOut);
 
	assign rowEnable[0]=equal[0]&&valid[0];
	assign rowEnable[1]=equal[1]&&valid[1];
	assign rowEnable[2]=equal[2]&&valid[2];
	assign rowEnable[3]=equal[3]&&valid[3];
	assign rowEnable[4]=equal[4]&&valid[4];
	assign rowEnable[5]=equal[5]&&valid[5];
	assign rowEnable[6]=equal[6]&&valid[6];
	assign rowEnable[7]=equal[7]&&valid[7];
	assign rowEnable[8]=equal[8]&&valid[8];
	assign rowEnable[9]=equal[9]&&valid[9];
	assign rowEnable[10]=equal[10]&&valid[10];
	assign rowEnable[11]=equal[11]&&valid[11];
	assign rowEnable[12]=equal[12]&&valid[12];
	assign rowEnable[13]=equal[13]&&valid[13];
	assign rowEnable[14]=equal[14]&&valid[14];
	assign rowEnable[15]=equal[15]&&valid[15];
	viArray vi(clk, reset, we,waySel, valid);
	Hcomparator hComparator0(inputTag,Tag0 , equal[0]);
	Hcomparator hComparator1(inputTag,Tag1 , equal[1]);
	Hcomparator hComparator2(inputTag,Tag2 , equal[2]);
	Hcomparator hComparator3(inputTag,Tag3 , equal[3]);
	Hcomparator hComparator4(inputTag,Tag4 , equal[4]);
	Hcomparator hComparator5(inputTag,Tag5 , equal[5]);
	Hcomparator hComparator6(inputTag,Tag6 , equal[6]);
	Hcomparator hComparator7(inputTag,Tag7 , equal[7]);
	Hcomparator hComparator8(inputTag,Tag8 , equal[8]);
	Hcomparator hComparator9(inputTag,Tag9 , equal[9]);
	Hcomparator hComparator10(inputTag,Tag10 , equal[10]);
	Hcomparator hComparator11(inputTag,Tag11 , equal[11]);
	Hcomparator hComparator12(inputTag,Tag12 , equal[12]);
	Hcomparator hComparator13(inputTag,Tag13 , equal[13]);
	Hcomparator hComparator14(inputTag,Tag14 , equal[14]);
	Hcomparator hComparator15(inputTag,Tag15 , equal[15]);
	assign hTagHit= rowEnable[0]||rowEnable[1]||rowEnable[2]||rowEnable[3]||rowEnable[4]||rowEnable[5]||rowEnable[6]||rowEnable[7]||rowEnable[8]||rowEnable[9]||rowEnable[10]||rowEnable[11]||rowEnable[12]||rowEnable[13]||rowEnable[14]||rowEnable[15];
	HaltTagRegister HtagReg0(clk,reset,we[0],inputTag[3:0], Tag0);
	HaltTagRegister HtagReg1(clk,reset,we[1],inputTag[3:0], Tag1);
	HaltTagRegister HtagReg2(clk,reset,we[2],inputTag[3:0], Tag2);
	HaltTagRegister HtagReg3(clk,reset,we[3],inputTag[3:0], Tag3);
	HaltTagRegister HtagReg4(clk,reset,we[4],inputTag[3:0], Tag4);
	HaltTagRegister HtagReg5(clk,reset,we[5],inputTag[3:0], Tag5);
	HaltTagRegister HtagReg6(clk,reset,we[6],inputTag[3:0], Tag6);
	HaltTagRegister HtagReg7(clk,reset,we[7],inputTag[3:0], Tag7);
	HaltTagRegister HtagReg8(clk,reset,we[8],inputTag[3:0], Tag8);
	HaltTagRegister HtagReg9(clk,reset,we[9],inputTag[3:0], Tag9);
	HaltTagRegister HtagReg10(clk,reset,we[10],inputTag[3:0], Tag10);
	HaltTagRegister HtagReg11(clk,reset,we[11],inputTag[3:0], Tag11);
	HaltTagRegister HtagReg12(clk,reset,we[12],inputTag[3:0], Tag12);
	HaltTagRegister HtagReg13(clk,reset,we[13],inputTag[3:0], Tag13);
	HaltTagRegister HtagReg14(clk,reset,we[14],inputTag[3:0], Tag14);
	HaltTagRegister HtagReg15(clk,reset,we[15],inputTag[3:0], Tag15);
 
endmodule
 
module MainTagArray(input clk, input reset, input [15:0] we, input [21:0] inputTag,input waySel
	,input [3:0] sel,output mTagHit,output reg [21:0] muxOut);
	wire[15:0] equal;
	Mux16to1_22bit mTagMux(Tag0,Tag1,Tag2,Tag3,Tag4,Tag5,Tag6,Tag7,Tag8,Tag9,Tag10,Tag11,Tag12,Tag13,Tag14,Tag15,sel,muxOut);
	MainTagRegister MtagReg0(clk,reset,we[0],inputTag, Tag0);
	MainTagRegister MtagReg1(clk,reset,we[1],inputTag, Tag1);
	MainTagRegister MtagReg2(clk,reset,we[2],inputTag, Tag2);
	MainTagRegister MtagReg3(clk,reset,we[3],inputTag, Tag3);
	MainTagRegister MtagReg4(clk,reset,we[4],inputTag, Tag4);
	MainTagRegister MtagReg5(clk,reset,we[5],inputTag, Tag5);
	MainTagRegister MtagReg6(clk,reset,we[6],inputTag, Tag6);
	MainTagRegister MtagReg7(clk,reset,we[7],inputTag, Tag7);
	MainTagRegister MtagReg8(clk,reset,we[8],inputTag, Tag8);
	MainTagRegister MtagReg9(clk,reset,we[9],inputTag, Tag9);
	MainTagRegister MtagReg10(clk,reset,we[10],inputTag, Tag10);
	MainTagRegister MtagReg11(clk,reset,we[11],inputTag, Tag11);
	MainTagRegister MtagReg12(clk,reset,we[12],inputTag, Tag12);
	MainTagRegister MtagReg13(clk,reset,we[13],inputTag, Tag13);
	MainTagRegister MtagReg14(clk,reset,we[14],inputTag, Tag14);
	MainTagRegister MtagReg15(clk,reset,we[15],inputTag, Tag15);
 
	Mcomparator mComp0(waySel,inputTag, muxOut, mTagHit);
 
endmodule
//comparator module compares input tag with tagRegister tag.
//It returns 1 if tags matches otherwise it returns 0.
module Hcomparator(input en,input [3:0] in1, input [3:0] in2, output reg equal);
 
	always@(in1,in2)
	begin
	if(en==1'b0)
		equal=1'b0;
	else
		if(in1[3:0]==in2[3:0])
			equal=1'b1;
		else
			equal=1'b0;
	end
 
endmodule
 
module Mcomparator(input en,input [21:0] in1, input [21:0] in2, output reg equal);
 
	always@(in1,in2)
	begin
	if(en==1'b0)
		equal=1'b0;
	else
		if(in1==in2)
			equal=1'b1;
		else
			equal=1'b0;
	end
 
endmodule
 
 
//encoder module encodes 8 bits input in1 to 3 bits output op
//Eg. if in1 = 8'b00000010 then op = 3'b001
//8 comparators. output of comparator is going to AND G
module Encoder(input [15:0] in1, output reg [3:0] op);
 
	always@(in1)
		case(in1)
			16'b0000000000000001: op[3:0]=4'b0000;
			16'b0000000000000010: op[3:0]=4'b0001;
			16'b0000000000000100: op[3:0]=4'b0010;
			16'b0000000000001000: op[3:0]=4'b0011;
			16'b0000000000010000: op[3:0]=4'b0100;
			16'b0000000000100000: op[3:0]=4'b0101;
			16'b0000000001000000: op[3:0]=4'b0110;
			16'b0000000010000000: op[3:0]=4'b0111;
			16'b0000000100000000: op[3:0]=4'b1000;
			16'b0000001000000000: op[3:0]=4'b1001;
			16'b0000010000000000: op[3:0]=4'b1010;
			16'b0000100000000000: op[3:0]=4'b1011;
			16'b0001000000000000: op[3:0]=4'b1100;
			16'b0010000000000000: op[3:0]=4'b1101;
			16'b0100000000000000: op[3:0]=4'b1110;
			16'b1000000000000000: op[3:0]=4'b1111;
			default: op[3:0]=4'b0000;
		endcase
endmodule
 
// counter changes its value on miss so that it can select the
//next cache line to be used for replacement.
//Implement the given counter circuit here.
module Counter(input clk, input reset,   output[2:0] q);
 
	D_ff d0(clk, reset,1'b1, ~q[0], q[0]);
	D_ff d1(q[0], reset, 1'b1, ~q[1], q[1]);
	D_ff d2(q[1], reset, miss, ~q[2], q[2]);
 
endmodule
module Decoder2to4(input [1:0] muxOut, output reg [3:0] decOut);
    always @ (muxOut)
    begin
        case (muxOut)
            2'b00: decOut = 4'b0001;
            2'b01: decOut = 4'b0010;
            2'b10: decOut = 4'b0100;
            2'b11: decOut = 4'b1000;
        endcase
    end
endmodule
 
 
//decoder module decodes 3 bits input in1 to 8 bits output op.
//Eg. if in1 = 3'b101 then op = 8'b00100000
module Decoder4to16(input [3:0] in1, output reg [15:0] op);
	always@(in1[2:0])
		case(in1)
			4'd0:op=16'b0000000000000001;
			4'd1:op=16'b0000000000000010;
			4'd2:op=16'b0000000000000100;
			4'd3:op=16'b0000000000001000;
			4'd4:op=16'b0000000000010000;
			4'd5:op=16'b0000000000100000;
			4'd6:op=16'b0000000001000000;
			4'd7:op=16'b0000000010000000;
			4'd8:op=16'b0000000100000000;
			4'd9:op=16'b0000001000000000;
			4'd10:op=16'b0000010000000000;
			4'd11:op=16'b0000100000000000;
			4'd12:op=16'b0001000000000000;
			4'd13:op=16'b0010000000000000;
			4'd14:op=16'b0100000000000000;
			4'd15:op=16'b1000000000000000;
 
		endcase
 
 
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
module register32bit_PC(input clk, input reset, input regWrite, input [31:0] writeData, output  [31:0] outR);
	D_ff_PC d0(clk,reset,regWrite,writeData[0],outR[0]);
	D_ff_PC d1(clk,reset,regWrite,writeData[1],outR[1]);
	D_ff_PC d2(clk,reset,regWrite,writeData[2],outR[2]);
	D_ff_PC d3(clk,reset,regWrite,writeData[3],outR[3]);
	D_ff_PC d4(clk,reset,regWrite,writeData[4],outR[4]);
	D_ff_PC d5(clk,reset,regWrite,writeData[5],outR[5]);
	D_ff_PC d6(clk,reset,regWrite,writeData[6],outR[6]);
	D_ff_PC d7(clk,reset,regWrite,writeData[7],outR[7]);
	D_ff_PC d8(clk,reset,regWrite,writeData[8],outR[8]);
	D_ff_PC d9(clk,reset,regWrite,writeData[9],outR[9]);
	D_ff_PC d10(clk,reset,regWrite,writeData[10],outR[10]);
	D_ff_PC d11(clk,reset,regWrite,writeData[11],outR[11]);
	D_ff_PC d12(clk,reset,regWrite,writeData[12],outR[12]);
	D_ff_PC d13(clk,reset,regWrite,writeData[13],outR[13]);
	D_ff_PC d14(clk,reset,regWrite,writeData[14],outR[14]);
	D_ff_PC d15(clk,reset,regWrite,writeData[15],outR[15]);
	D_ff_PC d16(clk,reset,regWrite,writeData[16],outR[16]);
	D_ff_PC d17(clk,reset,regWrite,writeData[17],outR[17]);
	D_ff_PC d18(clk,reset,regWrite,writeData[18],outR[18]);
	D_ff_PC d19(clk,reset,regWrite,writeData[19],outR[19]);
	D_ff_PC d20(clk,reset,regWrite,writeData[20],outR[20]);
	D_ff_PC d21(clk,reset,regWrite,writeData[21],outR[21]);
	D_ff_PC d22(clk,reset,regWrite,writeData[22],outR[22]);
	D_ff_PC d23(clk,reset,regWrite,writeData[23],outR[23]);
	D_ff_PC d24(clk,reset,regWrite,writeData[24],outR[24]);
	D_ff_PC d25(clk,reset,regWrite,writeData[25],outR[25]);
	D_ff_PC d26(clk,reset,regWrite,writeData[26],outR[26]);
	D_ff_PC d27(clk,reset,regWrite,writeData[27],outR[27]);
	D_ff_PC d28(clk,reset,regWrite,writeData[28],outR[28]);
	D_ff_PC d29(clk,reset,regWrite,writeData[29],outR[29]);
	D_ff_PC d30(clk,reset,regWrite,writeData[30],outR[30]);
	D_ff_PC d31(clk,reset,regWrite,writeData[31],outR[31]);
endmodule

// End of PC

//*****************************************************************************************************************************************************************************



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

module mux2to1_32bit(input [31:0] in1, input [31:0] in2, input sel, output reg [31:0] muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule

module mux2to1_5bit(input [4:0] in1, input [4:0] in2, input sel, output reg [4:0] muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule

module mux2to1_2bit(input [1:0] in1, input [1:0] in2, input sel, output reg [1:0] muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule

module mux2to1_1bit(input in1, input in2, input sel, output reg muxOut );
  always @ ( in1 or in2 or sel )
  begin
    case ( sel )
      1'b0: muxOut = in1;
      1'b1: muxOut = in2;
    endcase
  end
endmodule

module mux4to1_32bit(input [31:0] in1, input [31:0] in2, input [31:0] in3, input [31:0] in4, input [1:0] sel, output reg [31:0] muxOut );
  always @ ( in1 or in2 or in3 or in4 or sel )
  begin
    case ( sel )
      2'b00: muxOut = in1;
      2'b01: muxOut = in2;
      2'b10: muxOut = in3; 
      2'b11: muxOut = in4;
    endcase
  end
endmodule

module mux8to1_32bit (input [31:0] in1, input [31:0] in2, input [31:0] in3, input [31:0] in4, input [31:0] in5, input [31:0] in6, input [31:0] in7, input [31:0] in8,
        input [2:0] sel, output reg [31:0] muxOut);
    
        always @ ( in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or sel )
        begin
            case (sel)
                3'b000:     muxOut = in1;
                3'b001:     muxOut = in2;
                3'b010:     muxOut = in3;
                3'b011:     muxOut = in4;
                3'b100:     muxOut = in5;
                3'b101:     muxOut = in6;
                3'b110:     muxOut = in7;
                3'b111:     muxOut = in8;
            endcase
        end
    
    endmodule // mux8to1_32bits ends

module ALU(input signed [31:0] aluIn1, input signed [31:0] aluIn2, input [1:0] aluOp, output reg signed [31:0] aluOut, output reg negFlag); //Output reg aluOut should be signed??
	always@(aluIn1 or aluIn2 or aluOp)
	begin
		case(aluOp)
			2'd0: aluOut = aluIn1 + aluIn2;
			2'd1: aluOut = aluIn1 - aluIn2;
			2'd2: aluOut = aluIn1 >>> aluIn2;
			2'd3: aluOut = 32'd0;
		endcase
		if(aluIn1<aluIn2)
			negFlag=1'b1;
		else
			negFlag=1'b0;
	end
endmodule

module adder(input [31:0] in1, input [31:0] in2, output reg [31:0] adder_out);
	always@(in1 or in2)
	begin
		adder_out = in1 + in2;
	end
endmodule

module comparator_neg(input signed [31:0] in1, input signed [31:0] in2, output reg comparatorOut);
	always@(in1 or in2)
	begin
		if(in1<in2)
			comparatorOut=1'b1;
		else
			comparatorOut=1'b0;
	end	
endmodule

module signExt12to32(input [11:0] in, output reg [31:0] signExtin);
	always@(in)
		signExtin={{20{in[11]}},in};
endmodule

module signExt13to32(input [12:0] in, output reg [31:0] signExtin);
	always@(in)
		signExtin={{19{in[12]}},in};
endmodule

module zeroExt5to32(input [4:0] in, output reg [31:0] zeroExtin);
	always@(in)
		zeroExtin={27'b0,in};
endmodule

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

module loadUseHazard (input memRead, input regWrite_16, input [4:0] regDest_ID_EX,
    input [4:0] rs1_16, input [4:0]  rs2_16, input [4:0] rs1_32, input [4:0] rs2_32,
    output reg pcWrite, output reg IFIDwrite, output reg flushCtrlSignal, output reg branchDataHazEnable);

    always @(memRead or regWrite_16 or regDest_ID_EX or rs1_16 or rs2_16 or rs1_32 or rs2_32)
    begin
        if(memRead && regWrite_16 && (regDest_ID_EX == rs1_16 || regDest_ID_EX == rs2_16 || regDest_ID_EX == rs1_32 || regDest_ID_EX == rs2_32))
        begin
            pcWrite = 1'b0;
            IFIDwrite = 1'b0;
            flushCtrlSignal = 1'b1;
            branchDataHazEnable = 1'b0;
        end

        else
        begin
            pcWrite = 1'b1;
            IFIDwrite = 1'b1;
            flushCtrlSignal = 1'b0;
            branchDataHazEnable = 1'b1;
        end
    end

endmodule // loadUseHazzardinput ends

module branchDataHazard(input enable, input branch, 
			  input [4:0] rs1_32, input [4:0] rs2_32,
			  input [4:0] rd_32_idex, input [4:0] rd_16_mv_idex, input [4:0] rd_16_exmem,
			  input regwrite_32_idex, input regwrite_16_idex, input regwrite_16_exmem, input memRead_exmem,
			  output reg branchControlHazardEnable, output reg [1:0] stallA, output reg [1:0] stallB, 
			  output reg pcWrite, output reg IFIDwrite, output reg flushCtrlSIgnal  
);

	always@(branch or enable or rs1_32 or rs2_32 or rd_16_exmem or rd_16_mv_idex or rd_32_idex or regwrite_32_idex or regwrite_16_idex or regwrite_16_exmem or memRead_exmem)
	begin
		if(branch && enable)
		begin
			if(rs1_32==rd_32_idex && regwrite_32_idex && rd_32_idex)	stallA=2'b01;
			else if(rs1_32==rd_16_mv_idex && regwrite_16_idex && rd_16_mv_idex) stallA=2'b10;
			else if(rs1_32==rd_16_exmem && regwrite_16_exmem && memRead_exmem && rd_16_exmem) stallA=2'b11;
			else stallA=2'b00;

			if(rs2_32==rd_32_idex && regwrite_32_idex && rd_32_idex)	stallB=2'b01;
			else if(rs2_32==rd_16_mv_idex && regwrite_16_idex && rd_16_mv_idex) stallB=2'b10;
			else if(rs2_32==rd_16_exmem && regwrite_16_exmem && memRead_exmem && rd_16_exmem) stallB=2'b11;
			else stallB=2'b00;
		end
		else
		begin
			stallA=2'b00;
			stallB=2'b00;
		end
	end
	
	always@(stallA or stallB)
	begin
		if(stallA !=2'b00 || stallB !=2'b00)
		begin
			pcWrite=1'b0;
			IFIDwrite=1'b0;
			flushCtrlSIgnal=1'b1;
			branchControlHazardEnable=1'b0;
		end
		else
		begin
			pcWrite=1'b1;
			IFIDwrite=1'b1;
			flushCtrlSIgnal=1'b0;
			branchControlHazardEnable=1'b1;
		end
		
	end

endmodule

module branchCtrlHazard (input enable, input comparatorOut, input branchInstr, input jumpInstr,
    output reg branchPcSrc, output reg jumpPcSrc, output reg IFID_flush);

    always @(comparatorOut or branchInstr or jumpInstr or enable)
    begin
        if((enable & branchInstr) | jumpInstr)
        begin
            if(comparatorOut == 1'b1 && branchInstr == 1'b1)
            begin
                branchPcSrc = 1'b1;
                IFID_flush = 1'b1;
                jumpPcSrc = 1'b0;
            end

            else if(jumpInstr == 1'b1)
            begin
                branchPcSrc = 1'b0;
                IFID_flush = 1'b1;
                jumpPcSrc = 1'b1;
            end

            else
            begin
                branchPcSrc = 1'b0;
                IFID_flush = 1'b0;
                jumpPcSrc = 1'b0;
            end
        end

        else
        begin
            branchPcSrc = 1'b0;
            IFID_flush = 1'b0;
            jumpPcSrc = 1'b0;
        end
    end

endmodule // branchCtrlHazzard ends

module forwarding_circuit(input [4:0] rs1_32, input [4:0] rs2_32, input [4:0] rs1_16, input [4:0] rs2_16, 
						  input [4:0] rd_32_ex, input [4:0] rd_32_mem, input [4:0] rd_32_wb, input [4:0] rd_16_ex, input [4:0] rd_16_mem, input [4:0] rd_16_wb,
						  input regWrite_32_ex, input regWrite_32_mem, input regWrite_32_wb, input regWrite_16_ex, input regWrite_16_mem, input regWrite_16_wb,
						  output reg [2:0] fwdmuxA_32, output reg [2:0] fwdmuxB_32,output reg [2:0] fwdmuxA_16, output reg [2:0] fwdmuxB_16);
						  
						  
	always@(regWrite_16_ex or regWrite_16_mem or regWrite_16_wb or regWrite_32_ex or regWrite_32_mem or regWrite_32_wb or rs1_16 or rs1_32 or rs2_16 or rs2_32 or rd_16_ex or rd_16_mem or rd_16_wb or rd_32_ex or rd_32_mem or rd_32_wb)
	begin
		
		if(rd_16_ex==rs1_32 && rd_16_ex && regWrite_16_ex) fwdmuxA_32=3'b001; //1-2 16-32
		else if (rd_32_ex==rs1_32 && rd_32_ex && regWrite_32_ex) fwdmuxA_32=3'b010; //1-2 32-32
		else if (rd_16_mem==rs1_32 && rd_16_mem && regWrite_16_mem) fwdmuxA_32=3'b011; //1-3 16-32
		else if (rd_32_mem==rs1_32 && rd_32_mem && regWrite_32_mem) fwdmuxA_32=3'b100; //1-3 32-32
		else if (rd_16_wb==rs1_32 && rd_16_wb && regWrite_16_wb) fwdmuxA_32=3'b101; //1-4 16-32
		else if (rd_32_wb==rs1_32 && rd_32_wb && regWrite_32_wb) fwdmuxA_32=3'b110; //1-4 32-32
		else fwdmuxA_32=3'b000;

		if(rd_16_ex==rs2_32 && rd_16_ex && regWrite_16_ex) fwdmuxB_32=3'b001; //1-2 16-32
		else if (rd_32_ex==rs2_32 && rd_32_ex && regWrite_32_ex) fwdmuxB_32=3'b010; //1-2 32-32
		else if (rd_16_mem==rs2_32 && rd_16_mem && regWrite_16_mem) fwdmuxB_32=3'b011; //1-3 16-32
		else if (rd_32_mem==rs2_32 && rd_32_mem && regWrite_32_mem) fwdmuxB_32=3'b100; //1-3 32-32
		else if (rd_16_wb==rs2_32 && rd_16_wb && regWrite_16_wb) fwdmuxB_32=3'b101; //1-4 16-32
		else if (rd_32_wb==rs2_32 && rd_32_wb && regWrite_32_wb) fwdmuxB_32=3'b110; //1-4 32-32
		else fwdmuxB_32=3'b000;

		if(rd_16_ex==rs1_16 && rd_16_ex && regWrite_16_ex) fwdmuxA_16=3'b001; //1-2 16-16
		else if (rd_32_ex==rs1_16 && rd_32_ex && regWrite_32_ex) fwdmuxA_16=3'b010; //1-2 32-16
		else if (rd_16_mem==rs1_16 && rd_16_mem && regWrite_16_mem) fwdmuxA_16=3'b011; //1-3 16-16
		else if (rd_32_mem==rs1_16 && rd_32_mem && regWrite_32_mem) fwdmuxA_16=3'b100; //1-3 32-16
		else if (rd_16_wb==rs1_16 && rd_16_wb && regWrite_16_wb) fwdmuxA_16=3'b101; //1-4 16-16
		else if (rd_32_wb==rs1_16 && rd_32_wb && regWrite_32_wb) fwdmuxA_16=3'b110; //1-4 32-16
		else fwdmuxA_16=3'b000;

		if(rd_16_ex==rs2_16 && rd_16_ex && regWrite_16_ex) fwdmuxB_16=3'b001; //1-2 16-16
		else if (rd_32_ex==rs2_16 && rd_32_ex && regWrite_32_ex) fwdmuxB_16=3'b010; //1-2 32-16
		else if (rd_16_mem==rs2_16 && rd_16_mem && regWrite_16_mem) fwdmuxB_16=3'b011; //1-3 16-16
		else if (rd_32_mem==rs2_16 && rd_32_mem && regWrite_32_mem) fwdmuxB_16=3'b100; //1-3 32-16
		else if (rd_16_wb==rs2_16 && rd_16_wb && regWrite_16_wb) fwdmuxB_16=3'b101; //1-4 16-16
		else if (rd_32_wb==rs2_16 && rd_32_wb && regWrite_32_wb) fwdmuxB_16=3'b110; //1-4 32-16
		else fwdmuxB_16=3'b000;
		
	end

endmodule

module control_circuit_32(input [6:0] opcode, input [2:0] funct3, input [6:0] funct7,
    output reg jump, output reg branch, output reg [1:0] aluSrcB, output reg [1:0] aluOp, output reg [1:0] writeDataSelect_32, output reg regWrite_32);

	
    always @(opcode or funct3)
        begin

            case(opcode)
                7'b0010011:
                    begin
                        if(funct3 == 3'b101)                    //srai
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b01;
                                aluOp = 2'b10;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b1;
                            end
						
						else if(funct3 == 3'b000)                 //addi
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b10;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b1;
							end
							
						else if(funct3 == 3'b011)                    //sltiu
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b11;
                                aluOp = 2'b01;
                                writeDataSelect_32 = 2'b10;
                                regWrite_32 = 1'b1;
                            end
						else
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b0;
                            end
					end

                7'b0110011:
                    begin
                        if(funct3 == 3'b000)                    //sub
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b01;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b1;
                            end
						else
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b0;
                            end
                    end

                7'b1100111:
                    begin
                        if(funct3 == 3'b000)                    //jalr
                            begin
                                jump = 1'b1;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b01;
                                regWrite_32 = 1'b1;
                            end
						else
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b0;
                            end
					end

                7'b1100011:
                    begin
                        if(funct3 == 3'b100)                    //blt
                            begin
                                jump = 1'b0;
                                branch = 1'b1;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b0;
                            end
    					else
                            begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b0;
                            end     
					end
				default:    begin
                                jump = 1'b0;
                                branch = 1'b0;
                                aluSrcB = 2'b00;
                                aluOp = 2'b00;
                                writeDataSelect_32 = 2'b00;
                                regWrite_32 = 1'b0;
                            end
            endcase
        end

endmodule //control_circuit_32 ends



module control_circuit_16 (input [1:0] opcode, input [3:0] funct,
    output reg rs2_select_16, output reg memAdderSrcA, output reg memAdderSrcB, output reg regDest16_select,
    output reg memRead, output reg memWrite, output reg aluMemSelect, output reg regWrite_16);

    always @(opcode or funct)
		begin
			memWrite=1'b0;
            case(opcode)
                2'b10:
                    begin
                        if(funct == 4'b1000)                    //cmv
                            begin
                                rs2_select_16 = 1'b0;
                                memAdderSrcA = 1'b0;
                                memAdderSrcB = 1'b0;
                                regDest16_select = 1'b0;
                                memRead = 1'b0;
                                memWrite = 1'b0;
                                aluMemSelect = 1'b0;
                                regWrite_16 = 1'b1;
                            end
								else
									begin
                                rs2_select_16 = 1'b0;
                                memAdderSrcA = 1'b0;
                                memAdderSrcB = 1'b0;
                                regDest16_select = 1'b0;
                                memRead = 1'b0;
                                memWrite = 1'b0;
                                aluMemSelect = 1'b0;
                                regWrite_16 = 1'b0;
                            end
                    end

                2'b00:
                    begin
                        if(funct[3:1] == 3'b010)                    //clw
                            begin
                                rs2_select_16 = 1'b1;
                                memAdderSrcA = 1'b1;
                                memAdderSrcB = 1'b1;
                                regDest16_select = 1'b1;
                                memRead = 1'b1;
                                memWrite = 1'b0;
                                aluMemSelect = 1'b1;
                                regWrite_16 = 1'b1;
                            end
							
						else if(funct[3:1] == 3'b110)                    //csw
                            begin
                                rs2_select_16 = 1'b1;
                                memAdderSrcA = 1'b1;
                                memAdderSrcB = 1'b1;
                                regDest16_select = 1'b0;
                                memRead = 1'b0;
                                memWrite = 1'd1;
                                aluMemSelect = 1'b0;
                                regWrite_16 = 1'b0;
                            end
						else
							begin
                                rs2_select_16 = 1'b0;
                                memAdderSrcA = 1'b0;
                                memAdderSrcB = 1'b0;
                                regDest16_select = 1'b0;
                                memRead = 1'b0;
                                memWrite = 1'b0;
                                aluMemSelect = 1'b0;
                                regWrite_16 = 1'b0;
							end
                    end
			default: begin
                                rs2_select_16 = 1'b0;
                                memAdderSrcA = 1'b0;
                                memAdderSrcB = 1'b0;
                                regDest16_select = 1'b0;
                                memRead = 1'b0;
                                memWrite = 1'b0;
                                aluMemSelect = 1'b0;
                                regWrite_16 = 1'b0;
                   end
            endcase
        end

endmodule //control_circuit_16 ends

module testDM(input clk,input reset,input memRead,input memWrite,input [31:0] addressIn,input [31:0] dataIn, output reg [31:0] dataOut );
	always@(negedge clk)
		dataOut=32'd1;
endmodule

//Flip Flops for the IM Registers
module D_ff_IM(input clk, input reset, input d, output reg q);
	always@(negedge clk)
		begin
			if(reset)
				q=d;
		end
endmodule

// 16 bit Registers
module register_IM(input clk, input reset, input [15:0] d_in, output [15:0] q_out);
	D_ff_IM dIM0 (clk, reset, d_in[0], q_out[0]);
	D_ff_IM dIM1 (clk, reset, d_in[1], q_out[1]);
	D_ff_IM dIM2 (clk, reset, d_in[2], q_out[2]);
	D_ff_IM dIM3 (clk, reset, d_in[3], q_out[3]);
	D_ff_IM dIM4 (clk, reset, d_in[4], q_out[4]);
	D_ff_IM dIM5 (clk, reset, d_in[5], q_out[5]);
	D_ff_IM dIM6 (clk, reset, d_in[6], q_out[6]);
	D_ff_IM dIM7 (clk, reset, d_in[7], q_out[7]);
	D_ff_IM dIM8 (clk, reset, d_in[8], q_out[8]);
	D_ff_IM dIM9 (clk, reset, d_in[9], q_out[9]);
	D_ff_IM dIM10 (clk, reset, d_in[10], q_out[10]);
	D_ff_IM dIM11 (clk, reset, d_in[11], q_out[11]);
	D_ff_IM dIM12 (clk, reset, d_in[12], q_out[12]);
	D_ff_IM dIM13 (clk, reset, d_in[13], q_out[13]);
	D_ff_IM dIM14 (clk, reset, d_in[14], q_out[14]);
	D_ff_IM dIM15 (clk, reset, d_in[15], q_out[15]);
endmodule



module mux32to1_IM(input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
	outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,
	input [4:0] Sel, output reg [47:0] outBus );

	always@(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15,
		outR16,outR17,outR18,outR19,outR20,outR21,outR22,outR23,outR24,outR25,outR26,outR27,outR28,outR29,outR30,outR31,Sel)
		case (Sel)
			5'd0: outBus = {outR2,outR1,outR0};
			5'd1: outBus = {outR3,outR2,outR1};
			5'd2: outBus = {outR4,outR3,outR2};
			5'd3: outBus = {outR5,outR4,outR3};
			5'd4: outBus = {outR6,outR5,outR4};
			5'd5: outBus = {outR7,outR6,outR5};
			5'd6: outBus = {outR8,outR7,outR6};
			5'd7: outBus = {outR9,outR8,outR7};
			5'd8: outBus = {outR10,outR9,outR8};
			5'd9: outBus = {outR11,outR10,outR9};
			5'd10: outBus = {outR12,outR11,outR10};
			5'd11: outBus = {outR13,outR12,outR11};
			5'd12: outBus = {outR14,outR13,outR12};
			5'd13: outBus = {outR15,outR14,outR13};
			5'd14: outBus = {outR16,outR15,outR14};
			5'd15: outBus = {outR17,outR16,outR15};
			5'd16: outBus = {outR18,outR17,outR16};
			5'd17: outBus = {outR19,outR18,outR17};
			5'd18: outBus = {outR20,outR19,outR18};
			5'd19: outBus = {outR21,outR20,outR19};
			5'd20: outBus = {outR22,outR21,outR20};
			5'd21: outBus = {outR23,outR22,outR21};
			5'd22: outBus = {outR24,outR23,outR22};
			5'd23: outBus = {outR25,outR24,outR23};
			5'd24: outBus = {outR26,outR25,outR24};
			5'd25: outBus = {outR27,outR26,outR25};
			5'd26: outBus = {outR28,outR27,outR26};
			5'd27: outBus = {outR29,outR28,outR27};
			5'd28: outBus = {outR30,outR29,outR28};
			5'd29: outBus = {outR31,outR30,outR29};
			5'd30: outBus = {32'b0,outR31,outR30};
			5'd31: outBus = {32'b0,32'b0,outR31};
		endcase
endmodule


module testIM(input clk, input reset, input [4:0] pc_5bits, output [47:0] IR);

	wire [15:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,	Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,
				Qout16, Qout17, Qout18, Qout19, Qout20, Qout21, Qout22, Qout23,	Qout24, Qout25, Qout26, Qout27, Qout28, Qout29, Qout30, Qout31;

	register_IM rIM0 (clk, reset, 16'b1_101_00010_0010011, Qout0);
	register_IM rIM1 (clk, reset, 16'b0100000_00001_0001, Qout1); //srai $t2, $t1, 5'd1
	register_IM rIM2 (clk, reset, 16'b110_000_000_00_001_00, Qout2); //sw $1, $0(0)
	register_IM rIM3 (clk, reset, 16'h0000, Qout3);
	register_IM rIM4 (clk, reset, 16'b0_000_00100_0110011, Qout4);
	register_IM rIM5 (clk, reset, 16'b0100000_00011_0000, Qout5); //sub $t3, $0, $t4
	register_IM rIM6 (clk, reset, 16'b1000_00101_00001_10, Qout6); //cmv $t5, $1
	register_IM rIM7 (clk, reset, 16'h0000, Qout7);
	register_IM rIM8 (clk, reset, 16'b0_000_00001_0010011, Qout8);
	register_IM rIM9 (clk, reset, 16'b000000000001_0000, Qout9); //addi $t1, $0, 12'd1
	register_IM rIM10 (clk, reset, 16'b110_000_000_00_100_00, Qout10); //sw $t4, $0(0)
	register_IM rIM11 (clk, reset, 16'h0000, Qout11);
	register_IM rIM12 (clk, reset, 16'b1_101_00010_0010011, Qout12);
	register_IM rIM13 (clk, reset, 16'b0100000_00010_0101, Qout13); //srai $t2, $t1, 5'd2
	register_IM rIM14 (clk, reset, 16'b1000_00110_00000_10, Qout14); //cmv $t6, $t0
	register_IM rIM15 (clk, reset, 16'h0000, Qout15);
	register_IM rIM16 (clk, reset, 16'h0000, Qout16);
	register_IM rIM17 (clk, reset, 16'h0000, Qout17);
	register_IM rIM18 (clk, reset, 16'h0000, Qout18);
	register_IM rIM19 (clk, reset, 16'h0000, Qout19);
	register_IM rIM20 (clk, reset, 16'h0000, Qout20);
	register_IM rIM21 (clk, reset, 16'h0000, Qout21);
	register_IM rIM22 (clk, reset, 16'h0000, Qout22);
	register_IM rIM23 (clk, reset, 16'h0000, Qout23);
	register_IM rIM24 (clk, reset, 16'h0000, Qout24);
	register_IM rIM25 (clk, reset, 16'h0000, Qout25);
	register_IM rIM26 (clk, reset, 16'h0000, Qout26);
	register_IM rIM27 (clk, reset, 16'h0000, Qout27);
	register_IM rIM28 (clk, reset, 16'h0000, Qout28);
	register_IM rIM29 (clk, reset, 16'h0000, Qout29);
	register_IM rIM30 (clk, reset, 16'h0000, Qout30);
	register_IM rIM31 (clk, reset, 16'h0000, Qout31);
	mux32to1_IM mIM (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,
					Qout16,Qout17,Qout18,Qout19,Qout20,Qout21,Qout22,Qout23,Qout24,Qout25,Qout26,Qout27,Qout28,Qout29,Qout30,Qout31,
					pc_5bits[4:0],IR);
endmodule

//module IM ends

//*****************************************************************************************************************************************************************************

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

module topModuletestbench;
	reg clk;
	reg reset;
	wire [31:0] aluOut, memOut;
	
	topmodule tM(clk, reset, aluOut, memOut);

	always
	#10 clk=~clk;
	
	initial
	begin
		clk=0; reset=1;
		#25  reset=0;	
		
		#300 $finish; 
	end
endmodule

/*
READ ME

Group Number- 9
Question Number-3
Group Members							Contribution
Rahul Parashar								20
Kausam Bhat								20
Akhilesh Ram								20
Garvit Gupta								25
Akash Navani								10
Amreen 								5

Cache Specifications:
Cache Size - 512B
Cache Line Size - 8B
Associativity- 4

Write Policy- Write Back
Replacement Policy- LRU Counter
Cache Type - Way Halting 

Offset:2 bits
Index: 4 bits
Tag:26(22 main+4 halt tag)

Total Size: 8*64 + (26*64)/8 + (2*64)/8 = 736 Bytes

 */
 