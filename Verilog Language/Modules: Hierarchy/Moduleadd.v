module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    reg m;
    wire [15:0]n,p,q,r;
    
    assign n[15:0] = a[15:0];
    assign p[15:0] = a[31:16];
    assign q[15:0] = b[15:0];
    assign r[15:0] = b[31:16];
    
    add16 inst1(.cin(0), .a(n), .b(q), .cout(m), .sum(sum[15:0]));
    add16 inst2(.cin(m), .a(p), .b(r), .sum(sum[31:16]));

endmodule
