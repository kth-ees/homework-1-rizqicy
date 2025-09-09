module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;

  // complete
  csa_8 uut (.a(a), .b(b), .sum(sum), .carry(carry));

  initial begin
    // no overflow, carry=0
    for(int i = 0; i < 5; i++) begin
      a = $urandom_range(0,128);
      b = $urandom_range(0,128);
      #10;
    end

    // with overflow , carry=1
    for(int i = 0; i < 5; i++) begin
      a = $urandom_range(127,255);
      b = $urandom_range(128,255);
      #10;
    end
    #10;
    $stop;
  end
endmodule
