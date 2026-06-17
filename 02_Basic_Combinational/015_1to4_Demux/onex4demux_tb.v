module onex4demux_tb;
reg a;
reg[1:0]s;
wire y1,y2,y3,y4;

onex4demux_st uut(.a(a),.s1(s[1]),.s2(s[0]),.y1(y1),.y2(y2),.y3(y3),.y4(y4));

initial
begin
$dumpfile("onex4demux.vcd");
$dumpvars(0,onex4demux_tb);
$monitor("t=%0t,a=%b,s1=%b,s2=%b,y1=%b,y2=%b,y3=%b,y4=%b",$time,a,s[1],s[0],y1,y2,y3,y4);
a=1;s=2'b00;#10;
s=2'b01;#10
s=2'b10;#10
s=2'b11;#10
$finish;
end
endmodule
