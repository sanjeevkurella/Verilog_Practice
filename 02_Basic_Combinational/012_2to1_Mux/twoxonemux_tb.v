module _2x1mux_tb;
reg a,b,sel;
wire y;

_2x1mux_data_always_if uut(.a(a),.b(b),.sel(sel),.y(y));

initial
begin
$dumpfile("_2x1mux.vcd");
$dumpvars(0,_2x1mux_tb);
$monitor("t=%0t a=%b b=%b sel=%b y=%b",
              $time,a,b,sel,y);

    a=0; b=0; sel=0; #10;
    a=0; b=1; sel=0; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=1; sel=0; #10;

    a=0; b=0; sel=1; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=0; sel=1; #10;
    a=1; b=1; sel=1; #10;

    $finish;
end

endmodule
