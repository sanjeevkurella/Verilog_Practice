module not_data_always(input a,output reg y);
always @(*) begin
y=!a;
end
endmodule

