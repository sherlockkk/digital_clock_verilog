//闹钟模块：
module naozhong(mk,key1,key2,clk,c,d,e,f,cc,dd,ee,ff,k1,linerow);//闹钟模块
input clk;
input [1:0]mk;
input key1,key2;
input [3:0]c,d,e,f;

output [3:0]cc,dd,ee,ff;
output  [1:0]k1;
output linerow;
reg  [3:0]cc,dd,ee,ff;
reg [1:0]k1;
reg  linerow;


reg k1k,k2k;
reg	k2;

always @(posedge clk)//定义闹钟调时时按键的状态
begin
if(cc==c&&dd==d&&ee==e&&ff==f)
		begin
			linerow=1'b1;
			
		end
	else
		linerow=1'b0;
if(mk==2'b11)
begin	
	if(key1==0)
		begin
			if(k1k==0)
				begin
					 k1=k1+2'b01;
				end 
					k1k=1;
		end		
			else
				k1k=0;
			
	if(key2==0)
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
		
	if(k1==2'b00||k1==2'b10)//闹钟的调时——分
		if(k2)
			begin
				cc=cc+4'b0001;
			if(cc==4'b1010)begin cc=4'b0000;dd=dd+4'b0001;
				if(dd==4'b0110)begin dd=4'b0000;ee=ee+4'b0001;
					if(ee==4'b1010)begin ee=4'b0000;ff=ff+4'b0001;
									end
								end
							end
			if(ff==4'b0010&&ee==4'b0100)begin ee=4'b0000;ff=4'b0000;end
			end
	if(k1==2'b01||k1==2'b11)//闹钟的调时——时
		if(k2)
			begin
				ee=ee+4'b0001;
				if(ee==4'b1010)begin ee=4'b0000;ff=ff+4'b0001;end									
				if(ff==4'b0010&&ee==4'b0100)begin ee=4'b0000;ff=4'b0000;end
			end
	
end
end
endmodule