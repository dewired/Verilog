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
