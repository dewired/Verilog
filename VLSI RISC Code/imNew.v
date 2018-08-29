//Module Data memory
module memorycell(address, data);
  output reg [7:0]data;
  //input [1:0]rw;
  //input [7:0]inp;
  input [7:0]address;
  reg [7:0]mem[0:100];
  initial
  begin
    //ins memory
    mem[0]=8'b0000_0011;
    mem[1]=8'b0100_0101;
    mem[2]=8'b0000_0100;
    mem[3]=8'b0110_0101;
    mem[4]=8'b0000_0100;
    mem[5]=8'b1001_0101;
    mem[6]=8'b0000_0100;
    mem[7]=8'b1000_0111;
    mem[8]=8'b0000_0111;
    mem[9]=8'b1101_0110;
    mem[10]=8'b0000_0000;
    mem[11]=8'b0000_0000;
    mem[12]=8'b0000_0111;
    mem[13]=8'b1101_0101;
    mem[14]=8'b0;
    mem[15]=8'b0;
    mem[16]=8'b0;
    mem[17]=8'b0;
    mem[18]=8'b0;
    mem[19]=8'b0;
    mem[20]=8'b0;

  end
  always@(address)
  begin
     data={mem[address][7:0],mem[address+1'b1][7:0]};
  end
endmodule
