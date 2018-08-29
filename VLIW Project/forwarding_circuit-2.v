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