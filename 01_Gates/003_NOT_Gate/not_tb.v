module not_tb;
wire y;
reg a;
not_data_always uut(.a(a),.y(y));
initial
begin
$monitor("t=%0t a=%b y=%b",$time,a,y);
$dumpfile("not.vcd");
$dumpvars(0,not_tb);
a=0;
#10
a=1;
#10
$finish;
end
endmodule

