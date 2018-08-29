//Assignment 2

module controller(input clk, input t10, input t15, input t20, input t25, input t30, input reset, output reg heat, output reg fan, output reg ac);

wire [4:0] controlWord;
//wire [2:0] out;
reg [2:0] state,next_state;
assign controlWord[4] = t10;
assign controlWord[3] = t15;
assign controlWord[2] = t20;
assign controlWord[1] = t25;
assign controlWord[0] = t30;

always@(posedge clk,reset)
begin
  if(reset==1)
  begin state<=3'b000;
    next_state<=0;
    out<=0;
  end
  else
  state<=next_state;
end

always@(posedge clk,reset)
begin
  if(reset==1)
    begin next_state<=0;
    end
  else
begin
  case(state)
    0: begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
          5'b10000:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=2; end
          5'b11000:  begin heat = 0; fan = 0; ac = 0 ; next_state<=3; end
          5'b11100:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=4; end
          5'b11110:  begin heat = 0; fan = 1; ac = 0 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
    1: begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
          5'b10000:	 begin heat = 1; fan = 0; ac = 0 ; next_state<=2; end
          5'b11000:  begin heat = 0; fan = 0; ac = 0 ; next_state<=3; end
          5'b11100:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=4; end
          5'b11110:  begin heat = 0; fan = 1; ac = 0 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
    2: begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
      /*  5'b10000:	 begin out = 3'b100; next_state<=2; end  */
          5'b11000:  begin heat = 0; fan = 0; ac = 0 ; next_state<=3; end
          5'b11100:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=4; end
          5'b11110:  begin heat = 0; fan = 1; ac = 0 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
    3: begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
          5'b10000:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=2; end
  /*      5'b11000:  begin out = 3'b000; next_state<=3; end   */
          5'b11100:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=4; end
          5'b11110:  begin heat = 0; fan = 1; ac = 0 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
    4: begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
          5'b10000:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=2; end
          5'b11000:  begin heat = 0; fan = 0; ac = 0 ; next_state<=3; end
  /*      5'b11100:	 begin out = 3'b000; next_state<=4; end  */
          5'b11110:  begin heat = 0; fan = 1; ac = 0 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
    5:begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
          5'b10000:	 begin heat = 1; fan = 0; ac = 0 ; next_state<=2; end
          5'b11000:  begin heat = 0; fan = 0; ac = 0 ; next_state<=3; end
          5'b11100:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=4; end
          5'b11110:  begin heat = 0; fan = 1; ac = 0 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
    6:begin
        case(controlWord)

          5'b00000:  begin heat = 1; fan = 0; ac = 0 ; next_state<=1; end
          5'b10000:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=2; end
          5'b11000:  begin heat = 0; fan = 0; ac = 0 ; next_state<=3; end
          5'b11100:	 begin heat = 0; fan = 0; ac = 0 ; next_state<=4; end
          5'b11110:  begin heat = 0; fan = 0; ac = 1 ; next_state<=5; end
          5'b11111:  begin heat = 0; fan = 0; ac = 1 ; next_state<=6; end

        endcase
      end
/*always(state)
  begin
    assign heat = out[2];
    assign fan = out[1];
    assign ac = out[0];
  end
*/
endmodule

module testbench;
reg clk;
reg reset;
reg t10,t15,t20,t25,t30;
wire heat,fan,ac;
initial
begin
  clk=1'b0;
  reset=1'b1;
  #5 reset=1'b0;
end
controller home(clk, reset, t10,t15,t20,t25,t30,heat,fan,ac);

always
#10 clk=~clk;

initial
begin
#0 t10=0;
   t15=0;
   t20=0;
   t25=0;
   t30=0;
#12 t10=1;
   t15=0;
   t20=0;
   t25=0;
   t30=0;

#11 t10=1;
   t15=1;
   t20=0;
   t25=0;
   t30=0;
#15 t10=1;
   t15=1;
   t20=1;
   t25=0;
   t30=0;
#15 t10=1;
   t15=1;
   t20=1;
   t25=1;
   t30=0;
#10  t10=1;
   t15=1;
   t20=1;
   t25=1;
   t30=1;

end
endmodule
