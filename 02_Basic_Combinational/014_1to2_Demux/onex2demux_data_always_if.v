module twox1demux_data_always_if(input a,s1,output reg y1,y2);
always @(*) begin
if(s1)
begin
y2=a;
y1=0;
end
else
begin
y2=0;
y1=a;
end
end
endmodule
