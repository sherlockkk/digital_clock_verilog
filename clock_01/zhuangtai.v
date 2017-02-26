//选择模式按键状态
module zhuangtai(mk,clkfs,mkoo);//（mkoo4种模式）正常计时.跑表.调时，闹钟
input clkfs;
input mk;

output [1:0]mkoo;//用做模块之间的连接
reg [1:0]mkoo;//存储模式选择


always @(posedge clkfs)
begin
	if(mk==0)
		begin
			mkoo=mkoo+2'b01;
		end
end
endmodule