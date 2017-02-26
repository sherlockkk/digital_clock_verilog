module zi(clk,modkey,key1,key2,dis,leg,line,row);
input clk;//输入的频率20MHz
input modkey,key1,key2;//输入的三个按键
output [7:0]dis,leg;//打印输出
output [7:0]line,row;//闹钟相应输出

wire f1;//1Hz的频率
wire f100;//0.01Hz的频率
wire fs;//刷新频率1kHz

wire [1:0]mkoo;//状态键控制四种状态
			   //1.正常计时（00）
			   //2.跑表（01）
			   //3.调时（10）
			   //4.闹钟（11）
wire [3:0]a,b,c,d,e,f;  //正常计时的输出秒.分.时
						//a：秒的低位
						//b：秒的高位
						//c：分的低位
						//d：分的高位
						//e：时的低位
						//f：时的低位
wire [3:0]a2,b2,c2,d2,e2,f2;
						//跑表的输出秒.分.时
						//a2：秒的低位
						//b2：秒的高位
						//c2：分的低位
						//d2：分的高位
						//e2：时的低位
						//f2：时的低位

wire [3:0]cc,dd,ee,ff;//闹钟的输出分.时
					  //cc：分的低位
					  //dd：分的高位
					  //ee：时的低位
					  //ff：时的低位

wire [7:0]leg1,dis1;//正常计时的打印输出
wire [7:0]leg2,dis2;//跑表的打印输出
wire [7:0]leg3,dis3; //闹钟的打印输出（LED显示）

wire [1:0]k1;//调时时启动闪烁状态
wire [1:0]kk1;//调闹钟时启动闪烁状态

wire linerow;// 闹钟的打印输出（矩阵显示）

zhuangtai(modkey,fs,mkoo);//判断键的状态模块（mkoo4种模式）正常计时.跑表.调时，闹钟
					
modchose mc(leg1,dis1,leg2,dis2,leg3,dis3,fs,mkoo,leg,dis);//选择模式输出模块

fenpin fen(clk,f1,f100,fs);				//分频：秒表，跑表，刷新3个频率。

jishi ji(mkoo,key1,key2,f1,fs,a,b,c,d,e,f,kk1);				//第一种模式正常计时
print1 p1(mkoo,kk1,fs,a,b,c,d,e,f,leg1,dis1);		//计时的打印

paobiao pao(f100,fs,mkoo,key1,key2,a2,b2,c2,d2,e2,f2);//跑表模块
print2 p2(fs,a2,b2,c2,d2,e2,f2,leg2,dis2);	//跑表的打印

naozhong nao(mkoo,key1,key2,f1,c,d,e,f,cc,dd,ee,ff,k1,linerow);//闹钟模块
print3 p3(mkoo,k1,fs,cc,dd,ee,ff,leg3,dis3);//定时的打印模块
print4 p4(fs,linerow,line,row);//闹钟相应时的输出打印模块
endmodule