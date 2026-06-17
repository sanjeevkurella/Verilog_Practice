module half_adder_data_always(input a,b,output reg s,c);
always @(*) begin
s=a^b;
c=a&b;
endmodule
