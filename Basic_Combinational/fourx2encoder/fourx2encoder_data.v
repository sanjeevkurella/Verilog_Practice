module fourx2encoder_data(input [3:0]a,output [1:0]y);
assign y[0]=(~a[3]&~a[2]&a[1]&~a[0]) | (a[3]&~a[2]&~a[1]&~a[0]);
assign y[1]=(~a[3]&a[2]&~a[1]&~a[0]) | (a[3]&~a[2]&~a[1]&~a[0]);
endmodule
