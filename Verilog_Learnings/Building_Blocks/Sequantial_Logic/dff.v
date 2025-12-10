

module dff();

wire Q,Q_Bar;
reg d,clk

nand u1(x,d,clk);
nand u2(y,d,clk);
nand u3(Q,x,Q_Bar);
nand u4(Q_Bar,y,Q);




initial begin
    $monitor("CLK = %b D = %b Q = %b Q_BAR = %b",CLK, D, Q, Q_BAR);
    CLK = 0;
    D = 0;
    #3 D = 1;
   #3  D = 0;
    #3  $finish;
  end	
 
  always  #2  CLK = ~CLK;
 
 22 endmodule