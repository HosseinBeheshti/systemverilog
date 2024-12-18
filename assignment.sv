`timescale 1ns / 1ps

module tb();


  reg [7:0] a = 0;
  reg [7:0] b = 0;
  int c = 0;
  int d = 0;

  initial
  begin
    a = 8'd12;
    b = 8'd34;
    c = 32'd67;
    d = 32'd255;
  end



  initial
  begin
    #12
    $display("The values of a,b,c and d are: %d, %d, %d, %d", a, b, c , d);
  end



  initial
  begin
    #200;
    $finish();
  end

endmodule