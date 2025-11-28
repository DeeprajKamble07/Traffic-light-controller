// testbench for traffic light controller

module tb;
  reg clk,rst;
  wire red,yellow,green,walk,dontwalk;
  traffic_light dut(clk,rst,green,yellow,red,walk,dontwalk);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    rst = 1;
    #10 rst = 0;
    #500 $finish;
  end
  initial begin
    $monitor("[%0t] green=%0b,yellow=%0b,red=%0b,walk=%0b,dontwalk=%0b",$time,green,yellow,red,walk,dontwalk);
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
