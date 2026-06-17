module full_subtractor_tb;
reg a,b,bin;
wire d,bout;

full_subtractor_st uut(
    .a(a),
    .b(b),
    .bin(bin),
    .d(d),
    .bout(bout)
);

initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0,full_subtractor_tb);

    $monitor("t=%0t a=%b b=%b bin=%b d=%b bout=%b",
             $time,a,b,bin,d,bout);

    a=0; b=0; bin=0; #10;
    a=0; b=0; bin=1; #10;
    a=0; b=1; bin=0; #10;
    a=0; b=1; bin=1; #10;
    a=1; b=0; bin=0; #10;
    a=1; b=0; bin=1; #10;
    a=1; b=1; bin=0; #10;
    a=1; b=1; bin=1; #10;

    $finish;
end

endmodule

