

module systemX(output wire F, input wire A,B,C);

wire An,Bn,Cn;
wire r1,r2,r3;

assign An = ~A;
assign Bn = ~B;
assign Cn = ~C;

assign r1 = An & Bn & Cn;
assign r2 = An & B& Cn;
assign r3 = A & B & Cn;

assign F = r1 | r2 | r3;




endmodule