module forwardOperand(input [2:0] rs, input [2:0] rt, input [2:0] rdOutEx, input regWriteEx, output reg fwd);

always@(regWriteEx or rs or rt or rdOutEx)
begin

    fwd=1'b1;


    if (rs==rdOutEx && regWriteEx==1'b1) begin fwd=1'b0; end

    else if (rt==rdOutEx && regWriteEx==1'b1) begin fwd=1'b0; end

end
endmodule
