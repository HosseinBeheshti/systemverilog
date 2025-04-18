`timescale 1ns / 1ps
module tb;

  logic [5:0] addr;
  logic wr, en;

  bit clk = 0;

  always #20 clk = ~clk;  // 40 ns --> 25 MHz

  // Task to generate stimulus for addr, wr, and en
  task generate_stimulus();
    begin
      @(posedge clk);
      addr = 6'd12; wr = 1'b1; en = 1'b1;

      @(posedge clk);
      addr = 6'd14; wr = 1'b1; en = 1'b1;

      @(posedge clk);
      addr = 6'd23; wr = 1'b0; en = 1'b1;

      @(posedge clk);
      addr = 6'd48; wr = 1'b0; en = 1'b1;

      @(posedge clk);
      addr = 6'd56; wr = 1'b0; en = 1'b0;
    end
  endtask

  initial begin
    #10;
    generate_stimulus();  // Call the stimulus generation task
    #50;
    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule