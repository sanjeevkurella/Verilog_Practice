module onex4demux_data_always_case(input a, input [1:0]s,output reg y1,y2,y3,y4);
always @(*) begin
case(s)
2'b00: 
begin
y1=a;
y2=0;
y3=0;y4=0;
end
2'b01:begin
y1=0;y2=a;y3=0;y4=0;
end
2'b10:begin
y1=0;y2=0;y3=a;y4=0;
end
2'b11:begin
y1=0;y2=0;y3=0;y4=a;
end
default:begin
y1=0;y2=0;y3=0;y4=0;
end
endcase
end
endmodule
