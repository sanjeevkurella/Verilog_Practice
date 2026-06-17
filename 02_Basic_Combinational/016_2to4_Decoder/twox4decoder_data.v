module twox4decoder_data(input [1:0]a,output y1,y2,y3,y4);
assign y1=~a[1]&~a[0];
assign y2=~a[1]&a[0];
assign y3=a[1]&~a[0];
assign y4=a[1]&a[0];
endmodule

