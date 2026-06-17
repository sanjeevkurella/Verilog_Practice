module twox1demux_data(input a,s1,output y1,y2);

assign y1=~s1&a;
assign y2=s1&a;

endmodule
