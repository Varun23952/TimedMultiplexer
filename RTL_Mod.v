module top_module(input d0, input d1, input clk, output reg out);
  wire [1:0] t;
  count c1(clk,t); 
  always@(posedge clk)begin  
    if(t == 2'b00) begin
      out = d0;
    end
    else if(t == 2'b01) begin
      out = d1;
    end
  end
endmodule


module count(input clk, output reg [1:0] out);
  initial begin
    out = 2'b00;
  end
  always@(posedge clk) begin
    if(out == 2'b00) begin
      out = 2'b01;
    end
    else begin
      out = 2'b00;
    end
  end
endmodule
