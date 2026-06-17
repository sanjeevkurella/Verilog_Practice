module twox1demux_data_always_case(input a,s,output reg y1,y2);
always @(*) begin
case(s) 
1'b0 :begin
y1=a;
y2=0;
end
1'b1 :
begin
y1=0;
y2=a;
end
default:
begin
y1=0;y2=0; end
endcase
end
endmodule
