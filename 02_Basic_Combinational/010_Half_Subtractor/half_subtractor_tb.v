module half_subtractor_tb;
reg a,b;
wire d,bout;

half_subtractor_data_always uut(.a(a),.b(b),.d(d),.bout(bout));

initial
begin
$dumpfile("half_subtractor.vcd");
$dumpvars(0,half_subtractor_tb);
$monitor("t=%0t,a=%b,b=%b,d=%b,bout=%b",$time,a,b,d,bout);
a=0;b=0;#10
a=0;b=1;#10
a=1;b=0;#10
a=1;b=1;#10
$finish;
end
endmodule
