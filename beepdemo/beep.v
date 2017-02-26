//用verilog控制蜂鸣器发声
module beep(out,clk);
output out;
input clk;




reg  [31:0]   R_cnt ;

 
    always @ (posedge clk) 
	 begin
       if (R_cnt == 32'd99999999) 
			begin
         R_cnt <= 32'd0;
         end
       else 
			begin
         R_cnt <= 32'd1;
         end
       end

		 assign out =   R_cnt <= 32'd50000 ;
		 
endmodule