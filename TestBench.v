module tb_module();
  reg d0,d1,clk;
  wire out;
  top_module inst1(d0,d1,clk,out);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      d0=0;d1=0;clk=1;#50;
      d0=0;d1=0;clk=0;#50;
      d0=0;d1=0;clk=1;#50;
      d0=0;d1=0;clk=0;#50;
      d0=0;d1=1;clk=1;#50;
      d0=0;d1=1;clk=0;#50;
      d0=0;d1=1;clk=1;#50;
      d0=0;d1=1;clk=0;#50;      
      d0=1;d1=0;clk=1;#50;
      d0=1;d1=0;clk=0;#50;
      d0=1;d1=0;clk=1;#50;
      d0=1;d1=0;clk=0;#50;
      d0=1;d1=1;clk=1;#50;
      d0=1;d1=1;clk=0;#50;
      d0=1;d1=1;clk=1;#50;
      d0=1;d1=1;clk=0;#50;

    end
endmodule
