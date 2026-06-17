module twox4decoder_data_always_case(
    input [1:0] a,
    output reg y1,y2,y3,y4
);

always @(*) begin
    case(a)
        2'b00: begin y1=1; y2=0; y3=0; y4=0; end
        2'b01: begin y1=0; y2=1; y3=0; y4=0; end
        2'b10: begin y1=0; y2=0; y3=1; y4=0; end
        2'b11: begin y1=0; y2=0; y3=0; y4=1; end
        default: begin y1=0; y2=0; y3=0; y4=0; end
    endcase
end

endmodule
