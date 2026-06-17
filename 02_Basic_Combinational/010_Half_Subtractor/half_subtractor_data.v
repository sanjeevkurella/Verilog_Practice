module half_subtractor_data(input a,b,outut d,bout);
assign d=a^b;
assign bout=~a&b;
endmodule
