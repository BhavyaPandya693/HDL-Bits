module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]a,b,c;
    
    my_dff8 inst1(.clk(clk), .d(d), .q(a));
    my_dff8 inst2(.clk(clk), .d(a), .q(b));
    my_dff8 inst3(.clk(clk), .d(b), .q(c));
    
    always @(*)begin
        case(sel)
        2'b11: q <= c;
        2'b10: q <= b;
        2'b01: q <= a;
        2'b00: q <= d;
        endcase
    end
endmodule
