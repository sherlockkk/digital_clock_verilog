module print1(mk,k1,fs,a,b,c,d,e,f,led_dig,display);//计时的打印
input fs;
input [1:0]mk,k1;
input [3:0]a,b,c,d,e,f;

output [7:0]led_dig,display;
reg	   [7:0]led_dig,display;

reg    [2:0]o;
integer i;
reg delay;
always @(posedge fs)
begin
    if(i==100)
		begin
			delay<=~delay;
			i<=0;
		end
	else
		i<=i+1;
	case(o)
		3'b000:begin
					led_dig<=8'b11111110;
			          case(a)//秒低位选择显示
			              4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b1111001;end
			              4'b0010:begin display<=8'b0100100;end
			              4'b0011:begin display<=8'b0110000;end
			              4'b0100:begin display<=8'b0011001;end
			              4'b0101:begin display<=8'b0010010;end
			              4'b0110:begin display<=8'b0000010;end
			              4'b0111:begin display<=8'b1111000;end
			              4'b1000:begin display<=8'b0000000;end
			              4'b1001:begin display<=8'b0010000;end
			              default:;
				 	 endcase
				end
       3'b001:begin
				led_dig<=8'b11111101;
					   case(b)//秒高位选择显示
			              4'b0000:begin display<=8'b11000000;end
			              4'b0001:begin display<=8'b11111001;end
			              4'b0010:begin display<=8'b10100100;end
			              4'b0011:begin display<=8'b10110000;end
			              4'b0100:begin display<=8'b10011001;end
			              4'b0101:begin display<=8'b10010010;end
			              
			              default:;
		         	 endcase
       			end
		//3'b010: begin led_dig<=8'b11111110;display<=8'b1000000;end// 显示-
		3'b011:begin
				led_dig<=8'b11111011;
				if(mk==2'b10&&k1==2'b00&&delay||mk==2'b10&&k1==2'b10&&delay)begin display<=8'b1111111;end//调整的时候闪烁
				else 
					begin
					   case(c)//分低位选择显示
			              4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b1111001;end
			              4'b0010:begin display<=8'b0100100;end
			              4'b0011:begin display<=8'b0110000;end
			              4'b0100:begin display<=8'b0011001;end
			              4'b0101:begin display<=8'b0010010;end
			              4'b0110:begin display<=8'b0000010;end
			              4'b0111:begin display<=8'b1111000;end
			              4'b1000:begin display<=8'b0000000;end
			              4'b1001:begin display<=8'b0010000;end
							default:;
			          endcase
	          		end
				end
      3'b100:begin
			led_dig<=8'b11110111;
			if(mk==2'b10&&k1==2'b00&&delay||mk==2'b10&&k1==2'b10&&delay)begin display<=8'b1111111;end
				else 
					begin
			case(d)//分高位选择显示
	                    4'b0000:begin display<=8'b11000000;end
			              4'b0001:begin display<=8'b11111001;end
			              4'b0010:begin display<=8'b10100100;end
			              4'b0011:begin display<=8'b10110000;end
			              4'b0100:begin display<=8'b10011001;end
			              4'b0101:begin display<=8'b10010010;end
			              
	              default:;
	        endcase
			end
       	 end		
		//3'b101: begin led_dig<=8'b11111011;display<=8'b1000000;end
		3'b110:begin
			   led_dig<=8'b11101111;
				if(mk==2'b10&&k1==2'b01&&delay||mk==2'b10&&k1==2'b11&&delay)begin display<=8'b1111111;end
				else 
					begin
				case(e)//时低位选择显示
							  4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b1111001;end
			              4'b0010:begin display<=8'b0100100;end
			              4'b0011:begin display<=8'b0110000;end
			              4'b0100:begin display<=8'b0011001;end
			              4'b0101:begin display<=8'b0010010;end
			              4'b0110:begin display<=8'b0000010;end
			              4'b0111:begin display<=8'b1111000;end
			              4'b1000:begin display<=8'b0000000;end
			              4'b1001:begin display<=8'b0010000;end
						default:;
			  	endcase 
				end            
       			end
		3'b111:begin
				led_dig<=8'b11011111;
				if(mk==2'b10&&k1==2'b01&&delay||mk==2'b10&&k1==2'b11&&delay)begin display<=8'b1111111;end
				else 
					begin
				   case(f)//时高位选择显示
		              4'b0000:begin display<=8'b11000000;end
			              4'b0001:begin display<=8'b11111001;end
			              4'b0010:begin display<=8'b10100100;end
			              
		              default:;
		          endcase
				end
	      		end
		default:;
		endcase
	o<=o+3'b001;
	if(o==3'b111)o<=3'b000;	
end//正常计时结束
endmodule