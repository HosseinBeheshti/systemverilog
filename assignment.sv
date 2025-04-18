class MyClass;

  // Data members
  bit [7:0] a, b, c;

  // Custom Constructor
  function new(bit [7:0] a_val, bit [7:0] b_val, bit [7:0] c_val);
    a = a_val;
    b = b_val;
    c = c_val;
  endfunction

  // Task to display the values of data members
  task display();
    $display("a = %0d, b = %0d, c = %0d", a, b, c);
  endtask

endclass

// Testbench
module tb;

  initial begin
    // Create an object of MyClass and initialize with values 2, 4, and 56
    MyClass obj = new(2, 4, 56);

    // Display the values of the data members
    obj.display();

    $finish;
  end

endmodule