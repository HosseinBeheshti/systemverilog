`timescale 1ns / 1ps

module tb();


  int dynamic_arr[];
  int i = 0;

  initial
  begin
    dynamic_arr = new[7];
    foreach(dynamic_arr[i])
    begin
      dynamic_arr[i] = (i+1)*7;
    end
    #20ns;
    dynamic_arr = new[20](dynamic_arr);
    for (i = 1; i<14 ; i++ ) begin
        dynamic_arr[i+6] = i*5;    
    end
    $display("The values of dynamic_arr: %0p", dynamic_arr);

  end



  initial
  begin
    #200;
    $finish();
  end

endmodule