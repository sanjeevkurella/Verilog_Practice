module _2x1mux_data(input a,b,sel,output y);
assign y=((~sel)&a)|(sel&b);
endmodule
