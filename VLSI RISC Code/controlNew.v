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
