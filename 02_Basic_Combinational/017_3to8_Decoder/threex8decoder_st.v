module threex8decoder_st(input a,b,c,output y[7:0]);
wire w1,w2,w3; 
not(w1,a);
not(w2,b);
not(w3,c);

and(y[0],w1,w2,w3);
and(y[1],w1,w2,c);
and(y[2],w1,b,w3);
and(y[3],w1,b,c);
and(y[4],a,w2,w3);
and(y[5],a,w2,c);
and(y[6],a,b,w3);
and(y[7],a,b,c);

endmodule
