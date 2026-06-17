module twox4decoder_st(input a,b,output y1,y2,y3,y4);
wire w1,w2;
not(w1,a);
not(w2,b);
and(y1,w1,w2);
and(y2,w1,b);
and(y3,a,w2);
and(y4,a,b);
endmodule
