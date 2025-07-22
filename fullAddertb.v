module full_adder_tb;

    // Inputs
    reg a, b, cin;

    // Outputs
    wire sum, cout;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
initial begin
$dumpfile("fullAddertb.vcd");
$dumpvars(0, full_adder_tb);
end

    initial begin
        $display("a b cin | sum cout");
        $display("-------------------");

        // Test all input combinations
        a = 0; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 0; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 0; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 0; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 1; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 1; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        $finish;
    end

endmodule
