module branch_ctr(
	input Clk, Reset,
	input logic LD_BEN,LD_CC,
	input logic [15:0] IR, Bus,
	output logic BEN

);

logic [2:0] NZP,tmp;
logic br;

always_comb
begin
	
	tmp = 3'bxxx;
	if(Bus>=16'h8000)
		tmp = 3'b100;
	else if(Bus==16'h0)    	
		tmp = 3'b010;
	else
		tmp = 3'b001;
end 

always_comb
begin
	
	if(NZP[2]&IR[11] | NZP[1]&IR[10] | NZP[0]&IR[9])
		br = 1'b1;
	else
		br = 1'b0;
	
end


always_ff @ (posedge Clk)
begin
	if(Reset) begin
		NZP <= 3'd0;
		
		end
	if(LD_CC)
		NZP <= tmp;

	if(LD_BEN)
		BEN <= br;
	
end




endmodule



