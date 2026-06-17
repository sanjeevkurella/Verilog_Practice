module full_adder_tb;
reg a,b,cin;
wire s,cout;

full_adder_data uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

initial
begin
$dumpfile("full_adder.vcd");
$dumpvars(0,full_adder_tb);

$monitor("t=%0t a=%b b=%b cin=%b s=%b cout=$b" ,$time,a,b,cin,s,cout);

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;

    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;

    $finish;
end
endmodule
