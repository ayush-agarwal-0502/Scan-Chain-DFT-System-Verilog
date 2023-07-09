// Code your design here
module scan_flop(d,si,se,clk,reset,q);
  output reg q;
  input d,clk,reset,si,se;
  
  always@(posedge clk, posedge reset)
    begin
      if(reset) begin
          q=1'b0;
        end
      else begin
          q= se?si:d ;
        end
    end
endmodule