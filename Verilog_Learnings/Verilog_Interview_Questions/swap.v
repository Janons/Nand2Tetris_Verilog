
always @(posedge clk) begin
    temp = b;
    b= a;
    a = temp
end