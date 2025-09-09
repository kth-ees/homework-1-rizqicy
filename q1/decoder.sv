module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);
  // …
  // Add your description here
  // …
  // always_comb begin
  //   one_hot = '0;
  //   if (binary[3]) begin
  //     one_hot[binary] = 1'b1;
  always_comb begin
    one_hot = '0;
    case (binary)
      4'd8: one_hot = 16'b0000000000000001;
      4'd9: one_hot = 16'b0000000000000010;
      4'd10: one_hot = 16'b0000000000000100;
      4'd11: one_hot = 16'b0000000000001000;
      4'd12: one_hot = 16'b0000000000010000;
      4'd13: one_hot = 16'b0000000000100000;
      4'd14: one_hot = 16'b0000000001000000;
      4'd15: one_hot = 16'b0000000010000000;
      default: one_hot = '0;
    endcase
  end
endmodule
