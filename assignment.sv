`timescale 1ns / 1ps

module tb;


  function void compare(int var1, int var2);
    if (var1 == var2)
    begin
      $display("Test passed");
    end
    else
    begin
      $display("Test Failed");
    end
  endfunction

  initial
  begin
    compare(8,8);
  end

endmodule
