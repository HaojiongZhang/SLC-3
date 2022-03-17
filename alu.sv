module alu
(
	input logic [15:0] A,B,
	input	logic [1:0] alu_k,
	output logic [15:0] alu_out

);


	logic [15:0] addout, andout, notout;
	

	
	
	
	assign addout[15:0] = A+B;
	assign andout[15:0] = A&B;
	assign notout[15:0] = ~A;
	
	
	always_comb
	begin
		case (alu_k)
	
			2'b00 : alu_out = addout;
			2'b01 : alu_out = andout;
			2'b10 : alu_out = notout;
			2'b11	: alu_out = A;
			
			
			default : alu_out = 16'hx ;
			endcase
		end
	
	
	


endmodule


module marmux(
	input logic [15:0] AD2_1, AD2_2, AD2_3,
	input logic [15:0] AD1_1, AD1_2,
	input logic [1:0] AD2M,
	input logic AD1M,
	output logic [15:0] marmuxout

);
	
	
	logic [15:0] operand1, operand2;

	always_comb
	begin
		case (AD2M)
	
			2'b00 : operand1 = 16'd0;
			2'b01 : operand1 = AD2_1;//imm5
			2'b10 : operand1 = AD2_2;//imm7
			2'b11	: operand1 = AD2_3;//imm10
			
			
			default : operand1 = 16'hxxxx ;
			endcase
		end
		
	always_comb
	begin
		case (AD1M)
	
			1'b0 : operand2 = AD1_1;//pcout
			1'b1 : operand2 = AD1_2;//sr1o
			
			
			default : operand2 = 16'hxxxx ;
			endcase
		end
		
	

	
	
	assign marmuxout = operand1 + operand2;
	

endmodule



















