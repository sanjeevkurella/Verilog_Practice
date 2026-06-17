module half_subtractor_data_always(input a,b,output reg d,bout);
always @(*) begin
d=a^b;
bout=~a&b;
end
endmodule
