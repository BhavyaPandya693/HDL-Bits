module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
        
    add16 inst3(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(sel), .sum(sum[15:0]));
    
    always @(*)begin
        y=0;
        case(sel)
            1'b0: y<= add16 inst1(.a(a[31:15]), .b(b[31:15]), .cin(0), .cout(), .sum(sum[31:15]));
            1'b1: y<= add16 inst2(.a(a[31:15]), .b(b[31:15]), .cin(1), .cout(), .sum(sum[31:15]));
        endcase
    end
    

endmodule
