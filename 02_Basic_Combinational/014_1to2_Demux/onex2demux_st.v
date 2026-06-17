module twox1demux_st(input a,s1,output y1,y2);
wire w1;
not(w1,s1);

and(y1,w1,a);
and(y2,s1,a);
endmodule
