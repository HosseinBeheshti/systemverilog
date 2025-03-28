`timescale 1ns / 1ps

class unsigned_data;
  int unsigned v1;
  int unsigned v2;
  int unsigned v3;
endclass


module tb;

  unsigned_data c;

  initial
  begin
    c = new();
    c.v1 = 45;
    c.v2 = 78;
    c.v3 = 90;
    #1;
    $display("Value of v1: %0d, v2: %0d, and v3: %0d",c.v1, c.v2, c.v3);
  end

endmodule