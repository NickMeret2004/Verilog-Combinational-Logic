module testbench;
  // Use old-school Verilog types
    reg a, b, c;    // Testbench-driven signals
    wire y;         // Output from DUT
    integer i;
  // Instantiate the DUT
    sillyfunction uut (.a(a), .b(b), .c(c), .y(y));

    initial begin
        $dumpfile("dummp.vcd");
        $dumpvars(0, testbench);
        $display(" a  b  c | y ");
        $monitor(" %b  %b  %b | %b ", a, b, c, y);

        for (i = 0; i < 8; i = i + 1) begin
        {a, b, c} = i;   // Assign 0..7 in binary
        #10;             // Wait 10 time units
        end
        $finish;
    end
endmodule