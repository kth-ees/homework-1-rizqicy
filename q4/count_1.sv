module count_1 (
  input logic [3:0] a,
  output logic [2:0] out
);
  // One's counter with behavioral description
  always_comb begin
    out = '0;
    for (int i = 0; i <=3; i++) begin
      if (a[i] == 1'b1)
        out = out + 1;
    end
  end
endmodule
