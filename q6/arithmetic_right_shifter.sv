module arithmetic_right_shifter #(parameter N) (
  input logic [N-1:0] input_data,
  input logic [1:0] control,
  output logic [N-1:0] shifted_result
);

  always_comb begin
    shifted_result = input_data; //output rul
    // checking the MSB bit
    // if MSB=1 (signed), then concatenate with 1 at MSB
    if (input_data[N-1]) begin
      for(int i = 0; i < control; i++) begin
        shifted_result = {1'b1, shifted_result[N-1:1]};
      end
    // else MSB=0 (unsigned), then concatenate with 0 at MSB
    end else begin
      for(int i = 0; i < control; i++) begin
        shifted_result = {1'b0, shifted_result[N-1:1]};
      end
    end
  end
endmodule
