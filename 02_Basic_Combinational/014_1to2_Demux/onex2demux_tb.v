module twox1demux_tb;
reg a,s;
wire y1,y2;

twox1demux_data_always_if uut(.a(a),.s1(s),.y1(y1),.y2(y2));

initial
begin
$dumpfile("twox1demux.vcd");
$dumpvars(0,twox1demux_tb);
$monitor("t=%0t,a=%b,s=%b,y1=&b,y2=%b",$time,a,s,y1,y2);
a=1;s=0; #10;
s=1;#10;
$finish;
end
endmodule
