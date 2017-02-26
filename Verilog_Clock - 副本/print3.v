
module print3(mk,k1,fs,c,d,e,f,led_dig,display);//定时的打印模块
input fs;
input [1:0]mk,k1;
input [3:0]c,d,e,f;

output [7:0]led_dig,display;
reg	   [7:0]led_dig,display;

reg    [3:0]o;
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
		4'b0000:begin
				led_dig<=8'b11111110;
			    display<=8'b0111111;
				end
       4'b0001:begin
				led_dig<=8'b11111101;
				display<=8'b0111111;	 
       			end
		
		4'b0010:begin
				led_dig<=8'b11111011;
				if(mk==2'b11&&k1==2'b00&&delay||mk==2'b11&&k1==2'b10&&delay)begin display<=8'b1111111;end
				else 
					begin
					   case(c)
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
				//4'b0011: begin led_dig<=8'b11110111;display<=8'b1000000;end
      4'b0100:begin
			led_dig<=8'b11110111;
			if(mk==2'b11&&k1==2'b00&&delay||mk==2'b10&&k1==2'b10&&delay)begin display<=8'b1111111;end
				else 
					begin
			case(d)
	              4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b1111001;end
			              4'b0010:begin display<=8'b0100100;end
			              4'b0011:begin display<=8'b0110000;end
			              4'b0100:begin display<=8'b0011001;end
			              4'b0101:begin display<=8'b0010010;end
			              
	              default:;
	        endcase
			end
       	 end		
		4'b0101: begin led_dig<=8'b11011111;display<=8'b1000000;end
		4'b0110:begin
			   led_dig<=8'b10111111;
				if(mk==2'b11&&k1==2'b01&&delay||mk==2'b11&&k1==2'b11&&delay)begin display<=8'b1111111;end
				else 
					begin
				case(e)
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
		4'b0111:begin
				led_dig<=8'b01111111;
				if(mk==2'b11&&k1==2'b01&&delay||mk==2'b11&&k1==2'b11&&delay)begin display<=8'b1111111;end
				else 
					begin
				   case(f)
		              4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b1111001;end
			              4'b0010:begin display<=8'b0100100;end
			              
		              default:;
		          endcase
				end
	      		end
		default:;
		endcase
	o<=o+4'b0001;
	if(o===4'b0111)o<=4'b0000;	
end//正常计时结束
endmodule