module twox4decoder_tb;

reg [1:0] a;
wire y1,y2,y3,y4;

twox4decoder_data uut(
    .a(a),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4)
);

initial begin

    $dumpfile("twox4decoder.vcd");
    $dumpvars(0,twox4decoder_tb);

    $monitor("t=%0t a=%b y1=%b y2=%b y3=%b y4=%b",
             $time,a,y1,y2,y3,y4);

    a = 2'b00; #10;
    a = 2'b01; #10;
    a = 2'b10; #10;
    a = 2'b11; #10;

    $finish;
end

endmodule
