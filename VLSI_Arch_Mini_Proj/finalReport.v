// Module EDB MUX
module finalmuxedb(data,edb1,sel,edb,eclk);
input [28:0]sel;
input eclk;
input [7:0] data,edb1;
output reg [7:0]edb;
always@(posedge eclk)
begin
  if(sel==29'b01_1100_10011_0000_1100_0000_00_0000 || sel==29'b01_1001_00000_0001_1100_0000_11_0010 || sel==29'b01_1100_10000_0100_1100_0000_00_0000)
    edb=data;
  else if(sel==29'b10_1100_11000_1000_0001_0000_11_1001)
    edb=edb1;
  end
endmodule
//Module MUX a
module finalmuxa(pc,ry,t1,rx,sel,a);
input [10:0]sel;
//input eclk;
input [7:0] pc,ry,t1,rx;
output reg [7:0]a;
always@(*)
begin
  if(sel==11'b01000000011 || sel==11'b01000000000 || sel==11'b01000111000)
    a=pc;
  else if(sel==11'b00000010001)
    a=ry;
  else if(sel==11'b00111000000)   
    a=t1;
  else if(sel==11'b00000010101 || sel==11'b00000000100)
    a=rx;
    
  end
endmodule 
//Module Mux B   
module finalmuxb(ry,di,t2,t1,sel,b);
input [10:0]sel;
//input eclk;
input [7:0] di,ry,t1,t2;
output reg [7:0]b;
always@(*)
begin
  if(sel==11'b00000010001 || sel==11'b00000010101)
    b=di;
  else if(sel==11'b00000000100 || sel==11'b00100001111)
    b=ry;
  else if(sel==11'b10000100000 || sel==11'b00100100011 || sel==11'b10000100000 || sel==11'b10000100000 || sel==11'b01000111000)   
    b=t1;
  else if(sel==11'b00111000000)
    b=t2;   
  end
endmodule
    
//Module input select
module mux(ins,ireout,sel,out);
  input sel; //oclk;
  input [7:0]ins,ireout;
  output reg [7:0]out;
  always@(*)
  begin
    if (sel==1)
      out=ins;
    else 
      out=ireout;
    end
  endmodule
 
//Module instruction breaking
module decode(in,out1,out2,out3,out4);
  input [7:0] in;
  output reg [1:0] out1,out2,out3,out4;
  always@(in)
  begin
    out1<=in[3:2];
    out2<=in[7:6];
    out3<=in[1:0];
    out4<=in[5:4];
  end
endmodule
//Module address generator
module ibdecoder(in1,in2,out1,out2);
input [1:0]in1,in2;
output reg [3:0] out1,out2;
always@(*)
  begin
    if(in1==2'b00 & in2==2'b11)                                                             
     out2=4'b1011;
    else if(in1==2'b00)
     out2=4'b1101;
    else if(in1==2'b01 & in2==2'b11)  
     begin out1=4'b0000; out2=4'b0101; end
     else if(in1==2'b10 & in2==2'b11)  
     begin out1=4'b0001; out2=4'b0101; end
    else if(in1==2'b01)  
     begin out1=4'b0000; out2=4'b0111; end
     else if(in1==2'b10)  
     begin out1=4'b0001; out2=4'b0111; end
     end
endmodule
//Module Next state control
module next_state(OP, TY, IB,SB,DB,out);
  input[1:0] OP;
  input[1:0] TY;
//  input oclk;
  input [3:0] IB,SB,DB;
  output reg [3:0] out;
  always @(*)
  begin 
  if (TY==2'b11)
    out=DB;
  else if ((OP==2'b01 || OP==2'b10) && TY==2'b01)
    out=IB;
  else if ((OP==2'b01 || 2'b10) && TY==2'b00)
    out=SB;
  else if( OP==2'b00)
    out=SB;
  end
  endmodule
  
//Module Data memory
module memorycell(data,address,rw,inp);
  output reg [7:0]data;
  input [1:0]rw;
  input [7:0]inp;
  input [7:0]address;
  reg [7:0]mem[0:100];
  initial
  begin
    //ins memory
    mem[0]=8'b00010110;
    mem[1]=8'b00010110;
    mem[2]=8'b00011010;
    mem[3]=8'b00000100;
    mem[4]=8'b0;
    mem[5]=8'b0;
    mem[6]=8'b0;
    mem[7]=8'b0;
    mem[8]=8'b0;
    mem[9]=8'b0;
    mem[10]=8'b0;
    mem[11]=8'b0;
    mem[12]=8'b0;
    mem[13]=8'b00010000;
    mem[14]=8'b0;
    mem[15]=8'b00000101;
    mem[16]=8'b0;
    mem[17]=8'b0;
    mem[18]=8'b0;
    mem[19]=8'b0;
    mem[20]=8'b0;
    mem[21]=8'b0;
    mem[22]=8'b0;
    mem[23]=8'b0;
    mem[24]=8'b0;
    mem[25]=8'b0;
    mem[26]=8'b0;
    mem[27]=8'b0;
    mem[28]=8'b0;
    mem[29]=8'b0;
    mem[30]=8'b0;
    mem[31]=8'b0;
   // data memory
    mem[32]=8'b0;
    mem[33]=8'b0;
    mem[34]=8'b0;
    mem[35]=8'b0;
    mem[36]=8'b0;
    mem[37]=8'b0;
    mem[38]=8'b0;
    mem[39]=8'b0;
    mem[40]=8'b0;
    mem[41]=8'b0;
    mem[42]=8'b0;
    mem[43]=8'b0;
    mem[44]=8'b0;
    mem[45]=8'b0;
    mem[46]=8'b0;
    mem[47]=8'b0;
    mem[48]=8'b0;
    mem[49]=8'b0;
    mem[50]=8'b0;
    mem[51]=8'b0;
    mem[52]=8'b0;
    mem[53]=8'b0;
    mem[54]=8'b0;
    mem[55]=8'b0;
    mem[56]=8'b0;
    mem[57]=8'b0;
    mem[58]=8'b0;
    mem[59]=8'b0;
    mem[60]=8'b0;
    mem[61]=8'b0;
    mem[62]=8'b0;
    mem[63]=8'b0;
    mem[64]=8'b0;
    mem[65]=8'b0;
    mem[66]=8'b0;
    mem[67]=8'b0;
    mem[68]=8'b0;
    mem[69]=8'b0;
    mem[70]=8'b0;
    mem[71]=8'b0;
    mem[72]=8'b0;
    mem[73]=8'b0;
    mem[74]=8'b0;
    mem[75]=8'b0;
    mem[76]=8'b0;
    mem[77]=8'b0;
    mem[78]=8'b0;
    mem[79]=8'b0;
    mem[80]=8'b0;
    mem[81]=8'b0;
    mem[82]=8'b0;
    mem[83]=8'b0;
    mem[84]=8'b0;
    mem[85]=8'b0;
    mem[86]=8'b0;
    mem[87]=8'b0;
    mem[88]=8'b0;
    mem[89]=8'b0;
    mem[90]=8'b0;
    mem[91]=8'b0;
    mem[92]=8'b0;
    mem[93]=8'b0;
    mem[94]=8'b0;
    mem[95]=8'b0;
    mem[96]=8'b0;
    mem[97]=8'b0;
    mem[98]=8'b0;
    mem[99]=8'b0;
    mem[100]=8'b0;
  end
  always@(rw,address)
  begin 
   if (rw==1)
     data=mem[address][7:0];
   else if (rw==2)
     mem[address]=inp;
  end
endmodule
// Control Memory
module control_memory (address, controlword,eclk);
input eclk;
input [3:0] address;

output reg [28:0] controlword;
wire [28:0] register [0:15];

assign register [4'b0000] =29'b01_1100_10011_0000_1100_0000_00_0000;
assign register [4'b0001] =29'b01_1001_00000_0001_1100_0000_11_0010;
assign register [4'b0010] =29'b00_0010_00000_0100_1100_0000_11_0011;
assign register [4'b0011] =29'b00_0000_00100_0010_0100_0000_11_0100;
assign register [4'b0100] =29'b01_1100_10000_0100_1100_0000_00_0000;
assign register [4'b0101] =0;
assign register [4'b0110] =0;
assign register [4'b0111] =29'b00_0000_00101_0011_0100_0000_11_1000;
assign register [4'b1000] =29'b10_1100_11000_1000_0001_0000_11_1001;
assign register [4'b1001] =29'b01_1001_00000_0001_0000_1000_11_1010;
assign register [4'b1010] =29'b00_0010_00000_0100_0000_0110_01_0000;
assign register [4'b1011] =0;
assign register [4'b1100] =0;
assign register [4'b1101] =29'b00_0000_00001_0011_0000_0000_11_1110;
assign register [4'b1110] =29'b01_1001_00110_0101_0000_1000_11_1111;
assign register [4'b1111] =29'b00_0010_00000_0100_0000_0110_01_0000;

always@(posedge eclk)
begin controlword = register [address];
end
endmodule

//Module PC
module pc1(reset,eclk,controlpc,b,pc);
 input reset,eclk;
 input [1:0] controlpc;
 input [7:0] b;
 output reg [7:0] pc;
 always@(posedge eclk)
  begin
    if(reset==1'b1)
      pc=8'b0;
  else 
  case(controlpc)
  2'b10: pc=b;
  endcase
  end
 
endmodule 

// Module T2
module t2_reg(reset,eclk,controlt2,b,t2);
  input reset,eclk;
  input [1:0]controlt2;
  output reg [7:0] t2;
  input [7:0]b;
  always@(posedge eclk)
   begin
    if(reset==1)
     t2=0;
    else if(controlt2==2'b10)
     t2=b;
   end
 endmodule
 
 //Module T1
module t1_reg(reset,eclk,controlt1,in,t1);
  input reset,eclk;
  input [7:0]in;
  input [1:0]controlt1;
  output reg [7:0] t1;
  always@(negedge eclk)
   begin
   if(reset==1)
     t1=0;
   else
   begin
     t1=in;
   end
 end
 endmodule
 
 // Module AO_buffer
 module AObuffer (reset,a,b,controlao,eab);
  input reset;
  input [7:0]a,b;
  input [1:0] controlao;
  output [7:0]eab;
  assign eab =(reset) ? 8'b0 : (controlao == 2) ? a : (controlao == 3) ? b : eab;
                          	     /*always@(a,b)
                                   begin
      	 	 	 	 	                      if(reset==1)
                                      eab = 0 ;
        	 	 	 	     	                else if(controlao == 2'b10)
                                      eab=a;
      	 	 	                          else if(controlao==2'b11)
                                      eab=b;
                                     else
                                      eab=eab;*/
endmodule

//Module DO
module dobuffer(reset,selectdo,a,b, edb);
  input reset;
  input [7:0] a,b;
  input [1:0]selectdo;
  output [7:0] edb;
  assign edb = (reset) ? 8'b0 : (selectdo == 1) ? a : (selectdo == 2) ? b : edb;
  endmodule
  
// Module DI
module di(reset,eclk,controldi,di,edb);
  input reset,eclk;
  input [7:0] edb;
  input [1:0]controldi;
  output reg [7:0] di;
  always@(posedge eclk)
  begin
    if (reset==1'b1)
      di=8'b0;
    else case(controldi)
     2'b11: di=edb;
  endcase
  end
                                                //  assign  di_bus_a = (~clk && di_control == 2) ? di : di_bus_a;
                                              //  assign  di_bus_b = (~clk && di_control == 1) ? di : di_bus_b;
endmodule
//Module register
module registers(eclk,in1,in2,controlreg,rx,ry,b);
  input[1:0]in1,in2;
  input eclk;
  input [7:0]b;
  input[2:0]controlreg;
  reg [7:0]register[0:3];
  output reg [7:0]rx,ry;
  initial
  begin
    register[0]=8'b00001111;
    register[1]=8'b00001011;
    register[2]=8'b00001101;
    register[3]=8'b00001101;
  end
 /* always@(*)
 begin
   case(in1)
     0: rx= register[0];
     1: rx= register[1];
     2: rx= register[2];
     3: rx= register[3];
   endcase
   case(in2)
     0: ry= register[0];
     1: ry= register[1];
     2: ry= register[2];
     3: ry= register[3];
   endcase
 end*/
 always@(in1,in2,controlreg,b)
 begin
   case(controlreg)
   1: begin   rx=register[in1][7:0]; ry=register[in2][7:0]; end
   2: ry=register[in2][7:0];
   3: ry=register[in2][7:0];
   4: rx=register[in2][7:0];
   5: rx=register[in1][7:0];
 //  default: begin a=a; b=b; end
   endcase
 end  
 always@(posedge eclk)
 begin
   case(controlreg)
   2: register[in1]=b;
   6: register[in2]=b;
   endcase
 end  
 endmodule

// Module IRF
module IRF(edb,controlirf,irfout,eclk);
  input [7:0] edb;
  input eclk;
  input [1:0]controlirf;
  output reg [7:0] irfout;
  reg [7:0]int;
  always@(posedge eclk)
   begin
     if(controlirf==2'b10)
       int=edb;
   else if(controlirf==2'b01)  // make this negedge
       irfout=int;
     end
   endmodule
   
 // Module IRE
 module IRE(in,controlire,ireout,eclk);
  input [7:0] in;
  input eclk;
  input [1:0]controlire;
  output reg [7:0] ireout;
  //reg [7:0]int1;
  always@(posedge eclk)
   begin
     if(controlire==2'b10)
       ireout=in;
  // else if(controlire==2'b01)    //Make this negedge
  //     ireout=int1;
     end
   endmodule  
   // ALU
   module alu(a,b,osel1,osel2,out);
  input [7:0]a,b;
  input [1:0]osel1,osel2;
  output reg [7:0]out;
  
  always@(*)
  begin
    case(osel1)
  2'b00: out=out;
  2'b01: out=a+1;
  2'b10: out=a+b;
  2'b11: begin 
      if(osel2==2'b00)
       out=a+b;
      else if(osel2==2'b01)
       out=a|b;
      else if(osel2==2'b10)
       out=a&b;
      end
endcase
end
endmodule
   module synchro(ins,sel1,reset,oclk,eclk,cclk);
     input oclk,eclk,reset,sel1,cclk;
     input [7:0]ins;
     wire [7:0]out,edb,edb1,data,irfout,ireout,a,b,out11;
     wire [7:0]eab;
     wire[1:0]out3,out4,out1,out2;
     wire[3:0]out5,out6,out7;
     wire [28:0]controlword;
     wire [7:0] pc,ry,rx,t1,di,t2;
     wire [10:0] sel;
    /* mux mu1(ins,ireout,sel,out);
     decode de1(out,out1,out2,out3,out4);
     ibdecoder ib1(out1,out2,out5,out6);  //ibdecoder output out1, out2;
     next_state ne1(out1,controlword[5:4], out5,out6,controlword[3:0],out7); //next state output is out
     registers r1(clk,out4,out3,controlword[20:18],a,b);
     control_memory m2(out7, controlword); // input is address
     IRF i2(edb,clk,controlword[9:8],irfout);
     IRE i1(irfout,clk,controlword[7:6],ireout);
     di d1(reset,clk,controlword[13:12],a,b,edb);
     dobuffer d2(reset,controlword[11:10],a,b, edb);
     AObuffer a1(reset,a,b,controlword[26:25],eab);
     t1_reg t1(reset,clk,controlword[17:16],b,a,outalu);
     t2_reg t2(reset,clk,controlword[22:21],b,a);
     pc p1(reset,clk,controlword[24:23],b,a);
     memorycell m1(edb,eab,controlword[28:27]);
     alu al1(a,b,controlword[15:14],out2,outalu);
     */
     assign sel={controlword[24:23],controlword[22:21],controlword[17:16],controlword[20:18],controlword[13:12]};
     finalmuxa f1(pc,ry,t1,rx,sel,a);
     finalmuxedb fi1(data,edb1,controlword,edb,eclk);
     finalmuxb f2(ry,di,t2,t1,sel,b);
     mux mu1(ins,ireout,sel1,out11);
     decode de1(out11,out1,out2,out3,out4);
     ibdecoder ib1(out1,out2,out5,out6);
     next_state ne1(out1,controlword[5:4], out5,out6,controlword[3:0],out7);
     memorycell m1(data,eab,controlword[28:27],edb1);
     control_memory co1(out7, controlword,eclk);
     pc1 p1(reset,eclk,controlword[24:23],b,pc);
     t2_reg t21(reset,eclk,controlword[22:21],b,t2);
     t1_reg t11(reset,eclk,controlword[17:16],out,t1);
     AObuffer ao1(reset,a,b,controlword[26:25],eab);
     dobuffer do1(reset,controlword[11:10],a,b, edb1);
     di d1(reset,eclk,controlword[13:12],di,data);
     registers r1(eclk,out4,out3,controlword[20:18],rx,ry,b);
     IRF ir1(data,controlword[9:8],irfout,eclk);
     IRE ire1(irfout,controlword[7:6],ireout,eclk);
     alu al1(a,b,controlword[15:14],out2,out);
   endmodule

  module tb_synchro;
    reg sel1,reset,oclk,eclk,cclk;
    reg [7:0]ins;
    synchro s1(ins,sel1,reset,oclk,eclk,cclk);
    initial
    begin
        reset=1; oclk=0; eclk=0; cclk=0;
    #10 reset=0; sel1=1;
    ins=8'b10110000;
    #20 sel1=0;
    end
    always
    #15 cclk=~cclk;
    always
    #5 eclk=~eclk;
    always
   #20 oclk=~oclk; 
  endmodule
  
    


