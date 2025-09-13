module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // BCD decoder with Carry output
  assign carry = (binary >= 10) ? 1'b1 : 1'b0;
  assign bcd = (binary >= 10) ? (binary-10) : binary; 
endmodule
