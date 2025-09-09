module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

  // instantiate the bin2gray module
  bin2gray uut(.binary(binary), .gray(gray));

  // testbench signal
  initial begin
    for(int i = 0; i < 16; i++) begin
      binary = i;
      #10;
    end
    #10;
    $stop;
  end
endmodule
