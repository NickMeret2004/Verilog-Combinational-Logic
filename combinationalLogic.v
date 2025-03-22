module sillyfunction (input a, b, c, output y);

  // Simple combinational logic
  assign y = (~a & ~b & ~c) |
             (a & ~b & ~c) |
             (a & ~b & c);

endmodule