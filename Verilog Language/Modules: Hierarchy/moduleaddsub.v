module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]x;
    wire y;
    
    assign x = b^sub;
    
    add16 inst1(.a(a[15:0]), .b(x[15:0]), .cin(sub), .cout(y), .sum(sum[15:0]));
    add16 inst2(.a(a[31:16]), .b(x[31:16]), .cin(y), .cout(), .sum(sum[31:16]));

endmodule
