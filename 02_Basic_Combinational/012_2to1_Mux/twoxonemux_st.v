module _2x1mux_st(input a,b,sel,output y);
wire x1,x2,x3;
not(x1,sel);
and(x2,x1,a);
and(x3,sel,b);
or(y,x2,x3);
endmodule

