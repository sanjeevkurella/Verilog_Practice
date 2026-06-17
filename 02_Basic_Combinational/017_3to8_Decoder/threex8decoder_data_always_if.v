module threex8decoder_data_always_if(input a,b,c, output reg y0,y1,y2,y3,y4,y5,y6,y7);
always @(*) begin
if(~a&~b&~c)
begin
y0=1;y1=0;y2=0;y3=0;y4=0;y5=0;y6=0;y7=0;
end
else if(~a&~b&c)
begin
y0=0;y1=1;y2=0;y3=0;y4=0;y5=0;y6=0;y7=0;
end
else if(~a&b&~c)
begin
y0=0;y1=0;y2=1;y3=0;y4=0;y5=0;y6=0;y7=0;
end
else if(~a&b&c)
begin
y0=0;y1=0;y2=0;y3=1;y4=0;y5=0;y6=0;y7=0;
end
else if(a&~b&~c)
begin
y0=0;y1=0;y2=0;y3=0;y4=1;y5=0;y6=0;y7=0;
end
else if(a&~b&c)
begin
y0=0;y1=0;y2=0;y3=0;y4=0;y5=1;y6=0;y7=0;
end
else if(a&b&~c)
begin
y0=0;y1=0;y2=0;y3=0;y4=0;y5=0;y6=1;y7=0;
end
else if(a&b&c)
begin
y0=0;y1=0;y2=0;y3=0;y4=0;y5=0;y6=0;y7=1;
end
end
endmodule
