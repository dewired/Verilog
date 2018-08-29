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