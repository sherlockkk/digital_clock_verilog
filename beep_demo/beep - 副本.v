module beep(out,clk);
output out;
input clk;
reg[13:0] cn;
reg out;



always@(posedge clk)

begin 
cn<=cn+1'b1;
if (cn==14'd12500)
   begin 
 cn<=14'd0;
 out<=~out;
 end
end
endmodule