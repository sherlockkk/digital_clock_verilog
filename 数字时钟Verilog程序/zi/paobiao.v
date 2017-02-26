module paobiao(f100Hz,fs,mk,key1,key2,a,b,c,d,e,f);//跑表模块
input f100Hz,fs;
input [1:0]mk;
input key1,key2;

output [3:0]a,b,c,d,e,f;
reg  [3:0]a,b,c,d,e,f;

reg		[1:0]k1,k2;
reg    k1k,k2k;


always @(posedge fs)//跑表时的状态：清零.保持.跑表
begin
if(mk==2'b01)//进入到跑表状态
		begin
			if(key1==0)
				begin
					if(k1k==0)
						begin
							 k1=k1+2'b01;
							if(k1==2'b11)k1=2'b00;
						end 
						k1k=1;
				end 
			else
				k1k=0;	
			if(key2==0)
				begin
					if(k2k==0)
						begin
							 k2=k2+2'b01;
						end 
						k2k=1;
				end 
			else
				k2k=0;
		end
end
always @(posedge f100Hz)
begin
	
	if(k1==2'b01&&k2==2'b00||k1==2'b01&&k2==2'b10||k1==2'b00&&k2==2'b01)//跑表
	begin
		a<=a+4'b0001;//秒低位
		if(a==4'b1001)
			begin
				a<=4'b0000;
				b<=b+4'b0001;
			
			end
		if(b==4'b1001&&a==4'b1001)//秒高位
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
		if(f==4'b0101&&e==4'b1001)//时高位
			begin
				e<=4'b0000;
				f<=4'b0000;
			end
	end
	else if(k1==2'b01&&k2==2'b01||k1==2'b01&&k2==2'b11||k1==2'b10)//保持
		begin
			a<=a;b<=b;c<=c;d<=d;e<=e;f<=f;
		end
	else //清零
		begin
			a<=4'b0000;b<=4'b0000;c<=4'b0000;d<=4'b0000;e<=4'b0000;f<=4'b0000;
		end
end
endmodule