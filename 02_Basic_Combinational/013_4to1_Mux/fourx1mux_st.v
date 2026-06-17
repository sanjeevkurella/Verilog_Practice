module fourx1mux_st(input a,b,c,d,s1,s2,output y);
wire w1,w2,w3,w4,w5,w6;
not(w1,s1);
not(w2,s2);

and(w3,w1,w2,a);
and(w4,w1,s2,b);
and(w5,s1,w2,c);
and(w6,s1,s2,d);

or(y,w3,w4,w5,w6);

endmodule
