module mux_3t1 (input logic [15:0] A,
				  input logic [15:0] B,
				  input logic [15:0] C,
				  input [1:0] sel,
				  output logic [15:0] Dout);
	always_comb
	begin
		case (sel)
	
			2'b00 : Dout = A;
			2'b01 : Dout = B;
			2'b10 : Dout = C;
			default : Dout = 16'hx;
			endcase
		end
endmodule


module mux_2t1
				# (parameter width = 16)
				(input logic [width-1:0] A,
				  input logic [width-1:0] B,
				  input		 sel,
				  output logic [width-1:0] Dout);
	always_comb
	begin
		case (sel)
	
			1'b0 : Dout = A;
			1'b1 : Dout = B;
			

			endcase
		end
endmodule

module mux_4t1(input logic [15:0] A,B,C,D,
				  input logic [3:0] sel,
				  output logic [15:0] Dout);
	always_comb
	begin
		case (sel)
			4'b1000 : Dout = A;
			4'b0100 : Dout = B;
			4'b0010 : Dout = C;
			4'b0001 : Dout = D;
			default : Dout = 16'hx;
			endcase
		end
endmodule
