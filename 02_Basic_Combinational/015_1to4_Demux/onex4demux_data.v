module onex4demux_data(input a,s1,s2,output y1,y2,y3,y4);
assign y1=~s1&~s2&a;
assign y2=~s1&s2&a;
assign y3=s1&~s2&a;
assign y4=s1&s2&a;
endmodule
