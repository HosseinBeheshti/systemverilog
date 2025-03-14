`timescale 1ns / 1ps

module tb();

  byte arr[20];
  byte my_queue[$];
  int i;

  initial
  begin
    for (i = 0  ; i<20 ; i++)
    begin
      arr[i] = $urandom;
      my_queue.push_front(arr[i]);
    end
  end



  initial
  begin
    $display("The values of array: %0p", arr);
    $display("The values of queue: %0p", my_queue);

  end



  initial
  begin
    #200;
    $finish();
  end

endmodule