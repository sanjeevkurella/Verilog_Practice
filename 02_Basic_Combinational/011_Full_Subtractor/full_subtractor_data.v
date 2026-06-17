module full_subtractor_data(input a,b,bin,output d,bout);
assign d=a^b^bin;
assign bout=(~a&b)|(~(a^b)&bin);
endmodule
