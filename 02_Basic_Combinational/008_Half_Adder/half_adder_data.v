module half_adder_data(inout a,b,output s,c);
assign s=a^b;
assign c=a&b;
endmodule
