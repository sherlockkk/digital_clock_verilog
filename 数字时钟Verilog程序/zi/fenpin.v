module fenpin(clk,f1Hz,f100Hz,f);//分频：秒表，跑表，刷新3个频率

input clk;
output f1Hz,f100Hz,f;//用作模块之间的连接,定义为wire型的
reg f1Hz,f100Hz,f;

integer i,j,k;

always @(posedge clk)
begin
	if(i==9999999)
		begin
			f1Hz=~f1Hz;//秒表频率1Hz
			i=0;
		end
	else
		i=i+1;	
end 
always @(posedge clk)
begin
	if(j==99999)
		begin
			f100Hz=~f100Hz;//跑表频率100Hz
			j=0;
		end
	else
		j=j+1;	
end 
always @(posedge clk)
begin
	if(k==9999)
		begin
			f=~f;//刷新频率1kHz
			k=0;
		end
	else
		k=k+1;	
end 
endmodule