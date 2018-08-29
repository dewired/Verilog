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
