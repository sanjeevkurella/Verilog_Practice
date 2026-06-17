module fourx1mux_tb;
reg a,b,c,d,s1,s2;
wire y;

fourx1mux_data_always_case uut(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s2(s2),.y(y));
integer i;
initial 
begin
$dumpfile("fourx1mux.vcd");
$dumpvars(0,fourx1mux_tb);
$monitor("t=%0t,a=%b,b=%b,c=%b,d=%b,s1=%b,s2=%b,y=%b",$time,a,b,c,d,s1,s2,y);
a=0;b=1;c=1;d=0;
for(i=0;i<4;i=i+1)begin
	{s1,s2}=i;
	#10;
end
$finish;
end
endmodule
