// Design for traffic light controller using fsm

module traffic_light(clk,rst,green,yellow,red,walk,dontwalk);
  input clk,rst;
  output reg red,yellow,green,walk,dontwalk;
  parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
  reg[1:0]ps,ns;
  reg[3:0]counter;
  always@(posedge clk or posedge rst)
    begin
      if(rst) begin
        ps<=0; 
        counter<=0; end
      else begin
        ps<=ns;
        if(ps==ns) 
        counter<=counter+1;
      else 
        counter<=4'b0000; end
      
    end
  
  
  always@(*)
        begin
          case(ps)
            s0: ns=(counter==9)?s1:s0;
            s1: ns=(counter==2)?s2:s1;
            s2: ns=(counter==6)?s3:s2;
            s3: ns=(counter==1)?s0:s3;
            default: ns=s0;
          endcase
        end
  always@(*) begin
    case(ps)
      s0: {green,yellow,red,walk,dontwalk}=5'b10001;
      s1: {green,yellow,red,walk,dontwalk}=5'b01001;
      s2: {green,yellow,red,walk,dontwalk}=5'b00110;
      s3: {green,yellow,red,walk,dontwalk}=5'b00101;
      default:{green,yellow,red,walk,dontwalk}=5'b00000;
    endcase
  end
endmodule
