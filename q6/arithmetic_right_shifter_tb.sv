module arithmetic_right_shifter_tb;

  localparam N = 8;

  // complete
  // Inputs
  logic [N-1:0] input_data;
  logic [1:0] control;

  // Outputs
  logic [N-1:0] shifted_result;

  // Instantiate the shifter module
  arithmetic_right_shifter #(.N(N)) uut(.input_data(input_data), .control(control), .shifted_result(shifted_result));

  initial begin
    // Test with Signed data
    input_data = 8'b11110000;
    control = 1;
    #10;
    control = 3;
    #10;

    // Test with Unsigned data
    input_data = 8'b00110000;
    control = 2;
    #10;
    control = 0;
    #10;
    $stop;
  end
endmodule
