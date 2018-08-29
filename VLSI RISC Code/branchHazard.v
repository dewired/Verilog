module comparator(input signed [7:0] in1, input signed [7:0] in2, output reg comparatorOut);
	always@(in1 or in2)
	begin
		if(in1==in2)
			comparatorOut=1'b1;
		else
			comparatorOut=1'b0;
	end
endmodule

module branchAdder(input [7:0] in1, input [7:0] in2, output reg [7:0] branchAddr);

always @ ( in1 or in2 ) begin
    branchAddr = in1 + in2;
end

endmodule

module branchCtrlHazard ( input comparatorOut, input branchInstr,
    output reg branchPcSrc, output reg IFID_flush);

    always @(comparatorOut or branchInstr)
    begin
        if(branchInstr == 2'b11)
        begin
            if(comparatorOut == 1'b1 && branchInstr == 2'b11)
            begin
                branchPcSrc = 1'b1;
                IFID_flush = 1'b1;
            end

            else
            begin
                branchPcSrc = 1'b0;
                IFID_flush = 1'b0;
            end
        end

    end

endmodule // branchCtrlHazzard ends
