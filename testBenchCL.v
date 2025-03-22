module testbench;
    logic a,b,c;
    logic y;
    sillyfunction uut (.a(a), .b(b), .c(c), .y(y));

    initial begin
        //Monitor changes
        $display(" a b c | y");
        $monitor("%b %b %b | %b", a, b, c, y);

        // Test all input combinations
        for (int i = 0; i < 8; i==) begin
            {a, b, c} = i;
            #10;
        end
        $finish;
    end
endmodule