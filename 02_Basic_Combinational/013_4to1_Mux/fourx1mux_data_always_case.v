module fourx1mux_data_always_case(input a,b,c,d,s1,s2,output reg y);

always @(*) begin
    case({s1,s2})
        2'b00: y = a;
        2'b01: y = b;
        2'b10: y = c;
        2'b11: y = d;
        default: y = 1'b0;
    endcase
end

endmodule
