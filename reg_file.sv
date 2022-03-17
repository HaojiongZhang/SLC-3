module reg_file(
	input logic Clk, Reset,
	input logic [15:0] IR, Bus,
	input logic	LD_REG,
	input logic DRMUX, SR1MUX,
	output logic [15:0] SR1_OUT, SR2_OUT

);
logic [2:0] SR2;
logic [2:0] DRMUX_out,SR1MUX_out;

assign SR2 = IR[2:0];

mux_2t1 #(3) DR_MUX  (.A(3'b111),.B(IR[11:9]),.sel(DRMUX),.Dout(DRMUX_out));

mux_2t1 #(3) SR1_MUX (.A(IR[11:9]),.B(IR[8:6]),.sel(SR1MUX),.Dout(SR1MUX_out));

logic [15:0] reg_f[8];


always_ff @ (posedge Clk)
begin
	if(Reset) begin
		reg_f[0] <= 16'b0;
		reg_f[1] <= 16'b0;
		reg_f[2] <= 16'b0;
		reg_f[3] <= 16'b0;
		reg_f[4] <= 16'b0;
		reg_f[5] <= 16'b0;
		reg_f[6] <= 16'b0;
		reg_f[7] <= 16'b0;
	
	end
	
	else
		if(LD_REG)
			reg_f[DRMUX_out] <= Bus;
			
		
end
		
assign SR1_OUT = reg_f[SR1MUX_out];
assign SR2_OUT = reg_f[SR2];



endmodule 

