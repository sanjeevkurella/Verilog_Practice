module twox4decoder_data_always_if(input a,b,output reg y1,y2,y3,y4);
always @(*) begin
if((a==0)&(b==0))
begin
y1=1;y2=0;y3=0;y4=0;
end
else if((a==0)&(b==1))
begin
y1=0;y2=1;y3=0;y4=0;
end
else if((a==1)&(b==0))
begin
y1=0;y2=0;y3=1;y4=0;
end
else if((a==1)&(b==1))
begin
y1=0;y2=0;y3=0;y4=1;
end
else
begin
y1=0;y2=0;y3=0;y4=0;
end
end
endmodule

