module top_module ( input clk, input d, output q );
    
    wire a, b;
    
    my_dff inst0(.q(a), .clk(clk), .d(d));
    
    my_dff inst1(.q(b), .clk(clk), .d(a));

    my_dff inst2(.q(q), .clk(clk), .d(b));
    
endmodule
