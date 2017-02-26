//整点报时模块
module baoshi(clk,f500Hz,c,d,e,f,beep);
input clk;
input f500Hz;

input [3:0]c,d,e,f;


output beep;
reg beep;
//reg beep_r;								//寄存器
//reg[27:0]count;

//assign beep = beep_r;					//脉冲输出

always @(posedge clk)//定义闹钟调时时按键的状态



begin
if(d==4'd3&&c==4'd0)
		begin
			beep<=f500Hz;
			
		end
	else
		beep=1'b0;

end
endmodule