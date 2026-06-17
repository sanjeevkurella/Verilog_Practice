module onex4demux_st(input a,s1,s2,output y1,y2,y3,y4);
wire w1,w2;

not(w1,s1);
not(w2,s2);

and(y1,a,w1,w2);
and(y2,a,w1,s2);
and(y3,a,s1,w2);
and(y4,a,s1,s2);

endmodule

