module full_subtractor_st(input a,b,bin,output d,bout);
wire w1,w2,w3,w4,w5;
xor(w1,a,b);
xor(d,w1,bin);

not(w2,a);
not(w3,w1);

and(w4,w2,b);
and(w5,w3,bin);

or(bout,w4,w5);

endmodule
