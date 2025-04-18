module tb;

  // Function to generate multiples of 8
  function automatic bit [7:0] generate_multiple_of_8(input int index);
    generate_multiple_of_8 = index * 8;
  endfunction

  // Task to print array values
  task automatic print_array(input bit [7:0] arr [0:31]);
    for (int i = 0; i < 32; i++) begin
      $display("Array[%0d] = %0d", i, arr[i]);
    end
  endtask

  // Testbench top
  initial begin
    bit [7:0] multiples_of_8 [0:31];  // Local array to store values

    // Generate and store multiples of 8
    for (int i = 0; i < 32; i++) begin
      multiples_of_8[i] = generate_multiple_of_8(i);
    end

    // Print the values of the array
    print_array(multiples_of_8);

    $finish;
  end

endmodule