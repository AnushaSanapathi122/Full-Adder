//Full Adder Module
module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;           // XOR for sum
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry logic
endmodule

// Testbench for Full Adder

module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;
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

