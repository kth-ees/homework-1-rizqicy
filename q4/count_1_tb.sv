module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  // complete
  count_1 uut (.a(a), .out(out));

  initial begin
    for(int i = 0; i< 16; i ++) begin
      a = i;
      #10;
    end
    #10;
    $stop;
  end
endmodule
