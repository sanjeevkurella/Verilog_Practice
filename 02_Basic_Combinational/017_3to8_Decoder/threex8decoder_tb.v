module threex8decoder_tb;
reg a,b,c;
wire y0,y1,y2,y3,y4,y5,y6,y7;

threex8decoder_data_always_if uut(.a(a),.b(b),.c(c),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));

initial
begin
$dumpfile("threex8decoder.vcd");
$dumpvars(0,threex8decoder_tb);
$monitor("t=%0t a=%b b=%b c=%b | y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b" ,$time,a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);

    a=0; b=0; c=0; #10;
    a=0; b=0; c=1; #10;
    a=0; b=1; c=0; #10;
    a=0; b=1; c=1; #10;

    a=1; b=0; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=0; #10;
    a=1; b=1; c=1; #10;

    $finish;
end
endmodule
