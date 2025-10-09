`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and_a_b;
    wire and_c_d;

    
    assign and_a_b = a&&b;
    assign and_c_d = c&&d;
    
    

    assign out = and_a_b || and_c_d;
  
    assign out_n = ~out;
    

endmodule
