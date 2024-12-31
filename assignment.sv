`timescale 1ns / 1ps

module tb();


  int arr[10];
  int i;

  initial
  begin
    for (i = 0  ; i<10 ; i++)
    begin
      arr[i] = i*i;
    end
  end



  initial
  begin
    $display("The values of arr: %0p", arr);
  end



  initial
  begin
    #200;
    $finish();
  end

endmodule