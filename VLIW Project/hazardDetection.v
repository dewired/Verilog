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

