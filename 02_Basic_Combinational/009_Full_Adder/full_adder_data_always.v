module full_adder_data_always(input a,b,cin,output reg s,cout);
always @(*) begin
s=a^b^cin;
cout=(a&b)|(b&cin)|(cin&a);
endmodule
