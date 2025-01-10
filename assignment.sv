`timescale 1ns / 1ps

module tb();


  reg [7:0] arr1[15];
  reg [7:0] arr2[15];
  int i;

  initial
  begin
    for (i = 0  ; i<15 ; i++)
    begin
      arr1[i] = $urandom;
      arr2[i] = $urandom;
    end
  end



  initial
  begin
    $display("The values of arr1: %0p", arr1);
    $display("The values of arr2: %0p", arr2);

  end



  initial
  begin
    #200;
    $finish();
  end

endmodule