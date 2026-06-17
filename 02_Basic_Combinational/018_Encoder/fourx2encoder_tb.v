module fourx2encoder_tb;
reg [3:0]a;
wire [1:0]y;

fourx2encoder_data uut(.a(a),.y(y));

initial
begin
$dumpfile("fourx2encoder.vcd");
$dumpvars(0,fourx2encoder_tb);

$monitor("time = %0t , a=%b%b%b%b | y=%b%b",$time,a[3],a[2],a[1],a[0],y[1],y[0]);

a=4'b0000;#10
a=4'b0001;#10
a=4'b0010;#10
a=4'b0100;#10
a=4'b1000;#10

$finish;
end
endmodule
