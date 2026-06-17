module _2x1mux_data_always_if(input a,b,sel,output reg y);
always @(*) begin
if(sel)
y=b;
else
y=a;
end
endmodule
