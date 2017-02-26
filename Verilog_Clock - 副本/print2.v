module print2(fs,a,b,c,d,e,f,led_dig,display);
input fs;
input [3:0]a,b,c,d,e,f;

output [7:0]led_dig,display;
reg	   [7:0]led_dig,display;

reg    [3:0]o;
always @(posedge fs)
begin
    case(o)
		4'b0000:begin
					led_dig<=8'b11111110;
			          case(a)//1/100秒低位选择显示
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
       4'b0001:begin
				led_dig<=8'b11111101;
					   case(b)//1/100秒高位选择显示
						     4'b0000:begin display<=8'b11000000;end
			              4'b0001:begin display<=8'b11111001;end
			              4'b0010:begin display<=8'b10100100;end
			              4'b0011:begin display<=8'b10110000;end
			              4'b0100:begin display<=8'b10011001;end
			              4'b0101:begin display<=8'b10010010;end
			              4'b0110:begin display<=8'b10000010;end
			              4'b0111:begin display<=8'b11111000;end
			              4'b1000:begin display<=8'b10000000;end
			              4'b1001:begin display<=8'b10010000;end	
			              default:;
		         	 endcase
       			end
		4'b0010: begin led_dig<=8'b10111111;display<=8'b1000000;end
		4'b0011:begin
				led_dig<=8'b11111011;
				   case(c)//秒低位选择显示
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
      4'b0100:begin
			led_dig<=8'b11110111;
			case(d)//秒高位选择显示
	              4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b11111001;end
			              4'b0010:begin display<=8'b10100100;end
			              4'b0011:begin display<=8'b10110000;end
			              4'b0100:begin display<=8'b10011001;end
			              4'b0101:begin display<=8'b10010010;end
	              default:;
	        endcase
       	 end		
		4'b0101: begin led_dig<=8'b01111111;display<=8'b1000000;end
		4'b0110:begin
			   led_dig<=8'b11101111;
				case(e)//分低位选择显示
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
		4'b0111:begin
				led_dig<=8'b11011111;
				   case(f)//分高位选择显示
		              4'b0000:begin display<=8'b1000000;end
			              4'b0001:begin display<=8'b1111001;end
			              4'b0010:begin display<=8'b0100100;end
		              default:;
		          endcase
	      		end
		default:;
		endcase
	o<=o+4'b0001;
	if(o===4'b0111)o<=4'b0000;	
end//正常计时结束
endmodule