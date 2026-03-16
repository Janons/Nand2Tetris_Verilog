module model (
  input clk,
  input resetn,
  output logic div2,
  output logic div4,
  output logic div6
);

reg[1:0] count; // counter to use in order to divide the clock

always @(posedge clk) begin

    if(!resetn) begin
        count <= 2'b00;
        div2 <= 1'b0;
        div4 <= 1'b0;
        div6 <= 1'b0;

    end

    else begin

        div2 <= ~div2;
        
        else if (count == 1) begin
            div4 <= ~div4;
        end

        else if (count == 2) begin
            count <= 2'b00;
            div6 <= ~div6;
            

        end

        else begin
            count <= count + 1;

        end

    end

end

endmodule