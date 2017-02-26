module fenpin(clk,f1Hz,f100Hz,f,f500Hz);//分频：秒表，跑表，刷新3个频率

input clk;
output f1Hz,f100Hz,f,f500Hz;//用作模块之间的连接,定义为wire型的
reg f1Hz,f100Hz,f,f500Hz;

integer i,j,k,l;

always @(posedge clk)
begin
	if(i==24999999)
		begin
			f1Hz=~f1Hz;//秒表频率1Hz
			i=0;
		end
	else
		i=i+1;	
end 
always @(posedge clk)
begin
	if(j==249999)
		begin
			f100Hz=~f100Hz;//跑表频率100Hz
			j=0;
		end
	else
		j=j+1;	
end 
always @(posedge clk)
begin
	if(k==24999)
		begin
			f=~f;//刷新频率1kHz
			k=0;
		end
	else
		k=k+1;	
end 

always @(posedge clk)
begin
	if(l==24999/2)
		begin
			f500Hz=~f500Hz;//500Hz
			l=0;
		end
	else
		l=l+1;	
end 

endmodule