//正常计时模块：
module jishi(mk,key1,key2,f1Hz,clk,a,b,c,d,e,f,k1);//第一种模式正常计时
input f1Hz,clk;
input [1:0]mk;
input key1,key2;
output [3:0]a,b,c,d,e,f;
output [1:0]k1;
reg		[1:0]k1;
reg    k2;
reg  [3:0]a,b,c,d,e,f;
reg  [3:0]cc,ee,ff;

reg k1k,k2k;
always @(posedge clk)//调时时的按键状态
begin
	if(mk==2'b10)//
begin	
	if(key1==0)//控制选择调整时间的按键
		begin
			if(k1k==0)
				begin
					 k1=k1+2'b01;//(k1为2'01,2'10时则选择分,其他为小时)
				end 
					k1k=1;//防止按一下键有好多次触发
		end		
			else
				k1k=0;
			
	if(key2==0)//控制时间的加
		begin
			if(k2k==0)
				begin
					k2=1'b1;
				end 
						k2k=1;
		end 
			else
				begin
					k2k=0;
					k2=1'b0;
				end
	end
	cc=c;
	ee=e;
	ff=f;
	if(mk==2'b10&&k1==2'b00||mk==2'b10&&k1==2'b10)//调时——分
		if(k2)//如果调整时间的按键按下
			begin
				cc=cc+4'b0001;
			if(cc==4'b1010)cc=4'b0000;//如果等于10的话自动清零重新计时
			
			end
	if(mk==2'b10&&k1==2'b01||mk==2'b10&&k1==2'b11)//调时——时
		if(k2)//如果调整时间的按键按下
			begin//ee是小时低位，ff是小时的高位
				ee=ee+4'b0001;
				if(ee==4'b1010||f==4'b0010&&ee==4'b0100)begin ee=4'b0000;ff=4'b0000;end//如果ee为10的话或者
			end


end
always @(posedge f1Hz)//正常走时
begin
	c<=cc;
	e<=ee;
	f<=ff;//将调整的时间赋值
	a<=a+4'b0001;//秒低位
	if(a==4'b1001)//由秒低位向秒高位进位
		begin
			a<=4'b0000;
			b<=b+4'b0001;
		end
	if(b==4'b0101&&a==4'b1001)//秒高位
		begin
			b<=4'b0000;
			c<=c+4'b0001;
		end
	if(c==4'b1001)//分低位
		begin
			c<=4'b0000;
			d<=d+4'b0001;
		end
	if(d==4'b0101&&c==4'b1001)//分高位
		begin
			d<=4'b0000;
			e<=e+4'b0001;
		end
	if(e==4'b1001)//时低位
		begin
			e<=4'b0000;
			f<=f+4'b0001;
		end
	if(f==4'b0010&&e==4'b0100)//时高位
		begin
			e<=4'b0000;
			f<=4'b0000;
		end
end
endmodule