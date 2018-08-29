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