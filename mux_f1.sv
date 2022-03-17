module mux_f1(input logic [15:0] A,B,C,D
				  input logic [3:0] sel,
				  output logic [15:0] Dout);
	always_comb
	begin
		case (sel)
			4'b1000 : Dout = A;
			4'b0100 : Dout = B;
			4'b0010 : Dout = A;
			4'b0001 : Dout = B;
			default : Dout = 16'hx;
			endcase
		end
endmodule